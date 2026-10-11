using System.Collections;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class SubMenuAccessibleObject : MenuItemAccessibleObject
{
	private ArrayList childList;

	private Hashtable htItemsVsObject = new Hashtable();

	public override AccessibleRole Role => AccessibleRole.MenuPopup;

	public ParentBarItem SubMenu => base.Item as ParentBarItem;

	public override string DefaultAction
	{
		get
		{
			ParentBarItem parentBarItem = base.Item as ParentBarItem;
			if (parentBarItem.ParentStyle == ParentBarItemStyle.Default)
			{
				return "Open";
			}
			return base.DefaultAction;
		}
	}

	public SubMenuAccessibleObject(ParentBarItem subMenu, Control parent, AccessibleObject parentaso, int childIndex)
		: base(subMenu, parent, parentaso, childIndex)
	{
	}

	public override void DoDefaultAction()
	{
		ParentBarItem parentBarItem = base.Item as ParentBarItem;
		if (parentBarItem.ParentStyle != ParentBarItemStyle.Default)
		{
			base.DoDefaultAction();
		}
	}

	public override int GetChildCount()
	{
		if (childList == null)
		{
			InitChildItemsAccessibilityObjects();
		}
		return childList.Count;
	}

	private void InitChildItemsAccessibilityObjects()
	{
		childList = new ArrayList();
		htItemsVsObject.Clear();
		AccessibilityUtils.AddItemsToList(childList, SubMenu, base.Owner as BarControlInternal, this, htItemsVsObject);
	}

	public override AccessibleObject GetChild(int index)
	{
		if (childList == null)
		{
			InitChildItemsAccessibilityObjects();
		}
		if (childList != null && index < childList.Count)
		{
			return childList[index] as AccessibleObject;
		}
		return null;
	}
}
