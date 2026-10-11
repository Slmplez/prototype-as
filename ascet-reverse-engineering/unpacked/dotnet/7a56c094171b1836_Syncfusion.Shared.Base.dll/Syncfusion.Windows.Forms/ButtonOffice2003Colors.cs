using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ButtonOffice2003Colors
{
	private static Color defaultColor = Color.Empty;

	private static Color mouseOverColor = Color.Empty;

	private static Color pressedColor = Color.Empty;

	private static Color borderColor = Color.Empty;

	private static Color focusBorderColor = Color.Empty;

	public static Color DefaultColor
	{
		get
		{
			if (defaultColor != Color.Empty)
			{
				return defaultColor;
			}
			defaultColor = Color.FromArgb(219, 218, 228);
			return defaultColor;
		}
	}

	public static Color MouseOverColor
	{
		get
		{
			if (mouseOverColor != Color.Empty)
			{
				return mouseOverColor;
			}
			mouseOverColor = Color.FromArgb(255, 238, 194);
			return mouseOverColor;
		}
	}

	public static Color PressedColor
	{
		get
		{
			if (pressedColor != Color.Empty)
			{
				return pressedColor;
			}
			pressedColor = Color.FromArgb(254, 128, 62);
			return pressedColor;
		}
	}

	public static Color BorderColor
	{
		get
		{
			if (borderColor != Color.Empty)
			{
				return borderColor;
			}
			borderColor = SystemColors.ControlDark;
			return borderColor;
		}
	}

	public static Color FocusBorderColor
	{
		get
		{
			if (focusBorderColor != Color.Empty)
			{
				return focusBorderColor;
			}
			focusBorderColor = Color.FromArgb(0, 0, 128);
			return focusBorderColor;
		}
	}
}
