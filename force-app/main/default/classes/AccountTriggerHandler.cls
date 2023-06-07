public  class AccountTriggerHandler {
   /*public static void createContact(List<Account> accNew) {
        List<Contact> conList = new List<Contact>();
            for (account acc : accNew) {
                Contact con = new Contact();
                con.LastName = 'Contact';
                con.AccountId = acc.id;
                conList.add(con);
            }
            insert conList;
    }*/
    @future
    public static void futureCreateContact(set<id> accIds) {
        List<Contact> conList = new List<Contact>();
        for (id accId : accIds) {
            Contact con = new Contact();
            con.LastName = 'Contact';
            con.AccountId = accId;
            conList.add(con);
        }
        insert conList;
    }

    //Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
    public static void descriptionUpdate(List<Account> accNew, Map<Id,Account> accOldMap) {
        set<id> accIds = new Set<id>();
        for (Account acc : accNew) {
            if (acc.Description != accOldMap.get(acc.id).Description) {
                accIds.add(acc.id);
            }
        }
        if (!accIds.isEmpty()) {
            futureUpdateDescription(accIds);
            
        }
    }

    @future
    public static void futureUpdateDescription(set<id> accIds) {
        List<contact> conList = [select id, description, account.description from contact where AccountId =: accIds];
        for (contact con : conList) {
            con.Description = con.account.Description;
        }
        update conList;

        List<opportunity> oppList = [select id, description, account.description from opportunity where AccountId =: accIds];
        for (opportunity opp : oppList) {
            opp.Description = opp.account.Description;
        }
        update oppList;
    }
}






















    //SORU 4:
//Bir Account oluştuğunda, o Account'a bağlı bir Opportunity ve   bir   Contact   oluşturan   bir   trigger   (triggerHandlerClass) tasarlayınız.
   /* public static void createAccAndOpp(List<Account> triggerNew) {
        List<Opportunity> listOpp = new List<Opportunity>();
        List<Contact> listCont = new List<Contact>();
        for (Account acc : triggerNew) {
            Opportunity opp= new Opportunity();
            opp.AccountId= acc.Id;
            opp.Name=acc.name;
            opp.CloseDate=date.today().addDays(3);
            opp.StageName= 'Prospecting';
            listOpp.add(opp);

            Contact con= new Contact();
            con.LastName= acc.name;
            con.AccountId=acc.Id;
            listCont.add(con);
            
        }
        insert listOpp;
        insert listCont;*/

        
    
   
   
   
   
   
   










    //SORU 3:
//Aynı   isimde   birden   fazla   Account   oluşmasına   müsade etmeyen bir trigger (triggerHandlerClass) tasarlayınız.
    /*public static void uniqueName(List<Account> accTriggerNew) {
        List<String> newName= new List<String>();
        
        for (Account acc : accTriggerNew) {
            newName.add(acc.Name);
            
        }
        List<Account> accUnique= [select name from account where name in: newName];

        for (account  acc : accTriggerNew) {
            if (accUnique.isEmpty()== false) {
                acc.addError('Ayni isimde birden fazla account olusturamazsiniz!');
                
            }
            
        }
    }*/
