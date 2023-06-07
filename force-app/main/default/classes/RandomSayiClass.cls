public  class RandomSayiClass {

//4. Parametre olarak integer bir değer alan bir metot yazın. Bu metot içinde; Bilgisayar 1'den 10'a kadar rastgele bir sayı oluşturacak. bu metot parametre ile bilgisayarın oluşturduğu sayıyı karşılaştıracak esitse  'dogru tahmin kazandiniz', degilse 'yanlis tahmin tekrar deneyin' mesaji dönecek.

    public static integer oyunsayisi=0;
    public static Integer skor=0;
    public static String Random(integer sayi) {
        string mesaj;
        Integer bilgisayarSayisi=Math.round(Math.random()*10);
        if (sayi>=0 && sayi<=10){
            oyunsayisi++;
            System.debug('======='+oyunsayisi+ '. Oyun======');
            
            if(bilgisayarSayisi==sayi){
                mesaj='dogru tahmin.. kazandiniz!';
                skor++;
            }else{
                mesaj ='yanlis tahmin..tekrar deneyin!';

            }

        }else {
            mesaj='lutfen 1den 10a kadar bir sayi girin..';
        }
        System.debug('bilgisayarin sayisi '+bilgisayarSayisi);
        System.debug('benim sayim '+ sayi);
        System.debug(oyunsayisi + 'oyun oynadiniz.. dogru tahmin sayiniz= '+skor);

        return mesaj;

    }
}