using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class MenuArrowButtonControlWeakContainer : WeakReference
{
	public MenuArrowButtonControlWeakContainer(MenuArrowButtonControl target)
		: base(target)
	{
	}

	public void MenuColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		MenuArrowButtonControl menuArrowButtonControl = (MenuArrowButtonControl)Target;
		if (menuArrowButtonControl != null)
		{
			menuArrowButtonControl.MenuColorsChanged(sender, args);
		}
		else
		{
			MenuColors.MenuColorsChanged -= MenuColorsChangedWeakEventHandler;
		}
	}

	public void Office2003ColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		MenuArrowButtonControl menuArrowButtonControl = (MenuArrowButtonControl)Target;
		if (menuArrowButtonControl != null)
		{
			menuArrowButtonControl.MenuColorsChanged(sender, args);
		}
		else
		{
			Office2003Colors.MenuColorsChanged -= Office2003ColorsChangedWeakEventHandler;
		}
	}
}
