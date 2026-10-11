using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Scrolling.Renderers;

namespace Syncfusion.Windows.Forms.Renderers;

public class WindowsXPSilverRenderer : WindowsXPRenderer
{
	private Blend m_blendArrowButtonDefault;

	private Blend m_blendArrowButtonPushed;

	private Blend m_blendThumb;

	private Blend m_blendThumbPushed;

	private Blend m_blendBackGround;

	private Color m_defaultBackGroundBorderColor = Color.FromArgb(229, 230, 238);

	private Color m_defaultBackGroundStartColor = Color.FromArgb(236, 238, 243);

	private Color m_defaultBackGroundEndColor = Color.FromArgb(251, 251, 254);

	private Color m_pushedBackGroundBorderColor = Color.FromArgb(194, 195, 215);

	private Color m_pushedBackGroundStartColor = Color.FromArgb(211, 215, 227);

	private Color m_pushedBackGroundEndColor = Color.FromArgb(246, 246, 253);

	private Color m_defaultBorderColor = Color.FromArgb(148, 149, 162);

	private Color m_pushedBorderColor = Color.FromArgb(91, 102, 101);

	private Color m_pushedThumbBorderColor = Color.FromArgb(160, 181, 205);

	private Color m_defaultArrowButtonStartColor = Color.White;

	private Color m_defaultArrowButtonEndColor = Color.FromArgb(203, 204, 218);

	private Color m_pushedArrowButtonStartColor = Color.FromArgb(191, 194, 219);

	private Color m_pushedArrowButtonEndColor = Color.White;

	private Color m_arrowColor = Color.FromArgb(63, 61, 61);

	private Color m_defaultThumbStartColor = Color.White;

	private Color m_defaultThumbEndColor = Color.FromArgb(199, 200, 214);

	protected internal WindowsXPSilverRenderer(bool isVerticalScrollBar)
		: base(isVerticalScrollBar)
	{
		IsVerticalScrollBar = isVerticalScrollBar;
		m_blendArrowButtonDefault = new Blend();
		m_blendArrowButtonDefault.Positions = new float[3] { 0f, 0.45f, 1f };
		m_blendArrowButtonDefault.Factors = new float[3] { 0f, 0.7f, 1f };
		m_blendArrowButtonPushed = new Blend();
		m_blendArrowButtonPushed.Positions = new float[3] { 0f, 0.3f, 1f };
		m_blendArrowButtonPushed.Factors = new float[3] { 0f, 0.7f, 1f };
		m_blendThumb = new Blend();
		m_blendThumb.Positions = new float[10] { 0f, 0.2f, 0.2f, 0.4f, 0.4f, 0.6f, 0.6f, 0.8f, 0.8f, 1f };
		m_blendThumb.Factors = new float[10] { 0f, 0.1f, 0.2f, 0.3f, 0.4f, 0.5f, 0.6f, 0.7f, 0.8f, 1f };
		m_blendThumbPushed = new Blend();
		m_blendThumbPushed.Positions = new float[10] { 0f, 0.2f, 0.2f, 0.4f, 0.4f, 0.6f, 0.6f, 0.7f, 0.7f, 1f };
		m_blendThumbPushed.Factors = new float[10] { 0f, 0f, 0.2f, 0.3f, 0.4f, 0.6f, 0.7f, 0.8f, 0.9f, 1f };
		m_blendBackGround = new Blend();
		m_blendBackGround.Positions = new float[3] { 0f, 0.55f, 1f };
		m_blendBackGround.Factors = new float[3] { 0f, 0.9f, 1f };
	}

