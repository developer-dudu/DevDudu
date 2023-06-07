@isTest
public class ParametreliMetotlar16Test {
   @isTest
   private static void printWelcomeTest() {
    ParametreliMetotlar16 pm =new ParametreliMetotlar16();
    pm.printWelcome();
    
   }
   @isTest
   private static void welcomePersonTest() {
    ParametreliMetotlar16 pm =new ParametreliMetotlar16();
    pm.welcomePerson('John');

    
   }
   @isTest
   private static void toplamaTest() {
    ParametreliMetotlar16 pm =new ParametreliMetotlar16();
    Integer tplm= pm.toplama(11, 22);
    assert.areEqual(33, tplm);

//assert.isNotNull(tplm);
//assert.isTrue(tplm==33);

    
   }
   @isTest
   private static void artikYilTest() {
    ParametreliMetotlar16 pm =new ParametreliMetotlar16();
    date dt= date.newInstance(2023, 6, 12);
    Boolean result =pm.artikYil(dt);
    assert.isFalse(result);
    
   }
   @isTest
    private static void uzunlukTest() {
    ParametreliMetotlar16 pm =new ParametreliMetotlar16();
    integer uznlk = pm.uzunluk('merhaba');
        assert.areEqual(7, uznlk);
    }

        
    }
   
