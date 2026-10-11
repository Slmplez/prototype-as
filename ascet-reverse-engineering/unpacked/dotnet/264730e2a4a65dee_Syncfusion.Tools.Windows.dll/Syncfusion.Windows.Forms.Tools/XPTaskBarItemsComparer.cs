using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class XPTaskBarItemsComparer : IComparer
{
	public int Compare(object x, object y)
	{
		XPTaskBarItem xPTaskBarItem = x as XPTaskBarItem;
		XPTaskBarItem xPTaskBarItem2 = y as XPTaskBarItem;
		return xPTaskBarItem.Text.CompareTo(xPTaskBarItem2.Text);
	}
}
