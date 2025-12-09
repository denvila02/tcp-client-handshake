# tcp-client-handshake
VHDL modul koji implementira klijentsku stranu uspostavljanja TCP konekcije. 
## Uvod
Transportni sloj pruža logičku komunikaciju između aplikacijskih procesa na različitim hostovima. Logička komunikacija podrazumjeva slanje poruka između hostova kao da su direktno povezani, bez brige o stvarnoj fizičkoj infrastukturi koja leži ispod. Pakete na transportnom sloju nazivamo segmentima. Protokoli na transportnom sloju su implementirani na krajnjim tačakama a ne na mrežnim ruterima. Jedan od tih protokola je TCP (Transmission Control Protocol). 
## TCP protokol i scenariji razmjene poruka
TCP protokol pruža pouzdanu, konekcijski orijentisanu komunikaciju između krajnjih korisnika. TCP koristi kontrolu toka, sequence numbere, tajmere, acknowlegmente te na taj osigurava da poruke koje su poslane budu ispravane i tačno po redosljedu slanja primljene[1].

## Literatura
[1] Kurose, James F., and Keith W. Ross. "Computer networking: A top-down approach edition." Addision Wesley 12 (2007).
