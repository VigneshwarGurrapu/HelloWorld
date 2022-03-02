public virtual class PolymorApex 
{
	 public virtual Integer sample(String str)
    {
        System.debug(str+' is a parameter of PARENT class method');
        return 0;
    }
}