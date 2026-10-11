using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Renderers;

namespace Syncfusion.Windows.Forms.Scrolling.Renderers;

public class WindowsXPRenderer : ClassicRenderer
{
	protected const float DEF_HORIZONTAL_BRUSH_ANGLE = 90f;

	protected const float DEF_VERTICAL_BRUSH_ANGLE = 0f;

	protected const float DEF_SLOPING_BRUSH_ANGLE = 53f;

	protected const int DEF_WIDTH_BRUSH = 1;

	protected const int DEF_HEIGHT_BRUSH = 1;

	protected const int DEF_BORDERS_RADIUS = 1;

	protected const int DEF_COUNT_OF_LINES = 8;

	protected const int DEF_HEIGHT_OF_LINES = 5;

	protected float m_iLeft;

	protected float m_iTop;

	protected float m_iRight;

	protected float m_iBottom;

	private Color m_disabledColor = Color.FromArgb(230, 230, 220);

	private Color m_disabledShadowColor = Color.FromArgb(196, 196, 175);

	private Color m_disabledArrowColor = Color.FromArgb(201, 201, 194);

	private Color m_disabledBackgroundColor = Color.FromArgb(254, 254, 251);

	private WindowsXPColorsScheme colorScheme = WindowsXPColorsScheme.DefaultBlue;

	private WindowsXPRenderer renderer;

	public WindowsXPColorsScheme ColorScheme
	{
		get
		{
			return colorScheme;
		}
		set
		{
			if (colorScheme != value)
			{
				colorScheme = value;
			}
		}
	}

	protected internal WindowsXPRenderer(bool isVerticalScrollBar)
		: base(isVerticalScrollBar)
	{
	}

	public WindowsXPRenderer(ScrollBarCustomDraw parent)
		: base(parent)
	{
		SetColorScheme();
		bool isVerticalScrollBar = false;
		if (parent is VScrollBarCustomDraw)
		{
			isVerticalScrollBar = true;
		}
		switch (ColorScheme)
		{
		case WindowsXPColorsScheme.DefaultBlue:
			renderer = new WindowsXPBlueRenderer(isVerticalScrollBar);
			break;
		case WindowsXPColorsScheme.OliveGreen:
			renderer = new WindowsXPOliveGreenRenderer(isVerticalScrollBar);
			break;
		case WindowsXPColorsScheme.Silver:
			renderer = new WindowsXPSilverRenderer(isVerticalScrollBar);
			break;
		}
	}

	public override void DrawArrowButton(Graphics g, Rectangle bounds, ScrollButton type, ButtonState state)
	{
		if (!m_parent.ThemeEnabled)
		{
			base.DrawArrowButton(g, bounds, type, state);
		}
		else if (state == ButtonState.Inactive)
		{
			DrawArrowButtonDisabled(g, bounds, type);
		}
		else
		{
			renderer.DrawArrowButton(g, bounds, type, state);
		}
	}

	public override void DrawBackground(Graphics g, Rectangle bounds, ButtonState state)
	{
		if (!m_parent.ThemeEnabled)
		{
			base.DrawBackground(g, bounds, state);
		}
		else if (state == ButtonState.Inactive)
		{
			DrawBackgroundDisabled(g, bounds);
		}
		else
		{
			renderer.DrawBackground(g, bounds, state);
		}
	}

	public override void DrawThumb(Graphics g, Rectangle bounds, ButtonState state)
	{
		if (!m_parent.ThemeEnabled)
		{
			base.DrawThumb(g, bounds, state);
		}
		else if (state == ButtonState.Inactive)
		{
			DrawThumbDisabled(g, bounds);
		}
		else
		{
			renderer.DrawThumb(g, bounds, state);
		}
	}

	public void SetColorScheme(WindowsXPColorsScheme colorScheme)
	{
		ColorScheme = colorScheme;
	}

	public void SetColorScheme()
	{
		if (XPThemes.IsSilverThemeOn)
		{
			ColorScheme = WindowsXPColorsScheme.Silver;
		}
		else if (XPThemes.IsOliveGreenThemeOn)
		{
			ColorScheme = WindowsXPColorsScheme.OliveGreen;
		}
		else
		{
			ColorScheme = WindowsXPColorsScheme.DefaultBlue;
		}
	}

