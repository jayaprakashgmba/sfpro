public class ContactBatch implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator([SELECT Id FROM Contact]);
    }
    public void execute(Database.BatchableContext bc, List<Contact> scope) {
        for (Contact c : scope) {
            c.Description = 'Updated by Batch';
        }
        update scope;
    }
    public void finish(Database.BatchableContext bc) {
        System.debug('Batch job finished');
    }
}