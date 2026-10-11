using System;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeNodeAdvEventArgs : EventArgs
{
	private TreeViewAdvAction action;

	private TreeNodeAdv node;

	public TreeViewAdvAction Action
	{
		get
		{
			return action;
		}
		set
		{
			action = value;
		}
	}

	public TreeNodeAdv Node
	{
		get
		{
			return node;
		}
		set
		{
			node = value;
		}
	}

	public TreeNodeAdvEventArgs(TreeNodeAdv node)
	{
		this.node = node;
	}

	public TreeNodeAdvEventArgs(TreeNodeAdv node, TreeViewAdvAction action)
	{
		this.node = node;
		this.action = action;
	}
}
