using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class TabGroupRendererOffice2003 : TabGroupRenderer
{
	public const int DEF_BORDER_WIDTH = 1;

	private const int DEF_SHADOW_WIDTH = 2;

	private static TabUIOffice2003Properties m_tabPropertyExtender;

	private static readonly Color DEF_SHADOW_COLOR_DARK;

	private static readonly Color DEF_SHADOW_COLOR_LIGHT;

	public new static string TabStyleName => "DockingTabsOffice2003";

	public new static TabUIOffice2003Properties TabPanelPropertyExtender => m_tabPropertyExtender;

	static TabGroupRendererOffice2003()
	{
		DEF_SHADOW_COLOR_DARK = Color.FromArgb(70, Color.Black);
		DEF_SHADOW_COLOR_LIGHT = Color.FromArgb(20, Color.Black);
		m_tabPropertyExtender = new TabUIOffice2003Properties();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabGroupRendererOffice2003), TabPanelPropertyExtender);
	}

	public TabGroupRendererOffice2003(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	private RectangleF GetShadowBounds(RectangleF bounds)
	{
		switch (base.TabAlignment)
		{
		case TabAlignment.Top:
		case TabAlignment.Bottom:
			bounds.Location = new PointF((bounds.X += 1f) + bounds.Width, bounds.Y);
			bounds.Width = 2f;
			break;
		case TabAlignment.Left:
		case TabAlignment.Right:
			bounds.Location = new PointF(bounds.X, (bounds.Height += 1f) + bounds.Y);
			bounds.Height = 2f;
			break;
		}
		return bounds;
	}

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		return base.CorrectBounds(bounds);
	}

	protected virtual void DrawShadow(Graphics g, RectangleF shadowRectangle)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		Brush brush;
		switch (base.TabAlignment)
		{
		case TabAlignment.Top:
		case TabAlignment.Bottom:
			brush = new LinearGradientBrush(shadowRectangle, DEF_SHADOW_COLOR_DARK, DEF_SHADOW_COLOR_LIGHT, LinearGradientMode.Horizontal);
			break;
		case TabAlignment.Left:
		case TabAlignment.Right:
			brush = new LinearGradientBrush(shadowRectangle, DEF_SHADOW_COLOR_DARK, DEF_SHADOW_COLOR_LIGHT, LinearGradientMode.Vertical);
			break;
		default:
			throw new ArgumentException("Unknown alignment.");
		}
		g.FillRectangle(brush, shadowRectangle);
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		Rectangle rectangle = new Rectangle(drawItemInfo.Bounds.Location, drawItemInfo.Bounds.Size);
		Pen pen = new Pen(Office2003Colors.SelBorderColor, 1f);
		switch (base.TabAlignment)
		{
		case TabAlignment.Bottom:
			rectangle.Y--;
			break;
		case TabAlignment.Right:
			rectangle.X--;
			break;
		}
		RectangleF shadowBounds = GetShadowBounds(rectangle);
		graphics.DrawRectangle(pen, rectangle);
		DrawShadow(graphics, shadowBounds);
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
	}
}
