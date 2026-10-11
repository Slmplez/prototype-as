using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class NewItemDroppedAtSingleItemGroupEventArgs : ToolStripItemEventArgs
{
	public bool CloserToLeft;

	public NewItemDroppedAtSingleItemGroupEventArgs(ToolStripItem item, bool bCloserToLeft)
		: base(item)
	{
		CloserToLeft = bCloserToLeft;
	}
}
