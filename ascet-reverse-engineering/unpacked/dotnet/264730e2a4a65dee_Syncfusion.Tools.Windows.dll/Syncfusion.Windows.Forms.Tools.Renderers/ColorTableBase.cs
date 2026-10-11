using Microsoft.Win32;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class ColorTableBase
{
	protected Theme m_theme;

	public Theme Theme => m_theme;

	public ColorTableBase()
	{
		InitColorTable();
	}

	public virtual bool RefreshColors()
	{
		Theme currentTheme = GetCurrentTheme();
		if (currentTheme != m_theme)
		{
			m_theme = currentTheme;
			InitColorTable(currentTheme);
			return true;
		}
		return false;
	}

	public virtual void InitColorTable(Theme theme)
	{
		switch (theme)
		{
		case Theme.WindowsClassic:
			InitWindowsClassicColors();
			break;
		case Theme.XPBlue:
			InitXPBlueColors();
			break;
		case Theme.XPSilver:
			InitXPSilverColors();
			break;
		case Theme.XPOlive:
			InitXPOliveColors();
			break;
		case Theme.XPZune:
			InitXPZuneColors();
			break;
		}
	}

	public virtual void InitColorTable()
	{
		m_theme = GetCurrentTheme();
		InitColorTable(m_theme);
	}

	protected virtual Theme GetCurrentTheme()
	{
		RegistryKey registryKey = Registry.CurrentUser.OpenSubKey("Software\\Microsoft\\Windows\\CurrentVersion\\ThemeManager");
		if (registryKey != null && "1" == (string)registryKey.GetValue("ThemeActive"))
		{
			string text = (string)registryKey.GetValue("ColorName");
			string text2 = (string)registryKey.GetValue("DllName");
			if (text != null)
			{
				if (string.Compare(text, "NormalColor", ignoreCase: true) == 0 && text2.ToLower().Contains("zune"))
				{
					return Theme.XPZune;
				}
				if (string.Compare(text, "NormalColor", ignoreCase: true) == 0)
				{
					return Theme.XPBlue;
				}
				if (string.Compare(text, "HomeStead", ignoreCase: true) == 0)
				{
					return Theme.XPOlive;
				}
				if (string.Compare(text, "Metallic", ignoreCase: true) == 0)
				{
					return Theme.XPSilver;
				}
			}
		}
		return Theme.WindowsClassic;
	}

	protected virtual void InitWindowsClassicColors()
	{
	}

	protected virtual void InitXPBlueColors()
	{
	}

	protected virtual void InitXPSilverColors()
	{
	}

	protected virtual void InitXPOliveColors()
	{
	}

	protected virtual void InitXPZuneColors()
	{
	}
}
