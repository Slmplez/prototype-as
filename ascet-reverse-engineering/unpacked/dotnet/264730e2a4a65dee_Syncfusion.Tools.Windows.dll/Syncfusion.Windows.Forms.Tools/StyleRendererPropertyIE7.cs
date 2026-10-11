using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class StyleRendererPropertyIE7 : TabPanelProperty2D
{
	private const int DEF_OVERLAP_HEIGHT = 9;

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.FromArgb(200, 224, 250);
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		g.FillRectangle(new SolidBrush(bgColor), bounds);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Height = 9f;
		return overlapSize;
	}
}
