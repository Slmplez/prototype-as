using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedPushButtonDrawing : ThemedControlDrawing
{
	public ThemedPushButtonDrawing()
		: base("BUTTON")
	{
	}

	public ThemedPushButtonDrawing(IComponent owner)
		: base("BUTTON", owner)
	{
	}

	public void DrawPushButton(Graphics g, Rectangle rect, ButtonState btnState)
	{
		int partID = 1;
		int num = 0;
		num = (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) > ButtonState.Normal) ? 1 : 2)));
		DrawThemeBackground(g, partID, num, rect);
	}
}
