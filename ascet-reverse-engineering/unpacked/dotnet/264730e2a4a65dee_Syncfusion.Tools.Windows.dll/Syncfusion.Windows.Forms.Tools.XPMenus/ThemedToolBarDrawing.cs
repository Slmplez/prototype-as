using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class ThemedToolBarDrawing : ThemedControlDrawing
{
	private BarControlInternal barControl;

	public ThemedToolBarDrawing(BarControlInternal control, string classNames)
		: base(classNames)
	{
		barControl = control;
	}

	public void DrawButton(Graphics g, int part, int state, Rectangle rect)
	{
		DrawThemeBackground(g, part, state, rect);
	}
}
