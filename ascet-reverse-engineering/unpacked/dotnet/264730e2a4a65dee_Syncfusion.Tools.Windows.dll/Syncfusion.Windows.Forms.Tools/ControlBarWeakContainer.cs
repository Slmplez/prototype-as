using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlBarWeakContainer : WeakReference
{
	public ControlBarWeakContainer(ControlBar target)
		: base(target)
	{
	}

	public void MenuColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		ControlBar controlBar = (ControlBar)Target;
		if (controlBar != null)
		{
			controlBar.Office2003Colors_MenuColorsChanged(sender, args);
		}
		else
		{
			MenuColors.MenuColorsChanged -= MenuColorsChangedWeakEventHandler;
		}
	}

	public void Office2003ColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		ControlBar controlBar = (ControlBar)Target;
		if (controlBar != null)
		{
			controlBar.Office2003Colors_MenuColorsChanged(sender, args);
		}
		else
		{
			Office2003Colors.MenuColorsChanged -= Office2003ColorsChangedWeakEventHandler;
		}
	}
}
