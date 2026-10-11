using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarItemClickedEventArgs : EventArgs
{
	private BarItem itemClicked;

	public BarItem ClickedBarItem => itemClicked;

	public BarItemClickedEventArgs(BarItem itemClicked)
	{
		this.itemClicked = itemClicked;
	}
}
