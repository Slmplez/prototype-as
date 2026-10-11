using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupBarItemAccessibleObject : AccessibleObject
{
	private GroupBar ctrlGroupBar;

	private GroupBarItem itemGroupBar;

	private int nIndex;

	public int Index => nIndex;

	public GroupBarControlAccessibleObject GroupBarAccessibilityObject => ctrlGroupBar.AccessibilityObject as GroupBarControlAccessibleObject;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.Selectable;
			if (ctrlGroupBar.SelectedItem == nIndex)
			{
				accessibleStates |= AccessibleStates.Selected;
			}
			return accessibleStates;
		}
	}

	public override AccessibleRole Role => AccessibleRole.ListItem;

	public override AccessibleObject Parent => ctrlGroupBar.AccessibilityObject;

	public override string Name => (ctrlGroupBar.activeItemsList[nIndex] as GroupBarItem).Text;

	public override string DefaultAction => "Select";

	public override Rectangle Bounds => ctrlGroupBar.RectangleToScreen(ctrlGroupBar.GetGroupBarItemBounds(nIndex));

	public override string Description => (ctrlGroupBar.activeItemsList[nIndex] as GroupBarItem).Text;

	public GroupBarItemAccessibleObject(GroupBarItem gbitem)
	{
		itemGroupBar = gbitem;
		ctrlGroupBar = gbitem.GroupBar;
		nIndex = ctrlGroupBar.activeItemsList.IndexOf(gbitem);
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !ctrlGroupBar.Focused)
		{
			ctrlGroupBar.Focus();
		}
		if ((flags & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			GroupBarAccessibilityObject.SelectChild(this, flags);
		}
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		return GroupBarAccessibilityObject.NavigateFromChild(this, navdir);
	}

	public override void DoDefaultAction()
	{
		Select(AccessibleSelection.TakeSelection);
	}

	public override AccessibleObject GetFocused()
	{
		return GroupBarAccessibilityObject.GetFocused();
	}
}
