public class SoqlUygulamalar {

    public static void selectIndustry(string indstry) {
        //Account recordlarindan industry Education olanlarin listesinin record sayisini bulup her bir accountun ismini tek tek yazdiralim.
        
        //List<Account> accList = [select id, name, industry from account where industry = 'Education'];
        System.debug('========selectIndustry Metodu Calisti==========');
        List<Account> accList = [select id, name, industry from account where industry = :indstry limit 1];

        System.debug('listemiz = ' + accList);
        integer recordSayisi = accList.size();
        System.debug('Accountlarin record sayilari = '+ recordSayisi);
        for (account acc : accList) {
            System.debug('record = ' + acc);
            System.debug('==================');
            System.debug('name = ' + acc.name);
            System.debug('industry = '+ acc.Industry);
            System.debug('==================');
        }
        System.debug('===========Metot bitti================');
    }

    //Contactlari bagli olduklari accountlarin name ve annualRevenue leri ile beraber getirelim.. annualRevenue bos olanlar gelmesin
    public static void  childToParent(){
        List<Contact> conList =[select id, name, account.name , account.annualRevenue from contact where account.annualRevenue != null];
        System.debug('Listemin record sayisi = '+ conList.size());
        for (Contact con : conList) {
            System.debug(con.name +' contactin bagli oldugu accontun name = ' + con.account.name+ ' ve bu accountun yillik cirosu = '+con.account.AnnualRevenue);
            
        }
    }
    public static void parentToChild (){
        //en son create edilen 5 accountu bagli oldugu contactlari ile beraber getirin.

        List<Account> accList = [SELECT Id, Name, CreatedDate, (select id, name from contacts),(select id, name from Opportunities) FROM Account order by createdDate];

        for (account acc: accList){
            if (!acc.contacts.isEmpty()) {
                System.debug('Account= '+ acc.name);
                System.debug('******contact***');
                System.debug('contactlar = '+ acc.Contacts);
                
            for (Contact con : acc.contacts) {
                System.debug('contacts name = '+ con.name);
                
            }
          
            }
            System.debug('******opprtunity*****');
            System.debug('opportunitiler = '+acc.Opportunities);
            for (Opportunity opp : acc.Opportunities) {
                System.debug('opp. name = '+ opp.name );
            }
           

            System.debug('-----------');
        }

    }

}