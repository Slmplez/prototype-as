using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Scrolling.Renderers;

namespace Syncfusion.Windows.Forms.Renderers;

public class WindowsXPOliveGreenRenderer : WindowsXPRenderer
{
	private Blend m_blendArrowButton;

	private Blend m_blendInternalArrowButton;

	private Blend m_blendThumb;

	private Blend m_blendBackGround;

	private Color m_defaultBorderColor = Color.FromArgb(142, 153, 125);

	private Color m_selectedBorderColor = Color.FromArgb(157, 171, 125);

	private Color m_defaultBackColor = Color.FromArgb(195, 200, 184);

	private Color m_arrowColor = Color.White;

	private Color m_defaultBackGroundBorderColor = Color.FromArgb(238, 237, 229);

	private Color m_defaultBackGroundStartColor = Color.FromArgb(243, 241, 236);

	private Color m_defaultBackGroundEndColor = Color.FromArgb(254, 254, 251);

	private Color m_pushedBackGroundBorderColor = Color.FromArgb(215, 213, 194);

	private Color m_pushedBackGroundStartColor = Color.FromArgb(227, 222, 211);

	private Color m_pushedBackGroundEndColor = Color.FromArgb(253, 253, 251);

	private Color m_arrowButtonShadowColor = Color.FromArgb(131, 171, 90);

	private Color m_defaultArrowButtonEndColor = Color.FromArgb(149, 167, 117);

	private Color m_selectedArrowButtonStartColor = Color.FromArgb(201, 213, 170);

	private Color m_selectedArrowButtonEndColor = Color.FromArgb(195, 208, 150);

	private Color m_selectedArrowButtonBorderColor = Color.FromArgb(157, 171, 119);

	private Color m_selectedArrowButtonInternalColor = Color.FromArgb(218, 232, 185);

	private Color m_pushedArrowButtonStartColor = Color.FromArgb(149, 167, 125);

	private Color m_pushedArrowButtonEndColor = Color.FromArgb(149, 170, 114);

	private Color m_pushedArrowButtonBackColor = Color.FromArgb(155, 174, 126);

	private Color m_pushedArrowButtonBorderColor = Color.FromArgb(118, 131, 97);

	private Color m_thumbShadowColor = Color.FromArgb(130, 144, 97);

	private Color m_defaultThumbWhiteLineColor = Color.FromArgb(208, 223, 172);

	private Color m_defaultThumbGreenLineColor = Color.FromArgb(140, 157, 115);

	private Color m_defaultThumbStartColor = Color.FromArgb(165, 183, 142);

	private Color m_defaultThumbEndColor = Color.FromArgb(149, 167, 117);

	private Color m_selectedThumbWhiteLineColor = Color.FromArgb(235, 245, 212);

	private Color m_selectedThumbGreenLineColor = Color.FromArgb(182, 198, 142);

	private Color m_selectedThumbBorderColor = Color.FromArgb(189, 203, 150);

	private Color m_selectedThumbStartColor = Color.FromArgb(203, 217, 169);

	private Color m_selectedThumbEndColor = Color.FromArgb(195, 208, 150);

	private Color m_pushedThumbWhiteLineColor = Color.FromArgb(185, 208, 151);

	private Color m_pushedThumbGreenLineColor = Color.FromArgb(122, 139, 99);

	private Color m_pushedThumbStartColor = Color.FromArgb(155, 173, 130);

	private Color m_pushedThumbEndColor = Color.FromArgb(149, 170, 114);

	protected internal WindowsXPOliveGreenRenderer(bool isVerticalScrollBar)
		: base(isVerticalScrollBar)
	{
		IsVerticalScrollBar = isVerticalScrollBar;
		m_blendArrowButton = new Blend();
		m_blendArrowButton.Positions = new float[8] { 0f, 0.3f, 0.3f, 0.45f, 0.5f, 0.8f, 0.8f, 1f };
		m_blendArrowButton.Factors = new float[8] { 0f, 0.25f, 0.4f, 0.45f, 0.6f, 0.7f, 0.8f, 1f };
		m_blendInternalArrowButton = new Blend();
		m_blendInternalArrowButton.Positions = new float[6] { 0f, 0.1f, 0.1f, 0.7f, 0.7f, 1f };
		m_blendInternalArrowButton.Factors = new float[6] { 0f, 0.2f, 0.3f, 0.6f, 0.6f, 0.7f };
		m_blendThumb = new Blend();
		m_blendThumb.Positions = new float[8] { 0f, 0.23f, 0.23f, 0.55f, 0.55f, 0.75f, 0.75f, 1f };
		m_blendThumb.Factors = new float[8] { 0.25f, 0.35f, 0f, 0.25f, 0.45f, 0.7f, 0.9f, 1f };
		m_blendBackGround = new Blend();
		m_blendBackGround.Positions = new float[3] { 0f, 0.55f, 1f };
		m_blendBackGround.Factors = new float[3] { 0f, 0.9f, 1f };
	}

