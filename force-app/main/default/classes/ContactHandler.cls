public  class ContactHandler {
    public static void insertMethod(List<Contact> conTriggernew) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggernew) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
                
            }
            
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);

            
        }
    
    }
    public static void updateMetot(List<Contact> conTriggerNew, Map<Id,Contact> conTriggerOldMap) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggerNew) {
            contact oldCon = conTriggerOldMap.get(con.id);
            if (con.AccountId != oldCon.AccountId) {
                accIds.add(con.AccountId);
                accIds.add(oldCon.AccountId);
            }  
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);
        }
    }

    public static void deleteMetot(List<Contact> conTriggerOld) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggerOld) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);
        }
    }

    public static void numberOfContacts(Set<Id> accIds) {
        List<Account> accList = [select id, Number_of_Contacts__c, (select id from contacts) from Account where id in :accIds];
        for (account acc : accList) {
            acc.Number_of_Contacts__c = acc.Contacts.size();
        }
        update accList;
    }
}
