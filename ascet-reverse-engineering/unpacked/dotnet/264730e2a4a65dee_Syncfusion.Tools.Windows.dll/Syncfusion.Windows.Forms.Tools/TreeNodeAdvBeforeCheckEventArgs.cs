using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeNodeAdvBeforeCheckEventArgs : TreeViewAdvCancelableNodeEventArgs
{
	private CheckState state;

	public CheckState NewCheckState => state;

	public TreeNodeAdvBeforeCheckEventArgs(TreeNodeAdv node, bool cancel, CheckState newState)
		: base(node, cancel)
	{
		state = newState;
	}
}
