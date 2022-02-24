trigger bonustrigg on customerinfo__c (before insert)
{
        for(customerinfo__c ob:Trigger.New)
        {
                if(ob.Type_of_Account__c == 'salary')
                {
                    Integer IntrandomNumber = Integer.valueof((Math.random() * 1000));
                    ob.Balance__c = ob.Balance__c + 50;
                    ob.Comments__c = 'U won Voucher' + 'v ' + IntrandomNumber;
                }
            
        }


}