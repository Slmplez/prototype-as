namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewAdvCancelableNodeEventArgs : TreeViewAdvNodeEventArgs
{
	private bool m_bCancel;

	public bool Cancel
	{
		get
		{
			return m_bCancel;
		}
		set
		{
			m_bCancel = value;
		}
	}

	public TreeViewAdvCancelableNodeEventArgs(TreeNodeAdv node, bool cancel)
		: base(node)
	{
		m_bCancel = cancel;
	}
}
