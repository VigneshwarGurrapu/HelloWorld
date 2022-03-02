public class Evensum 
{
	public Integer evenadd()
    {
        List<Integer> exm = new List<Integer>();
        Integer sum = 0;
        for(Integer i=1;i<=200;i++)
        {
            exm.add(i); 
        }
       
		for(Integer j=2;j<200;j+=2)
        {
            sum=sum+exm[j];
        }
         System.debug(sum);
        return sum;
    }
}