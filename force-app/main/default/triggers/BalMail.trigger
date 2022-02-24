trigger BalMail on customerinfo__c (before update,before insert)
{
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();	
		 List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
		 List<String> sendTo = new List<String>();
    		sendTo.add('vigneshgangaputra1807@gmail.com');
 			sendTo.add('vasu34k@gmail.com');
 			sendTo.add('srinivask@dextara.com');
    mail.setToAddresses(sendTo);
		 mail.setSubject('Congratulations'); 
		 
	

	for(customerinfo__c obj:Trigger.New)
    {
        Integer dtDate = Date.valueOf(obj.AccountCreatedDate__c).year();
        System.debug(dtDate);
        if(dtDate==2022)
        {
            if(obj.Balance__c>=10000 && obj.Balance__c<100000)
            {
                obj.Comments__c='You are silver customer.please contact branch for new offers especially for u';
                String body =obj.Comments__c ;
                	mail.setHtmlBody(body);
             		mails.add(mail);
 					Messaging.sendEmail(mails);
            }
            else if(obj.Balance__c>=100000 && obj.Balance__c<1000000)
            {
                obj.Comments__c='You are gold customer.please contact branch for new offers especially for u';
                String body = obj.Comments__c;
                	mail.setHtmlBody(body);
		 			mails.add(mail);
 					Messaging.sendEmail(mails);
            }
            else if(obj.Balance__c>=1000000)
            {
                obj.Comments__c='You are platinum customer.please contact branch for new offers especially for u';
                String body = obj.Comments__c;
                	mail.setHtmlBody(body);
		 			mails.add(mail);
 					Messaging.sendEmail(mails);
            }
        }
    }
    	
}