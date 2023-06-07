trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
   
   if (Trigger.isAfter && Trigger.isInsert) {

    //1 Account create edildiğinde. ona bağlı 1 tane Contact otomatik olarak create edilsin. last name i contact diye isimlendirilsin.. future metot ile..
   
    //AccountTriggerHandler.createContact(trigger.new);
    /*List<Contact> conList = new List<Contact>();
    for (account acc : trigger.new) {
        Contact con = new Contact();
        con.LastName = 'Contact';
        con.AccountId = acc.id;
        conList.add(con);*/
   // }
    //insert conList;
 
   
   
}
if (trigger.isAfter && trigger.isUpdate) {
    AccountTriggerHandler.descriptionUpdate(trigger.new, trigger.oldMap); 
    
   
    
    
   // if (Trigger.isBefore && Trigger.isInsert) {
    
    
    
    
    
    
    
    
    
    
       // if (Trigger.isAfter && Trigger.isInsert) {
   //AccountTriggerHandler.createAccAndOpp(trigger.New);
    
   }
   
}
   
   
   
   
   
   
   
    //if (Trigger.isBefore && Trigger.isInsert) {
   // AccountTriggerHandler.uniqueName(Trigger.New);
    
   //}
   
   
   
   
   
   
   
   
   
   
   
    /*if (Trigger.isBefore && Trigger.isUpdate) {
    for (Account acc : Trigger.new) {
        if (acc.AnnualRevenue > trigger.OldMap.get(acc.id).AnnualRevenue) {
            acc.Description= acc.AnnualRevenue - trigger.oldMap.get(acc.Id).AnnualRevenue + ' Annual revenue artti!';
        }
        if (acc.AnnualRevenue > trigger.OldMap.get(acc.id).AnnualRevenue) {
            acc.Description=trigger.oldMap.get(acc.Id).AnnualRevenue - acc.AnnualRevenue+ 'Annual revenue azaldi!';
            
        }
        
    }
    
   }*/
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    /* //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
    if (trigger.isInsert && trigger.isAfter) {
        List<Account> accList = trigger.new;
        List<Contact> conList = new List<Contact>();
        for (Account acc : accList) {
            for (Integer i = 1; i <= 7; i++) {
                contact con = new contact();
                con.FirstName = acc.Name;
                con.LastName = 'Contact ' + i;
                con.AccountId = acc.id;
                conList.add(con);
            }
        }
        insert conList;
    }
     // 2. Bir account update edildiğinde name değişmişse description fieldine name değişti mesajı yazdır..
     if (trigger.isUpdate && trigger.isBefore) {
        for (account acc : trigger.new) {
            //yeni isim ile eski ismi karsilastirip degisiklik varsa description mesaji yazilacak..
            if (acc.name != trigger.oldMap.get(acc.id).Name) {
                acc.Description = 'Bu recordun ismi update edildi..';
            }
        }
    }*/
    
    

