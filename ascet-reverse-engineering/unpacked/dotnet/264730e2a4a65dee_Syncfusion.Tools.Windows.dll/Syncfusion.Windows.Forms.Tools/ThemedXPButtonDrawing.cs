using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class ThemedXPButtonDrawing : ThemedControlDrawing
{
	private Control control;

	public ThemedXPButtonDrawing(Control control, string classList)
		: base(classList, control)
	{
		this.control = control;
	}

	public void DrawXPButton(Graphics g, Rectangle rect)
	{
		int partID = 1;
		int num = 0;
		XPButton xPButton = control as XPButton;
		Brush brush = new SolidBrush(xPButton.ForeColor);
		Brush brush2 = new SolidBrush(xPButton.BackColor);
		num = 1;
		if (xPButton.Hover)
		{
			num = 2;
		}
		if (xPButton.Pushed)
		{
			num = 3;
		}
		if (!xPButton.Enabled)
		{
			num = 4;
		}
		StringFormat stringFormat = new StringFormat();
		stringFormat.Alignment = StringAlignment.Center;
		stringFormat.LineAlignment = StringAlignment.Center;
		g.FillRectangle(brush2, rect);
		DrawThemeBackground(g, partID, num, rect);
		g.DrawString(xPButton.Text, xPButton.Font, brush, rect, stringFormat);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			control = null;
		}
		base.Dispose(disposing);
	}
}
