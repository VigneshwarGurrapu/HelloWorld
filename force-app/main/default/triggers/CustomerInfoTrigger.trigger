trigger CustomerInfoTrigger on customerinfo__c (after insert)
{
    try{
            for(customerinfo__c obj:Trigger.old)
            {
                if(obj.Senior_Citizen__c=='yes')
                {
                    obj.Rate_of_Interest__c=5.0;    
                }
            }
       }
    catch(Exception e)
    {
        System.debug(e.getLineNumber()+e.getStackTraceString());
    }
}