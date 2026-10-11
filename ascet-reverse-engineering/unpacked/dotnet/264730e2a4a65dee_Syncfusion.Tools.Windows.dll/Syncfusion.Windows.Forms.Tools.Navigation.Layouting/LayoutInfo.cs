using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Layouting;

public class LayoutInfo
{
	public readonly HitTestAreas Area;

	public Rectangle Bounds;

	public LayoutInfo(HitTestAreas area, Rectangle bounds)
	{
		Area = area;
		Bounds = bounds;
	}
}
