library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tcp_client is
  port (
    clock       : in  std_logic;
    reset       : in  std_logic;

    connect     : in  std_logic;

    server_mac  : in  std_logic_vector(47 downto 0);
    server_ip   : in  std_logic_vector(31 downto 0);
    server_port : in  std_logic_vector(15 downto 0);

    client_mac  : in  std_logic_vector(47 downto 0);
    client_ip   : in  std_logic_vector(31 downto 0);
    client_port : in  std_logic_vector(15 downto 0);

    is_connected : out std_logic;

    in_data   : in  std_logic_vector(7 downto 0);
    in_valid  : in  std_logic;
    in_sop    : in  std_logic;
    in_eop    : in  std_logic;
    in_ready  : out std_logic;

    out_data  : out std_logic_vector(7 downto 0);
    out_valid : out std_logic;
    out_sop   : out std_logic;
    out_eop   : out std_logic;
    out_ready : in  std_logic
  );
end entity;

architecture rtl of tcp_client is

  subtype byte_t is std_logic_vector(7 downto 0);
  type byte_array_t is array (natural range <>) of byte_t;

  -- ===== Frame sizes =====
  constant FRAME_LEN      : natural := 54;  -- Eth(14) + IPv4(20) + TCP(20)
  constant RX_CAPTURE_LEN : natural := 54;
  constant TX_LAST        : natural := FRAME_LEN - 1;

  -- ===== Offsets in the 54B frame =====
  constant ETH_DST_OFF   : natural := 0;
  constant ETH_SRC_OFF   : natural := 6;
  constant ETH_TYPE_OFF  : natural := 12;

  constant IP_OFF        : natural := 14;
  constant IP_VERIHL_OFF : natural := IP_OFF + 0;
  constant IP_PROTO_OFF  : natural := IP_OFF + 9;
  constant IP_SRC_OFF    : natural := IP_OFF + 12;
  constant IP_DST_OFF    : natural := IP_OFF + 16;

  constant TCP_OFF       : natural := 14 + 20;
  constant TCP_SPORT_OFF : natural := TCP_OFF + 0;
  constant TCP_DPORT_OFF : natural := TCP_OFF + 2;
  constant TCP_DOFF_OFF  : natural := TCP_OFF + 12;
  constant TCP_FLAGS_OFF : natural := TCP_OFF + 13;

  -- ===== Timeout =====
  constant TIMEOUT_CYCLES : natural := 50; -- prilagodi clocku (npr. 1s @ 50MHz)
  signal timeout_cnt : unsigned(31 downto 0);
  signal timeout_hit : std_logic;

  -- ===== Helper functions =====
  function hi8(x : std_logic_vector(15 downto 0)) return byte_t is
  begin
    return x(15 downto 8);
  end function;

  function lo8(x : std_logic_vector(15 downto 0)) return byte_t is
  begin
    return x(7 downto 0);
  end function;

  function b31_24(x : std_logic_vector(31 downto 0)) return byte_t is begin return x(31 downto 24); end function;
  function b23_16(x : std_logic_vector(31 downto 0)) return byte_t is begin return x(23 downto 16); end function;
  function b15_8 (x : std_logic_vector(31 downto 0)) return byte_t is begin return x(15 downto 8 ); end function;
  function b7_0  (x : std_logic_vector(31 downto 0)) return byte_t is begin return x(7 downto 0  ); end function;

  -- ===== FSM =====
  type state_t is (
    IDLE,
    PREPARE_SYN,
    TX_SYN,
    WAIT_RX,
    RX_FRAME,
    EVALUATE_RX,
    PREPARE_ACK,
    TX_ACK,
    CONNECTED
  );

  signal st, st_n : state_t;

  -- ===== Buffers =====
  signal syn_frame : byte_array_t(0 to FRAME_LEN-1);
  signal ack_frame : byte_array_t(0 to FRAME_LEN-1);
  signal rx_buf    : byte_array_t(0 to RX_CAPTURE_LEN-1);

  -- ===== Counters =====
  signal tx_idx : unsigned(7 downto 0);
  signal rx_idx : unsigned(7 downto 0);

  -- ===== Handshake “events” =====
  signal tx_fire : std_logic;  -- out_valid & out_ready
  signal rx_fire : std_logic;  -- in_valid & in_ready

  -- ===== RX evaluation flags =====
  signal rx_is_synack : std_logic;
  signal rx_is_rst    : std_logic;

  -- ===== Internal “registered” outputs =====
  signal out_data_r  : byte_t;
  signal out_valid_r : std_logic;
  signal out_sop_r   : std_logic;
  signal out_eop_r   : std_logic;

  signal in_ready_r  : std_logic;

  -- ===== Some constant header fields =====
  constant IP_VER_IHL   : byte_t := x"45"; -- V=4, IHL=5 (20B)
  constant IP_TOS       : byte_t := x"00";
  constant IP_TTL       : byte_t := x"40";
  constant IP_PROTO_TCP : byte_t := x"06";

  constant TCP_DOFF     : byte_t := x"50"; -- data offset=5 (20B)

  constant SYN_SEQ      : std_logic_vector(31 downto 0) := x"00000001";

