using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedSpinButtonDrawing : ThemedControlDrawing
{
	public ThemedSpinButtonDrawing()
		: base("SPIN")
	{
	}

	public ThemedSpinButtonDrawing(IComponent owner)
		: base("SPIN", owner)
	{
	}

	public void DrawScrollButton(Graphics g, Rectangle rect, ButtonID buttonID, ScrollButtonAppearance appearance, ButtonState btnState)
	{
		int num = 0;
		int num2 = 0;
		if (buttonID == ButtonID.Up)
		{
			if (appearance == ScrollButtonAppearance.Horizontal)
			{
				num = 3;
				num2 = (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) > ButtonState.Normal) ? 1 : 2)));
			}
			else
			{
				num = 1;
				num2 = (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) > ButtonState.Normal) ? 1 : 2)));
			}
		}
		else if (appearance == ScrollButtonAppearance.Horizontal)
		{
			num = 4;
			num2 = (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) > ButtonState.Normal) ? 1 : 2)));
		}
		else
		{
			num = 2;
			num2 = (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) > ButtonState.Normal) ? 1 : 2)));
		}
		DrawThemeBackground(g, num, num2, rect);
	}
}