	public override void DrawArrowButton(Graphics g, Rectangle bounds, ScrollButton type, ButtonState state)
	{
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			DrawBackgroundLines(g, bounds, m_defaultBackGroundBorderColor);
			Rectangle rectangle = ((!IsVerticalScrollBar) ? new Rectangle(bounds.X, bounds.Y + 1, bounds.Width, bounds.Height - 1) : new Rectangle(bounds.X + 1, bounds.Y, bounds.Width - 1, bounds.Height));
			switch (state)
			{
			case ButtonState.Normal:
				DrawBorders(g, rectangle, m_defaultBorderColor, state);
				DrawDefaultArrowButton(g, rectangle);
				break;
			case ButtonState.Checked:
				DrawBorders(g, rectangle, m_pushedBorderColor, state);
				DrawDefaultArrowButton(g, rectangle);
				break;
			case ButtonState.Pushed:
				DrawBorders(g, rectangle, m_pushedBorderColor, state);
				DrawPushedArrowButton(g, rectangle);
				break;
			}
			DrawArrows(g, bounds, type, m_arrowColor);
		}
	}

	public override void DrawBackground(Graphics g, Rectangle bounds, ButtonState state)
	{
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			switch (state)
			{
			case ButtonState.Normal:
				DrawDefaultBackground(g, bounds);
				break;
			case ButtonState.Pushed:
				DrawPushedBackground(g, bounds);
				break;
			}
		}
	}

	public override void DrawThumb(Graphics g, Rectangle bounds, ButtonState state)
	{
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			DrawBackground(g, bounds, ButtonState.Normal);
			Rectangle rectangle = ((!IsVerticalScrollBar) ? new Rectangle(bounds.X, bounds.Y + 1, bounds.Width, bounds.Height - 1) : new Rectangle(bounds.X + 1, bounds.Y, bounds.Width - 1, bounds.Height));
			switch (state)
			{
			case ButtonState.Normal:
				DrawBorders(g, rectangle, m_defaultBorderColor, state);
				DrawDefaultThumb(g, rectangle);
				break;
			case ButtonState.Pushed:
				DrawBorders(g, rectangle, m_pushedBorderColor, state);
				DrawPushedThumb(g, rectangle);
				break;
			case ButtonState.Checked:
				DrawBorders(g, rectangle, m_pushedBorderColor, state);
				DrawDefaultThumb(g, rectangle);
				break;
			}
			DrawMiddleLinesForThumb(g, bounds, Color.White, m_defaultBorderColor);
		}
	}

	protected void FillBackground(Graphics g, Rectangle bounds, Color startColor, Color endColor)
	{
		if (IsVerticalScrollBar)
		{
			bounds.Inflate(-1, 0);
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(bounds, startColor, endColor);
			linearGradientBrush.Blend = m_blendBackGround;
			g.FillRectangle(linearGradientBrush, bounds);
			return;
		}
		bounds.Inflate(0, -1);
		using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(bounds, startColor, endColor);
		linearGradientBrush2.Blend = m_blendBackGround;
		g.FillRectangle(linearGradientBrush2, bounds);
	}

	private void DrawDefaultBackground(Graphics g, Rectangle bounds)
	{
		DrawBackgroundLines(g, bounds, m_defaultBackGroundBorderColor);
		FillBackground(g, bounds, m_defaultBackGroundStartColor, m_defaultBackGroundEndColor);
	}

	private void DrawPushedBackground(Graphics g, Rectangle bounds)
	{
		DrawBackgroundLines(g, bounds, m_pushedBackGroundBorderColor);
		FillBackground(g, bounds, m_pushedBackGroundStartColor, m_pushedBackGroundEndColor);
	}

	private void DrawDefaultArrowButton(Graphics g, Rectangle bounds)
	{
		bounds.Inflate(-1, -1);
		using LinearGradientBrush linearGradientBrush = GetHorizontalBrush(bounds, m_defaultArrowButtonStartColor, m_defaultArrowButtonEndColor);
		bounds.Inflate(-1, -1);
		linearGradientBrush.Blend = m_blendArrowButtonDefault;
		g.FillRectangle(linearGradientBrush, bounds);
	}

	private void DrawPushedArrowButton(Graphics g, Rectangle bounds)
	{
		bounds.Inflate(-1, -1);
		using LinearGradientBrush linearGradientBrush = GetHorizontalBrush(bounds, m_pushedArrowButtonStartColor, m_pushedArrowButtonEndColor);
		bounds.Inflate(-1, -1);
		linearGradientBrush.Blend = m_blendArrowButtonPushed;
		g.FillRectangle(linearGradientBrush, bounds);
	}

	private void DrawDefaultThumb(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		if (IsVerticalScrollBar)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(rectangle, m_defaultThumbStartColor, m_defaultThumbEndColor))
			{
				linearGradientBrush.Blend = m_blendThumb;
				rectangle = new Rectangle(rectangle.X + 2, rectangle.Y + 2, rectangle.Width - 4, rectangle.Height - 4);
				g.FillRectangle(linearGradientBrush, rectangle);
				return;
			}
		}
		using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, m_defaultThumbStartColor, m_defaultThumbEndColor);
		linearGradientBrush2.Blend = m_blendThumb;
		rectangle = new Rectangle(rectangle.X + 2, rectangle.Y + 2, rectangle.Width - 4, rectangle.Height - 3);
		g.FillRectangle(linearGradientBrush2, rectangle);
	}

	private void DrawPushedThumb(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		if (IsVerticalScrollBar)
		{
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(rectangle, m_defaultThumbEndColor, m_defaultThumbStartColor);
			linearGradientBrush.Blend = m_blendThumbPushed;
			rectangle = new Rectangle(rectangle.X + 2, rectangle.Y + 2, rectangle.Width - 4, rectangle.Height - 4);
			g.FillRectangle(linearGradientBrush, rectangle);
		}
		else
		{
			using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, m_defaultThumbEndColor, m_defaultThumbStartColor);
			linearGradientBrush2.Blend = m_blendThumbPushed;
			rectangle = new Rectangle(rectangle.X + 2, rectangle.Y + 2, rectangle.Width - 4, rectangle.Height - 4);
			g.FillRectangle(linearGradientBrush2, rectangle);
		}
		using Pen pen = new Pen(m_pushedThumbBorderColor);
		g.DrawLine(pen, rectangle.Left - 1, rectangle.Bottom, rectangle.Right - 1, rectangle.Bottom);
		g.DrawLine(pen, rectangle.Left - 1, rectangle.Bottom - 1, rectangle.Left, rectangle.Bottom);
		g.DrawLine(pen, rectangle.Right - 1, rectangle.Bottom, rectangle.Right, rectangle.Bottom - 1);
	}

	private void DrawBorders(Graphics g, RectangleF bounds, Color borderColor, ButtonState state)
	{
		InitializeRectangleEdges(bounds);
		int num = 1;
		Color color = borderColor;
		switch (state)
		{
		case ButtonState.Normal:
			color = Color.FromArgb(200, borderColor);
			break;
		case ButtonState.Pushed:
		{
			using (Pen pen = new Pen(m_defaultBackGroundEndColor))
			{
				g.DrawLine(pen, m_iRight - 2f, m_iTop + (float)num, m_iLeft + 2f, m_iTop + (float)num);
			}
			break;
		}
		}
		using (Pen pen2 = new Pen(color))
		{
			g.DrawLine(pen2, m_iRight - (float)num, m_iBottom, m_iLeft + (float)num, m_iBottom);
			g.DrawLine(pen2, m_iLeft + (float)num, m_iTop, m_iRight - (float)num, m_iTop);
		}
		using (Pen pen3 = new Pen(borderColor))
		{
			g.DrawLine(pen3, m_iRight, m_iTop + (float)num, m_iRight, m_iBottom - (float)num);
			g.DrawLine(pen3, m_iRight, m_iBottom - (float)num, m_iRight - (float)num, m_iBottom);
			g.DrawLine(pen3, m_iLeft + (float)num, m_iBottom, m_iLeft, m_iBottom - (float)num);
			g.DrawLine(pen3, m_iLeft, m_iBottom - (float)num, m_iLeft, m_iTop + (float)num);
			g.DrawLine(pen3, m_iLeft, m_iTop + (float)num, m_iLeft + (float)num, m_iTop);
			g.DrawLine(pen3, m_iRight - (float)num, m_iTop, m_iRight, m_iTop + (float)num);
		}
		DrawBordersInternal(g, bounds);
	}

	private void DrawBordersInternal(Graphics g, RectangleF bounds)
	{
		InitializeRectangleEdges(bounds);
		int num = 1;
		using (Pen pen = new Pen(Color.FromArgb(100, m_defaultBorderColor)))
		{
			g.DrawLine(pen, m_iLeft + (float)num, m_iTop + (float)num, m_iLeft, m_iTop);
			g.DrawLine(pen, m_iRight, m_iTop, m_iRight - (float)num, m_iTop + (float)num);
		}
		using Pen pen2 = new Pen(m_defaultBackGroundBorderColor);
		g.DrawLine(pen2, m_iLeft, m_iBottom, m_iLeft + (float)num, m_iBottom - (float)num);
		g.DrawLine(pen2, m_iRight - (float)num, m_iBottom - (float)num, m_iRight, m_iBottom);
		g.DrawLine(pen2, m_iRight - (float)num, m_iBottom - (float)num, m_iLeft + (float)num, m_iBottom - (float)num);
	}
}
