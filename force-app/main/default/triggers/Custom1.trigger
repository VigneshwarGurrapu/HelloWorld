trigger Custom1 on customerinfo__c (before update,before insert) {
	for(customerinfo__c obj:Trigger.New)
    {
        Integer dtDate = Date.valueOf(obj.AccountCreatedDate__c).year();
        System.debug(dtDate);
        if(dtDate==2022)
        {
            if(obj.Balance__c>=10000 && obj.Balance__c<100000)
            {
                obj.Comments__c='You are silver customer.please contact branch for new offers especially for u';
            }
            else if(obj.Balance__c>=100000 && obj.Balance__c<1000000)
            {
                obj.Comments__c='You are silver customer.please contact branch for new offers especially for u';
            }
            else if(obj.Balance__c>=1000000)
            {
                obj.Comments__c='You are silver customer.please contact branch for new offers especially for u';
            }
        }
    }
}