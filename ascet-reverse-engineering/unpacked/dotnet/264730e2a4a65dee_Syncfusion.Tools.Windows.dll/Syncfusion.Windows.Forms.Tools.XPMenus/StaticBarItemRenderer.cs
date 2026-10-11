using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class StaticBarItemRenderer : BarItemRenderer
{
	public StaticBarItem StaticBarItem => BarItem as StaticBarItem;

	public override bool HotTrack
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	public override bool Active
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	public StaticBarItemRenderer(IBarRenderer parent)
		: base(parent)
	{
	}

	public override void OnMouseMove(Point pointMouseMove)
	{
	}

	protected override Color GetBGColor()
	{
		return parent.GetBarControl().GetControl().BackColor;
	}

	protected override void DrawBorders(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		Graphics graphics = drawItemInfo.Graphics;
		Pen pen = new Pen(StaticBarItem.FlatBorderColor);
		Rectangle rect = drawItemInfo.Bounds;
		rect.Width--;
		rect.Height--;
		rect.Inflate(-1, 0);
		graphics.DrawRectangle(pen, rect);
	}
}
