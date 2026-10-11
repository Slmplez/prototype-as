using System.Resources;

namespace Syncfusion.Windows.Forms.InternalMenus;

public abstract class ToolBarImp
{
	protected ResourceManager resourceManager;

	public ToolBarImp()
	{
	}

	public abstract object[] CreateToolBars(ResourceManager manager, ToolBarItemStructCollection[] structCollectionArray);
}
