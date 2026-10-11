using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms;

internal class Office2007TabsRenderer : TabsRendererBase
{
	private const int c_defaultOverlapWidth = 16;

	private const int c_cornerCut = 2;

	private Blend m_tabNormalBlend = new Blend();

	private Blend m_tabPushedBlend = new Blend();

	private Blend m_tabHoveredBlend = new Blend();

	protected override Font ActiveTabFont => new Font(base.ActiveTabFont, FontStyle.Bold);

	protected override Color ForeColor
	{
		get
		{
			if (base.Parent != null)
			{
				return base.Parent.Office2007ColorTable.TabBarSplitterTextColor;
			}
			return base.ForeColor;
		}
	}

	public override Region GetTabRegion
	{
		get
		{
			GraphicsPath borderPathFromBounds = GetBorderPathFromBounds(Bounds);
			return new Region(borderPathFromBounds);
		}
	}

	public Office2007TabsRenderer(InternalTab parent)
		: base(parent)
	{
		m_tabNormalBlend.Positions = new float[8] { 0f, 0.4f, 0.4f, 0.55f, 0.55f, 0.7f, 0.7f, 1f };
		m_tabNormalBlend.Factors = new float[8] { 0.1f, 0.1f, 1f, 0.6f, 0.45f, 0.35f, 0.2f, 0f };
		m_tabPushedBlend.Positions = new float[4] { 0f, 0.7f, 0.7f, 1f };
		m_tabPushedBlend.Factors = new float[4] { 0f, 0.1f, 0.5f, 0.95f };
		m_tabHoveredBlend.Positions = new float[4] { 0f, 0.65f, 0.65f, 1f };
		m_tabHoveredBlend.Factors = new float[4] { 0f, 0.1f, 0.4f, 0.9f };
	}

	public override void DrawBackground(Graphics g)
	{
		Rectangle bounds = Bounds;
		bounds.X++;
		bounds.Width--;
		Color tabBarSplitterTabStartColor = base.Parent.Office2007ColorTable.TabBarSplitterTabStartColor;
		Color tabBarSplitterTabEndColor = base.Parent.Office2007ColorTable.TabBarSplitterTabEndColor;
		if (base.Parent.Pushed || base.Parent.Hovered)
		{
			if (base.Parent.Hovered)
			{
				bounds.Y++;
				bounds.Height--;
				bounds.Width--;
			}
			using (GraphicsPath path = GetBorderPathFromBounds(bounds))
			{
				using Brush brush = new SolidBrush(Color.White);
				g.FillPath(brush, path);
			}
			bounds.X++;
			bounds.Width -= 2;
			bounds.Height--;
			using GraphicsPath path2 = GetBorderPathFromBounds(bounds);
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(bounds, Color.White, tabBarSplitterTabEndColor, LinearGradientMode.Vertical);
			if (base.Parent.Pushed)
			{
				linearGradientBrush.Blend = m_tabPushedBlend;
			}
			else
			{
				linearGradientBrush.Blend = m_tabHoveredBlend;
			}
			g.FillPath(linearGradientBrush, path2);
			return;
		}
		bounds.Y++;
		bounds.Height--;
		bounds.Width--;
		using (GraphicsPath path3 = GetBorderPathFromBounds(bounds))
		{
			using Brush brush2 = new SolidBrush(Color.White);
			g.FillPath(brush2, path3);
		}
		bounds.Inflate(-1, -1);
		bounds.Width -= 2;
		using (GraphicsPath path4 = GetBorderPathFromBounds(bounds, GetOverlappedWidth() - 3))
		{
			using LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(bounds, tabBarSplitterTabStartColor, tabBarSplitterTabEndColor, LinearGradientMode.Vertical);
			linearGradientBrush2.Blend = m_tabNormalBlend;
			g.FillPath(linearGradientBrush2, path4);
		}
		Point point = new Point(bounds.Right, bounds.Top);
		Point point2 = new Point(bounds.Right - GetOverlappedWidth() + 4, bounds.Bottom - 2);
		using LinearGradientBrush brush3 = new LinearGradientBrush(point, point2, tabBarSplitterTabStartColor, Color.FromArgb(175, tabBarSplitterTabEndColor));
		using Pen pen = new Pen(brush3);
		g.DrawLine(pen, point, point2);
	}

	public override void DrawBorders(Graphics g)
	{
		using Pen pen = new Pen(base.Parent.Office2007ColorTable.TabBarSplitterBorderColor);
		using (GraphicsPath path = GetBorderPathFromBounds(Bounds))
		{
			g.DrawPath(pen, path);
		}
		if (!base.Parent.Pushed)
		{
			g.DrawLine(pen, Bounds.Left, Bounds.Top, Bounds.Right, Bounds.Top);
		}
	}

	public override Size GetItemPreferredSize()
	{
		Size itemPreferredSize = base.GetItemPreferredSize();
		itemPreferredSize.Width += 8;
		return itemPreferredSize;
	}

	public override int GetOverlappedWidth()
	{
		return 16;
	}

	protected virtual GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		return GetBorderPathFromBounds(bounds, 16);
	}

	protected virtual GraphicsPath GetBorderPathFromBounds(RectangleF bounds, int overlappedWidth)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		_ = Bounds.Height;
		PointF[] points = new PointF[5]
		{
			new PointF(bounds.Left, bounds.Top),
			new PointF(bounds.Left, bounds.Bottom - 2f - 1f),
			new PointF(bounds.Left + 2f, bounds.Bottom - 1f),
			new PointF(bounds.Right - (float)overlappedWidth, bounds.Bottom - 1f),
			new PointF(bounds.Right, bounds.Top)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}
}
