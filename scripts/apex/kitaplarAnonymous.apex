list<Kitaplar> kitapList = new List<Kitaplar>();

Kitaplar kitap1= new Kitaplar();
kitap1.setKitapAdi('Calikusu');
kitap1.setYazar('R.Nuri Guntekin');
kitap1.setfiyat(19.99);
kitap1.details();
System.debug(kitap1);
kitapList.add(kitap1);
System.debug('kitap list => '+kitapList);

System.debug('********');

Kitaplar kitap2= new Kitaplar();
kitap2.setKitapAdi('1984');
kitap2.setYazar('George Orwell');
kitap2.setfiyat(17.99);
kitap2.details();
System.debug(kitap2);
kitapList.add(kitap2);
System.debug('kitap list => '+kitapList);

System.debug('********');

Kitaplar kitap3= new Kitaplar();
kitap3.setKitapAdi('Gun Olur Asra Bedel');
kitap3.setYazar('Cengiz Aytmatov');
kitap3.setfiyat(17.99);
kitap3.details();
System.debug(kitap3);
kitapList.add(kitap3);
System.debug('kitap list => '+kitapList);

//Kitaplar.toplamKitap();

//kitap listesinin her bir kitabini tek tek yazalim.
for (Kitaplar kitap : kitapList) {
    System.debug (kitap);
    System.debug (kitap.getKitapAdi());
    System.debug (kitap.getYazar());
    System.debug (kitap.getfiyat());
    
}


