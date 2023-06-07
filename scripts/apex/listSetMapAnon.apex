List<string> kahramanlar = new List<string>{'super', 'bat', 'he', 'iron', 'spider', 'ant'};
List<string> heros = new List<string>();
heros = ListSetMap.heros(kahramanlar);
System.debug(heros);

List<integer> sayilar = new List<integer>{22, 11, 35, 5, 9, 63};
integer minNumber = ListSetMap.minNumber(sayilar);
System.debug('listenin en kucuk sayisi = ' + minNumber);

integer minNumber2 = ListSetMap.minNumber2(sayilar);
System.debug('listenin en kucuk sayisi(sort) = ' + minNumber2);

List<integer> numbers = new List<integer>{22, 33, 71, 99, 44, 26, 14, 11, 35, 5, 9, 63};
ListSetMap.tekCiftSayilar(numbers);




//sehirlerin oldugu bir liste yapalim..
List<String> sehirler = new List<String>{'Istanbul', 'New York', 'Berlin', 'Amsterdam', 'London', 'New York'};
System.debug('sehirler listesi = ' + sehirler);

//ulkelerin oldugu bir set yapalim..
Set<String> ulkeler = new Set<String>{'Turkey', 'USA', 'Canada', 'TURKEY', 'Germany', 'Nederland'};
System.debug('ulkeler listesi = ' + ulkeler);

Set<String> setSehirler = new Set<String>();
setSehirler.addAll(sehirler);
System.debug('set sehirler list = ' + setSehirler);

//ogrenci numaralarini key isimlerini value olarak alan bir map olusturalim..
//11='John', 16='Jane', 22='Ayse', 33='Mucahit', 35 = 'Nesibe', 16='Marry', 44='John' 
Map<integer, string> mapOgrenci = new Map<integer, string>();
mapOgrenci.put(100, 'Can');
mapOgrenci.put(24, 'Murat');
mapOgrenci.put(145, 'SERDAR');
mapOgrenci.put(26, 'Sibel');
mapOgrenci.put(27, 'Zeynep');
mapOgrenci.put(28, 'Gulsum');
mapOgrenci.put(29, 'Ibrahim');
System.debug('map ogrenci = ' + mapOgrenci);
Set<integer> ogrenciNo = new Set<integer>();
ogrenciNo = mapOgrenci.keySet();
System.debug('ogrenci no = ' + ogrenciNo);


