Ogrenci ogrenci1= new Ogrenci();
ogrenci1.firstName='Mary';
ogrenci1.lastName='Doe';
ogrenci1.className='6-E';
ogrenci1.language='English';
ogrenci1.art=true;
ogrenci1.sport=false;
ogrenci1.ingGrade=100;
ogrenci1.fenGrade=95;
ogrenci1.mathGrade=99;
System.debug('ogrenci1=>'+ ogrenci1);
System.debug('************');

Ogrenci ogrenci2= new ogrenci();
ogrenci2.firstName='hakan';
ogrenci2.lastName='sukur';
ogrenci2.className='6-E';
ogrenci2.language='spanish';
ogrenci2.art=true;
ogrenci2.sport=true;
ogrenci2.ingGrade=100;
ogrenci2.fenGrade=100;
ogrenci2.mathGrade=100;
System.debug('ogrenci2=>'+ ogrenci2);
System.debug('************');




Ogrenci ogrenci3= new Ogrenci('Mona','Lisa',99);
System.debug('ogrenci 3=> '+ ogrenci3);
System.debug('************');

Ogrenci ogrenci4= new Ogrenci('Ali','Can',88);
System.debug('ogrenci 4=> '+ ogrenci4);
System.debug('************');
