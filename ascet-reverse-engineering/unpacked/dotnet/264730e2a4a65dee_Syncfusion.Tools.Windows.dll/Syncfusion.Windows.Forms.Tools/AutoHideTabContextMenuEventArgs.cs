using System;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoHideTabContextMenuEventArgs : EventArgs
{
	[DocumentationExclude]
	protected PopupMenu mnuContext;

	[DocumentationExclude]
	protected DockingStyle dStyle;

	public PopupMenu ContextMenu
	{
		get
		{
			return mnuContext;
		}
		set
		{
			mnuContext = value;
		}
	}

	public DockingStyle Side => dStyle;

	public AutoHideTabContextMenuEventArgs(PopupMenu menu, DockingStyle edge)
	{
		mnuContext = menu;
		dStyle = edge;
	}
}
