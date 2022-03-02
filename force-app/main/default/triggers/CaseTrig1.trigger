trigger CaseTrig1 on Case (before insert) 
{
	for(Case c : Trigger.New)
    {
   		 	if (c.Origin == 'email')
    		{
      			 c.Status = 'working';
      			 c.Priority = 'Low';
   			}
    }
}