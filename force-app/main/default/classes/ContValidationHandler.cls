public with sharing class ContValidationHandler {
    public static void name(List<Contact> TriggerNew, 
                            List<Contact> TriggerOld, 
                            Map<Id,Contact> TriggerNewMap, 
                            Map<Id,Contact> TriggerOldMap) {
        Set<Id> cntIds = new Set<Id>();
        for (Contact eachCnt : TriggerNew) {
            cntIds.add(eachCnt.Id);
        }

        //List<Contact> contList = [SELECT Id, AccountId FROM Contact WHERE AccountId= :cnt.AccountId];
        set<Id> allCntId = [SELECT Id, AccountId FROM Contact WHERE AccountId = :cntIds];
        if (allCntId) {
            
        }



 /*       
        for (Contact cnt : TriggerNew) {
            //contList = [SELECT Id, AccountId FROM Contact WHERE AccountId= :cnt.AccountId];
            if (contList.size()>3) {
                cnt.addError('You cannot add more than 10 contacts');
            }
        }
  */      
    }
    
}