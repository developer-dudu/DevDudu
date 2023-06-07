@isTest

public  class OpportunityTriggerHandlerTest {
  @testSetup
  private static void makeData() {
    List<Account> accList= new List<Account>();
    Account acc1= new account();
    acc1.name='demo test 1';
    accList.add(acc1);
    Account acc2= new account();
    acc2.name='demo test 2';
    accList.add(acc2);
    Account acc3= new account();
    acc3.name='demo test 3';
    accList.add(acc3);
    
    insert accList;

List<Opportunity> OppList = new List<Opportunity>();
    for (Integer i = 1; i <= 300; i++) {
        Opportunity  opp= new Opportunity();
        opp.name= 'opportunity test '+i;
        opp.CloseDate=date.today().addDays(60);
        opp.StageName='Prospecting';
        if (i<= 100) {
            opp.Amount=100;
            opp.AccountId=accList[0].id;
             
            
        }else if(i<= 200) {
            opp.Amount=200;
            opp.AccountId=accList[1].id;

        }else {
            opp.Amount=300;
            opp.AccountId=accList[2].id;
        }
        OppList.add(opp);
    }
    insert OppList;
    //bu insert ayni zamanda insert metodumu da tetikliyor ve test etmis oluyor
   }
   @isTest
   private static void insertTest() {
    //acc1 e bagli opp.lerin amount toplamlari = 10.000
    //acc2 e bagli opp.lerin amount toplamlari = 20.000
    //acc3 e bagli opp.lerin amount toplamlari = 30.000

List<Account> accList = [select id, name,description from account];
    assert.isTrue(accList[0].Description.contains('10000'));
    assert.isTrue(accList[1].Description.contains('20000'));
    assert.isTrue(accList[2].Description.contains('30000'));
   }
   @isTest
   private static void updateTest() {
    List<Opportunity> oppList = new List<Opportunity>();
    Opportunity opp1=[select id,name ,amount from Opportunity where name = 'opportunity test 1'];
    opp1.Amount += 1;
    oppList.add(opp1);

    Opportunity opp2=[select id,name ,amount from Opportunity where name = 'opportunity test 300'];
    opp2.AccountId = null;
    oppList.add(opp2);

    test.startTest();
    update oppList;
    test.stopTest();
    //acc1 e bagli opp.lerin amount toplamlari = 10.001
    //acc2 e bagli opp.lerin amount toplamlari = 20.000
    //acc3 e bagli opp.lerin amount toplamlari = 29.700
    List<Account> accList = [select id, name,description from account];
    assert.isTrue(accList[0].Description.contains('10001'));
    assert.isTrue(accList[1].Description.contains('20000'));
    assert.isTrue(accList[2].Description.contains('29700'));

   }
   @isTest
   private static void deleteTest() {
    Opportunity opp= [SELECT id, name, amount,AccountId FROM Opportunity WHERE name = 'opportunity test 150'];

    id accId = opp.accountid;
    test.startTest();
    delete opp;
    test.stopTest();
    Account acc= [SELECT id,description FROM Account WHERE id =:accId];
    //acc2 ye bagli opplerin amount toplamlari=19800
    Assert.isTrue(acc.Description.contains('19800'));

   }
}
