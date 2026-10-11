using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DropDownButtonAccessibleItem : AccessibleObject
{
	protected GroupBar groupBarControl;

	public override AccessibleStates State => AccessibleStates.Default;

	public override AccessibleRole Role => AccessibleRole.PushButton;

	public override AccessibleObject Parent => groupBarControl.AccessibilityObject;

	public override string Name => "Configure button";

	public override string DefaultAction => "Select";

	public override Rectangle Bounds => groupBarControl.RectangleToScreen(groupBarControl.GetDropDownButtonRectangle());

	public override string Description => "Configure the Navigation Pane buttons and options.";

	public DropDownButtonAccessibleItem(GroupBar grpbarctrl)
	{
		groupBarControl = grpbarctrl;
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		switch (navdir)
		{
		case AccessibleNavigation.Left:
			if (groupBarControl.alNavPaneItems.Count > 0)
			{
				GroupBarItem item = groupBarControl.alNavPaneItems[groupBarControl.alNavPaneItems.Count - 1] as GroupBarItem;
				return groupBarControl.ItemAccessibleObjects[groupBarControl.GroupBarItems.IndexOf(item)];
			}
			break;
		case AccessibleNavigation.Previous:
		{
			for (int num2 = groupBarControl.GroupBarItems.Count - 1; num2 >= 0; num2--)
			{
				GroupBarItem groupBarItem2 = groupBarControl.GroupBarItems[num2];
				if (groupBarItem2.Visible)
				{
					return groupBarControl.ItemAccessibleObjects[num2];
				}
			}
			break;
		}
		case AccessibleNavigation.Up:
		{
			for (int num = groupBarControl.GroupBarItems.Count - 1; num >= 0; num--)
			{
				GroupBarItem groupBarItem = groupBarControl.GroupBarItems[num];
				if (groupBarItem.Visible && !groupBarItem.InNavigationPane)
				{
					return groupBarControl.ItemAccessibleObjects[num];
				}
			}
			break;
		}
		}
		return null;
	}

	public override void DoDefaultAction()
	{
		groupBarControl.ShowDropDownMenu();
	}
}
