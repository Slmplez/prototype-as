using System;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeNodeAdvEditEventArgs : EventArgs
{
	private string label;

	private TreeNodeAdv node;

	public string Label => label;

	public TreeNodeAdv Node => node;

	public TreeNodeAdvEditEventArgs(TreeNodeAdv node, string label)
	{
		this.node = node;
		this.label = label;
	}
}
