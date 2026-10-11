using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class DockRendererPropertyOffice2007 : TabPanelProperty2D
{
	private const int DEF_OVERLAP_HEIGHT = 2;

	public override Color DefaultTabForeColor(ITabPanelData panelData, ITabControl tabControl)
	{
		DockTabRendererOffice2007 dockTabRendererOffice = null;
		if (tabControl.Renderer.Renderers.Count > 0)
		{
			dockTabRendererOffice = tabControl.Renderer.Renderers[0] as DockTabRendererOffice2007;
		}
		return dockTabRendererOffice?.ThemeColors.DockTabForeColor ?? Office2007Colors.Default.DockTabForeColor;
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		DockTabRendererOffice2007 dockTabRendererOffice = null;
		if (tabControl.Renderer.Renderers.Count > 0)
		{
			dockTabRendererOffice = tabControl.Renderer.Renderers[0] as DockTabRendererOffice2007;
		}
		Pen pen = null;
		if (dockTabRendererOffice != null)
		{
			g.FillRectangle(new SolidBrush(dockTabRendererOffice.ThemeColors.DockTabBackgroundColor), bounds);
			pen = new Pen(dockTabRendererOffice.ThemeColors.TabDefaultBorderColor);
		}
		else
		{
			g.FillRectangle(new SolidBrush(Office2007Colors.Default.DockTabBackgroundColor), bounds);
			pen = new Pen(Office2007Colors.Default.TabDefaultBorderColor);
		}
		g.DrawLine(pen, bounds.Left, bounds.Bottom, bounds.Right, bounds.Bottom);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		Size empty = Size.Empty;
		empty.Height = 2;
		return empty;
	}
}
