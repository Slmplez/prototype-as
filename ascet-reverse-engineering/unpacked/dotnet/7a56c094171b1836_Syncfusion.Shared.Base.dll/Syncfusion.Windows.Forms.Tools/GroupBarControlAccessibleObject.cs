using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupBarControlAccessibleObject : Control.ControlAccessibleObject
{
	protected GroupBar ctrlGroupBar;

	public override AccessibleRole Role => AccessibleRole.Grouping;

	public override string Name => ctrlGroupBar.AccessibleName;

	public override Rectangle Bounds => ctrlGroupBar.RectangleToScreen(ctrlGroupBar.ClientRectangle);

	public override string Description => ctrlGroupBar.AccessibleDescription;

	public override string Help => string.Empty;

	public override AccessibleStates State => AccessibleStates.None;

	public override string Value
	{
		get
		{
			return ctrlGroupBar.Text;
		}
		set
		{
			ctrlGroupBar.Text = value;
		}
	}

	public GroupBarControlAccessibleObject(GroupBar gbctrl)
		: base(gbctrl)
	{
		ctrlGroupBar = gbctrl;
	}

	public override int GetChildCount()
	{
		if (!ctrlGroupBar.StackedMode)
		{
			return ctrlGroupBar.activeItemsList.Count + 1;
		}
		return ctrlGroupBar.activeItemsList.Count + 2;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index >= 0)
		{
			int count = ctrlGroupBar.activeItemsList.Count;
			if (index < count)
			{
				return ctrlGroupBar.ItemAccessibleObjects[index];
			}
			if (!ctrlGroupBar.StackedMode)
			{
				if (index == count)
				{
					return ctrlGroupBar.GroupBarItems[ctrlGroupBar.SelectedItem].Client.AccessibilityObject;
				}
			}
			else
			{
				if (index == count)
				{
					return new DropDownButtonAccessibleItem(ctrlGroupBar);
				}
				if (index == count + 1)
				{
					return ctrlGroupBar.GroupBarItems[ctrlGroupBar.SelectedItem].Client.AccessibilityObject;
				}
			}
		}
		return null;
	}

	public AccessibleObject NavigateFromChild(GroupBarItemAccessibleObject child, AccessibleNavigation navdir)
	{
		int num = child.Index;
		switch (navdir)
		{
		case AccessibleNavigation.FirstChild:
			num = 0;
			break;
		case AccessibleNavigation.LastChild:
			num = ctrlGroupBar.activeItemsList.Count - 1;
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
			if (num < ctrlGroupBar.activeItemsList.Count)
			{
				num++;
			}
			else if (ctrlGroupBar.StackedMode)
			{
				return new DropDownButtonAccessibleItem(ctrlGroupBar);
			}
			break;
		}
		return GetChild(num);
	}

	public void SelectChild(GroupBarItemAccessibleObject child, AccessibleSelection selection)
	{
		if ((selection & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			ctrlGroupBar.SelectedItem = child.Index;
		}
	}

	public override AccessibleObject GetSelected()
	{
		int selectedItem = ctrlGroupBar.SelectedItem;
		if (selectedItem != -1)
		{
			return GetChild(selectedItem);
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point pt = ctrlGroupBar.PointToClient(new Point(x, y));
		if (ctrlGroupBar.StackedMode && ctrlGroupBar.GetDropDownButtonRectangle().Contains(pt))
		{
			return new DropDownButtonAccessibleItem(ctrlGroupBar);
		}
		int count = ctrlGroupBar.activeItemsList.Count;
		for (int i = 0; i < count; i++)
		{
			if (ctrlGroupBar.GetGroupBarItemBounds(i).Contains(pt))
			{
				return ctrlGroupBar.ItemAccessibleObjects[i];
			}
		}
		return base.HitTest(x, y);
	}
}
