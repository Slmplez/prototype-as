using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class MenuGridControlBaseWeakContainer : WeakReference
{
	public MenuGridControlBaseWeakContainer(MenuGridControlBase target)
		: base(target)
	{
	}

	public void MenuColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		MenuGridControlBase menuGridControlBase = (MenuGridControlBase)Target;
		if (menuGridControlBase != null)
		{
			menuGridControlBase.MenuColorsChanged(sender, args);
		}
		else
		{
			MenuColors.MenuColorsChanged -= MenuColorsChangedWeakEventHandler;
		}
	}

	public void Office2003ColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		MenuGridControlBase menuGridControlBase = (MenuGridControlBase)Target;
		if (menuGridControlBase != null)
		{
			menuGridControlBase.MenuColorsChanged(sender, args);
		}
		else
		{
			Office2003Colors.MenuColorsChanged -= Office2003ColorsChangedWeakEventHandler;
		}
	}
}
