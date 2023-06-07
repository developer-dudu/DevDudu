public  class SoqlAndDml {

    //Opportunity 'si olan Accountlari getirip size 'ını return eden bir method create edin.
    public static integer getAccWithOpp() {
        //(size istedigi icin integer yazdik)
        set<id> IdAcc= new set<id>();
        list<opportunity> lstOpp=[select id,name,AccountId from Opportunity where accountId != null];
        for(opportunity opp:lstOpp){
            IdAcc.add(opp.accountId);
        }
        list<account> lstAcc=[select id,name from account where id in :IdAcc];
        system.debug(lstAcc.size());
        return lstAcc.size();
  
    }
    public static integer getAccWithOpp2() {
        list<account> lstAcc=[select id,name from account where id in (select AccountId from Opportunity where accountId != null)];
        system.debug(lstAcc.size());
        return lstAcc.size();
        
    }

    //name'i parametre olarak alan ve name ile Account create eden bir metot yazın?

    public static void createAccount (string isim){
        account acc= new Account();
        acc.name =isim;
        //required field yazilmazsa kayit gelmez.

        insert acc; //i(nsert kodlamada creat anlamina gelir.)
       
        //3.uygulama :aynı metot icinde o Accounta bağlı 5 tane de contact create etsin first name account'un ismi olsun last name 'Contact' olsun ve 1 2 3 4 5 şeklinde sıralı isimlendirme olsun.

        list<contact> lstCon= new List<Contact>();
        for (Integer i = 1; i <=5; i++) {
            contact con = new  Contact();
            con.FirstName=acc.Name;
            con.LastName='Deneme'+i;
            con.AccountId=acc.Id;
            lstCon.add(con);

            
        }
            insert lstCon ;

    }
    //UYGULAMA 4:En buyuk AnnualRevenue si olan Accountu bulup Description a bugunun tarihini de ifade ederek bugun itibariyle en buyuk Annual Revenue ye sahip Account name = ….. AnnualRevenue = …….

    public static void highestAnnualRevenue() {
        account acc=[select id,name,annualrevenue,description from account where annualrevenue!=null order by AnnualRevenue desc limit 1 ];
        string message=date.today() +'tarihi itibari ile '+acc.name+' accountunun AnnualRevenue si = '+acc.annualrevenue+' tüm accountlar içinde en büyüktür.';
        acc.description=message;
        update acc;
        
    }

   

    }
    



  








