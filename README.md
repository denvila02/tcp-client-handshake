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

### Tok uspostave TCP konekcije (klijentska strana)
#### Slučaj 1: Uspješna uspostava konekcije

Slučaj prikazuje standardni three-way handshake proces. Nakon aktivacije signala `connect`, klijent šalje TCP SYN segment prema serveru. Server odgovara SYN+ACK segmentom, nakon čega klijent šalje završni ACK segment. Uspješna uspostava konekcije indicira se postavljanjem signala `is_connected` na logičku vrijednost '1'.

#### Slučaj 2: Izostanak odgovora servera

Nakon slanja TCP SYN segmenta, klijent ne prima odgovarajući SYN+ACK odgovor sa serverske strane. Modul ostaje u stanju čekanja odgovora i ne prelazi u završnu fazu uspostave konekcije, pri čemu signal `is_connected` ostaje na logičkoj vrijednosti '0'.

Navedeni slučajevi predstavljaju osnovu za modeliranje upravljačke logike pomoću FSM dijagrama, kao i za definisanje scenarija, te izradu WaveDrom dijagrama koji grafički prikazuju ponašanje signala kroz vrijeme.

## Opis dizajna modula

Modul `tcp_client` realizuje klijentsku stranu uspostave TCP konekcije. Upravljačka logika je implementirana kao konačni automat (FSM) koji upravlja redoslijedom slanja i prijema TCP segmenata, dok se komunikacija sa okruženjem ostvaruje putem Avalon-ST interfejsa.

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

Prijenos podataka na Avalon-ST interfejsu realizuje se korištenjem ready/valid rukovanja. Prijenos ili prijem podataka vrši se isključivo u taktovima u kojima su signali `valid` i `ready` istovremeno aktivni, dok se u suprotnom prenos odgađa bez gubitka informacija.

## Simulacija i verifikacija
### Opis testnih scenarija

Verifikacija funkcionalnosti modula `tcp_client` vrši se simulacijom karakterističnih testnih scenarija koji pokrivaju uspostavu TCP konekcije i ponašanje modula u prisustvu ready/valid rukovanja na Avalon-ST interfejsu.

#### Testni scenarij 1: Uspješna uspostava TCP konekcije

Simulira se standardni three-way handshake proces. Nakon aktivacije signala `connect`, modul generiše TCP SYN segment koji se šalje prema serveru. Server odgovara SYN+ACK segmentom koji se ispravno prima preko ulaznog Avalon-ST interfejsa (`in_valid`, `in_sop`, `in_eop`). Na osnovu primljenog odgovora, modul šalje završni ACK segment i postavlja signal `is_connected` na logičku vrijednost '1', čime se potvrđuje uspješna uspostava TCP konekcije.

Wavedrom dodat

#### Testni scenarij 2: Izostanak očekivanog SYN+ACK odgovora

U ovom scenariju modul šalje TCP SYN segment, ali ne prima odgovarajući SYN+ACK odgovor sa serverske strane. Modul ostaje u stanju čekanja odgovora i ne šalje završni ACK segment. Signal `is_connected` ostaje na logičkoj vrijednosti '0', čime se potvrđuje da konekcija nije uspostavljena.

Wavedrom dodat

#### Testni scenarij 3: Odgoda prenosa usljed ready/valid rukovanja

Ovaj testni scenarij provjerava ispravnost ready/valid mehanizma Avalon-ST interfejsa. Tokom slanja TCP segmenta, signal `out_ready` se privremeno postavlja na logičku vrijednost '0', čime se simulira nespremnost prijemnika. Modul zadržava izlazne podatke i ne vrši prenos sve dok `out_ready` ne postane aktivan. Prijenos se nastavlja u taktovima u kojima su signali `out_valid` i `out_ready` istovremeno aktivni, bez gubitka podataka ili narušavanja redoslijeda segmenata.

Wavedrom dodat

## Modeliranje upravljačke logike
### FSM dijagram
### Opis FSM stanja
## Implementacija

## Zaključak

## Literatura
[1] Kurose, James F., and Keith W. Ross. "Computer networking: A top-down approach edition." Addision Wesley 12 (2007).
