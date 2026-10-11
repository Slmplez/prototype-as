using System;

namespace Syncfusion.Windows.Forms.Tools;

public class RibbonTabGroupEventArgs : EventArgs
{
	public RibbonTabGroup Group;

	public RibbonTabGroupEventArgs(RibbonTabGroup group)
	{
		if (group == null)
		{
			throw new ArgumentNullException("group");
		}
		Group = group;
	}
}
