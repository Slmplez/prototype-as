using System.Collections.Generic;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class ContextMenuEventArgs : SyncfusionCancelEventArgs
{
	private List<ToolStripItem> m_MenuItems;

	public List<ToolStripItem> ContextMenuItems => m_MenuItems;

	public ContextMenuEventArgs()
	{
	}

	public ContextMenuEventArgs(List<ToolStripItem> menuItems)
	{
		m_MenuItems = menuItems;
	}
}
