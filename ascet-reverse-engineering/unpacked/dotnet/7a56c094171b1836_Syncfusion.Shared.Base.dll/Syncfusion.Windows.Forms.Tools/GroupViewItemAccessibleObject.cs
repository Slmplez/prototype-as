using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupViewItemAccessibleObject : AccessibleObject
{
	private GroupView ctrlGroupView;

	private GroupViewItem itemGroupView;

	private int nIndex;

	public int Index => nIndex;

	public GroupViewControlAccessibleObject GroupViewAccessibilityObject => ctrlGroupView.AccessibilityObject as GroupViewControlAccessibleObject;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.None;
			if (ctrlGroupView.IsItemVisible(nIndex))
			{
				if (ctrlGroupView.AllowDragDrop)
				{
					accessibleStates = AccessibleStates.Moveable;
				}
				if (ctrlGroupView.ButtonView)
				{
					accessibleStates |= AccessibleStates.Selectable;
				}
				if (ctrlGroupView.HighlightedItem == nIndex)
				{
					accessibleStates |= AccessibleStates.HotTracked;
				}
				if (ctrlGroupView.SelectedItemInternal == nIndex)
				{
					accessibleStates |= AccessibleStates.Selected;
				}
			}
			else
			{
				accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
			}
			return accessibleStates;
		}
	}

	public override AccessibleRole Role => AccessibleRole.ListItem;

	public override AccessibleObject Parent => ctrlGroupView.AccessibilityObject;

	public override string Name => ctrlGroupView.GroupViewItems[nIndex].Text;

	public override string DefaultAction => "Click";

	public override Rectangle Bounds => ctrlGroupView.RectangleToScreen(ctrlGroupView.GetGroupViewItemBounds(nIndex, "FullItem"));

	public override string Description => ctrlGroupView.GroupViewItems[nIndex].Text;

	public GroupViewItemAccessibleObject(GroupViewItem gvitem)
	{
		itemGroupView = gvitem;
		ctrlGroupView = gvitem.GroupView;
		nIndex = ctrlGroupView.GroupViewItems.IndexOf(gvitem);
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !ctrlGroupView.Focused)
		{
			ctrlGroupView.Focus();
		}
		if ((flags & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			GroupViewAccessibilityObject.SelectChild(this, flags);
		}
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		return GroupViewAccessibilityObject.NavigateFromChild(this, navdir);
	}

	public override void DoDefaultAction()
	{
		Select(AccessibleSelection.TakeSelection);
	}

	public override AccessibleObject GetFocused()
	{
		return GroupViewAccessibilityObject.GetFocused();
	}
}
