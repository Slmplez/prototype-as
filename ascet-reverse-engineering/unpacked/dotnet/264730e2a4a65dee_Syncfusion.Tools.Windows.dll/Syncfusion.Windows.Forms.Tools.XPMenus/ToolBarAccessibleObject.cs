using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class ToolBarAccessibleObject : BarItemsContainerAccessibleObject
{
	private Bar bar;

	public override AccessibleRole Role => AccessibleRole.MenuBar;

	public override string Name => bar.BarName;

	public ToolBarAccessibleObject(Bar container, Control parent)
		: base(container, parent)
	{
		bar = container;
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		Control owner = base.Owner;
		Control parent = owner.Parent;
		int num = parent.Parent.Controls.IndexOf(parent);
		switch (navdir)
		{
		case AccessibleNavigation.Right:
			num++;
			break;
		case AccessibleNavigation.Left:
			num--;
			break;
		case AccessibleNavigation.Up:
			return parent.Parent.AccessibilityObject;
		case AccessibleNavigation.Down:
			if (GetChildCount() > 0)
			{
				return GetChild(0);
			}
			return null;
		default:
			return base.Navigate(navdir);
		}
		if (num >= parent.Parent.Controls.Count)
		{
			num = 0;
		}
		else if (num < 0)
		{
			num = parent.Parent.Controls.Count - 1;
		}
		return parent.Parent.Controls[num].AccessibilityObject;
	}

	public override AccessibleObject GetSelected()
	{
		BarControlInternal barControlInternal = base.Owner as BarControlInternal;
		return GetAccessibleObjectFromBarItem(barControlInternal.barRenderer.CurrentHotTrackItem);
	}

	public override AccessibleObject GetFocused()
	{
		return GetSelected();
	}

	public void SetBarItemContainer(Bar bar)
	{
		this.bar = bar;
		SetBarItemContainer((IBarItemContainer)bar);
	}
}
