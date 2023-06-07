public class Kitaplar {
    string kitapAdi;
    string yazar;
    Decimal fiyat; 
    static integer kitapSayisi=0;

    public Kitaplar() {
        kitapSayisi++;
        System.debug ('Kutuphanemize yeni bir kitap eklendi..Kitap sayimiz '+ kitapSayisi+ ' oldu.');


    }
    public void setKitapAdi (string kitapAdi){
        this.kitapAdi= kitapAdi;
    }
    public string getKitapAdi(){
        return this.KitapAdi;

    }
    public void setYazar (string yazar){
        this.yazar= yazar;
    }
    public string getYazar(){
        return this.yazar;
        
}
    public void setfiyat (decimal fiyat){
    this.fiyat= fiyat;
    }

    public decimal getfiyat(){
    return this.fiyat;
}
    public void details(){
        System.debug ('Kitap Adi : '+ this.kitapAdi);
        System.debug ('Kitabin Yazari : '+ this.yazar);
        System.debug ('Fiyati : '+ this.fiyat);
        System.debug('Toplam kitap sayisi: '+kitapSayisi);

    }
    public static void toplamKitap() {
        System.debug('Toplam Kitap Sayisi : ' + kitapSayisi);
    }


}