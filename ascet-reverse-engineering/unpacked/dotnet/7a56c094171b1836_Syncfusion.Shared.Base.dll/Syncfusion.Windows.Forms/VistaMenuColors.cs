using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms;

public class VistaMenuColors
{
	private static bool needToUpdateColors;

	private static Color bgColor;

	private static Color selBorderColor;

	private static Color selBGColorLight;

	private static Color selBGColorDark;

	private static Color borderColor;

	private static Color selImageBorderColor;

	private static Color selImageBGColor;

	private static Color selCheckedMenuBorderColor;

	private static Color selCheckedMenuBGColor;

	private static Color selCheckedMenuColor;

	private static Color separatorColor;

	private static Color customBgColor;

	private static Color customSelBorderColor;

	private static Color customSelBGColorLight;

	private static Color customSelBGColorDark;

	private static Color customBorderColor;

	private static Color customSelImageBorderColor;

	private static Color customSelImageBGColor;

	private static Color customSelCheckedMenuBorderColor;

	private static Color customSelCheckedMenuBGColor;

	private static Color customSelCheckedMenuColor;

	private static Color customSeparatorColor;

	public static Color BackgroundColor
	{
		get
		{
			if (customBgColor == Color.Empty)
			{
				return bgColor;
			}
			return customBgColor;
		}
		set
		{
			if (customBgColor != value)
			{
				customBgColor = value;
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

	public static Color SelBGColorLight
	{
		get
		{
			if (customSelBGColorLight == Color.Empty)
			{
				return selBGColorLight;
			}
			return customSelBGColorLight;
		}
		set
		{
			if (customSelBGColorLight != value)
			{
				customSelBGColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelBGColorDark
	{
		get
		{
			if (customSelBGColorDark == Color.Empty)
			{
				return selBGColorDark;
			}
			return customSelBGColorDark;
		}
		set
		{
			if (customSelBGColorDark != value)
			{
				customSelBGColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color BorderColor
	{
		get
		{
			if (customBorderColor == Color.Empty)
			{
				return borderColor;
			}
			return customBorderColor;
		}
		set
		{
			if (customBorderColor != value)
			{
				customBorderColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelImageBorderColor
	{
		get
		{
			if (customSelImageBorderColor == Color.Empty)
			{
				return selImageBorderColor;
			}
			return customSelImageBorderColor;
		}
		set
		{
			if (customSelImageBorderColor != value)
			{
				customSelImageBorderColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelImageBGColor
	{
		get
		{
			if (customSelImageBGColor == Color.Empty)
			{
				return selImageBGColor;
			}
			return customSelImageBGColor;
		}
		set
		{
			if (customSelImageBGColor != value)
			{
				customSelImageBGColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelCheckedMenuBorderColor
	{
		get
		{
			if (customSelCheckedMenuBorderColor == Color.Empty)
			{
				return selCheckedMenuBorderColor;
			}
			return customSelCheckedMenuBorderColor;
		}
		set
		{
			if (customSelCheckedMenuBorderColor != value)
			{
				customSelCheckedMenuBorderColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelCheckedMenuBGColor
	{
		get
		{
			if (customSelCheckedMenuBGColor == Color.Empty)
			{
				return selCheckedMenuBGColor;
			}
			return customSelCheckedMenuBGColor;
		}
		set
		{
			if (customSelCheckedMenuBGColor != value)
			{
				customSelCheckedMenuBGColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelCheckedMenuColor
	{
		get
		{
			if (customSelCheckedMenuColor == Color.Empty)
			{
				return selCheckedMenuColor;
			}
			return customSelCheckedMenuColor;
		}
		set
		{
			if (customSelCheckedMenuColor != value)
			{
				customSelCheckedMenuColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SeparatorColor
	{
		get
		{
			if (customSeparatorColor != Color.Empty)
			{
				return customSeparatorColor;
			}
			return separatorColor;
		}
		set
		{
			if (customSeparatorColor != value)
			{
				customSeparatorColor = value;
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
			bgColor = Color.FromArgb(240, 240, 240);
			selBorderColor = Color.FromArgb(173, 219, 239);
			selBGColorLight = Color.FromArgb(235, 241, 245);
			selBGColorDark = Color.FromArgb(218, 235, 243);
			borderColor = Color.FromArgb(224, 224, 224);
			selImageBorderColor = Color.FromArgb(115, 125, 255);
			selImageBGColor = Color.FromArgb(206, 239, 255);
			selCheckedMenuBorderColor = Color.FromArgb(206, 211, 231);
			selCheckedMenuBGColor = Color.FromArgb(231, 239, 247);
			selCheckedMenuColor = Color.FromArgb(8, 16, 165);
			separatorColor = Color.FromArgb(231, 227, 231);
			OnMenuColorsChanged(EventArgs.Empty);
		}
	}

	private static void OnMenuColorsChanged(EventArgs e)
	{
		if (VistaMenuColors.MenuColorsChanged != null)
		{
			VistaMenuColors.MenuColorsChanged(null, e);
		}
	}

	static VistaMenuColors()
	{
		needToUpdateColors = true;
		bgColor = Color.Empty;
		selBorderColor = Color.Empty;
		selBGColorLight = Color.Empty;
		selBGColorDark = Color.Empty;
		borderColor = Color.Empty;
		selImageBorderColor = Color.Empty;
		selImageBGColor = Color.Empty;
		selCheckedMenuBorderColor = Color.Empty;
		selCheckedMenuBGColor = Color.Empty;
		selCheckedMenuColor = Color.Empty;
		separatorColor = Color.Empty;
		customBgColor = Color.Empty;
		customSelBorderColor = Color.Empty;
		customSelBGColorLight = Color.Empty;
		customSelBGColorDark = Color.Empty;
		customBorderColor = Color.Empty;
		customSelImageBorderColor = Color.Empty;
		customSelImageBGColor = Color.Empty;
		customSelCheckedMenuBorderColor = Color.Empty;
		customSelCheckedMenuBGColor = Color.Empty;
		customSelCheckedMenuColor = Color.Empty;
		customSeparatorColor = Color.Empty;
		UpdateMenuColors();
	}
}
