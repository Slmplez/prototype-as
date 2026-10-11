using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedScrollBarDrawing : ThemedControlDrawing
{
	public ThemedScrollBarDrawing()
		: base("SCROLLBAR")
	{
	}

	public ThemedScrollBarDrawing(IComponent owner)
		: base("SCROLLBAR", owner)
	{
	}

	public void DrawThumb(Graphics g, Rectangle rect, bool horizontal, ButtonState btnState)
	{
		int num = 0;
		DrawThemeBackground(stateID: ((btnState & ButtonState.Inactive) > ButtonState.Normal) ? 4 : (((btnState & ButtonState.Pushed) > ButtonState.Normal) ? 3 : (((btnState & ButtonState.Flat) <= ButtonState.Normal) ? 1 : 2)), g: g, partID: horizontal ? 2 : 3, rectangle: rect);
	}

	public void DrawSizeBox(Graphics g, Rectangle rect)
	{
		DrawThemeBackground(g, 10, 1, rect);
	}
}
