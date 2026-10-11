using System;

namespace Syncfusion.Windows.Forms.Tools;

public class TabControlAdvWeakContainer : WeakReference
{
	public TabControlAdvWeakContainer(TabControlAdv target)
		: base(target)
	{
	}

	public void MenuColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		TabControlAdv tabControlAdv = (TabControlAdv)Target;
		if (tabControlAdv != null)
		{
			tabControlAdv.MenuColorsChanged(sender, args);
		}
		else
		{
			MenuColors.MenuColorsChanged -= MenuColorsChangedWeakEventHandler;
		}
	}

	public void Office2003ColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		TabControlAdv tabControlAdv = (TabControlAdv)Target;
		if (tabControlAdv != null)
		{
			tabControlAdv.MenuColorsChanged(sender, args);
		}
		else
		{
			Office2003Colors.MenuColorsChanged -= Office2003ColorsChangedWeakEventHandler;
		}
	}
}
