namespace Syncfusion.Windows.Forms.InternalMenus;

internal class WhidbeyMenuFactory : MenuFactory
{
	public override MenuImp CreateMenuImp()
	{
		return new WhidbeyMenuImp();
	}

	public override ToolBarImp CreateToolBarImp()
	{
		return new WhidbeyToolBarImp();
	}
}
