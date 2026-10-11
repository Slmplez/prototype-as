using System.Collections;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class AccessibilityUtils
{
	public static void AddItemsToList(ArrayList list, IBarItemContainer container, Control owner, AccessibleObject parentAO, Hashtable ht)
	{
		int num = -1;
		foreach (BarItem item in container.Items)
		{
			if (item is NewMenuItem)
			{
				continue;
			}
			num++;
			AccessibleObject accessibleObject = null;
			if (item is ParentBarItem)
			{
				ParentBarItem parentBarItem = item as ParentBarItem;
				if (container.Manager != null)
				{
					parentBarItem = container.Manager.GetMergedEquivalent(parentBarItem, parentBarItem);
				}
				accessibleObject = new SubMenuAccessibleObject(parentBarItem, owner, parentAO, num);
			}
			else
			{
				accessibleObject = new MenuItemAccessibleObject(item, owner, parentAO, num);
			}
			list.Add(accessibleObject);
			ht[item] = accessibleObject;
		}
	}
}
