public class Matrix 
{
	public void matrix()
    {
       // List<Integer> abc[][]=new List<Integer>[[1,2,3],[2,3,4]];;
      // List<List<Integer>> abc=new List<List<Integer>>();
        // List<Integer> l1=new List<Integer>{1,2,3}; //1d array
      List<List<Integer>> abc=new  List<List<Integer>>();
        List<Integer> l1=new List<Integer>{1,2,3};
             List<Integer> l2=new List<Integer>{1,2,3};
         List<Integer> l3=new List<Integer>{1,2,3};
             /*List<List<Integer>> xyz=new  List<List<Integer>>{
                new List<Integer>{1,2,3},
                new List<Integer>{1,2,3},
                new List<Integer>{1,2,3}
             };*/
             abc.add(l1);
        	 abc.add(l2);
        	 abc.add(l3);
        System.debug(abc);
      /*  for(Integer i=0;i<3;i++)
        {
            for(Integer j=0;j<3;j++)
            {
                l1[i][j]=abc.get(i).get(j);
            }
                
        }*/
    }
    
}