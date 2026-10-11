using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedRadioButtonDrawing : ThemedControlDrawing
{
	public ThemedRadioButtonDrawing()
		: base("BUTTON")
	{
	}

	public void DrawRadio(Graphics g, Rectangle rect, ButtonState btnState, bool mixedStateSet)
	{
		int partID = 2;
		int num = 0;
		num = (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) <= ButtonState.Normal) ? 1 : 2)));
		if ((btnState & ButtonState.Checked) > ButtonState.Normal)
		{
			num += 4;
		}
		else if (mixedStateSet)
		{
			num += 8;
		}
		DrawThemeBackground(g, partID, num, rect);
	}
}
