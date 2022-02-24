global class BatchExample implements Database.Batchable<sObject>
{
	global Database.QueryLocator start(Database.BatchableContext bc)
    {
        String q='select Id,Name from Account';
        return Database.getQueryLocator(q);
    }
    global void execute(Database.BatchableContext bc,List<Account> aclist)
    {
        for(Account ac:aclist)
        {
            ac.Name=ac.Name+'Appended by batch job';
        }
        try
        {
        	    update aclist;
        }
        catch(Exception e)
        {
            System.debug(e.getMessage());
        }
    }
    global void finish(Database.BatchableContext bc)
    {
        List<String> str = new List<String>();
        str.add('Batch execution finished');
        System.debug(str);
    }
}