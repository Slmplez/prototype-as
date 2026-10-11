using System;

namespace Syncfusion.Windows.Forms.Tools;

public class RibbonTabItemEventArgs : EventArgs
{
	public RibbonTabItem Item;

	public RibbonTabItemEventArgs(RibbonTabItem item)
	{
		if (item == null)
		{
			throw new ArgumentNullException("item");
		}
		Item = item;
	}
}
