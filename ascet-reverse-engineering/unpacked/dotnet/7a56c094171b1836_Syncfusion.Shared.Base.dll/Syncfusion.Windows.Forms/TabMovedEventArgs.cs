using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class TabMovedEventArgs : CancelEventArgs
{
	private int tab;

	private int destTab;

	public int Tab
	{
		get
		{
			return tab;
		}
		set
		{
			tab = value;
		}
	}

	public int DestTab
	{
		get
		{
			return destTab;
		}
		set
		{
			destTab = value;
		}
	}

	public TabMovedEventArgs(int tab, int destTab)
	{
		this.tab = tab;
		this.destTab = destTab;
	}
}
