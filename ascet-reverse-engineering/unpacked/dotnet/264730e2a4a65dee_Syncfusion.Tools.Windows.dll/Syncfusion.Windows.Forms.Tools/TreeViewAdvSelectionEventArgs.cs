using System;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeViewAdvSelectionEventArgs : EventArgs
{
	private SelectedNodesCollection selectedNodes;

	private TreeViewAdvAction action;

	public SelectedNodesCollection SelectedNodes => selectedNodes;

	public TreeViewAdvAction Action => action;

	public TreeViewAdvSelectionEventArgs(SelectedNodesCollection selectedNodes, TreeViewAdvAction action)
	{
		this.selectedNodes = selectedNodes;
		this.action = action;
	}
}