	protected void InitializeRectangleEdges(RectangleF bounds)
	{
		m_iLeft = bounds.X;
		m_iTop = bounds.Y;
		m_iRight = bounds.Right - 1f;
		m_iBottom = bounds.Bottom - 1f;
	}

	protected void ValidateRectangle(ref RectangleF rc)
	{
		if (rc.Width <= 0f)
		{
			rc.Width = 1f;
		}
		if (rc.Height <= 0f)
		{
			rc.Height = 1f;
		}
	}

	protected GraphicsPath GetRoundedPath(RectangleF bounds, int iRadius)
	{
		ValidateRectangle(ref bounds);
		InitializeRectangleEdges(bounds);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(m_iLeft, m_iBottom - (float)iRadius, m_iLeft, m_iTop + (float)iRadius);
		graphicsPath.AddLine(m_iLeft, m_iTop + (float)iRadius, m_iLeft + (float)iRadius, m_iTop);
		graphicsPath.AddLine(m_iLeft + (float)iRadius, m_iTop, m_iRight - (float)iRadius, m_iTop);
		graphicsPath.AddLine(m_iRight - (float)iRadius, m_iTop, m_iRight, m_iTop + (float)iRadius);
		graphicsPath.AddLine(m_iRight, m_iTop + (float)iRadius, m_iRight, m_iBottom - (float)iRadius);
		graphicsPath.AddLine(m_iRight, m_iBottom - (float)iRadius, m_iRight - (float)iRadius, m_iBottom);
		graphicsPath.AddLine(m_iRight - (float)iRadius, m_iBottom, m_iLeft + (float)iRadius, m_iBottom);
		graphicsPath.AddLine(m_iLeft + (float)iRadius, m_iBottom, m_iLeft, m_iBottom - (float)iRadius);
		return graphicsPath;
	}

	protected LinearGradientBrush GetVerticalBrush(RectangleF rc, Color cl1, Color cl2)
	{
		ValidateRectangle(ref rc);
		RectangleF rect = new RectangleF(rc.Left, rc.Top, rc.Width, 1f);
		return new LinearGradientBrush(rect, cl1, cl2, 0f);
	}

	protected LinearGradientBrush GetHorizontalBrush(RectangleF rc, Color cl1, Color cl2)
	{
		ValidateRectangle(ref rc);
		RectangleF rect = new RectangleF(rc.Left, rc.Top, 1f, rc.Height);
		return new LinearGradientBrush(rect, cl1, cl2, 90f);
	}

	protected LinearGradientBrush GetSlopingBrush(RectangleF rc, Color cl1, Color cl2)
	{
		ValidateRectangle(ref rc);
		return new LinearGradientBrush(rc, cl1, cl2, 53f);
	}

	protected void DrawBackgroundLines(Graphics g, Rectangle bounds, Color lineColor)
	{
		using Pen pen = new Pen(lineColor);
		if (IsVerticalScrollBar)
		{
			g.DrawLine(pen, bounds.X, bounds.Y, bounds.X, bounds.Y + bounds.Height - 1);
			g.DrawLine(pen, bounds.X + bounds.Width - 1, bounds.Y, bounds.X + bounds.Width - 1, bounds.Y + bounds.Height - 1);
		}
		else
		{
			g.DrawLine(pen, bounds.X, bounds.Y, bounds.X + bounds.Width - 1, bounds.Y);
			g.DrawLine(pen, bounds.X, bounds.Y + bounds.Height - 1, bounds.X + bounds.Width - 1, bounds.Y + bounds.Height - 1);
		}
	}

