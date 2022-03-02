public class PolymChild extends PolymorApex 
{	
	public override Integer sample(String str)
    {
        System.debug(str+' is a parameter of CHILD class method');
           return 0;   
    }
    public Integer sample(String str,Integer i)
    {
       	 System.debug(str+' and '+i+' are parameters of overloaded method');
                return 0;
    }
}