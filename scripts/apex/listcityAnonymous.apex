List<String> listCity = new List<String>{'Madrid','Amsterdam','Istanbul','New York','Paris','Toronto'};
System.debug('Listenin eleman sayisi: '+listCity.size());
System.debug('LIstenin ilk elemani: '+listCity[0]+ 've listenin son elemani: '+ listCity[listCity.size()-1]);
System.debug('Listede Istanbul var mi? '+listCity.contains('Istanbul'));
System.debug('Listede Roma var mi? '+listCity.contains('Roma'));
    for(String eachCity: listCity){
        System.debug(eachCity+ 'City');
    }

Set<String> setCity = new Set<String>();
setCity.addAll(listCity);
System.debug(setCity);
setCity.remove('Paris');
setCity.add('Istanbul');
setCity.add('Roma');
 System.debug('city set:' +setCity+ 've eleman sayisi: '+setCity.size());
 setCity.clear();
  System.debug('City setimiz bos mu? '+setCity.isEmpty());