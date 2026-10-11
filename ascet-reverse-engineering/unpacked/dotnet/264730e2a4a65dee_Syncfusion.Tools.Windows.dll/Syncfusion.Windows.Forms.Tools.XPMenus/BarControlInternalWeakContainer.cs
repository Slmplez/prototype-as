using System;
using Microsoft.Win32;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarControlInternalWeakContainer : WeakReference
{
	public BarControlInternalWeakContainer(BarControlInternal target)
		: base(target)
	{
	}

	public void MenuColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		BarControlInternal barControlInternal = (BarControlInternal)Target;
		if (barControlInternal != null)
		{
			barControlInternal.MenuColorsChanged(sender, args);
		}
		else
		{
			MenuColors.MenuColorsChanged -= MenuColorsChangedWeakEventHandler;
		}
	}

	public void Office2003ColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		BarControlInternal barControlInternal = (BarControlInternal)Target;
		if (barControlInternal != null)
		{
			barControlInternal.MenuColorsChanged(sender, args);
		}
		else
		{
			Office2003Colors.MenuColorsChanged -= Office2003ColorsChangedWeakEventHandler;
		}
	}

	public void SystemUPChangedWeakEventHandler(object sender, UserPreferenceChangedEventArgs args)
	{
		BarControlInternal barControlInternal = (BarControlInternal)Target;
		if (barControlInternal != null)
		{
			barControlInternal.System_UPChanged(sender, args);
		}
		else
		{
			SystemEvents.UserPreferenceChanged -= SystemUPChangedWeakEventHandler;
		}
	}
}
