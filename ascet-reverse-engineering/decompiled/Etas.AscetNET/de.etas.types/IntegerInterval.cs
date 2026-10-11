using System.Runtime.InteropServices;

namespace de.etas.types;

[ComVisible(false)]
public class IntegerInterval : Interval
{
	public int min;

	public int max;

	public IntegerInterval(int mn, int mx)
	{
		if (mn <= mx)
		{
			min = mn;
			max = mx;
		}
		else
		{
			min = mx;
			max = mn;
		}
	}
}
