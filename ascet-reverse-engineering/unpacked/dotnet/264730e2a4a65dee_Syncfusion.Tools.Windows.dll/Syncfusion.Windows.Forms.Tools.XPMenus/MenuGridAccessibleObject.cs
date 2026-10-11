using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MenuGridAccessibleObject : BarItemsContainerAccessibleObject
{
	public override AccessibleRole Role => AccessibleRole.MenuPopup;

	public override string Name
	{
		get
		{
			if (container is ParentBarItem)
			{
				return ((ParentBarItem)container).Text;
			}
			return base.Name;
		}
	}

	public MenuGridAccessibleObject(ParentBarItem parentItem, Control parent)
		: base(parentItem, parent)
	{
	}

	public override AccessibleObject GetSelected()
	{
		MenuGrid menuGrid = base.Owner as MenuGrid;
		return GetAccessibleObjectFromBarItem(menuGrid.CurrentHotTrackItem);
	}

	public override AccessibleObject GetFocused()
	{
		return GetSelected();
	}
}
