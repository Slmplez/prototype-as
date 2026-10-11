using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Provides data for RibbonItemsEventHandler. Event arguments contains extra information about ToolStrip item.")]
public class RibbonItemEventArgs : CancelEventArgs
{
	private ToolStripItem m_item;

	public ToolStripItem Item => m_item;

	public RibbonItemEventArgs(ToolStripItem item)
		: base(cancel: false)
	{
		m_item = item;
	}
}
