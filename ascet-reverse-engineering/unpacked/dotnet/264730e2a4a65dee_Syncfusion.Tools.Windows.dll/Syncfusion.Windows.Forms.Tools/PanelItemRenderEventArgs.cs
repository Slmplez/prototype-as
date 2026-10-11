using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class PanelItemRenderEventArgs : ToolStripRenderEventArgs
{
	private ToolStrip m_tsPanelStrip;

	public ToolStrip PanelStrip => m_tsPanelStrip;

	public PanelItemRenderEventArgs(Graphics g, ToolStrip tsParentStrip, ToolStrip tsPanelStrip)
		: base(g, tsParentStrip)
	{
		m_tsPanelStrip = tsPanelStrip;
	}
}
