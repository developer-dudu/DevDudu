Map <Integer, String> sehirPlaka = new Map <Integer, String> {34=>'Istanbul', 16=> 'Bursa',35=> 'Izmir', 42=> 'Konya', 27=> 'Gaziantep'};
System.debug('Mapimizde 34(Istanbul)var mi? '+ sehirPlaka.containsKey(34)+ '. /Mapimizde 07(Antalya) var mi? '+sehirPlaka.containsKey(07));
System.debug ('Mapimizin eleman sayisi; '+ sehirPlaka.size());
sehirPlaka.remove(16);
System.debug(sehirPlaka);

set<Integer> plaka = sehirPlaka.keySet();
List<String> sehir= sehirPlaka.values();
 System.debug('Plaka seti: '+plaka+ 've sehirlerin listesi '+sehir);
