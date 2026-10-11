using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ComboDropDownWeakContainer : WeakReference
{
	public ComboDropDownWeakContainer(ComboDropDown target)
		: base(target)
	{
	}

	public void MenuColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		ComboDropDown comboDropDown = (ComboDropDown)Target;
		if (comboDropDown != null)
		{
			comboDropDown.MenuColorsChanged(sender, args);
		}
		else
		{
			MenuColors.MenuColorsChanged -= MenuColorsChangedWeakEventHandler;
		}
	}

	public void Office2003ColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		ComboDropDown comboDropDown = (ComboDropDown)Target;
		if (comboDropDown != null)
		{
			comboDropDown.MenuColorsChanged(sender, args);
		}
		else
		{
			Office2003Colors.MenuColorsChanged -= Office2003ColorsChangedWeakEventHandler;
		}
	}
}
