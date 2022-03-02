public class CustomControllervsp1 
{

 public  Visualforce_Example__c vsp;
 
    public CustomControllervsp1() {
        vsp = [SELECT Id, Name,Emp_id__c,Salary__c FROM Visualforce_Example__c 
                   WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }
 
    public Visualforce_Example__c getvsp() {
        return vsp;
    }
 
    public PageReference save() {
        update vsp;
        return null;
    }
    public PageReference deleteit() {

        delete vsp;
        return null;
    }
}