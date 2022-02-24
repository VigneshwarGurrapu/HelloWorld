public class patterns
{
public void pattern()
{



for(integer i=1;i<5;i++)
{
string s=' ';
for(integer j=1;j<=i;j++)
{
if(j<=8-i )
{
s = s + 'x';
}
else
{
s = s + '_';
}
}

system.debug(s);
}
}
}