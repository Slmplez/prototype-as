using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedHeaderDrawing : ThemedControlDrawing
{
	public enum HeaderState
	{
		Normal = 1,
		Hot,
		Pressed
	}

	public ThemedHeaderDrawing()
		: base("HEADER")
	{
	}

	public void DrawHeader(Graphics g, Rectangle rect, HeaderState state)
	{
		DrawThemeBackground(g, 1, (int)state, rect);
	}
}
