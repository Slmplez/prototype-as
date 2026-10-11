using System;

namespace Syncfusion.Windows.Forms;

public class XPThemesThemeChangedWeakContainer : WeakReference
{
	public override object Target
	{
		get
		{
			return base.Target;
		}
		set
		{
			base.Target = value;
			if (value == null)
			{
				XPThemes.ThemeChanged -= ThemeChanged;
			}
		}
	}

	public XPThemesThemeChangedWeakContainer(ISupportThemeChanged target)
		: base(target)
	{
		XPThemes.ThemeChanged += ThemeChanged;
	}

	public void ThemeChanged(object sender, EventArgs e)
	{
		if (IsAlive)
		{
			ISupportThemeChanged supportThemeChanged = (ISupportThemeChanged)Target;
			supportThemeChanged.ThemeChanged(sender, e);
		}
		else
		{
			XPThemes.ThemeChanged -= ThemeChanged;
		}
	}
}
