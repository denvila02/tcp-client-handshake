# tcp-client-handshake
VHDL modul koji implementira klijentsku stranu uspostavljanja TCP konekcije.  

## Uvod
Transportni sloj pruža logičku komunikaciju između aplikacijskih procesa na različitim hostovima. Logička komunikacija podrazumijeva slanje poruka između hostova kao da su direktno povezani, bez brige o stvarnoj fizičkoj infrastukturi koja leži ispod. Pakete na transportnom sloju nazivamo segmentima. Protokoli na transportnom sloju su implementirani na krajnjim tačakama a ne na mrežnim ruterima. Jedan od tih protokola je TCP (Transmission Control Protocol). 
## TCP protokol i scenariji razmjene poruka
TCP protokol pruža pouzdanu, konekcijski orijentisanu komunikaciju između krajnjih korisnika. TCP koristi kontrolu toka, sekvencijske brojeve, tajmere, potvrde te na taj način osigurava da poruke koje su poslane budu ispravne i tačno po redoslijedu slanja primljene [1].

### Three-way handshake
Uspostava TCP konekcije realizuje se putem three-way handshake mehanizma, koji osigurava da su i klijent i server spremni za pouzdanu komunikaciju. Proces se sastoji od tri koraka: slanja SYN poruke od klijenta ka serveru, zatim odgovora servera sa SYN+ACK porukom, te završne ACK poruke od strane klijenta prikazane pomoću sekvencijalnog dijagrama na Slici 1 [1].

![Slika 1: TCP three-way handshake](images/three_way_handshake.png) 

Slika 1: TCP three-way handshake

U okviru ovog projekta implementirana je klijentska strana TCP three-way handshake procesa, pri čemu se serverska strana posmatra kao eksterni entitet.

### Struktura TCP segmenta
TCP segment se sastoji od zaglavlja (header) i podatkovnog dijela. Zaglavlje TCP segmenta sadrži izvorni i odredišni port, sekvencijski broj, potvrđujući broj, kao i kontrolne flagove koji upravljaju uspostavom i prekidom konekcije. Flagovi SYN i ACK su posebno značajni jer se koriste tokom three-way handshake procesa. U tipičnoj implementaciji TCP protokola, zaglavlje segmenta ima minimalnu dužinu od 20 bajtova, dok se tokom uspostave konekcije ne prenose aplikacioni podaci. [1] 

Struktura TCP segmenta prikazana je na Slici 2.

![Slika 2: Struktura TCP segmenta](images/tcp_structure_segment.png)

Slika 2: Struktura TCP segmenta [1]

### Scenariji razmjene poruka
#### Scenarij 1: Uspješna uspostava TCP konekcije

Scenarij prikazuje standardni tok uspostave TCP konekcije između klijenta i servera korištenjem three-way handshake mehanizma. Proces započinje kada korisnik aktivira signal `connect`, čime klijentski modul inicira uspostavu konekcije.

Klijent najprije šalje TCP SYN segment prema serveru. Nakon toga server odgovara SYN+ACK segmentom, koji klijent prima i provjerava. Na osnovu ispravnog odgovora, klijent šalje završni ACK segment, čime se TCP konekcija smatra uspješno uspostavljenom.  Uspješna konekcija se indicira signalom `is_connected`, te se signal postavlja na logičku vrijednost '1'.

#### Scenarij 2: Čekanje na spremnost prijemnika

Tokom slanja i prijema TCP segmenata, modul koristi Avalon-ST ready/valid mehanizam za sinhronizaciju komunikacije sa okruženjem. Ukoliko prijemnik, odnosno server, nije spreman za prihvatanje podataka, signal `out_ready` ostaje neaktivan, a klijentski modul zadržava podatke bez njihovog slanja.

