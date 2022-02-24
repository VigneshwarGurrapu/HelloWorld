public class Arrex {

  
	public void disp()
    {
        List<Integer> arr=new List<Integer>();
        arr.add(1);
        arr.add(2);
        arr.add(3);
         List<Integer> str=new List<Integer>();
        str.add(4);
        str.add(5);
        str.add(6);
        
            List<Integer> kkk=new List<Integer>();
            for(Integer q=0;q<3;q++)
            {
                arr.add(q,arr.get(q)+str.get(q));
               
            }
         System.debug(arr+'abc');
    }

}