	public override void DrawArrowButton(Graphics g, Rectangle bounds, ScrollButton type, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			DrawBackgroundLines(g, bounds, m_defaultBackGroundBorderColor);
			Rectangle rectangle = ((!IsVerticalScrollBar) ? new Rectangle(bounds.X - 1, bounds.Y, bounds.Width + 1, bounds.Height) : new Rectangle(bounds.X, bounds.Y - 1, bounds.Width, bounds.Height + 1));
			DrawShadowForArrowButton(g, rectangle, m_arrowButtonShadowColor, m_defaultBackGroundStartColor, m_defaultBackGroundEndColor);
			rectangle.Inflate(-1, -1);
			g.DrawPath(new Pen(Color.White), GetRoundedPath(rectangle, 1));
			switch (state)
			{
			case ButtonState.Normal:
				DrawDefaultArrowButton(g, rectangle);
				break;
			case ButtonState.Pushed:
				DrawPushedArrowButton(g, rectangle);
				break;
			case ButtonState.Checked:
				DrawSelectedArrowButton(g, rectangle);
				break;
			}
			DrawArrows(g, bounds, type, m_arrowColor);
		}
	}

	public override void DrawBackground(Graphics g, Rectangle bounds, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
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
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (bounds.Width > 0 && bounds.Height > 0)
		{
			DrawBackground(g, bounds, ButtonState.Normal);
			Rectangle rectangle;
			if (IsVerticalScrollBar)
			{
				rectangle = new Rectangle(bounds.X, bounds.Y, bounds.Width, bounds.Height - 1);
				rectangle.Inflate(-1, 0);
			}
			else
			{
				rectangle = new Rectangle(bounds.X, bounds.Y, bounds.Width - 1, bounds.Height);
				rectangle.Inflate(0, -1);
			}
			DrawShadowForThumb(g, bounds, m_thumbShadowColor);
			g.DrawPath(new Pen(Color.White), GetRoundedPath(rectangle, 1));
			switch (state)
			{
			case ButtonState.Normal:
				DrawDefaultThumb(g, rectangle);
				break;
			case ButtonState.Pushed:
				DrawPushedThumb(g, rectangle);
				break;
			case ButtonState.Checked:
				DrawSelectedThumb(g, rectangle);
				break;
			}
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
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_defaultBackColor), rectangle.Left, rectangle.Top, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorder(g, rectangle, m_defaultBorderColor);
		rectangle.Inflate(-1, -1);
		using (LinearGradientBrush linearGradientBrush = GetHorizontalBrush(rectangle, Color.FromArgb(125, m_defaultArrowButtonEndColor), m_defaultArrowButtonEndColor))
		{
			linearGradientBrush.Blend = m_blendArrowButton;
			using (new Pen(linearGradientBrush))
			{
				g.FillRectangle(linearGradientBrush, rectangle);
			}
		}
		rectangle.Inflate(-1, -1);
		using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, Color.FromArgb(100, m_defaultArrowButtonEndColor), m_defaultArrowButtonEndColor);
		linearGradientBrush2.Blend = m_blendInternalArrowButton;
		g.FillRectangle(linearGradientBrush2, rectangle);
	}

	private void DrawSelectedArrowButton(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_defaultBackColor), rectangle.Left, rectangle.Top, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorder(g, rectangle, m_selectedArrowButtonBorderColor);
		rectangle.Inflate(-1, -1);
		rectangle = new Rectangle(rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		using (Pen pen = new Pen(m_selectedArrowButtonInternalColor))
		{
			g.DrawRectangle(pen, rectangle);
		}
		rectangle.Inflate(-1, -1);
		rectangle = new Rectangle(rectangle.X, rectangle.Y, rectangle.Width + 1, rectangle.Height + 1);
		using (LinearGradientBrush brush = GetHorizontalBrush(rectangle, m_selectedArrowButtonStartColor, m_selectedArrowButtonEndColor))
		{
			g.FillRectangle(brush, rectangle);
		}
		using Pen pen2 = new Pen(m_selectedArrowButtonEndColor);
		g.DrawLine(pen2, rectangle.Left - 1, rectangle.Bottom, rectangle.Right, rectangle.Bottom);
	}

	private void DrawPushedArrowButton(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_pushedArrowButtonBackColor), rectangle.Left, rectangle.Top, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorder(g, rectangle, m_pushedArrowButtonBorderColor);
		rectangle.Inflate(-1, -1);
		using (LinearGradientBrush brush = GetHorizontalBrush(rectangle, m_pushedArrowButtonStartColor, m_pushedArrowButtonEndColor))
		{
			g.FillRectangle(brush, rectangle);
		}
		using (Pen pen = new Pen(Color.FromArgb(125, m_pushedArrowButtonBorderColor)))
		{
			g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Left, rectangle.Bottom - 1);
			g.DrawLine(pen, rectangle.Right - 1, rectangle.Top, rectangle.Right - 1, rectangle.Bottom - 1);
		}
		rectangle.Inflate(-1, -1);
		using Pen pen2 = new Pen(Color.FromArgb(50, m_pushedArrowButtonBorderColor));
		g.DrawLine(pen2, rectangle.Left, rectangle.Top - 1, rectangle.Left, rectangle.Bottom);
		g.DrawLine(pen2, rectangle.Right - 1, rectangle.Top - 1, rectangle.Right - 1, rectangle.Bottom);
		g.DrawLine(pen2, rectangle.Left, rectangle.Top - 1, rectangle.Right - 1, rectangle.Top - 1);
	}

	private void DrawDefaultThumb(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_defaultBackColor), rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorder(g, rectangle, m_defaultBorderColor);
		rectangle.Inflate(-1, -1);
		if (IsVerticalScrollBar)
		{
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(new Rectangle(rectangle.X - 1, rectangle.Y, rectangle.Width + 1, rectangle.Height), m_defaultThumbStartColor, m_defaultThumbEndColor);
			linearGradientBrush.Blend = m_blendThumb;
			g.FillRectangle(linearGradientBrush, rectangle);
		}
		else
		{
			using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, m_defaultThumbStartColor, m_defaultThumbEndColor);
			linearGradientBrush2.Blend = m_blendThumb;
			g.FillRectangle(linearGradientBrush2, rectangle);
		}
		DrawMiddleLinesForThumb(g, bounds, m_defaultThumbWhiteLineColor, m_defaultThumbGreenLineColor);
	}

	private void DrawSelectedThumb(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(Color.FromArgb(175, m_defaultBackColor)), rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorder(g, rectangle, m_selectedThumbBorderColor);
		rectangle.Inflate(-1, -1);
		if (IsVerticalScrollBar)
		{
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(new Rectangle(rectangle.X - 1, rectangle.Y, rectangle.Width + 1, rectangle.Height), m_selectedThumbStartColor, m_selectedThumbEndColor);
			linearGradientBrush.Blend = m_blendThumb;
			g.FillRectangle(linearGradientBrush, rectangle);
		}
		else
		{
			using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, m_selectedThumbStartColor, m_selectedThumbEndColor);
			linearGradientBrush2.Blend = m_blendThumb;
			g.FillRectangle(linearGradientBrush2, rectangle);
		}
		DrawMiddleLinesForThumb(g, bounds, m_selectedThumbWhiteLineColor, m_selectedThumbGreenLineColor);
	}

	private void DrawPushedThumb(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(Color.FromArgb(175, m_defaultBorderColor)), rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorder(g, rectangle, m_defaultBorderColor);
		rectangle.Inflate(-1, -1);
		if (IsVerticalScrollBar)
		{
			using LinearGradientBrush brush = GetVerticalBrush(new Rectangle(rectangle.X - 1, rectangle.Y, rectangle.Width + 1, rectangle.Height), m_pushedThumbStartColor, m_pushedThumbEndColor);
			g.FillRectangle(brush, rectangle);
		}
		else
		{
			using LinearGradientBrush brush2 = GetHorizontalBrush(rectangle, m_pushedThumbStartColor, m_pushedThumbEndColor);
			g.FillRectangle(brush2, rectangle);
		}
		using (Pen pen = new Pen(Color.FromArgb(75, m_defaultBorderColor)))
		{
			g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Right, rectangle.Top);
			g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Left, rectangle.Bottom);
		}
		DrawMiddleLinesForThumb(g, bounds, m_pushedThumbWhiteLineColor, m_pushedThumbGreenLineColor);
	}

	private void DrawBorder(Graphics g, RectangleF bounds, Color color)
	{
		using GraphicsPath path = GetRoundedPath(bounds, 1);
		g.DrawPath(new Pen(color), path);
	}
}
