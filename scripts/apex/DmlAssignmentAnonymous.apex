DmlAssignment.insertAccount();
DmlAssignment.updateAccount();
DmlAssignment.deleteAccount();
DmlAssignment.insertOpp();
DmlAssignment.deleteOpp();
DmlAssignment.insertCon();

account acc= new Account(
    name='Summer Fest LLC',
    ParentId='0013x00002SJFZeAAP',
    type='Tecnology Partner',
    Rating='Hot',
    AnnualRevenue=2000000000
);
insert acc;