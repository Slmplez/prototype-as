using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeNodeAdvBeforeCheckEventArgs : TreeViewAdvCancelableNodeEventArgs
{
	private CheckState m_state;

	public CheckState NewCheckState => m_state;

	public TreeNodeAdvBeforeCheckEventArgs(TreeNodeAdv node, bool cancel, CheckState newState)
		: base(node, cancel)
	{
		m_state = newState;
	}
}
