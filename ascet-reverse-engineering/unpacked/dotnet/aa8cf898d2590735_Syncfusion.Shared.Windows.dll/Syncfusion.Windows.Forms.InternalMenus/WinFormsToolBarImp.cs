using System.Collections;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class WinFormsToolBarImp : ToolBarImp
{
	public override object[] CreateToolBars(ResourceManager manager, ToolBarItemStructCollection[] structCollectionArray)
	{
		resourceManager = manager;
		ArrayList arrayList = new ArrayList();
		foreach (ToolBarItemStructCollection defaultToolBarStructCollection in structCollectionArray)
		{
			arrayList.Add(CreateToolBar(defaultToolBarStructCollection));
		}
		return (ToolBar[])arrayList.ToArray(typeof(ToolBar));
	}

	private ToolBar CreateToolBar(ToolBarItemStructCollection defaultToolBarStructCollection)
	{
		return new StandardToolBar(resourceManager, defaultToolBarStructCollection);
	}
}
