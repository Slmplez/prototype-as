using System;

namespace Syncfusion.Windows.Forms.Tools;

public class NavigationPaneDropDownClickEventArgs : EventArgs
{
	private IContextMenuProvider menuProvider;

	public IContextMenuProvider ContextMenuProvider => menuProvider;

	public NavigationPaneDropDownClickEventArgs(IContextMenuProvider provider)
	{
		menuProvider = provider;
	}
}
