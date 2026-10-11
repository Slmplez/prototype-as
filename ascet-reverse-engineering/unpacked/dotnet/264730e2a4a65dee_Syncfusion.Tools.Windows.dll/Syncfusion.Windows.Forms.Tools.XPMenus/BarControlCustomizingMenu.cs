using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class BarControlCustomizingMenu : CustomizingPopupMenu
{
	private BarItem moveNext;

	private BarItem movePrevious;

	protected override void InitCustomizationMenu()
	{
		base.InitCustomizationMenu();
		moveNext = new BarItem(SR.GetString("MoveNextMenuItemText"));
		movePrevious = new BarItem(SR.GetString("MovePrevMenuItemText"));
		moveNext.Click += CustomizingMenuItemClicked;
		movePrevious.Click += CustomizingMenuItemClicked;
		customizationMenu.Items.Insert(1, movePrevious);
		customizationMenu.Items.Insert(1, moveNext);
	}

	protected override void CustomizingMenuItemClicked(object sender, EventArgs e)
	{
		if (sender == moveNext)
		{
			int num = parentItem.Items.IndexOf(selectedItem);
			if (num < parentItem.Items.Count - 1)
			{
				helper.InsertItem(parentItem.Items[num + 1], selectedItem, beforeOrAfter: false);
			}
		}
		else if (sender == movePrevious)
		{
			int num2 = parentItem.Items.IndexOf(selectedItem);
			if (num2 > 0)
			{
				helper.InsertItem(parentItem.Items[num2 - 1], selectedItem, beforeOrAfter: true);
			}
		}
		else
		{
			base.CustomizingMenuItemClicked(sender, e);
		}
	}
}
