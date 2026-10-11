using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class TabGroupRendererOffice2007 : TabGroupRenderer
{
	private const int c_borderWidth = 1;

	private static TabUIOffice2007Properties m_tabPropertyExtender;

	private GraphicsState m_savedState;

	private Office2007Theme m_theme;

	private Office2007Colors m_themeColors;

	private Rectangle m_itemInnerBounds = Rectangle.Empty;

	public new static string TabStyleName => "DockingTabsOffice2007";

	public new static TabUIOffice2007Properties TabPanelPropertyExtender => m_tabPropertyExtender;

	public Office2007Theme Theme
	{
		get
		{
			return m_theme;
		}
		set
		{
			if (m_theme != value)
			{
				m_theme = value;
				m_themeColors = Office2007Colors.GetColorTable(value);
			}
		}
	}

	public Office2007Colors ThemeColors => m_themeColors;

	static TabGroupRendererOffice2007()
	{
		m_tabPropertyExtender = new TabUIOffice2007Properties();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabGroupRendererOffice2007), TabPanelPropertyExtender);
	}

	public TabGroupRendererOffice2007(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
		m_theme = Office2007Theme.Blue;
		m_themeColors = Office2007Colors.GetColorTable(m_theme);
	}

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		bounds.Width += 5f;
		return base.CorrectBounds(bounds);
	}

	protected override void CorrectTabBounds(ref RectangleF bounds)
	{
		bounds.Y += 2f;
	}

	protected override Color GetForeColor()
	{
		return ThemeColors.TabItemTextColor;
	}

	private Rectangle GetItemInnerBounds(DrawTabEventArgs drawItemInfo)
	{
		Rectangle rectangle = Rectangle.Round(TabUtils.ApplyTransform(drawItemInfo.Graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true));
		return new Rectangle(rectangle.Left + 1, rectangle.Top + 1, rectangle.Width - 1, rectangle.Height - 2);
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width != 0 && drawItemInfo.Bounds.Height != 0)
		{
			Pen pen = new Pen(ThemeColors.TabItemOuterBorderColor, 1f);
			Pen pen2 = new Pen(ThemeColors.TabItemInnerBorderColor, 1f);
			Pen pen3 = new Pen(ThemeColors.TabItemBorderColor, 1f);
			Graphics graphics = drawItemInfo.Graphics;
			RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
			ApplyTransform(graphics);
			SaveGraphicsState(graphics, ref curBounds);
			Rectangle rectangle = Rectangle.Round(curBounds);
			Point pt = new Point(rectangle.Left, rectangle.Bottom);
			Point point = new Point(rectangle.Left, rectangle.Top + 2);
			Point point2 = new Point(rectangle.Left + 3, rectangle.Top);
			Point point3 = new Point(rectangle.Right - 3, rectangle.Top);
			Point point4 = new Point(rectangle.Right, rectangle.Top + 2);
			Point point5 = new Point(rectangle.Right, rectangle.Bottom);
			graphics.DrawLine(pen, pt, point);
			graphics.DrawLine(pen, point5, point4);
			graphics.DrawLine(pen3, point2, point3);
			pt.X++;
			point.X++;
			point5.X--;
			point4.X--;
			graphics.DrawLine(pen3, pt, point);
			graphics.DrawLine(pen3, point5, point4);
			Point pt2 = point;
			Point pt3 = point2;
			Point pt4 = point4;
			Point pt5 = point3;
			pt.X++;
			point.X++;
			point5.X--;
			point4.X--;
			point2.Y++;
			point3.Y++;
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLine(pt, point);
			graphicsPath.AddLine(point, point2);
			graphicsPath.AddLine(point2, point3);
			graphicsPath.AddLine(point3, point4);
			graphicsPath.AddLine(point4, point5);
			graphics.DrawPath(pen2, graphicsPath);
			SmoothingMode smoothingMode = graphics.SmoothingMode;
			graphics.SmoothingMode = SmoothingMode.AntiAlias;
			graphics.DrawLine(pen3, pt2, pt3);
			graphics.DrawLine(pen3, pt4, pt5);
			graphics.SmoothingMode = smoothingMode;
			Rectangle itemInnerBounds = new Rectangle(point.X + 1, point.Y - 1, point4.X - point.X - 1, pt.Y - point.Y);
			m_itemInnerBounds = itemInnerBounds;
			RestoreGraphicsState(graphics);
			graphics.ResetTransform();
		}
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		Point position = Cursor.Position;
		Control control = base.TabControl as Control;
		position = control.PointToClient(position);
		bool flag = false;
		flag = drawItemInfo.Bounds.Contains(position);
		Rectangle itemInnerBounds = GetItemInnerBounds(drawItemInfo);
		if (itemInnerBounds != Rectangle.Empty)
		{
			Graphics graphics = drawItemInfo.Graphics;
			ApplyTransform(graphics);
			LinearGradientBrush brush = new LinearGradientBrush(itemInnerBounds, ThemeColors.TabItemTopGradientColor, ThemeColors.TabItemInActiveBottomColor, LinearGradientMode.Vertical);
			graphics.FillRectangle(brush, itemInnerBounds);
			if (flag)
			{
				LinearGradientBrush brush2 = new LinearGradientBrush(itemInnerBounds, ThemeColors.TabItemTopGradientColor, ThemeColors.TabItemActiveBottomColor, LinearGradientMode.Vertical);
				graphics.FillRectangle(brush2, itemInnerBounds);
			}
			RestoreGraphicsState(graphics);
			graphics.ResetTransform();
		}
	}

	protected override void SaveGraphicsState(Graphics g, ref RectangleF curBounds)
	{
		m_savedState = g.Save();
	}

	protected override void RestoreGraphicsState(Graphics g)
	{
		if (m_savedState != null)
		{
			g.Restore(m_savedState);
			m_savedState = null;
		}
	}
}