	protected void DrawShadowForArrowButton(Graphics g, RectangleF bounds, Color shadowColor, Color startBackgroundColor, Color endBackgroundColor)
	{
		int num = 1;
		int num2 = 2;
		Blend blend = new Blend();
		blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.2f, 0.8f, 1f };
		blend.Factors = new float[4] { 0f, 2f, 0f, 1f };
		bounds = new RectangleF(bounds.X + 1f, bounds.Y + 1f, bounds.Width - 1f, bounds.Height - 1f);
		InitializeRectangleEdges(bounds);
		if (IsVerticalScrollBar)
		{
			using LinearGradientBrush brush = GetVerticalBrush(bounds, startBackgroundColor, endBackgroundColor);
			g.DrawLine(new Pen(brush), m_iRight - 1f, m_iBottom, m_iLeft, m_iBottom);
		}
		else
		{
			using LinearGradientBrush brush2 = GetHorizontalBrush(bounds, startBackgroundColor, startBackgroundColor);
			g.DrawLine(new Pen(brush2), m_iRight, m_iTop, m_iRight, m_iBottom - 1f);
		}
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(m_iRight, m_iTop + (float)num, m_iRight, m_iBottom - (float)num2);
		graphicsPath.AddLine(m_iRight, m_iBottom - (float)num2, m_iRight - (float)num2, m_iBottom);
		graphicsPath.AddLine(m_iRight - (float)num2, m_iBottom, m_iLeft + (float)num2, m_iBottom);
		graphicsPath.AddLine(m_iLeft + (float)num, m_iBottom, m_iLeft, m_iBottom - (float)num);
		using LinearGradientBrush linearGradientBrush = GetSlopingBrush(bounds, shadowColor, Color.FromArgb(125, shadowColor));
		linearGradientBrush.Blend = blend;
		g.DrawPath(new Pen(linearGradientBrush), graphicsPath);
	}

	protected void DrawShadowForThumb(Graphics g, RectangleF bounds, Color shadowColor)
	{
		InitializeRectangleEdges(bounds);
		int num = 1;
		int num2 = 2;
		Pen pen = new Pen(shadowColor);
		Pen pen2 = new Pen(Color.FromArgb(200, shadowColor));
		Pen pen3 = new Pen(Color.FromArgb(225, shadowColor));
		if (IsVerticalScrollBar)
		{
			g.DrawLine(pen, m_iRight - (float)num2 - (float)num, m_iBottom, m_iLeft + (float)num2 + (float)num, m_iBottom);
			g.DrawLine(pen2, m_iRight, m_iTop + (float)num2, m_iRight, m_iBottom - (float)num2);
			g.DrawLine(pen2, m_iRight, m_iTop + (float)num2 + (float)num, m_iRight, m_iBottom - (float)num2 - (float)num);
			g.DrawLine(pen3, m_iLeft + (float)num2, m_iBottom, m_iLeft + (float)num, m_iBottom - (float)num);
			g.DrawLine(pen3, m_iRight - (float)num, m_iBottom - (float)num, m_iRight - (float)num2, m_iBottom);
		}
		else
		{
			g.DrawLine(pen, m_iRight, m_iTop + (float)num2 + (float)num, m_iRight, m_iBottom - (float)num2 - (float)num);
			g.DrawLine(pen2, m_iRight - (float)num2, m_iBottom, m_iLeft + (float)num2, m_iBottom);
			g.DrawLine(pen2, m_iRight - (float)num2 - (float)num, m_iBottom, m_iLeft + (float)num2 + (float)num, m_iBottom);
			g.DrawLine(pen3, m_iRight - (float)num, m_iTop + (float)num, m_iRight, m_iTop + (float)num2);
			g.DrawLine(pen3, m_iRight, m_iBottom - (float)num2, m_iRight - (float)num, m_iBottom - (float)num);
		}
	}

	protected void DrawMiddleLinesForThumb(Graphics g, RectangleF bounds, Color firstColor, Color secondColor)
	{
		Pen pen = new Pen(firstColor);
		Pen pen2 = new Pen(secondColor);
		if (IsVerticalScrollBar)
		{
			if (bounds.Height > 17f && bounds.Width > 8f)
			{
				float num = bounds.Y + (bounds.Height - 8f) / 2f;
				float num2 = bounds.X + (float)Math.Floor((bounds.Width - 6f) / 2f);
				g.DrawLine(pen, num2, num, num2 + 5f, num);
				g.DrawLine(pen2, num2 + 1f, num + 1f, num2 + 1f + 5f, num + 1f);
				g.DrawLine(pen, num2, num + 2f, num2 + 5f, num + 2f);
				g.DrawLine(pen2, num2 + 1f, num + 3f, num2 + 1f + 5f, num + 3f);
				g.DrawLine(pen, num2, num + 4f, num2 + 5f, num + 4f);
				g.DrawLine(pen2, num2 + 1f, num + 5f, num2 + 1f + 5f, num + 5f);
				g.DrawLine(pen, num2, num + 6f, num2 + 5f, num + 6f);
				g.DrawLine(pen2, num2 + 1f, num + 7f, num2 + 1f + 5f, num + 7f);
			}
		}
		else if (bounds.Width > 17f && bounds.Height > 8f)
		{
			float num2 = bounds.X + (bounds.Width - 8f) / 2f;
			float num = bounds.Y + (float)Math.Floor((bounds.Height - 6f) / 2f);
			g.DrawLine(pen, num2, num, num2, num + 5f);
			g.DrawLine(pen2, num2 + 1f, num + 1f, num2 + 1f, num + 1f + 5f);
			g.DrawLine(pen, num2 + 2f, num, num2 + 2f, num + 5f);
			g.DrawLine(pen2, num2 + 3f, num + 1f, num2 + 3f, num + 1f + 5f);
			g.DrawLine(pen, num2 + 4f, num, num2 + 4f, num + 5f);
			g.DrawLine(pen2, num2 + 5f, num + 1f, num2 + 5f, num + 1f + 5f);
			g.DrawLine(pen, num2 + 6f, num, num2 + 6f, num + 5f);
			g.DrawLine(pen2, num2 + 7f, num + 1f, num2 + 7f, num + 1f + 5f);
		}
	}

	private void FillRectangleWhite(Graphics g, Rectangle bounds)
	{
		using SolidBrush brush = new SolidBrush(SystemColors.ControlLightLight);
		g.FillRectangle(brush, bounds);
	}

	private void DrawArrowButtonDisabled(Graphics g, Rectangle bounds, ScrollButton type)
	{
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			FillRectangleWhite(g, bounds);
			DrawBackgroundLines(g, bounds, Color.FromArgb(175, m_disabledColor));
			Rectangle rectangle = ((!IsVerticalScrollBar) ? new Rectangle(bounds.X - 1, bounds.Y, bounds.Width + 1, bounds.Height) : new Rectangle(bounds.X, bounds.Y - 1, bounds.Width, bounds.Height + 1));
			DrawShadowForArrowButton(g, rectangle, m_disabledShadowColor, Color.FromArgb(100, m_disabledColor), Color.FromArgb(100, m_disabledColor));
			rectangle.Inflate(-2, -2);
			g.DrawRectangle(new Pen(Color.FromArgb(100, m_disabledColor)), rectangle.Left, rectangle.Top, rectangle.Width - 1, rectangle.Height - 1);
			using (GraphicsPath path = GetRoundedPath(rectangle, 1))
			{
				g.DrawPath(new Pen(m_disabledColor), path);
			}
			rectangle.Inflate(-1, -1);
			using (LinearGradientBrush brush = GetSlopingBrush(rectangle, Color.FromArgb(100, m_disabledColor), Color.FromArgb(240, m_disabledColor)))
			{
				g.FillRectangle(brush, rectangle);
			}
			DrawArrows(g, bounds, type, m_disabledArrowColor);
		}
	}

	private void DrawBackgroundDisabled(Graphics g, Rectangle bounds)
	{
		if (bounds.Width <= 0 || bounds.Height <= 0)
		{
			return;
		}
		FillRectangleWhite(g, bounds);
		DrawBackgroundLines(g, bounds, Color.FromArgb(175, m_disabledColor));
		using SolidBrush brush = new SolidBrush(m_disabledBackgroundColor);
		if (IsVerticalScrollBar)
		{
			g.FillRectangle(brush, new Rectangle(bounds.Left + 1, bounds.Top, bounds.Width - 2, bounds.Height));
		}
		else
		{
			g.FillRectangle(brush, new Rectangle(bounds.Left, bounds.Top + 1, bounds.Width, bounds.Height - 2));
		}
	}

	private void DrawThumbDisabled(Graphics g, Rectangle bounds)
	{
		DrawBackgroundDisabled(g, bounds);
	}

	protected void DrawArrows(Graphics g, Rectangle bounds, ScrollButton type, Color color)
	{
		int num = ((bounds.Height > bounds.Width) ? bounds.Width : bounds.Height);
		float num2 = 1f;
		float num3 = 1f;
		if ((float)bounds.Width / 2f - (float)Math.Floor((float)bounds.Width / 2f) == 0.5f)
		{
			num2 = 0f;
		}
		if ((float)bounds.Height / 2f - (float)Math.Floor((float)bounds.Height / 2f) == 0.5f)
		{
			num3 = 0f;
		}
		float num4 = 1f;
		if (num <= 14)
		{
			num4 = 2f;
		}
		float num5 = (float)Math.Floor((float)num / 3f);
		float num6 = (float)Math.Floor((float)(num * 2) / 3f);
		float num7 = Math.Abs(num5 - num6 + 1f);
		if (num7 > 4f && num < 28)
		{
			num7 = 4f;
		}
		if (num7 == 0f)
		{
			num7 = 1f;
		}
		float num8 = num7 - 1f;
		float num9 = num7 - num4;
		if (num9 < 0f)
		{
			num9 = 0f;
		}
		float num10 = (float)bounds.X + (float)Math.Floor((float)bounds.Width / 2f) - num2;
		float num11 = (float)bounds.Y + (float)Math.Floor(((float)bounds.Height - num7) / 2f);
		float x = num10;
		float y = (float)bounds.Y + (float)Math.Floor((float)bounds.Height / 2f);
		float num12 = 0f;
		switch (type)
		{
		case ScrollButton.Up:
			num12 = 0f;
			num11 -= 1f;
			break;
		case ScrollButton.Right:
			num12 = 90f;
			break;
		case ScrollButton.Down:
			num12 = 180f;
			num11 += num3;
			break;
		case ScrollButton.Left:
			num12 = 270f;
			num11 -= 1f;
			break;
		}
		PointF pointF = new PointF(num10, num11);
		PointF pointF2 = new PointF(pointF.X - num7, pointF.Y + num7);
		PointF pointF3 = new PointF(pointF.X + num7, pointF.Y + num7);
		PointF pointF4 = new PointF(pointF.X, pointF.Y + 1f);
		PointF pointF5 = new PointF(pointF4.X - num8, pointF4.Y + num8);
		PointF pointF6 = new PointF(pointF4.X + num8, pointF4.Y + num8);
		PointF pointF7 = new PointF(pointF.X, pointF.Y + 2f);
		PointF pointF8 = new PointF(pointF7.X - num9, pointF7.Y + num9);
		PointF pointF9 = new PointF(pointF7.X + num9, pointF7.Y + num9);
		PointF[] array = new PointF[9] { pointF, pointF2, pointF3, pointF4, pointF5, pointF6, pointF7, pointF8, pointF9 };
		float angle = (float)((double)(num12 / 180f) * Math.PI);
		PointF p = new PointF(x, y);
		Rotate(array, angle, p);
		using Pen pen = new Pen(color);
		DrawArrowInternal(g, pen, array[0], array[1], array[2]);
		DrawArrowInternal(g, pen, array[3], array[4], array[5]);
		DrawArrowInternal(g, pen, array[6], array[7], array[8]);
	}

	protected void DrawArrowInternal(Graphics g, Pen pen, PointF p1, PointF p2, PointF p3)
	{
		g.DrawLine(pen, p1, p2);
		g.DrawLine(pen, p1, p3);
	}

	private void Rotate(PointF[] points, float angle, PointF p)
	{
		if (points == null)
		{
			throw new ArgumentNullException("points");
		}
		if (points.Length != 0)
		{
			float num = 0f;
			float num2 = 0f;
			int i = 0;
			for (int num3 = points.Length; i < num3; i++)
			{
				num = points[i].X;
				num2 = points[i].Y;
				float x = p.X;
				float y = p.Y;
				points[i].X = (float)((double)num * Math.Cos(angle) - (double)num2 * Math.Sin(angle) - (double)x * (Math.Cos(angle) - 1.0) + (double)y * Math.Sin(angle));
				points[i].Y = (float)((double)num * Math.Sin(angle) + (double)num2 * Math.Cos(angle) - (double)y * (Math.Cos(angle) - 1.0) - (double)x * Math.Sin(angle));
			}
		}
	}
}
