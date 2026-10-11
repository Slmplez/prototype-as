using System;

namespace Syncfusion.Windows.Forms.Tools;

public class RibbonTabItemChangedEventArgs : EventArgs
{
	public RibbonTabItem OldItem;

	public RibbonTabItem NewItem;

	public RibbonTabItemChangedEventArgs(RibbonTabItem oldItem, RibbonTabItem newItem)
	{
		if (newItem == null)
		{
			throw new ArgumentNullException("newItem");
		}
		OldItem = oldItem;
		NewItem = newItem;
	}
}
