using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools;

public class OneNoteStyleFlatTabPanelProperty : TabUIDefaultProperties
{
	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(0f, 6f);
	}

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.MenuItemPressedColorDark;
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.MenuMarginColorDark;
	}

	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.DockBarColorDark;
	}

	public override Color DefaultFixedSingleBorderColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Office2003Colors.SelBorderColor;
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		if (bounds.Height > 0 && bounds.Width > 0)
		{
			Brush brush = new LinearGradientBrush(bounds, bgColor, Color.White, LinearGradientMode.Vertical);
			g.FillRectangle(brush, bounds);
			brush.Dispose();
		}
	}

	public override bool IsBackgroundSolid()
	{
		return false;
	}
}
