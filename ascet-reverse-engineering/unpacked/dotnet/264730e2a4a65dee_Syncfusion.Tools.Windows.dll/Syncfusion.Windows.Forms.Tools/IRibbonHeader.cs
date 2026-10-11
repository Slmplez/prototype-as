using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface IRibbonHeader
{
	IRibbonItems QuickItems { get; }

	IRibbonItems MainItems { get; }

	event ToolStripItemEventHandler QuickItemAdded;

	event ToolStripItemEventHandler QuickItemRemoved;

	void AddMainItem(ToolStripItem item);

	void AddQuickItem(ToolStripItem item);
}
