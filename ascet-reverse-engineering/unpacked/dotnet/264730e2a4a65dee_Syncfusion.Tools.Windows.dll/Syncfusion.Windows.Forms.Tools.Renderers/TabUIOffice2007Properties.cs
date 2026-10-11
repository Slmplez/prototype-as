using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class TabUIOffice2007Properties : OneNoteStyleRendererProperty
{
	private const int DEF_OVERLAP_HEIGHT = 1;

	private const int DEF_BORDER_WIDTH = 1;

	public override bool DrawLeftToRight => false;

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Height = 1f;
		return overlapSize;
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		TabGroupRendererOffice2007 tabGroupRendererOffice = null;
		if (tabControl.Renderer.Renderers.Count > 0)
		{
			tabGroupRendererOffice = tabControl.Renderer.Renderers[0] as TabGroupRendererOffice2007;
		}
		Brush brush;
		Pen pen;
		if (tabGroupRendererOffice != null)
		{
			brush = new SolidBrush(tabGroupRendererOffice.ThemeColors.TabPanelColor);
			pen = new Pen(tabGroupRendererOffice.ThemeColors.TabPanelBorderColor, 1f);
		}
		else
		{
			brush = new SolidBrush(Office2007Colors.Default.TabPanelColor);
			pen = new Pen(Office2007Colors.Default.TabPanelBorderColor, 1f);
		}
		TabAlignment alignment = tabControl.Renderer.TabPanelData.Alignment;
		Point pt = Point.Empty;
		Point pt2 = Point.Empty;
		switch (alignment)
		{
		case TabAlignment.Bottom:
			pt = new Point(bounds.Left, bounds.Bottom - 1);
			pt2 = new Point(bounds.Right, bounds.Bottom - 1);
			break;
		case TabAlignment.Top:
			pt = new Point(bounds.Left, bounds.Top);
			pt2 = new Point(bounds.Right, bounds.Top);
			break;
		case TabAlignment.Right:
			pt = new Point(bounds.Right - 1, bounds.Top);
			pt2 = new Point(bounds.Right - 1, bounds.Bottom);
			break;
		case TabAlignment.Left:
			pt = bounds.Location;
			pt2 = new Point(bounds.Left, bounds.Bottom);
			break;
		}
		g.FillRectangle(brush, bounds);
		g.DrawLine(pen, pt, pt2);
	}
}
