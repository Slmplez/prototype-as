using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class StyleRendererPropertyOffice2007 : TabPanelProperty2D
{
	public const int OverlapHeight = 0;

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		TabRendererOffice2007 tabRendererOffice = null;
		if (tabControl.Renderer.Renderers.Count > 0)
		{
			tabRendererOffice = tabControl.Renderer.Renderers[0] as TabRendererOffice2007;
		}
		return tabRendererOffice?.ThemeColors.TabSelectedGradientBottomColor ?? Office2007Colors.Default.TabSelectedGradientBottomColor;
	}

	public override Color DefaultTabForeColor(ITabPanelData panelData, ITabControl tabControl)
	{
		TabRendererOffice2007 tabRendererOffice = null;
		if (tabControl.Renderer.Renderers.Count > 0)
		{
			tabRendererOffice = tabControl.Renderer.Renderers[0] as TabRendererOffice2007;
		}
		return tabRendererOffice?.ThemeColors.TabForeColor ?? Office2007Colors.Default.TabForeColor;
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		TabRendererOffice2007 tabRendererOffice = null;
		if (tabControl.Renderer.Renderers.Count > 0)
		{
			tabRendererOffice = tabControl.Renderer.Renderers[0] as TabRendererOffice2007;
		}
		Rectangle rect = new Rectangle(bounds.X, bounds.Y, bounds.Width, bounds.Height);
		Pen pen;
		if (tabRendererOffice != null)
		{
			g.FillRectangle(new SolidBrush(bgColor), rect);
			pen = new Pen(tabRendererOffice.ThemeColors.TabDefaultBorderColor);
		}
		else
		{
			g.FillRectangle(new SolidBrush(bgColor), rect);
			pen = new Pen(Office2007Colors.Default.TabDefaultBorderColor);
		}
		g.DrawLine(pen, rect.Left, rect.Bottom, rect.Right, rect.Bottom);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Height = 0f;
		return overlapSize;
	}
}