Prijenos podataka se vrši isključivo u taktovima u kojima su signali `valid` i `ready` istovremeno aktivni. Na isti način, prijem TCP segmenta se obavlja samo kada su signali `in_valid` i `in_ready` aktivni u istom taktu. U suprotnom, modul ostaje u odgovarajućem stanju i čeka dok uslovi za prijem ili slanje ne budu ispunjeni. Ovakav mehanizam osigurava pouzdan prijenos podataka bez gubitka tokom procesa uspostave TCP konekcije.

Navedeni scenariji predstavljaju osnovu za modeliranje upravljačke logike pomoću FSM dijagrama, kao i za izradu WaveDrom dijagrama koji grafički prikazuju ponašanje signala kroz vrijeme.

## Opis dizajna modula
Modul `tcp_client` realizuje klijentsku stranu TCP three-way handshake procesa u obliku digitalnog sklopa. Funkcionalnost modula je organizovana oko upravljačke logike implementirane kao konačni automat (FSM), koji upravlja redoslijedom slanja i prijema TCP segmenata tokom uspostave konekcije.. Komunikacija sa okruženjem ostvarena je putem Avalon-ST interfejsa sa ready/valid rukovanjem, dok signal `is_connected` služi kao indikator uspješno uspostavljene TCP konekcije.

![Slika 3: Blok dijagram modula tcp_client](images/block_diagram.png)

Slika 3: Blok dijagram modula tcp_client

## Interfejs i signali
U nastavku su opisani ulazni i izlazni signali modula `tcp_client` koji čine njegov interfejs prema okruženju.

### Ulazni signali

- **clock**  
  Sistemski takt koji sinhronizuje rad modula.

- **reset**  
  Asinhroni ili sinhroni reset signal kojim se modul vraća u početno stanje.

- **connect**  
  Signal kojim se inicira proces uspostave TCP konekcije.

- **server_mac**, **server_ip**, **server_port**  
  Parametri koji definišu MAC adresu, IP adresu i port servera sa kojim se uspostavlja TCP konekcija.

- **client_mac**, **client_ip**, **client_port**  
  Parametri koji definišu MAC adresu, IP adresu i port klijenta.

- **in_data**  
  Ulazni podatkovni signal Avalon-ST interfejsa koji nosi bajtove primljenog TCP segmenta (dolazi sa servera/mreže).

- **in_valid**  
  Signal koji označava da su podaci na signalu `in_data` važeći.

- **in_sop**, **in_eop**  
  Signali koji označavaju početak i kraj TCP segmenta.

- **out_ready**  
  Signal kojim okruženje označava spremnost za prihvatanje izlaznih podataka.

### Izlazni signali

- **out_data**  
  Izlazni podatkovni signal Avalon-ST interfejsa koji nosi bajtove TCP segmenta koji se šalje (prema serveru).

- **out_valid**  
  Signal koji označava da su podaci na signalu `out_data` važeći.

- **out_sop**, **out_eop**  
  Signali koji označavaju početak i kraj TCP segmenta na izlazu.

- **in_ready**  
  Signal kojim modul označava spremnost za prihvatanje ulaznih podataka.

- **is_connected**  
  Statusni signal koji označava da je TCP konekcija uspješno uspostavljena.


## Ready/Valid rukovanje (Avalon-ST)

Prijenos podataka na Avalon-ST interfejsu realizuje se korištenjem ready/valid rukovanja. Prenos/prijem podataka će se vršiti isključivo u taktovima u kojima su signali `valid` i `ready` istovremeno aktivni. U slučaju da jedan od signala nije aktivan, prijenos ili prijem podataka se odgađa bez gubitka informacija. Ovakav mehanizam omogućava pouzdanu sinhronizaciju između modula različitih brzina rada.


## Modeliranje upravljačke logike
### FSM dijagram
### Opis FSM stanja

## Simulacija i verifikacija
### WaveDrom dijagrami
### Opis testnih scenarija

## Implementacija


## Literatura
[1] Kurose, James F., and Keith W. Ross. "Computer networking: A top-down approach edition." Addision Wesley 12 (2007).
