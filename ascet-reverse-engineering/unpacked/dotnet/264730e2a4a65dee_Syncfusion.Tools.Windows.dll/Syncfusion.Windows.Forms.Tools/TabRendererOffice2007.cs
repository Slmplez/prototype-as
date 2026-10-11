using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererOffice2007 : TabRenderer2D
{
	private const int DEF_CORNER_RADIUS = 2;

	private const string DEF_RENDERER_NAME = "Office2007Style";

	private static StyleRendererPropertyOffice2007 m_tabPropertyExtender;

	private Office2007Colors m_themeColors;

	private Office2007Theme m_theme;

	private ITabControl m_parent;

	private Blend m_topEllipseBlend;

	private Blend m_bottomEllipseBlend;

	public new static string TabStyleName => "Office2007Style";

	public new static StyleRendererPropertyOffice2007 TabPanelPropertyExtender => m_tabPropertyExtender;

	public Office2007Colors ThemeColors => m_themeColors;

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
				OnOffice2007ColorSchemeChanged();
			}
		}
	}

	public override Color TabBorderColor
	{
		get
		{
			if (ThemeColors != null)
			{
				return ThemeColors.TabDefaultBorderColor;
			}
			return base.TabBorderColor;
		}
	}

	static TabRendererOffice2007()
	{
		m_tabPropertyExtender = new StyleRendererPropertyOffice2007();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererOffice2007), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		m_tabPropertyExtender = new StyleRendererPropertyOffice2007();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererOffice2007), TabPanelPropertyExtender);
	}

	public TabRendererOffice2007(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
		m_parent = parent;
		Theme = parent.Office2007ColorScheme;
		OnOffice2007ColorSchemeChanged();
		m_topEllipseBlend = new Blend();
		m_topEllipseBlend.Positions = new float[4] { 0f, 0.3f, 0.3f, 1f };
		m_topEllipseBlend.Factors = new float[4] { 0f, 0.2f, 0.25f, 1f };
		m_bottomEllipseBlend = new Blend();
		m_bottomEllipseBlend.Positions = new float[6] { 0f, 0.3f, 0.3f, 0.6f, 0.6f, 1f };
		m_bottomEllipseBlend.Factors = new float[6] { 0f, 0.3f, 0.3f, 0.8f, 0.8f, 1f };
		Office2007Colors.ManagedColorsApplied += Office2007Colors_ManagedColorsApplied;
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		return base.GetPreferredSize(g);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		tabSize.Width = 0f;
		tabSize.Height = 0f;
		return tabSize;
	}

	protected override void DrawFocusRect(Graphics g, RectangleF focusRect, Color fore, Color back)
	{
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		if (!(curBounds.Width > 0f) || !(curBounds.Height > 0f))
		{
			return;
		}
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		bool flag = (drawItemInfo.State & DrawItemState.Selected) == DrawItemState.Selected;
		if ((drawItemInfo.State & DrawItemState.HotLight) == DrawItemState.HotLight)
		{
			if (flag)
			{
				using (GraphicsPath path = GetBorderPathFromBounds(curBounds))
				{
					using Pen pen = new Pen(ThemeColors.TabSelectedHotLightBorderColor, 1f);
					graphics.DrawPath(pen, path);
				}
				RectangleF rectangleF = curBounds;
				rectangleF.Inflate(-1f, -1f);
				using GraphicsPath path2 = GetBorderPathFromBounds(rectangleF);
				using Pen pen2 = new Pen(ThemeColors.TabSelectedHotLightInnerBorderColor, 1f);
				drawItemInfo.Graphics.DrawPath(pen2, path2);
			}
			else
			{
				using (GraphicsPath path3 = GetBorderPathFromBounds(curBounds))
				{
					using Pen pen3 = new Pen(ThemeColors.TabDefaultBorderColor);
					graphics.DrawPath(pen3, path3);
				}
				RectangleF rectangleF2 = curBounds;
				rectangleF2.Inflate(-1f, -1f);
				rectangleF2.Height += 1f;
				if (m_parent.Office2007ColorScheme != Office2007Theme.Black)
				{
					using GraphicsPath path4 = GetBorderPathFromBounds(rectangleF2);
					using Pen pen4 = new Pen(ThemeColors.TabHighlightInnerBorderColor, 1f);
					drawItemInfo.Graphics.DrawPath(pen4, path4);
				}
				using Pen pen5 = new Pen(ThemeColors.TabHotLightBottomBorderLineColor, 1f);
				graphics.DrawLine(pen5, curBounds.Left + 1f, curBounds.Bottom, curBounds.Right - 1f, curBounds.Bottom);
			}
		}
		else if (flag)
		{
			using (GraphicsPath path5 = GetBorderPathFromBounds(curBounds))
			{
				using Pen pen6 = new Pen(ThemeColors.TabDefaultBorderColor, 1f);
				graphics.DrawPath(pen6, path5);
			}
			RectangleF rectangleF3 = curBounds;
			rectangleF3.Inflate(-1f, -1f);
			using GraphicsPath path6 = GetBorderPathFromBounds(rectangleF3);
			using Pen pen7 = new Pen(ThemeColors.TabSelectedInnerBorderColor, 1f);
			drawItemInfo.Graphics.DrawPath(pen7, path6);
		}
		graphics.SmoothingMode = smoothingMode;
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		bool flag = (drawItemInfo.State & DrawItemState.Selected) == DrawItemState.Selected;
		bool flag2 = (drawItemInfo.State & DrawItemState.HotLight) == DrawItemState.HotLight;
		if (flag)
		{
			DrawSelectedBackground(drawItemInfo);
		}
		else if (flag2)
		{
			DrawHotLightBackground(drawItemInfo);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.DrawItemCallback = null;
			Office2007Colors.ManagedColorsApplied -= Office2007Colors_ManagedColorsApplied;
		}
		base.Dispose(disposing);
	}

	private void DrawDefaultBackground(DrawTabEventArgs drawItemInfo)
	{
	}

	private void DrawSelectedBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		if (!(curBounds.Width > 0f) || !(curBounds.Height > 0f))
		{
			return;
		}
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		using (GraphicsPath path = GetBorderPathFromBounds(curBounds))
		{
			using LinearGradientBrush brush = new LinearGradientBrush(curBounds, ThemeColors.TabSelectedGradientTopColor, ThemeColors.TabSelectedGradientBottomColor, LinearGradientMode.Vertical);
			graphics.FillPath(brush, path);
		}
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	private void DrawHotLightBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		if (!(curBounds.Width > 0f) || !(curBounds.Height > 0f))
		{
			return;
		}
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		RectangleF rectangleF = curBounds;
		rectangleF.Inflate(-1f, -1f);
		if (m_parent.Office2007ColorScheme != Office2007Theme.Black)
		{
			using (GraphicsPath path = GetBorderPathFromBounds(curBounds))
			{
				using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(curBounds, ThemeColors.TabHotLightGradientTopBeginColor, ThemeColors.TabHotLightGradientBottomEndColor, LinearGradientMode.Vertical);
				ColorBlend colorBlend = new ColorBlend();
				colorBlend.Colors = new Color[4] { ThemeColors.TabHotLightGradientTopBeginColor, ThemeColors.TabHotLightGradientTopEndColor, ThemeColors.TabHotLightGradientBottomBeginColor, ThemeColors.TabHotLightGradientBottomEndColor };
				colorBlend.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
				linearGradientBrush.InterpolationColors = colorBlend;
				graphics.FillPath(linearGradientBrush, path);
			}
			rectangleF = curBounds;
			rectangleF.Inflate(-5f, 0f);
			float height = rectangleF.Height;
			rectangleF.Offset(0f, 0f - height);
			rectangleF.Height = height * 2f;
			if (rectangleF.Width > 0f && rectangleF.Height > 0f)
			{
				using GraphicsPath graphicsPath = new GraphicsPath();
				graphicsPath.AddEllipse(rectangleF);
				using PathGradientBrush pathGradientBrush = new PathGradientBrush(graphicsPath);
				pathGradientBrush.CenterColor = ThemeColors.TabHotLightGradientCircleColor;
				Color color = Color.FromArgb(50, ThemeColors.TabHotLightGradientCircleColor);
				pathGradientBrush.SurroundColors = new Color[1] { color };
				graphics.FillPath(pathGradientBrush, graphicsPath);
			}
		}
		else
		{
			rectangleF = new RectangleF(curBounds.X, curBounds.Y, curBounds.Width + 1f, curBounds.Height / 2f);
			using (SolidBrush brush = new SolidBrush(ThemeColors.TabHotLightGradientCircleColor))
			{
				graphics.FillRectangle(brush, curBounds);
			}
			using (GraphicsPath path2 = GetTopEllipseRoundedPath(rectangleF))
			{
				using LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rectangleF, ThemeColors.TabHotLightGradientTopBeginColor, ThemeColors.TabHotLightGradientTopEndColor, LinearGradientMode.Vertical);
				linearGradientBrush2.Blend = m_topEllipseBlend;
				graphics.FillPath(linearGradientBrush2, path2);
			}
			rectangleF = new RectangleF(curBounds.X, curBounds.Y + curBounds.Height * 0.6f, curBounds.Width, curBounds.Height);
			rectangleF.Inflate(curBounds.Width / 5f, 0f);
			if (rectangleF.Width > 0f && rectangleF.Height > 0f)
			{
				using GraphicsPath graphicsPath2 = new GraphicsPath();
				graphicsPath2.AddEllipse(rectangleF);
				using PathGradientBrush pathGradientBrush2 = new PathGradientBrush(graphicsPath2);
				pathGradientBrush2.CenterColor = ThemeColors.TabHotLightGradientBottomEndColor;
				pathGradientBrush2.SurroundColors = new Color[1] { Color.FromArgb(50, ThemeColors.TabHotLightGradientBottomBeginColor) };
				pathGradientBrush2.Blend = m_bottomEllipseBlend;
				graphics.FillPath(pathGradientBrush2, graphicsPath2);
			}
		}
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	protected virtual GraphicsPath GetBorderPathFromBounds(RectangleF bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] points = new PointF[3]
		{
			new PointF(bounds.Left, bounds.Bottom),
			new PointF(bounds.Left, bounds.Top + 2f),
			new PointF(bounds.Left + 2f, bounds.Top)
		};
		graphicsPath.AddLines(points);
		points = new PointF[3]
		{
			new PointF(bounds.Right - 2f, bounds.Top),
			new PointF(bounds.Right, bounds.Top + 2f),
			new PointF(bounds.Right, bounds.Bottom)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	protected override Color GetForeColor()
	{
		return ThemeColors.TabForeColor;
	}

	protected override Color GetActiveForeColor()
	{
		return ThemeColors.ActiveTabForeColor;
	}

	protected GraphicsPath GetTopEllipseRoundedPath(RectangleF bounds)
	{
		float x = bounds.X;
		float y = bounds.Y;
		float num = bounds.Right - 1f;
		float num2 = bounds.Bottom - 1f;
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(x, num2 - 3f, x, y + 2f);
		graphicsPath.AddLine(x, y + 2f, x + 2f, y);
		graphicsPath.AddLine(x + 2f, y, num - 2f, y);
		graphicsPath.AddLine(num - 2f, y, num, y + 2f);
		graphicsPath.AddLine(num, y + 2f, num, num2 - 3f);
		graphicsPath.AddLine(num, num2 - 3f, num - 3f, num2);
		graphicsPath.AddLine(num - 3f, num2, x + 3f, num2);
		graphicsPath.AddLine(x + 3f, num2, x, num2 - 3f);
		return graphicsPath;
	}

	private void Office2007Colors_ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		if (m_theme == Office2007Theme.Managed)
		{
			OnOffice2007ColorSchemeChanged();
		}
	}

	private void OnOffice2007ColorSchemeChanged()
	{
		m_themeColors = Office2007Colors.GetColorTable(m_theme);
	}
}
