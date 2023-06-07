List<Account> s1 =[SELECT Id, Name, AnnualRevenue FROM Account where name like 'United'];
System.debug('Name i ‘United’ sıralı 6 karakteri ile başlayan tüm accountların id,name,annual revenue fieldlarını getirin' +s1);

List<Account> s2= [SELECT Id, Name, AnnualRevenue FROM Account where name like 'United%'];
System.debug('Name i ‘United%’ sıralı 7 karakteri ile tam eşleşen tüm accountların id,name,annual revenue fieldlarını getirin: '+ s2);

List<Account> s3 =[SELECT Id, Name, AnnualRevenue FROM Account where name like 'United%%'];
System.debug('Name i ‘United%’ sıralı 7 karakteri başlayan tüm accountların id,name,annual revenue fieldlarını getirin.'+s3) ;

List<Account> s4 =[SELECT id, name, annualrevenue FROM account where annualrevenue!=null ORDER BY AnnualRevenue DESC LIMIT 3];
System.debug('Annual Revenue field ı en yüksek olan ilk 3 account u getirin '+s4);

List<Account> s5 =[SELECT Id, Name, Phone, Rating, CreatedDate FROM Account LIMIT 1];
System.debug('En son create edilen account un name,rating ve phone bilgilerini getirin '+s5);

List<Contact> s6 =[SELECT Id, Title, Name, Email, account.name FROM Contact where title LIKE '%VP%'];
System.debug('Title ı VP yi içeren contact ların name,email ve account name bilgilerini getir '+ s6);

List<Opportunity> s7 =[SELECT Id, Name, StageName, Amount, CloseDate FROM Opportunity where stageName LIKE 'Closed Won'];
System.debug('Closed-Won’ olan tüm opportunity lerin name,amount ve close date bilgilerini getirin'+s7);

List<Opportunity> s8=[SELECT Id, Name, Amount FROM Opportunity where Amount > 100000];
System.debug('Amount u 100,00 den büyük olan tüm opportunity leri getirin. ' +s8);

List<Opportunity> s9=[SELECT name, account.name ,account.rating ,account.type FROM Opportunity where Account.Type= 'Customer - Direct'];
System.debug('Account type ı customer direct olan tüm opportuniy lerin name,accouhnt name,account rating bilgilerini getir '+s9);

list<salesforce_Ticket__c> s10 =[SELECT subject__c, status__c, recordTypeId, salesforce_project__r.status__c FROM salesforce_Ticket__c WHERE Salesforce_Project__r.status__c = 'Completed'];
System.debug('Salesforce Project status ü completed olan tüm salesforce ticket ların subject,status ve record type bilgilerini getirin '+s10);


