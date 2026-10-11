using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class StyleRendererPropertyDockingWhidbey : TabPanelProperty2D
{
	private const int DEF_OVERLAP_HEIGHT = 2;

	internal static Color BackgroundColor
	{
		get
		{
			Color result = Color.FromKnownColor(KnownColor.ControlLight);
			if (XPThemes.IsSilverThemeOn)
			{
				result = VS2005Colors.PanelColor;
			}
			return result;
		}
	}

	public override bool DrawEllipsis => true;

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.White;
	}

	public override void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds)
	{
		g.FillRectangle(new SolidBrush(bgColor), bounds);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		SizeF overlapSize = base.GetOverlapSize(tabSize);
		overlapSize.Height = 2f;
		return overlapSize;
	}
}
