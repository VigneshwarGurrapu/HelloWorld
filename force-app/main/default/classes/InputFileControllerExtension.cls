public class InputFileControllerExtension
{
    public Account acct 
    {
        get;
        set;
    }
    public Attachment attachment {get;set;}
     ApexPages.StandardController stdController;
    public PageReference save()
    {
        if(acct.Name != null){
           insert acct;    

           attachment.parentid = acct.id;
           insert attachment;
        }

        return null;
    }
    public InputFileControllerExtension(ApexPages.StandardController stdController)
    { 
        attachment = new Attachment();
        this.acct = (Account)stdController.getRecord();
        this.stdController = stdController;
    } 
   
}