namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewAdvCancelableSelectionEventArgs : TreeViewAdvSelectionEventArgs
{
	private bool m_cancel;

	public bool Cancel
	{
		get
		{
			return m_cancel;
		}
		set
		{
			m_cancel = value;
		}
	}

	public TreeViewAdvCancelableSelectionEventArgs(SelectedNodesCollection selectedNodes, TreeViewAdvAction action, bool cancel)
		: base(selectedNodes, action)
	{
		m_cancel = cancel;
	}
}
