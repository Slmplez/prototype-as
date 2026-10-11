namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeNodeAdvCancelableEditEventArgs : TreeNodeAdvEditEventArgs
{
	private bool cancel;

	private bool continueEditing;

	public bool Cancel
	{
		get
		{
			return cancel;
		}
		set
		{
			cancel = value;
		}
	}

	public bool ContinueEditing
	{
		get
		{
			return continueEditing;
		}
		set
		{
			continueEditing = value;
		}
	}

	public TreeNodeAdvCancelableEditEventArgs(TreeNodeAdv node, string label)
		: base(node, label)
	{
		cancel = false;
		continueEditing = true;
	}
}
