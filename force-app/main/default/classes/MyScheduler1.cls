global class MyScheduler1 implements Schedulable  {
	global void execute(SchedulableContext sc)
    {
        HelperScheduler.display();
    }
}