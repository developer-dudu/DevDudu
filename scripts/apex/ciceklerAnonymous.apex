Cicekler cicek1 = new Cicekler();
cicek1.setCicekAdi('Papatya');
cicek1.setAdet(23);
//mape eklemek icin getlere ihtiyacimiz var

String cckAd= cicek1.getCicekAdi();
Integer adt=cicek1.getAdet();
Cicekler.cicekSepeti.put(cckAd, adt);
System.debug(Cicekler.cicekSepeti);

System.debug('******');

Cicekler cicek2 = new Cicekler();
cicek2.setCicekAdi('Nergis');
cicek2.setAdet(33);

String cckAd2= cicek2.getCicekAdi();
Integer adt2=cicek2.getAdet();
Cicekler.cicekSepeti.put(cckAd2, adt2);
System.debug(Cicekler.cicekSepeti);

System.debug('******');

Cicekler cicek3 = new Cicekler();
cicek3.setCicekAdi('Sumbul');
cicek3.setAdet(3);

String cckAd3= cicek3.getCicekAdi();
Integer adt3=cicek3.getAdet();
Cicekler.cicekSepeti.put(cckAd3, adt3);
System.debug(Cicekler.cicekSepeti);

System.debug('******cicekEkle metodu calisiyor');

Cicekler.cicekEkle('Papatya', 2);
System.debug(Cicekler.cicekSepeti);

Cicekler.cicekEkle('Nergis', 2);
System.debug(Cicekler.cicekSepeti);

Cicekler.cicekEkle('Sumbul', 10);
System.debug(Cicekler.cicekSepeti);

Cicekler.cicekEkle('gul', 100);

System.debug('=====salesCicek metodu calisiyor');

Cicekler.salesCicek('Papatya', 20);
System.debug(Cicekler.cicekSepeti);

Cicekler.salesCicek('Nergis', 30);
System.debug(Cicekler.cicekSepeti);

Cicekler.salesCicek('Gul', 20);
System.debug(Cicekler.cicekSepeti);

System.debug('=====stok metodu calisiyor');
Cicekler.stok();