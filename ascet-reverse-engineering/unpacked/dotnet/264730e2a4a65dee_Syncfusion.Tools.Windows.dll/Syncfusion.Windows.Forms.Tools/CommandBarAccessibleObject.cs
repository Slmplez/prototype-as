using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class CommandBarAccessibleObject : Control.ControlAccessibleObject
{
	public override AccessibleRole Role => AccessibleRole.ToolBar;

	public override string Name => base.Owner.Text;

	public override Rectangle Bounds => base.Owner.RectangleToScreen(base.Owner.ClientRectangle);

	public override string Description => base.Owner.Text + " toolbar";

	public override string Help => string.Empty;

	public override AccessibleStates State => AccessibleStates.Moveable;

	public override string Value
	{
		get
		{
			return base.Owner.Text;
		}
		set
		{
			base.Owner.Text = value;
		}
	}

	public override AccessibleObject Parent => base.Parent;

	public CommandBarAccessibleObject(CommandBar cbar)
		: base(cbar)
	{
	}

	public override int GetChildCount()
	{
		int num = 0;
		if (base.Owner.Controls.Count > 0)
		{
			num = base.Owner.Controls[0].AccessibilityObject.GetChildCount();
		}
		if (!(base.Owner as CommandBar).bHideDropDown)
		{
			num++;
		}
		return num;
	}

	public override AccessibleObject GetChild(int index)
	{
		int childCount = GetChildCount();
		if (index >= 0 && index < childCount)
		{
			if (index == childCount - 1)
			{
				return new CommandBarDropDownAccessibleItem(base.Owner as CommandBar);
			}
			return base.Owner.Controls[0].AccessibilityObject.GetChild(index);
		}
		return null;
	}

	public override AccessibleObject GetFocused()
	{
		if (base.Owner.Controls.Count > 0)
		{
			return base.Owner.Controls[0].AccessibilityObject.GetFocused();
		}
		return base.GetFocused();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point pt = base.Owner.PointToClient(new Point(x, y));
		CommandBar commandBar = base.Owner as CommandBar;
		if (commandBar.DropDownRect.Contains(pt))
		{
			return new CommandBarDropDownAccessibleItem(base.Owner as CommandBar);
		}
		if (commandBar.Controls.Count > 0 && commandBar.RectangleToScreen(commandBar.Controls[0].Bounds).Contains(x, y))
		{
			return commandBar.Controls[0].AccessibilityObject.HitTest(x, y);
		}
		return base.HitTest(x, y);
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		if (navdir == AccessibleNavigation.Right || navdir == AccessibleNavigation.Next)
		{
			if (base.Owner.Controls.Count > 0)
			{
				return base.Owner.Controls[0].AccessibilityObject.GetChild(0);
			}
			return new CommandBarDropDownAccessibleItem(base.Owner as CommandBar);
		}
		return base.Navigate(navdir);
	}
}
