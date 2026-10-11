using System;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupBarItemEventArgs : EventArgs
{
	private GroupBarItem gbItem;

	public GroupBarItem Item => gbItem;

	public GroupBarItemEventArgs(GroupBarItem item)
	{
		gbItem = item;
	}
}
