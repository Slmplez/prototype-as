using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ToolStripEventArgs : EventArgs
{
	public ToolStrip ToolStrip;

	public ToolStripEventArgs(ToolStrip toolStrip)
	{
		ToolStrip = toolStrip;
	}
}
