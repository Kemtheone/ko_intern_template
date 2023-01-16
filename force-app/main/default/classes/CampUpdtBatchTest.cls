@isTest
public with sharing class CampUpdtBatchTest {
    @isTest
    public static void testData() {
        List<Campaign> cmpList = new List<Campaign>();
        for(integer i=0; i<4; i++){
            Campaign cmp = new Campaign();
            cmp.EndDate = Date.today()-1;
            cmpList.add(cmp);
        }
        insert cmpList;
    }

    @isTest
    private static void batchTest(){
        Test.startTest();
        CampaignUpdateBatch batchable = new CampaignUpdateBatch();
        Database.executeBatch(batchable);
        Test.stopTest();

        for(Campaign cmp : [Select Id FROM Campaign]) {
            System.assertEquals('Expired', cmp.Status);
        }
    }    
}
