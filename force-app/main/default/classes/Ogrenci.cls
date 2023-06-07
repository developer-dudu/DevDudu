public  class Ogrenci {
    /*Ogrenci adında bir class
first name
last name
okulu(private)
sınıfı
ana dili
sanat/spor tercihi
ingilizce notu
matematik notu
fen bilgisi notu*/

public integer ogrenciSayisi=0;
public static Integer statiksayi=0;


public string firstName;
public string lastName;
private string schoolName='Dream School';
public string className;
public string language;
public Boolean art;
public Boolean sport;
public Integer ingGrade;
public Integer fenGrade;
public Integer mathGrade;


    public Ogrenci() {
        ogrenciSayisi++;
        statiksayi++;
        system.debug ('yeni bir ogrenci kaydoldu.ogrenci sayimiz(nonstatik)=> '+ ogrenciSayisi);
        system.debug ('yeni bir ogrenci kaydoldu.ogrenci sayimiz(statik)=> '+ statikSayi);

    }
    public Ogrenci(string firstName, string lastName,Integer mathGrade){
        this();
        this.firstName=firstName;
        this.lastName=lastName;
        this.mathGrade=mathGrade;
    }
}