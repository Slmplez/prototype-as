namespace Syncfusion.Windows.Forms.Tools;

public class TreeViewAdvCancelableNodeEventArgs : TreeViewAdvNodeEventArgs
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

	public TreeViewAdvCancelableNodeEventArgs(TreeNodeAdv node, bool cancel)
		: base(node)
	{
		this.cancel = cancel;
	}
}
