using System.ComponentModel;
using System.Drawing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedEditDrawing : ThemedControlDrawing
{
	public ThemedEditDrawing()
		: base("EDIT")
	{
	}

	public ThemedEditDrawing(IComponent owner)
		: base("EDIT", owner)
	{
	}

	public void DrawEditBoxBackground(Graphics g, Rectangle rect, bool enabled)
	{
		int partID = 1;
		int num = 0;
		num = (enabled ? 1 : 4);
		DrawThemeBackground(g, partID, num, rect);
	}

	public Size GetThemeBorderSize()
	{
		int systemMetrics = NativeMethods.GetSystemMetrics(5);
		int systemMetrics2 = NativeMethods.GetSystemMetrics(6);
		return new Size(systemMetrics, systemMetrics2);
	}
}
