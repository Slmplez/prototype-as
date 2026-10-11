using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class TabUIVS2005Properties : TabUIDefaultProperties
{
	private const int DEF_OVERLAP_HEIGHT = 10;

	public override bool DrawLeftToRight => false;

	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return VS2005Colors.PanelColor;
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return VS2005Colors.TabItemColor;
	}

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return VS2005Colors.TabItemColor;
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(10f, 0f);
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		Brush brush;
		switch (tabControl.Renderer.TabPanelData.Alignment)
		{
		case TabAlignment.Top:
		case TabAlignment.Bottom:
			brush = new LinearGradientBrush(bounds, VS2005Colors.LeftAHPanelColor, VS2005Colors.RightAHPanelColor, LinearGradientMode.Horizontal);
			break;
		case TabAlignment.Left:
			brush = new SolidBrush(VS2005Colors.RightAHPanelColor);
			break;
		case TabAlignment.Right:
			brush = new SolidBrush(VS2005Colors.LeftAHPanelColor);
			break;
		default:
			brush = new SolidBrush(VS2005Colors.LeftAHPanelColor);
			break;
		}
		g.FillRectangle(brush, bounds);
	}
}
