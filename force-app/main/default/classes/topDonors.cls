public with sharing class topDonors {
    public static void fetchTopDonors() {
        List<Account> topThree = [SELECT id, name, Total_Donation__c FROM Account WHERE isPersonAccount = TRUE AND Total_Donation__c != null ORDER BY Total_Donation__c DESC LIMIT 3 ];
        system.debug(topThree);
    }
}
