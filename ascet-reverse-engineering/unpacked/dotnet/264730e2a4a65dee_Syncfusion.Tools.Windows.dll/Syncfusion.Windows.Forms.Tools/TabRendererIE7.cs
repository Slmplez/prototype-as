using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererIE7 : TabRenderer2D
{
	private const int DEF_CORNER_RADIUS = 3;

	private const int DEF_OVERLAP_HEIGHT = 2;

	private const string DEF_RENDERER_NAME = "InternetExplorer7Style";

	private static readonly Color DEF_BORDER_COLOR;

	private static readonly Color DEF_BACKCOLOR_TOP_START;

	private static readonly Color DEF_BACKCOLOR_TOP_END;

	private static readonly Color DEF_BACKCOLOR_MIDDLE_START;

	private static readonly Color DEF_BACKCOLOR_MIDDLE_END;

	private static readonly Color DEF_BACKCOLOR_BOTTOM_START;

	private static readonly Color DEF_BACKCOLOR_BOTTOM_END;

	private static readonly Color DEF_BACKCOLOR_TOP_START_SELECTED;

	private static readonly Color DEF_BACKCOLOR_TOP_END_SELECTED;

	private static readonly Color DEF_BACKCOLOR_BOTTOM_START_SELECTED;

	private static readonly Color DEF_BACKCOLOR_BOTTOM_END_SELECTED;

	private static readonly Color DEF_BACKCOLOR_TOP_START_HIGHLIGHTED;

	private static readonly Color DEF_BACKCOLOR_TOP_END_HIGHLIGHTED;

	private static readonly Color DEF_BACKCOLOR_MIDDLE_START_HIGHLIGHTED;

	private static readonly Color DEF_BACKCOLOR_MIDDLE_END_HIGHLIGHTED;

	private static readonly Color DEF_BACKCOLOR_BOTTOM_START_HIGHLIGHTED;

	private static readonly Color DEF_BACKCOLOR_BOTTOM_END_HIGHLIGHTED;

	private static StyleRendererPropertyIE7 m_tabPropertyExtender;

	public new static string TabStyleName => "InternetExplorer7Style";

	public new static StyleRendererPropertyIE7 TabPanelPropertyExtender => m_tabPropertyExtender;

	public override Color TabBorderColor => DEF_BORDER_COLOR;

	public override RectangleF Bounds
	{
		get
		{
			return base.Bounds;
		}
		set
		{
			base.Bounds = value;
		}
	}

	static TabRendererIE7()
	{
		DEF_BORDER_COLOR = Color.FromArgb(145, 150, 162);
		DEF_BACKCOLOR_TOP_START = Color.FromArgb(242, 245, 250);
		DEF_BACKCOLOR_TOP_END = Color.FromArgb(229, 234, 245);
		DEF_BACKCOLOR_MIDDLE_START = Color.FromArgb(207, 215, 235);
		DEF_BACKCOLOR_MIDDLE_END = Color.FromArgb(216, 222, 240);
		DEF_BACKCOLOR_BOTTOM_START = Color.FromArgb(222, 227, 244);
		DEF_BACKCOLOR_BOTTOM_END = Color.FromArgb(238, 240, 253);
		DEF_BACKCOLOR_TOP_START_SELECTED = Color.FromArgb(252, 253, 253);
		DEF_BACKCOLOR_TOP_END_SELECTED = Color.FromArgb(231, 245, 251);
		DEF_BACKCOLOR_BOTTOM_START_SELECTED = Color.FromArgb(207, 231, 250);
		DEF_BACKCOLOR_BOTTOM_END_SELECTED = Color.FromArgb(185, 209, 250);
		DEF_BACKCOLOR_TOP_START_HIGHLIGHTED = Color.FromArgb(237, 243, 252);
		DEF_BACKCOLOR_TOP_END_HIGHLIGHTED = Color.FromArgb(198, 221, 247);
		DEF_BACKCOLOR_MIDDLE_START_HIGHLIGHTED = Color.FromArgb(153, 198, 238);
		DEF_BACKCOLOR_MIDDLE_END_HIGHLIGHTED = Color.FromArgb(164, 204, 238);
		DEF_BACKCOLOR_BOTTOM_START_HIGHLIGHTED = Color.FromArgb(176, 211, 240);
		DEF_BACKCOLOR_BOTTOM_END_HIGHLIGHTED = Color.FromArgb(224, 236, 251);
		m_tabPropertyExtender = new StyleRendererPropertyIE7();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererIE7), TabPanelPropertyExtender);
	}

	public new static void RegisterTabType()
	{
		m_tabPropertyExtender = new StyleRendererPropertyIE7();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererIE7), TabPanelPropertyExtender);
	}

	public TabRendererIE7(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetPreferredSize(Graphics g)
	{
		SizeF preferredSize = base.GetPreferredSize(g);
		preferredSize.Height += 2f;
		return preferredSize;
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		tabSize.Height = 2f;
		tabSize.Width = 0f;
		return tabSize;
	}

	protected override void DrawFocusRect(Graphics g, RectangleF focusRect, Color fore, Color back)
	{
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectTextAndImage = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.BoundsInterior, apply: true);
		rectTextAndImage.Offset(0f, -1f);
		RectangleF closeButtonBounds = GetCloseButtonBounds(drawItemInfo);
		ApplyTransform(graphics);
		if (drawItemInfo.TextBrush == null)
		{
			if ((drawItemInfo.State & DrawItemState.Selected) <= DrawItemState.None)
			{
				drawItemInfo.TextBrush = new SolidBrush(Color.FromArgb(192, drawItemInfo.ForeColor));
			}
			else
			{
				drawItemInfo.TextBrush = new SolidBrush(drawItemInfo.ForeColor);
			}
		}
		DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo);
		if (base.ShowCloseButton)
		{
			DrawCloseButton(graphics, closeButtonBounds);
		}
		if ((drawItemInfo.State & DrawItemState.Focus) > DrawItemState.None)
		{
			DrawFocusRect(graphics, RectangleF.Inflate(Bounds, -1f, -1f), drawItemInfo.ForeColor, drawItemInfo.BackColor);
		}
		graphics.ResetTransform();
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		if ((drawItemInfo.State & DrawItemState.Selected) == DrawItemState.Selected)
		{
			curBounds.Height -= 1f;
		}
		drawItemInfo.Graphics.DrawPath(new Pen(DEF_BORDER_COLOR, 1f), GetBorderPathFromBounds(curBounds));
		RectangleF rectangleF = curBounds;
		rectangleF.Inflate(-1f, -1f);
		using (GraphicsPath path = GetBorderPathFromBounds(rectangleF))
		{
			drawItemInfo.Graphics.DrawPath(new Pen(Color.White, 1f), path);
		}
		graphics.SmoothingMode = smoothingMode;
		RestoreGraphicsState(graphics);
		graphics.ResetTransform();
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF curBounds = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		ApplyTransform(graphics);
		SaveGraphicsState(graphics, ref curBounds);
		RectangleF rectangleF = curBounds;
		rectangleF.Inflate(-1f, -1f);
		if (!((double)rectangleF.Width > 0.0) || !((double)rectangleF.Height > 0.0))
		{
			return;
		}
		using (GraphicsPath path = GetBorderPathFromBounds(rectangleF))
		{
			using Region region = new Region(path);
			using Brush brush = GetBackgroundBrush(rectangleF, drawItemInfo.State);
			drawItemInfo.Graphics.FillRegion(brush, region);
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
			new PointF(bounds.Left, bounds.Top + 3f),
			new PointF(bounds.Left + 3f, bounds.Top)
		};
		graphicsPath.AddLines(points);
		points = new PointF[3]
		{
			new PointF(bounds.Right - 3f, bounds.Top),
			new PointF(bounds.Right, bounds.Top + 3f),
			new PointF(bounds.Right, bounds.Bottom)
		};
		graphicsPath.AddLines(points);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	protected virtual Brush GetBackgroundBrush(RectangleF bounds, DrawItemState state)
	{
		LinearGradientBrush linearGradientBrush = null;
		bool flag = (state & DrawItemState.Selected) == DrawItemState.Selected;
		bool flag2 = (state & DrawItemState.HotLight) == DrawItemState.HotLight;
		if (bounds.Width != 0f && bounds.Height != 0f)
		{
			if (flag)
			{
				linearGradientBrush = new LinearGradientBrush(bounds, DEF_BACKCOLOR_TOP_START_SELECTED, DEF_BACKCOLOR_BOTTOM_END_SELECTED, LinearGradientMode.Vertical);
				ColorBlend colorBlend = new ColorBlend();
				colorBlend.Colors = new Color[4] { DEF_BACKCOLOR_TOP_START_SELECTED, DEF_BACKCOLOR_TOP_END_SELECTED, DEF_BACKCOLOR_BOTTOM_START_SELECTED, DEF_BACKCOLOR_BOTTOM_END_SELECTED };
				colorBlend.Positions = new float[4] { 0f, 0.33f, 0.33f, 1f };
				linearGradientBrush.InterpolationColors = colorBlend;
			}
			else if (flag2)
			{
				linearGradientBrush = new LinearGradientBrush(bounds, DEF_BACKCOLOR_TOP_START_HIGHLIGHTED, DEF_BACKCOLOR_BOTTOM_END_HIGHLIGHTED, LinearGradientMode.Vertical);
				ColorBlend colorBlend2 = new ColorBlend();
				colorBlend2.Colors = new Color[6] { DEF_BACKCOLOR_TOP_START_HIGHLIGHTED, DEF_BACKCOLOR_TOP_END_HIGHLIGHTED, DEF_BACKCOLOR_MIDDLE_START_HIGHLIGHTED, DEF_BACKCOLOR_MIDDLE_END_HIGHLIGHTED, DEF_BACKCOLOR_BOTTOM_START_HIGHLIGHTED, DEF_BACKCOLOR_BOTTOM_END_HIGHLIGHTED };
				colorBlend2.Positions = new float[6] { 0f, 0.33f, 0.33f, 0.65f, 0.66f, 1f };
				linearGradientBrush.InterpolationColors = colorBlend2;
			}
			else
			{
				linearGradientBrush = new LinearGradientBrush(bounds, DEF_BACKCOLOR_TOP_START, DEF_BACKCOLOR_BOTTOM_END, LinearGradientMode.Vertical);
				ColorBlend colorBlend3 = new ColorBlend();
				colorBlend3.Colors = new Color[6] { DEF_BACKCOLOR_TOP_START, DEF_BACKCOLOR_TOP_END, DEF_BACKCOLOR_MIDDLE_START, DEF_BACKCOLOR_MIDDLE_END, DEF_BACKCOLOR_BOTTOM_START, DEF_BACKCOLOR_BOTTOM_END };
				colorBlend3.Positions = new float[6] { 0f, 0.33f, 0.33f, 0.65f, 0.66f, 1f };
				linearGradientBrush.InterpolationColors = colorBlend3;
			}
		}
		return linearGradientBrush;
	}
}
