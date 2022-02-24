global class BatchScheduler implements Schedulable 
{
	global void execute(SchedulableContext sc)	
    {
        BatchExample ob = new BatchExample();
        Id batchid = Database.executeBatch(ob,100);
        System.debug(batchid);
    }
}