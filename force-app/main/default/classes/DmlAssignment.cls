public class DmlAssignment {
    public static void insertAccount() {
        List<Account> listAcc = new List<Account>();
        Account acc = new Account();
        acc.name='Assignment 1';
        acc.phone='5256875098';
        acc.site='site21';
        acc.website='odev21@gmail.com';
        listAcc.add(acc);

        Account acc1 = new Account();
        acc1.name='Assignment 2';
        acc1.phone='5256874658';
        acc1.site='sit21';
        acc1.website='odev21_2@gmail.com';
        listAcc.add(acc1);

        insert listAcc;

        System.debug('Accountlar insert edildi :');
        System.debug('id: '+acc.id+ ' name: '+acc.name);
        System.debug('id: '+acc1.id+ ' name: '+acc1.name);

    }
    public static void updateAccount() {
        List<Account> listAcc = [SELECT id,name FROM Account WHERE name IN ('Assignment 1', 'Assignment 2') ORDER BY CreatedDate DESC];
        List<Account> listUpd = new List<Account>();
        for (Account eachAcc : listAcc) {
            eachAcc.phone='22333444';
            eachAcc.Name=eachAcc.name+ 'updated';
            listUpd.add(eachAcc);
        }
        update listUpd;
        
    }
    public static void deleteAccount() {
        List<Account> listAcc = [SELECT id,name FROM Account WHERE name IN ('Assignment 1 updated', 'Assignment 1 updated')];
        delete listAcc;

        System.debug('Silinen Accountlar');
        for (Account acc : listAcc) {
            System.debug('id-> '+acc.id+ 'name-> '+acc.name);
        }
    }
    public static void insertOpp() {
        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i <= 149; i++) {
            Opportunity opp = new Opportunity();
            opp.Type='New Customer';
            opp.StageName='Qualification';
            opp.CloseDate=date.newInstance(2024, 02, 02);
            opp.name='Homework'+i;
            opp.Description='Odev icin insert islemi gerceklestirildi.';
            listOpp.add(opp);
            
        }
        insert listOpp;
        
    }
    public static void deleteOpp() {
        List<Opportunity> oppSoql =[select id from Opportunity where name like 'Homework%'];
        delete oppSoql;
        
    }
    public static void insertCon(){
        Account acc= [select id,name from Account where id='0033x00003DnCOuAAN' LIMIT 1];
        List<Contact> listCont = new List<Contact>();
        for (Integer i = 0; i <= 3; i++) {
            contact con= new contact();
            con.LastName='Event Planner';
            con.Phone='+123457896';
            con.AccountId= acc.id;
            con.LeadSource='Web';
            listCont.add(con);

            
        }
        insert listCont;
        
    }
}