using System.Collections;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class RectangleCollection : CollectionBase
{
	public Rectangle this[int index]
	{
		get
		{
			return (Rectangle)base.List[index];
		}
		set
		{
			base.List[index] = value;
		}
	}

	public int Add(Rectangle value)
	{
		return base.List.Add(value);
	}
}
