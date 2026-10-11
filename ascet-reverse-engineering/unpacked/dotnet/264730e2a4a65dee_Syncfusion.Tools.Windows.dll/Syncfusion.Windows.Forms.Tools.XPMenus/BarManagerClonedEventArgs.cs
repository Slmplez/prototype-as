using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarManagerClonedEventArgs : EventArgs
{
	private BarManager clonedmanager;

	public BarManager ClonedBarManager => clonedmanager;

	public BarManagerClonedEventArgs(BarManager clonedmanager)
	{
		this.clonedmanager = clonedmanager;
	}
}
