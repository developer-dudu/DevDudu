trigger ContactTrigger on Contact (before insert ,after insert, before update, after update, before delete,after delete) {
  //SORU  1:
 //Contact lastName her değiştirildiğinde, Contact Trigger Contactın description fieldına aşağıdaki mesajı yazdırsın.
 //Mesaj:lastName   değiştirildi   -   [OldLastName],   [NewLastName]olarak değiştirildi.
  if (Trigger.isBefore && Trigger.isUpdate) {
    for (Contact eachCont : Trigger.new) {
      if (eachCont.LastName != Trigger.oldMap.get(eachCont.Id).LastName) {
        eachCont.Description= 'lastName degistirildi!' + trigger.oldMap.get(eachCont.Id).LastName+ '=>'+ eachCont.LastName+ ' olarak degistirildi.';
        
      }
      
    }
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /*// Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, baska bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..
   if (trigger.isAfter) {
      // 1. asama insert
      if (trigger.isInsert || trigger.isUndelete) {
        ContactHandler.insertMethod(trigger.new);
      }
      // 2. asama update
      if (trigger.isUpdate) {
        ContactHandler.updateMetot(trigger.new, trigger.oldMap);
      }
      // 3. asama delete
      if (trigger.isDelete) {
        ContactHandler.deleteMetot(trigger.old);
      }
  }  */
   

}