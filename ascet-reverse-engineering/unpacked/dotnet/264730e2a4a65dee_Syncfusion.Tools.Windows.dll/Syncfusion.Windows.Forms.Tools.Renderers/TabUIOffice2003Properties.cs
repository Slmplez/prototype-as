using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class TabUIOffice2003Properties : OneNoteStyleRendererProperty
{
	private const int DEF_OVERLAP_HEIGHT = 1;

	public override bool DrawLeftToRight => false;

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Height = 1f;
		return overlapSize;
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		bool flag = true;
		if (bounds.Width > bounds.Height)
		{
			flag = false;
		}
		if (bounds != Rectangle.Empty && bounds.Width > 0 && bounds.Height > 0)
		{
			Brush brush = ((!flag) ? new LinearGradientBrush(bounds, bgColor, Color.White, LinearGradientMode.Vertical) : new LinearGradientBrush(bounds, Color.White, bgColor, LinearGradientMode.Horizontal));
			g.FillRectangle(brush, bounds);
		}
	}
}
