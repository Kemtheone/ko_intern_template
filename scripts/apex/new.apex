List<Campaign> campList = new List<Campaign>();
for(integer i =4; i<10; i++){
    Campaign camp = new Campaign();
    camp.Name = 'DC ' + i;
    camp.StartDate = Date.newInstance(2022,12,05);
    camp.EndDate = Date.newInstance (2023,01,31);
    camp.Target_Donation_Amount__c = 50.000;
    camp.Achieved_Donation_Amount__c = 15.000;
    camp.Status = 'Active';
    campList.add(camp);
    system.debug(camp);
}
insert campList;

List<Contact> conList = new List<Contact>();
for(integer i =1; i<10; i++){
    Contact con = new Contact();
    con.LastName = 'Donor ' + i;
    con.Email = 'askkeanoz@gmail.com';
    con.HasOptedOutOfEmail = false;
    conList.add(con);
    system.debug(con);
}
insert conList;