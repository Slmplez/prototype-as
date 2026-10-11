using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(BorderColorsConverter))]
public struct BorderColors
{
	private Color clrLeft;

	private Color clrTop;

	private Color clrRight;

	private Color clrBottom;

	public Color Left
	{
		get
		{
			return clrLeft;
		}
		set
		{
			clrLeft = value;
		}
	}

	public Color Top
	{
		get
		{
			return clrTop;
		}
		set
		{
			clrTop = value;
		}
	}

	public Color Right
	{
		get
		{
			return clrRight;
		}
		set
		{
			clrRight = value;
		}
	}

	public Color Bottom
	{
		get
		{
			return clrBottom;
		}
		set
		{
			clrBottom = value;
		}
	}

	public static BorderColors Empty => new BorderColors(Color.Empty, Color.Empty, Color.Empty, Color.Empty);

	public static BorderColors Default => new BorderColors(SystemColors.ControlDarkDark, SystemColors.ControlDarkDark, SystemColors.Control, SystemColors.Control);

	public BorderColors(Color left, Color top, Color right, Color bottom)
	{
		clrLeft = left;
		clrTop = top;
		clrRight = right;
		clrBottom = bottom;
	}
}