begin

  -- outputs
  out_data  <= out_data_r;
  out_valid <= out_valid_r;
  out_sop   <= out_sop_r;
  out_eop   <= out_eop_r;

  in_ready  <= in_ready_r;

  -- handshake events
  tx_fire <= out_valid_r and out_ready;
  rx_fire <= in_valid and in_ready_r;

  -- ============================================================
  -- Timeout counter: active only in WAIT_RX
  -- ============================================================
  process(clock, reset)
  begin
    if reset = '1' then
      timeout_cnt <= (others => '0');
    elsif rising_edge(clock) then
      if st = WAIT_RX then
        if timeout_cnt = to_unsigned(TIMEOUT_CYCLES-1, timeout_cnt'length) then
          timeout_cnt <= timeout_cnt;
        else
          timeout_cnt <= timeout_cnt + 1;
        end if;
      else
        timeout_cnt <= (others => '0');
      end if;
    end if;
  end process;

  timeout_hit <= '1' when timeout_cnt = to_unsigned(TIMEOUT_CYCLES-1, timeout_cnt'length) else '0';

  -- ============================================================
  -- State register
  -- ============================================================
  process(clock, reset)
  begin
    if reset = '1' then
      st <= IDLE;
    elsif rising_edge(clock) then
      st <= st_n;
    end if;
  end process;

  -- ============================================================
  -- TX index: increments ONLY on tx_fire
  -- (SOP/EOP “naturally” happen on the accepted beats)
  -- ============================================================
  process(clock, reset)
  begin
    if reset = '1' then
      tx_idx <= (others => '0');
    elsif rising_edge(clock) then
      -- entering TX states -> reset
      if (st /= TX_SYN and st_n = TX_SYN) or (st /= TX_ACK and st_n = TX_ACK) then
        tx_idx <= (others => '0');
      elsif (st = TX_SYN) or (st = TX_ACK) then
        if tx_fire = '1' then
          if tx_idx < to_unsigned(TX_LAST, tx_idx'length) then
            tx_idx <= tx_idx + 1;
          else
            tx_idx <= tx_idx; -- hold
          end if;
        end if;
      else
        tx_idx <= (others => '0');
      end if;
    end if;
  end process;

  -- ============================================================
  -- RX capture: store bytes ONLY on rx_fire
  -- SOP resets index to 0 at the accepted SOP beat
  -- ============================================================
  process(clock, reset)
  begin
    if reset = '1' then
      rx_idx <= (others => '0');
    elsif rising_edge(clock) then
      if st = RX_FRAME then
        if rx_fire = '1' then
          if in_sop = '1' then
            rx_idx <= (others => '0');
            rx_buf(0) <= in_data;
          else
            if rx_idx < to_unsigned(RX_CAPTURE_LEN-1, rx_idx'length) then
              rx_idx <= rx_idx + 1;
              rx_buf(to_integer(rx_idx) + 1) <= in_data;
            end if;
          end if;
        end if;
      else
        rx_idx <= (others => '0');
      end if;
    end if;
  end process;

  -- ============================================================
  -- Build frames in PREPARE_* (clocked, single driver)
  -- ============================================================
  process(clock, reset)
    variable total_len : std_logic_vector(15 downto 0);
  begin
    if reset = '1' then
      null;
    elsif rising_edge(clock) then

      if st = PREPARE_SYN then
        total_len := x"0028"; -- IP payload = 40B

        -- Ethernet: dst=server, src=client, type IPv4
        syn_frame(0)  <= server_mac(47 downto 40);
        syn_frame(1)  <= server_mac(39 downto 32);
        syn_frame(2)  <= server_mac(31 downto 24);
        syn_frame(3)  <= server_mac(23 downto 16);
        syn_frame(4)  <= server_mac(15 downto 8);
        syn_frame(5)  <= server_mac(7 downto 0);

        syn_frame(6)  <= client_mac(47 downto 40);
        syn_frame(7)  <= client_mac(39 downto 32);
        syn_frame(8)  <= client_mac(31 downto 24);
        syn_frame(9)  <= client_mac(23 downto 16);
        syn_frame(10) <= client_mac(15 downto 8);
        syn_frame(11) <= client_mac(7 downto 0);

        syn_frame(12) <= x"08";
        syn_frame(13) <= x"00";

        -- IPv4 minimal (checksum=0)
        syn_frame(IP_OFF + 0)  <= IP_VER_IHL;
        syn_frame(IP_OFF + 1)  <= IP_TOS;
        syn_frame(IP_OFF + 2)  <= hi8(total_len);
        syn_frame(IP_OFF + 3)  <= lo8(total_len);
        syn_frame(IP_OFF + 4)  <= x"00";
        syn_frame(IP_OFF + 5)  <= x"01";
        syn_frame(IP_OFF + 6)  <= x"40";
        syn_frame(IP_OFF + 7)  <= x"00";
        syn_frame(IP_OFF + 8)  <= IP_TTL;
        syn_frame(IP_PROTO_OFF) <= IP_PROTO_TCP;
        syn_frame(IP_OFF + 10) <= x"00";
        syn_frame(IP_OFF + 11) <= x"00";

        syn_frame(IP_SRC_OFF + 0) <= b31_24(client_ip);
        syn_frame(IP_SRC_OFF + 1) <= b23_16(client_ip);
        syn_frame(IP_SRC_OFF + 2) <= b15_8(client_ip);
        syn_frame(IP_SRC_OFF + 3) <= b7_0(client_ip);

        syn_frame(IP_DST_OFF + 0) <= b31_24(server_ip);
        syn_frame(IP_DST_OFF + 1) <= b23_16(server_ip);
        syn_frame(IP_DST_OFF + 2) <= b15_8(server_ip);
        syn_frame(IP_DST_OFF + 3) <= b7_0(server_ip);

        -- TCP minimal (checksum=0)
        syn_frame(TCP_SPORT_OFF + 0) <= hi8(client_port);
        syn_frame(TCP_SPORT_OFF + 1) <= lo8(client_port);
        syn_frame(TCP_DPORT_OFF + 0) <= hi8(server_port);
        syn_frame(TCP_DPORT_OFF + 1) <= lo8(server_port);

        -- SEQ
        syn_frame(TCP_OFF + 4) <= SYN_SEQ(31 downto 24);
        syn_frame(TCP_OFF + 5) <= SYN_SEQ(23 downto 16);
        syn_frame(TCP_OFF + 6) <= SYN_SEQ(15 downto 8);
        syn_frame(TCP_OFF + 7) <= SYN_SEQ(7 downto 0);

        -- ACK=0
        syn_frame(TCP_OFF + 8)  <= x"00";
        syn_frame(TCP_OFF + 9)  <= x"00";
        syn_frame(TCP_OFF + 10) <= x"00";
        syn_frame(TCP_OFF + 11) <= x"00";

        syn_frame(TCP_DOFF_OFF)  <= TCP_DOFF;
        syn_frame(TCP_FLAGS_OFF) <= x"02"; -- SYN

        -- rest minimal
        syn_frame(TCP_OFF + 14) <= x"04";
        syn_frame(TCP_OFF + 15) <= x"00";
        syn_frame(TCP_OFF + 16) <= x"00";
        syn_frame(TCP_OFF + 17) <= x"00";
        syn_frame(TCP_OFF + 18) <= x"00";
        syn_frame(TCP_OFF + 19) <= x"00";

      elsif st = PREPARE_ACK then
        total_len := x"0028";

        -- Ethernet: dst=server, src=client
        ack_frame(0)  <= server_mac(47 downto 40);
        ack_frame(1)  <= server_mac(39 downto 32);
        ack_frame(2)  <= server_mac(31 downto 24);
        ack_frame(3)  <= server_mac(23 downto 16);
        ack_frame(4)  <= server_mac(15 downto 8);
        ack_frame(5)  <= server_mac(7 downto 0);

        ack_frame(6)  <= client_mac(47 downto 40);
        ack_frame(7)  <= client_mac(39 downto 32);
        ack_frame(8)  <= client_mac(31 downto 24);
        ack_frame(9)  <= client_mac(23 downto 16);
        ack_frame(10) <= client_mac(15 downto 8);
        ack_frame(11) <= client_mac(7 downto 0);

        ack_frame(12) <= x"08";
        ack_frame(13) <= x"00";

        -- IPv4 minimal
        ack_frame(IP_OFF + 0)  <= IP_VER_IHL;
        ack_frame(IP_OFF + 1)  <= IP_TOS;
        ack_frame(IP_OFF + 2)  <= hi8(total_len);
        ack_frame(IP_OFF + 3)  <= lo8(total_len);
        ack_frame(IP_OFF + 4)  <= x"00";
        ack_frame(IP_OFF + 5)  <= x"02";
        ack_frame(IP_OFF + 6)  <= x"40";
        ack_frame(IP_OFF + 7)  <= x"00";
        ack_frame(IP_OFF + 8)  <= IP_TTL;
        ack_frame(IP_PROTO_OFF) <= IP_PROTO_TCP;
        ack_frame(IP_OFF + 10) <= x"00";
        ack_frame(IP_OFF + 11) <= x"00";

        ack_frame(IP_SRC_OFF + 0) <= b31_24(client_ip);
        ack_frame(IP_SRC_OFF + 1) <= b23_16(client_ip);
        ack_frame(IP_SRC_OFF + 2) <= b15_8(client_ip);
        ack_frame(IP_SRC_OFF + 3) <= b7_0(client_ip);

        ack_frame(IP_DST_OFF + 0) <= b31_24(server_ip);
        ack_frame(IP_DST_OFF + 1) <= b23_16(server_ip);
        ack_frame(IP_DST_OFF + 2) <= b15_8(server_ip);
        ack_frame(IP_DST_OFF + 3) <= b7_0(server_ip);

        -- TCP ports
        ack_frame(TCP_SPORT_OFF + 0) <= hi8(client_port);
        ack_frame(TCP_SPORT_OFF + 1) <= lo8(client_port);
        ack_frame(TCP_DPORT_OFF + 0) <= hi8(server_port);
        ack_frame(TCP_DPORT_OFF + 1) <= lo8(server_port);

        -- demo SEQ/ACK (u realnom TCP bi računala iz RX)
        ack_frame(TCP_OFF + 4) <= x"00";
        ack_frame(TCP_OFF + 5) <= x"00";
        ack_frame(TCP_OFF + 6) <= x"00";
        ack_frame(TCP_OFF + 7) <= x"02";

        ack_frame(TCP_OFF + 8)  <= x"00";
        ack_frame(TCP_OFF + 9)  <= x"00";
        ack_frame(TCP_OFF + 10) <= x"00";
        ack_frame(TCP_OFF + 11) <= x"02";

        ack_frame(TCP_DOFF_OFF)  <= TCP_DOFF;
        ack_frame(TCP_FLAGS_OFF) <= x"10"; -- ACK

        ack_frame(TCP_OFF + 14) <= x"04";
        ack_frame(TCP_OFF + 15) <= x"00";
        ack_frame(TCP_OFF + 16) <= x"00";
        ack_frame(TCP_OFF + 17) <= x"00";
        ack_frame(TCP_OFF + 18) <= x"00";
        ack_frame(TCP_OFF + 19) <= x"00";
      end if;
    end if;
  end process;

  -- ============================================================
  -- RX evaluation (VHDL-93 sensitivity list)
  -- SYN-ACK is 0x12; RST bit is 0x04 (RST or RST+ACK)
  -- ============================================================
  process(rx_buf, client_ip, server_ip, client_port, server_port)
    variable flags  : byte_t;
    variable ports_ok : boolean;
    variable ip_ok    : boolean;
  begin
    rx_is_synack <= '0';
    rx_is_rst    <= '0';

    flags := rx_buf(TCP_FLAGS_OFF);

    -- minimal checks: IP proto + ports (server->client)
    ip_ok := (rx_buf(IP_VERIHL_OFF) = x"45") and (rx_buf(IP_PROTO_OFF) = x"06") and
             (rx_buf(IP_SRC_OFF)    = b31_24(server_ip)) and
             (rx_buf(IP_SRC_OFF+1)  = b23_16(server_ip)) and
             (rx_buf(IP_SRC_OFF+2)  = b15_8(server_ip)) and
             (rx_buf(IP_SRC_OFF+3)  = b7_0(server_ip))  and
             (rx_buf(IP_DST_OFF)    = b31_24(client_ip)) and
             (rx_buf(IP_DST_OFF+1)  = b23_16(client_ip)) and
             (rx_buf(IP_DST_OFF+2)  = b15_8(client_ip))  and
             (rx_buf(IP_DST_OFF+3)  = b7_0(client_ip));

    ports_ok := (rx_buf(TCP_SPORT_OFF)   = hi8(server_port)) and
                (rx_buf(TCP_SPORT_OFF+1) = lo8(server_port)) and
                (rx_buf(TCP_DPORT_OFF)   = hi8(client_port)) and
                (rx_buf(TCP_DPORT_OFF+1) = lo8(client_port));

    if ip_ok and ports_ok then
      if flags = x"12" then
        rx_is_synack <= '1';
      end if;

      if (flags(2) = '1') then -- RST bit
        rx_is_rst <= '1';
      end if;
    end if;
  end process;

  -- ============================================================
  -- Mealy next-state + outputs (VHDL-93 sensitivity list)
  -- Outputs are stable while waiting for ready, because tx_idx/rx_idx
  -- only change on tx_fire/rx_fire.
  -- ============================================================
  process(st, connect, out_ready, in_valid, in_sop, in_eop, timeout_hit,
          tx_idx, rx_fire, tx_fire, syn_frame, ack_frame, rx_is_synack, rx_is_rst)
    variable last_tx : boolean;
  begin
    -- defaults
    st_n <= st;

    is_connected <= '0';

    -- By default: we DO NOT accept RX unless we say so
    in_ready_r <= '0';

    -- default TX outputs
    out_valid_r <= '0';
    out_sop_r   <= '0';
    out_eop_r   <= '0';
    out_data_r  <= (others => '0');

    last_tx := false;

    case st is

      when IDLE =>
        if connect = '1' then
          st_n <= PREPARE_SYN;
        else
          st_n <= IDLE;
        end if;

      when PREPARE_SYN =>
        -- on “start to send” condition -> go TX_SYN when sink is ready for first beat
        if out_ready = '1' then
          st_n <= TX_SYN;
        else
          st_n <= PREPARE_SYN;
        end if;

      when TX_SYN =>
        out_valid_r <= '1';
        out_data_r  <= syn_frame(to_integer(tx_idx));

        -- SOP/EOP held according to current tx_idx; tx_idx doesn't move until tx_fire
        if tx_idx = to_unsigned(0, tx_idx'length) then
          out_sop_r <= '1';
        end if;

        if tx_idx = to_unsigned(TX_LAST, tx_idx'length) then
          out_eop_r <= '1';
          last_tx := true;
        end if;

        if (tx_fire = '1') and last_tx then
          st_n <= WAIT_RX;
        else
          st_n <= TX_SYN;
        end if;

      when WAIT_RX =>
        -- client is ready to accept start of a frame (SOP) here
        in_ready_r <= '1';

        if timeout_hit = '1' then
          st_n <= IDLE;
        elsif (rx_fire = '1') and (in_sop = '1') then
          -- EXACT Mealy transition: event happens on rx_fire + sop
          st_n <= RX_FRAME;
        else
          st_n <= WAIT_RX;
        end if;

      when RX_FRAME =>
        in_ready_r <= '1';

        if (rx_fire = '1') and (in_eop = '1') then
          st_n <= EVALUATE_RX;
        else
          st_n <= RX_FRAME;
        end if;

      when EVALUATE_RX =>
        if rx_is_synack = '1' then
          st_n <= PREPARE_ACK;
        elsif rx_is_rst = '1' then
          -- unexpected RST -> back to IDLE
          st_n <= IDLE;
        else
          -- any other packet -> IDLE (as per your description)
          st_n <= IDLE;
        end if;

      when PREPARE_ACK =>
        if out_ready = '1' then
          st_n <= TX_ACK;
        else
          st_n <= PREPARE_ACK;
        end if;

      when TX_ACK =>
        out_valid_r <= '1';
        out_data_r  <= ack_frame(to_integer(tx_idx));

        if tx_idx = to_unsigned(0, tx_idx'length) then
          out_sop_r <= '1';
        end if;

        if tx_idx = to_unsigned(TX_LAST, tx_idx'length) then
          out_eop_r <= '1';
          last_tx := true;
        end if;

        if (tx_fire = '1') and last_tx then
          st_n <= CONNECTED;
        else
          st_n <= TX_ACK;
        end if;

      when CONNECTED =>
        is_connected <= '1';
		  st_n <= CONNECTED;
      when others =>
        st_n <= IDLE;

    end case;
  end process;

end architecture;
