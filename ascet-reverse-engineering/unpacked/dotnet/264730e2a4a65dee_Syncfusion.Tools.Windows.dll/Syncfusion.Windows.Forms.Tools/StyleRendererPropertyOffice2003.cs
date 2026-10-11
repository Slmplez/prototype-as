using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class StyleRendererPropertyOffice2003 : OneNoteStyleRendererProperty
{
	private const int DEF_OVERLAP_HEIGHT = 3;

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Height = 3f;
		return overlapSize;
	}
}
