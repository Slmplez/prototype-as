using System;

namespace Syncfusion.Windows.Forms.Tools;

public class XPTaskBarItemClickArgs : EventArgs
{
	private XPTaskBarItem item;

	public XPTaskBarItem XPTaskBarItem => item;

	public XPTaskBarItemClickArgs(XPTaskBarItem item)
	{
		this.item = item;
	}
}
