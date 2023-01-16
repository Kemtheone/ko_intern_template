global class CampaignUpdateScheduler implements Schedulable{
    global void execute(SchedulableContext sc) {
        CampaignUpdateBatch cmpBatch = new CampaignUpdateBatch();
        Database.executeBatch(cmpBatch, 200);
    }
}
