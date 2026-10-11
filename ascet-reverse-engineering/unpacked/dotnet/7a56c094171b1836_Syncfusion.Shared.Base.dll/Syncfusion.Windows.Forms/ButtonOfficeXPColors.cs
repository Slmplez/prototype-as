using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ButtonOfficeXPColors
{
	private static Color borderColor = Color.Empty;

	public static Color BorderColor
	{
		get
		{
			if (borderColor != Color.Empty)
			{
				return borderColor;
			}
			borderColor = Color.FromArgb(178, 180, 191);
			return borderColor;
		}
	}
}
