using System;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class DockContextMenuEventArgs : EventArgs
{
	[DocumentationExclude]
	protected Control ctrlOwner;

	[DocumentationExclude]
	protected PopupMenu mnuContext;

	public Control Owner => ctrlOwner;

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

	public DockContextMenuEventArgs(Control owner, PopupMenu menu)
	{
		ctrlOwner = owner;
		mnuContext = menu;
	}
}
