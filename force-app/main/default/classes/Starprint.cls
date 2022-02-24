public class Starprint {
	public void disp()
    { String str='*';
        for(Integer i=1;i<=4;i++)
        { 	str='';
            for(Integer j=1;j<=i;j++)
            {
               str=str+'*';
            }
            System.debug(str);
        }
    }
}