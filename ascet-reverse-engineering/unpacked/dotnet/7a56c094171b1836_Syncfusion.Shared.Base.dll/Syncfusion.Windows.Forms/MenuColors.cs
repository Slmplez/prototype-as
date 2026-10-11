using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class MenuColors
{
	private static Color selColor;

	private static Color selTextColor;

	private static Color selBorderColor;

	private static Color bgColor;

	private static Color imageColColor;

	private static Color commandBarBackColor;

	private static Color customSelColor;

	private static Color customSelTextColor;

	private static Color customCheckedColor;

	private static Color customPressedSelColor;

	private static Color customSelBorderColor;

	private static Color customBGColor;

	private static Color customImageColColor;

	private static Color customDropDownBorderColor;

	private static Color customCommandBarBackColor;

	private static Color customMainMenuBackColor;

	private static Color customStatusBarBackColor;

	private static Color customFloatingCommandBarCaptionColor;

	private static Color customExpandedMenuStripBackColor;

	private static int customInactiveItemAlphaBlendFactor;

	private static Color customMenuTextColor;

	private static Color customActiveMenuTextColor;

	private static Color customDisabledMenuTextColorBase;

	private static Color customDisabledToolbarItemTextColorBase;

	private static bool needToUpdateColors;

	public static Color SelColor
	{
		get
		{
			if (customSelColor == Color.Empty)
			{
				return selColor;
			}
			return customSelColor;
		}
		set
		{
			if (customSelColor != value)
			{
				customSelColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelTextColor
	{
		get
		{
			if (customSelTextColor == Color.Empty)
			{
				return selTextColor;
			}
			return customSelTextColor;
		}
		set
		{
			if (customSelTextColor != value)
			{
				customSelTextColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuBGColor
	{
		get
		{
			if (customBGColor == Color.Empty)
			{
				return bgColor;
			}
			return customBGColor;
		}
		set
		{
			if (customBGColor != value)
			{
				customBGColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuLeftStripColor
	{
		get
		{
			if (customImageColColor == Color.Empty)
			{
				return imageColColor;
			}
			return customImageColColor;
		}
		set
		{
			if (customImageColColor != value)
			{
				customImageColColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color PressedSelColor
	{
		get
		{
			if (customPressedSelColor == Color.Empty)
			{
				if (SystemColors.Window.R == byte.MaxValue && SystemColors.Window.G == byte.MaxValue && SystemColors.Window.B == byte.MaxValue)
				{
					return Color.FromArgb(132, 146, 181);
				}
				return ControlPaint.Dark(ControlPaint.LightLight(ControlPaint.Dark(SystemColors.Window)));
			}
			return customPressedSelColor;
		}
		set
		{
			if (customPressedSelColor != value)
			{
				customPressedSelColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color CheckedSelColor
	{
		get
		{
			if (customCheckedColor == Color.Empty)
			{
				return SelColor;
			}
			return customCheckedColor;
		}
		set
		{
			if (customCheckedColor != value)
			{
				customCheckedColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelBorderColor
	{
		get
		{
			if (customSelBorderColor == Color.Empty)
			{
				return selBorderColor;
			}
			return customSelBorderColor;
		}
		set
		{
			if (customSelBorderColor != value)
			{
				customSelBorderColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color DropDownBorderColor
	{
		get
		{
			if (customDropDownBorderColor == Color.Empty)
			{
				return SystemColors.ControlDarkDark;
			}
			return customDropDownBorderColor;
		}
		set
		{
			if (customDropDownBorderColor != value)
			{
				customDropDownBorderColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color CommandBarBackColor
	{
		get
		{
			if (customCommandBarBackColor == Color.Empty)
			{
				return commandBarBackColor;
			}
			return customCommandBarBackColor;
		}
		set
		{
			if (customCommandBarBackColor != value)
			{
				customCommandBarBackColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MainMenuBackColor
	{
		get
		{
			if (customMainMenuBackColor == Color.Empty)
			{
				return SystemColors.Control;
			}
			return customMainMenuBackColor;
		}
		set
		{
			if (customMainMenuBackColor != value)
			{
				customMainMenuBackColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color StatusBarBackColor
	{
		get
		{
			if (customStatusBarBackColor == Color.Empty)
			{
				return SystemColors.Control;
			}
			return customStatusBarBackColor;
		}
		set
		{
			if (customStatusBarBackColor != value)
			{
				customStatusBarBackColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color FloatingCommandBarCaptionColor
	{
		get
		{
			if (customFloatingCommandBarCaptionColor == Color.Empty)
			{
				return SystemColors.ControlDark;
			}
			return customFloatingCommandBarCaptionColor;
		}
		set
		{
			if (customFloatingCommandBarCaptionColor != value)
			{
				customFloatingCommandBarCaptionColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color ExpandedMenuStripBackColor
	{
		get
		{
			if (customExpandedMenuStripBackColor == Color.Empty)
			{
				return ControlPaint.LightLight(SystemColors.ControlDark);
			}
			return customExpandedMenuStripBackColor;
		}
		set
		{
			if (customExpandedMenuStripBackColor != value)
			{
				customExpandedMenuStripBackColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static int InactiveItemAlphaBlendFactor
	{
		get
		{
			if (customInactiveItemAlphaBlendFactor == -1)
			{
				return 175;
			}
			return customInactiveItemAlphaBlendFactor;
		}
		set
		{
			if (customInactiveItemAlphaBlendFactor != value && ((value > 0 && value <= 255) || value == -1))
			{
				customInactiveItemAlphaBlendFactor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color DisabledMenuTextColorBase
	{
		get
		{
			if (customDisabledMenuTextColorBase == Color.Empty)
			{
				return SystemColors.ControlDark;
			}
			return customDisabledMenuTextColorBase;
		}
		set
		{
			if (customDisabledMenuTextColorBase != value)
			{
				customDisabledMenuTextColorBase = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color DisabledToolbarItemTextColorBase
	{
		get
		{
			if (customDisabledToolbarItemTextColorBase == Color.Empty)
			{
				return SystemColors.GrayText;
			}
			return customDisabledToolbarItemTextColorBase;
		}
		set
		{
			if (customDisabledToolbarItemTextColorBase != value)
			{
				customDisabledToolbarItemTextColorBase = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuTextColor
	{
		get
		{
			if (customMenuTextColor == Color.Empty)
			{
				return SystemColors.MenuText;
			}
			return customMenuTextColor;
		}
		set
		{
			if (customMenuTextColor != value)
			{
				customMenuTextColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuActiveTextColor
	{
		get
		{
			if (customActiveMenuTextColor == Color.Empty)
			{
				if (SystemColors.Window.R == byte.MaxValue && SystemColors.Window.G == byte.MaxValue && SystemColors.Window.B == byte.MaxValue)
				{
					return SystemColors.ActiveCaptionText;
				}
				return SystemColors.MenuText;
			}
			return customActiveMenuTextColor;
		}
		set
		{
			if (customActiveMenuTextColor != value)
			{
				customActiveMenuTextColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static event EventHandler MenuColorsChanged;

	public static void UpdateMenuColors()
	{
		if (needToUpdateColors)
		{
			needToUpdateColors = false;
			bgColor = CalculateColor(SystemColors.Window, SystemColors.Control, 220m);
			selColor = CalculateColor(SystemColors.Highlight, SystemColors.Window, 70m);
			imageColColor = CalculateColor(SystemColors.Control, bgColor, 195m);
			selBorderColor = Color.FromArgb(255, SystemColors.Highlight);
			selTextColor = Color.Black;
			Color control = SystemColors.Control;
			commandBarBackColor = ControlPaint.Light(Color.FromArgb(control.A, control.R, control.G, control.B), 0.3f);
			OnMenuColorsChanged(EventArgs.Empty);
		}
	}

	private static void OnMenuColorsChanged(EventArgs e)
	{
		if (MenuColors.MenuColorsChanged != null)
		{
			MenuColors.MenuColorsChanged(null, e);
		}
	}

	static MenuColors()
	{
		selColor = Color.Empty;
		selTextColor = Color.Empty;
		selBorderColor = Color.Empty;
		bgColor = Color.Empty;
		imageColColor = Color.Empty;
		commandBarBackColor = Color.Empty;
		customSelColor = Color.Empty;
		customSelTextColor = Color.Empty;
		customCheckedColor = Color.Empty;
		customPressedSelColor = Color.Empty;
		customSelBorderColor = Color.Empty;
		customBGColor = Color.Empty;
		customImageColColor = Color.Empty;
		customDropDownBorderColor = Color.Empty;
		customCommandBarBackColor = Color.Empty;
		customMainMenuBackColor = Color.Empty;
		customStatusBarBackColor = Color.Empty;
		customFloatingCommandBarCaptionColor = Color.Empty;
		customExpandedMenuStripBackColor = Color.Empty;
		customInactiveItemAlphaBlendFactor = -1;
		customMenuTextColor = Color.Empty;
		customActiveMenuTextColor = Color.Empty;
		customDisabledMenuTextColorBase = Color.Empty;
		customDisabledToolbarItemTextColorBase = Color.Empty;
		needToUpdateColors = true;
		UpdateMenuColors();
	}

	public static void SysColorsChanged(bool updateColorsNow)
	{
		if (updateColorsNow)
		{
			UpdateMenuColors();
		}
		else
		{
			needToUpdateColors = true;
		}
	}

	internal static Color CalculateColor(Color front, Color back, decimal alpha)
	{
		Color color = Color.FromArgb(255, front);
		Color color2 = Color.FromArgb(255, back);
		decimal num = alpha / 255m;
		decimal num2 = 1m - num;
		decimal num3 = color.R;
		decimal num4 = color.G;
		decimal num5 = color.B;
		decimal num6 = color2.R;
		decimal num7 = color2.G;
		decimal num8 = color2.B;
		byte red = (byte)(num3 * num + num6 * num2);
		byte green = (byte)(num4 * num + num7 * num2);
		byte blue = (byte)(num5 * num + num8 * num2);
		return Color.FromArgb(255, red, green, blue);
	}
}
