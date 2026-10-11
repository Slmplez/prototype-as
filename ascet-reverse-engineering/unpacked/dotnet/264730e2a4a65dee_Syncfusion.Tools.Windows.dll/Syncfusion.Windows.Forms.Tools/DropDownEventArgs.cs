using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DropDownEventArgs : EventArgs
{
	private ToolStripDropDown m_dropDown;

	public ToolStripDropDown DropDown => m_dropDown;

	public DropDownEventArgs(ToolStripDropDown dropDown)
	{
		m_dropDown = dropDown;
	}
}
