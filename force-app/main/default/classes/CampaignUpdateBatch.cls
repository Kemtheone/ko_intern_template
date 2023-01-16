public  class CampaignUpdateBatch {

    public Database.QueryLocator start(Database.BatchableContext bc) {
        string query = 'SELECT Id, Name, Status, EndDate FROM Campaign WHERE EndDate = Date.today()-1';
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext bc, List<sObject> scope) {
        List<Campaign> campList = (List<Campaign>) scope;
        for(Campaign camp: campList) {
            camp.Status = 'Expired';
        }
        update campList;
    }

    public void finish(Database.BatchableContext bc) {

    }
}
