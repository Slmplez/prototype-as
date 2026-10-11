namespace Syncfusion.Windows.Forms.InternalMenus;

internal class WinFormsMenuFactory : MenuFactory
{
	public override MenuImp CreateMenuImp()
	{
		return new WinFormsMenuImp();
	}

	public override ToolBarImp CreateToolBarImp()
	{
		return new WinFormsToolBarImp();
	}
}
