public class DupeList {
	public void disp()
    {
        List<String> abc=new List<String>();
        abc.add('abc');
        abc.add('xyz');
        abc.add('pqr');
        abc.add('opq');
        abc.add('abc');
        abc.add('opq');
        System.debug('before conversion'+abc);
        
        List<String> xyzee=new List<String>();
		for(String str:abc) 
        {
            if(!xyzee.contains(str))
                xyzee.add(str);
        }
         System.debug('after conversion'+xyzee);
    }
}