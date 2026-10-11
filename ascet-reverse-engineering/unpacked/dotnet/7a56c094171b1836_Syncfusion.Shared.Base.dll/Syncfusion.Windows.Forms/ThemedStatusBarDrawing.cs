using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedStatusBarDrawing : ThemedControlDrawing
{
	public ThemedStatusBarDrawing()
		: base("STATUS")
	{
	}

	public void DrawStatusGripper(Graphics g, Rectangle rect)
	{
		DrawThemeBackground(g, 3, 0, rect);
	}
}
