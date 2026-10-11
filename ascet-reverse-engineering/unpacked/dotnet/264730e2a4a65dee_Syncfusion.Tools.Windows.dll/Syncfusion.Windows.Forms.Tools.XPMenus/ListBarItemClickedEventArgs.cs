using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class ListBarItemClickedEventArgs : EventArgs
{
	private int indexClicked;

	public int IndexClicked => indexClicked;

	public ListBarItemClickedEventArgs(int indexClicked)
	{
		this.indexClicked = indexClicked;
	}
}
