namespace Syncfusion.Windows.Forms.Tools;

public class TreeViewAdvCancelableSelectionEventArgs : TreeViewAdvSelectionEventArgs
{
	private bool cancel;

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

	public TreeViewAdvCancelableSelectionEventArgs(SelectedNodesCollection selectedNodes, TreeViewAdvAction action, bool cancel)
		: base(selectedNodes, action)
	{
		this.cancel = cancel;
	}
}
