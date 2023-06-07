public  class Cicekler {
    //cicek adi ve cicek adedi tutan 2 tane class variable
    string cicekAdi;
    integer adet;
    //cicekleri isimleri ve adetleri tutan 2 tane class variable
    public static map<String , integer> cicekSepeti = new Map<String,Integer>();
    public Cicekler() {

    }
    public Cicekler(string cicekAdi, Integer adet){
        this.cicekAdi=cicekAdi;
        this.adet=adet;
        cicekEkle(cicekAdi, adet);

    }
    public void setCicekAdi ( string cicekAdi){
    this.cicekAdi= cicekAdi;

}
    public void setAdet ( Integer adet){
    this.adet= adet;
}
    public String getCicekAdi(){
        return this.cicekAdi;
    }
    public integer getAdet(){
        return this.adet;
    }
    //bir addCicek metodu olusturalim . bu ,metod bir cicek ve adet eklemek istedigimizde once mapi kontrol edecek bu cicekten var mi ? varsa adeti ustune ekleyecek yoksa yeni bir deger ekleyecek.

    public static void cicekEkle(string cicekAdi, Integer adet){
        if (cicekAdi != null) {
           Boolean isCheck=  cicekSepeti.containsKey(cicekAdi);
           if(isCheck){
            integer newAdet =cicekSepeti.get(cicekAdi)+adet;
            cicekSepeti.put(cicekAdi, newAdet);

           }else {
            cicekSepeti.put(cicekAdi, adet);
           }

            
        } else {
            System.debug ('Lutfen bir cicek ismi girin...');
            
        }

    }
    //bir public static salesCicek metodu olusturalim . bu metod iki parametre alacak .cicej adi ve adet , bu cicek elimizde varsa ve istenen adedi verebiliyorsa sepetten dusecez yoksa olmadigini ifade edicez ...
    public static void salesCicek (String cicekAdi, integer adet){
        if (cicekAdi != null) {
            Boolean isCheck=  cicekSepeti.containsKey(cicekAdi);
            if (isCheck){
                if (cicekSepeti.get(cicekAdi)>= adet) {
                    integer newAdet=cicekSepeti.get(cicekAdi)-adet;
                    cicekSepeti.put(cicekAdi, newAdet);

                    
                } else {
                    System.debug('Bu cicekten istediginiz adet elimizde yoktur.');
                    System.debug (' Bu cicekten elimizdeki adet = '+cicekSepeti.get(cicekAdi)+ 'lutfen bu sayiya gore talebinizi yenileyin..');

                }
                } else {
                System.debug('Elimizde bu cicek bulunmamaktadir..');
            
            }

            
        } else {
            System.debug('lutfen bir cicek ismi girin...');
            
        }
    }
       //sepetimizdeki stogu kontrol edecek public static stok diye bir metot olusturalim..
       public static void stok() {
        if (!cicekSepeti.isEmpty()) {
            integer stok = 0;
            for(string cicek : cicekSepeti.keySet()){ 
                System.debug(cicek + ' ciceginden sepetimizde ' + cicekSepeti.get(cicek)+ ' tane cicek vardir..');
                stok += cicekSepeti.get(cicek);  
            }
            System.debug('Elimizde toplam = ' + stok + ' adet cicek var..');
        } else {
            System.debug('Sepette cicek bulunmamaktadir');
        }



}
}