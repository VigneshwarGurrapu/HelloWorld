@isTest
public class TestQueueableExample 
{
	@isTest
    static void TestMe()
    {
        Test.startTest();
        Id op=System.enqueueJob(new QueueableExample());
        System.debug(op);
        Test.stopTest();
    }
        
}