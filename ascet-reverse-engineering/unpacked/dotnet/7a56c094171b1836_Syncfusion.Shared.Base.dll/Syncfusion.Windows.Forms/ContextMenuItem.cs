namespace Syncfusion.Windows.Forms;

public class ContextMenuItem
{
	protected IContextMenuProvider menuProvider;

	protected string menuItemText;

	public IContextMenuProvider ContextMenuProvider => menuProvider;

	public string ContextMenuItemText => menuItemText;

	public ContextMenuItem(IContextMenuProvider provider, string itemtext)
	{
		menuProvider = provider;
		menuItemText = itemtext;
	}
}
