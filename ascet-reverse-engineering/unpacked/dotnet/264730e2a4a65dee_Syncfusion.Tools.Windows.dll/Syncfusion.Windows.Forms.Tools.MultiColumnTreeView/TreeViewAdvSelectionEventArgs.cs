using System;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewAdvSelectionEventArgs : EventArgs
{
	private SelectedNodesCollection m_selectedNodes;

	private TreeViewAdvAction m_action;

	public SelectedNodesCollection SelectedNodes => m_selectedNodes;

	public TreeViewAdvAction Action => m_action;

	public TreeViewAdvSelectionEventArgs(SelectedNodesCollection selectedNodes, TreeViewAdvAction action)
	{
		m_selectedNodes = selectedNodes;
		m_action = action;
	}
}
