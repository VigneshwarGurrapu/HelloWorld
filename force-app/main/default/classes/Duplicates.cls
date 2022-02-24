public class Duplicates {
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
        Set<String> sett=new Set<String>();
        sett.addAll(abc);
        System.debug('After conversion'+sett);
    }
}