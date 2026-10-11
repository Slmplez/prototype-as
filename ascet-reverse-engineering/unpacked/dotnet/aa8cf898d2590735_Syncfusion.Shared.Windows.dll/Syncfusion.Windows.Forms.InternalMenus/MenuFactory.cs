namespace Syncfusion.Windows.Forms.InternalMenus;

public abstract class MenuFactory
{
	private object[] menus;

	private object[] toolbars;

	private MenuImp mImp;

	private ToolBarImp tImp;

	public object[] Menus => menus;

	public object[] ToolBars => toolbars;

	private MenuImp MenuImplementation => mImp;

	private ToolBarImp ToolBarImplementation => tImp;

	public MenuFactory()
		: this(create: true)
	{
	}

	private MenuFactory(bool create)
	{
		if (create)
		{
			CreateMenuItems();
		}
	}

	private void CreateMenuItems()
	{
		CreateMenus();
		CreateToolBars();
	}

	private void CreateMenus()
	{
		mImp = CreateMenuImp();
		menus = mImp.CreateMenus(MenuLoader.CurrentResourceManager, MenuLoader.CurrentMenuItemStructCollection);
	}

	private void CreateToolBars()
	{
		tImp = CreateToolBarImp();
		toolbars = tImp.CreateToolBars(MenuLoader.CurrentResourceManager, MenuLoader.CurrentToolBarItemStructCollection);
	}

	public abstract MenuImp CreateMenuImp();

	public abstract ToolBarImp CreateToolBarImp();
}
