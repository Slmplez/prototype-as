using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class ContainmentChangedEventArgs : EventArgs
{
	private object parent;

	private bool inserted;

	public object Parent => parent;

	public bool Inserted => inserted;

	public ContainmentChangedEventArgs(object parent, bool inserted)
	{
		this.parent = parent;
		this.inserted = inserted;
	}
}
