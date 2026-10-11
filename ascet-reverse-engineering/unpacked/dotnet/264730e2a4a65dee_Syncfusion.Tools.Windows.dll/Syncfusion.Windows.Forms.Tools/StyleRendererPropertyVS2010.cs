using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class StyleRendererPropertyVS2010 : TabPanelProperty2D
{
	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(2f, 5f);
	}
}
