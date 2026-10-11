using System;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeViewAdvNodeEventArgs : EventArgs
{
	private TreeNodeAdv node;

	public TreeNodeAdv Node => node;

	public TreeViewAdvNodeEventArgs(TreeNodeAdv node)
	{
		this.node = node;
	}
}
