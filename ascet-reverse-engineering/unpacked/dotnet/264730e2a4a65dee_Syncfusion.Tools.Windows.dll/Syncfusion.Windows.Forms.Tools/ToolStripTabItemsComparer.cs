using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class ToolStripTabItemsComparer : IComparer
{
	public int Compare(object x, object y)
	{
		ToolStripTabItem toolStripTabItem = x as ToolStripTabItem;
		ToolStripTabItem toolStripTabItem2 = y as ToolStripTabItem;
		return toolStripTabItem.Text.CompareTo(toolStripTabItem2.Text);
	}
}
