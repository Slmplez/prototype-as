using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MenuItemAccessibleObject : Control.ControlAccessibleObject
{
	private BarItem item;

	private AccessibleObject parentaso;

	private IBarItemContainerControl containerControl;

	private int childIndex;

	public BarItem Item => item;

	public override AccessibleRole Role => AccessibleRole.MenuItem;

	public override string Name
	{
		get
		{
			string text = item.Text.Replace("&", string.Empty);
			if (Item is DropDownBarItem)
			{
				text += " (DropDown)";
			}
			return text;
		}
	}

	public override Rectangle Bounds => containerControl.GetBoundsOf(item);

	public override string Description => item.Tooltip;

	public override string KeyboardShortcut => item.Shortcut.ToString();

	public override string DefaultAction => "Press";

	public override string Help => "";

	public override AccessibleObject Parent => parentaso;

	public override AccessibleStates State => containerControl.GetAccessibilityState(Item);

	public override string Value
	{
		get
		{
			if (Item is ComboBoxBarItem)
			{
				ComboBoxBarItem comboBoxBarItem = Item as ComboBoxBarItem;
				return comboBoxBarItem.TextBoxValue;
			}
			return null;
		}
		set
		{
		}
	}

	public MenuItemAccessibleObject(BarItem item, Control parent, AccessibleObject parentaso, int childIndex)
		: base(parent)
	{
		this.item = item;
		this.parentaso = parentaso;
		containerControl = parent as IBarItemContainerControl;
		this.childIndex = childIndex;
	}

	public override void DoDefaultAction()
	{
		Item.PerformClick();
	}

	public override AccessibleObject GetSelected()
	{
		return this;
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		return this;
	}

	public override int GetChildCount()
	{
		return 0;
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		int num = childIndex;
		switch (navdir)
		{
		case AccessibleNavigation.Right:
		case AccessibleNavigation.Next:
			num++;
			break;
		case AccessibleNavigation.Left:
		case AccessibleNavigation.Previous:
			num--;
			break;
		case AccessibleNavigation.Up:
			return parentaso;
		default:
			return base.Navigate(navdir);
		}
		if (num >= parentaso.GetChildCount())
		{
			num = 0;
		}
		else if (num < 0)
		{
			num = parentaso.GetChildCount() - 1;
		}
		return parentaso.GetChild(num);
	}
}
