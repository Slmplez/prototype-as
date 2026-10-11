using System.Runtime.InteropServices;

namespace de.etas.types;

[ComVisible(false)]
public class FloatInterval : Interval
{
	public float min;

	public float max;

	public FloatInterval(double mn, double mx)
	{
		if (mn <= mx)
		{
			min = (float)mn;
			max = (float)mx;
		}
		else
		{
			min = (float)mx;
			max = (float)mn;
		}
	}

	public FloatInterval(float mn, float mx)
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
