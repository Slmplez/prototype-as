using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedScrollButtonDrawing : ThemedControlDrawing
{
	public ThemedScrollButtonDrawing()
		: base("SCROLLBAR")
	{
	}

	public ThemedScrollButtonDrawing(IComponent component)
		: base("SCROLLBAR", component)
	{
	}

	public void DrawScrollButton(Graphics g, Rectangle rect, ButtonID buttonID, ScrollButtonAppearance appearance, ButtonState btnState)
	{
		int partID = 1;
		int num = 0;
		num = ((buttonID == ButtonID.Up) ? ((appearance == ScrollButtonAppearance.Horizontal) ? (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 12 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 11 : (((btnState & ButtonState.Flat) <= ButtonState.Normal) ? 10 : 9))) : (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) > ButtonState.Normal) ? 1 : 2)))) : ((appearance == ScrollButtonAppearance.Horizontal) ? (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 16 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 15 : (((btnState & ButtonState.Flat) <= ButtonState.Normal) ? 14 : 13))) : (((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 8 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 7 : (((btnState & ButtonState.Flat) <= ButtonState.Normal) ? 6 : 5)))));
		DrawThemeBackground(g, partID, num, rect);
	}
}
