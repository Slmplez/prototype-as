using System;

namespace Syncfusion.Windows.Forms.Tools;

public class CommandBarWeakContainer : WeakReference
{
	public CommandBarWeakContainer(CommandBar target)
		: base(target)
	{
	}

	public void MenuColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		CommandBar commandBar = (CommandBar)Target;
		if (commandBar != null)
		{
			commandBar.MenuColorsChanged(sender, args);
		}
		else
		{
			MenuColors.MenuColorsChanged -= MenuColorsChangedWeakEventHandler;
		}
	}

	public void Office2003ColorsChangedWeakEventHandler(object sender, EventArgs args)
	{
		CommandBar commandBar = (CommandBar)Target;
		if (commandBar != null)
		{
			commandBar.MenuColorsChanged(sender, args);
		}
		else
		{
			Office2003Colors.MenuColorsChanged -= Office2003ColorsChangedWeakEventHandler;
		}
	}

	public void XPThemesChangedWeakEventHandler(object sender, EventArgs args)
	{
		CommandBar commandBar = (CommandBar)Target;
		if (commandBar != null)
		{
			commandBar.XPThemes_ThemeChanged(sender, args);
		}
		else
		{
			XPThemes.ThemeChanged -= XPThemesChangedWeakEventHandler;
		}
	}
}
