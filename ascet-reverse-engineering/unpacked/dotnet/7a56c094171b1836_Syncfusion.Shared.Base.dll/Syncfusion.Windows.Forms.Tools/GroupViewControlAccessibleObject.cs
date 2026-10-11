using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupViewControlAccessibleObject : Control.ControlAccessibleObject
{
	protected GroupView ctrlGroupView;

	public override AccessibleRole Role => AccessibleRole.List;

	public override string Name => ctrlGroupView.AccessibleName;

	public override Rectangle Bounds => ctrlGroupView.RectangleToScreen(ctrlGroupView.ClientRectangle);

	public override string Description => ctrlGroupView.AccessibleDescription;

	public override string Help => string.Empty;

	public override AccessibleObject Parent => ctrlGroupView.Parent.AccessibilityObject;

	public override AccessibleStates State
	{
		get
		{
			if (!ctrlGroupView.Visible)
			{
				return AccessibleStates.Invisible;
			}
			return AccessibleStates.None;
		}
	}

	public override string Value
	{
		get
		{
			return ctrlGroupView.Text;
		}
		set
		{
			ctrlGroupView.Text = value;
		}
	}

	public GroupViewControlAccessibleObject(GroupView gvctrl)
		: base(gvctrl)
	{
		ctrlGroupView = gvctrl;
	}

	public override int GetChildCount()
	{
		return ctrlGroupView.GroupViewItems.Count;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index < ctrlGroupView.GroupViewItems.Count)
		{
			return ctrlGroupView.gviAccessibleObjects[index];
		}
		return null;
	}

	public AccessibleObject NavigateFromChild(GroupViewItemAccessibleObject child, AccessibleNavigation navdir)
	{
		int num = child.Index;
		switch (navdir)
		{
		case AccessibleNavigation.FirstChild:
			num = 0;
			break;
		case AccessibleNavigation.LastChild:
			num = ctrlGroupView.GroupViewItems.Count - 1;
			break;
		case AccessibleNavigation.Up:
		case AccessibleNavigation.Left:
		case AccessibleNavigation.Previous:
			if (num > 0)
			{
				num--;
			}
			break;
		case AccessibleNavigation.Down:
		case AccessibleNavigation.Right:
		case AccessibleNavigation.Next:
			if (num < ctrlGroupView.GroupViewItems.Count)
			{
				num++;
			}
			break;
		}
		return GetChild(num);
	}

	public void SelectChild(GroupViewItemAccessibleObject child, AccessibleSelection selection)
	{
		if ((selection & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			if (ctrlGroupView.ButtonView)
			{
				ctrlGroupView.SelectedItemInternal = child.Index;
				return;
			}
			ctrlGroupView.nHighlightedItem = child.Index;
			ctrlGroupView.nSelectedItem = child.Index;
			ctrlGroupView.FireGroupViewItemSelectedEvent(child.Index);
			ctrlGroupView.nHighlightedItem = -1;
			ctrlGroupView.nSelectedItem = -1;
		}
	}

	public override AccessibleObject GetFocused()
	{
		if (ctrlGroupView.Focused && ctrlGroupView.ButtonView)
		{
			return GetSelected();
		}
		return base.GetFocused();
	}

	public override AccessibleObject GetSelected()
	{
		int selectedItemInternal = ctrlGroupView.SelectedItemInternal;
		if (selectedItemInternal != -1)
		{
			return GetChild(selectedItemInternal);
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point pt = ctrlGroupView.PointToClient(new Point(x, y));
		int itemUnderPoint = ctrlGroupView.GetItemUnderPoint(pt);
		if (itemUnderPoint != -1)
		{
			return ctrlGroupView.gviAccessibleObjects[itemUnderPoint];
		}
		return base.HitTest(x, y);
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		if (ctrlGroupView.SelectedItemInternal != -1)
		{
			switch (navdir)
			{
			case AccessibleNavigation.Down:
			case AccessibleNavigation.Right:
			case AccessibleNavigation.Next:
			{
				int num2 = ctrlGroupView.SelectedItemInternal + 1;
				if (num2 < GetChildCount())
				{
					return GetChild(num2);
				}
				break;
			}
			case AccessibleNavigation.Up:
			case AccessibleNavigation.Left:
			case AccessibleNavigation.Previous:
			{
				int num = ctrlGroupView.SelectedItemInternal - 1;
				if (num >= 0)
				{
					return GetChild(num);
				}
				break;
			}
			}
		}
		return base.Navigate(navdir);
	}
}
