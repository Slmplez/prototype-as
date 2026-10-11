using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Scrolling.Renderers;

namespace Syncfusion.Windows.Forms.Renderers;

public class WindowsXPBlueRenderer : WindowsXPRenderer
{
	private Blend m_blendArrowButtonDefault;

	private Blend m_blendArrowButtonPushed;

	private Blend m_blendThumb;

	private Blend m_blendSmallThumb;

	private Blend m_blendArrowButtonBorder;

	private Blend m_blendBackGround;

	private Color m_defaultBackGroundBorderColor = Color.FromArgb(238, 237, 229);

	private Color m_defaultBackGroundStartColor = Color.FromArgb(243, 241, 236);

	private Color m_defaultBackGroundEndColor = Color.FromArgb(254, 254, 251);

	private Color m_pushedBackGroundBorderColor = Color.FromArgb(215, 213, 194);

	private Color m_pushedBackGroundStartColor = Color.FromArgb(227, 222, 211);

	private Color m_pushedBackGroundEndColor = Color.FromArgb(253, 253, 251);

	private Color m_shadowColor = Color.FromArgb(124, 159, 211);

	private Color m_defaultArrowButtonStartColor = Color.FromArgb(225, 234, 254);

	private Color m_defaultArrowButtonEndColor = Color.FromArgb(174, 200, 247);

	private Color m_defaultArrowButtonBackColor = Color.FromArgb(225, 234, 254);

	private Color m_defaultArrowButtonBorderColor = Color.FromArgb(185, 201, 243);

	private Color m_selectedArrowButtonStartColor = Color.FromArgb(253, 255, 255);

	private Color m_selectedArrowButtonEndColor = Color.FromArgb(185, 218, 251);

	private Color m_selectedArrowButtonBackColor = Color.FromArgb(195, 205, 231);

	private Color m_selectedArrowButtonBorderColor = Color.FromArgb(144, 171, 224);

	private Color m_pushedArrowButtonStartColor = Color.FromArgb(110, 142, 241);

	private Color m_pushedArrowButtonEndColor = Color.FromArgb(210, 222, 235);

	private Color m_pushedArrowButtonBackColor = Color.FromArgb(187, 194, 220);

	private Color m_pushedArrowButtonBorderColor = Color.FromArgb(114, 128, 216);

	private Color m_arrowColor = Color.FromArgb(77, 97, 133);

	private Color m_defaultThumbWhiteLineColor = Color.FromArgb(238, 244, 254);

	private Color m_defaultThumbBlueLineColor = Color.FromArgb(140, 176, 248);

	private Color m_defaultThumbBackColor = Color.FromArgb(219, 227, 248);

	private Color m_defaultThumbBorderColor = Color.FromArgb(184, 203, 246);

	private Color m_defaultThumbStartColor = Color.FromArgb(200, 214, 251);

	private Color m_defaultThumbEndColor = Color.FromArgb(181, 205, 250);

	private Color m_selectedThumbWhiteLineColor = Color.FromArgb(252, 253, 255);

	private Color m_selectedThumbBlueLineColor = Color.FromArgb(156, 197, 255);

	private Color m_selectedThumbBackColor = Color.FromArgb(209, 228, 255);

	private Color m_selectedThumbBorderColor = Color.FromArgb(172, 206, 255);

	private Color m_selectedThumbStartColor = Color.FromArgb(216, 232, 255);

	private Color m_selectedThumbEndColor = Color.FromArgb(204, 225, 255);

	private Color m_pushedThumbWhiteLineColor = Color.FromArgb(207, 221, 253);

	private Color m_pushedThumbBlueLineColor = Color.FromArgb(131, 158, 216);

	private Color m_pushedThumbBackColor = Color.FromArgb(164, 191, 252);

	private Color m_pushedThumbBorderColor = Color.FromArgb(129, 153, 212);

	private Color m_pushedThumbStartColor = Color.FromArgb(171, 193, 250);

	private Color m_pushedThumbEndColor = Color.FromArgb(148, 183, 250);

	protected internal WindowsXPBlueRenderer(bool isVerticalScrollBar)
		: base(isVerticalScrollBar)
	{
		IsVerticalScrollBar = isVerticalScrollBar;
		m_blendArrowButtonDefault = new Blend();
		m_blendArrowButtonDefault.Positions = new float[3] { 0f, 0.4f, 1f };
		m_blendArrowButtonDefault.Factors = new float[3] { 0.1f, 0.75f, 1f };
		m_blendArrowButtonPushed = new Blend();
		m_blendArrowButtonPushed.Positions = new float[4] { 0f, 0.1f, 0.6f, 1f };
		m_blendArrowButtonPushed.Factors = new float[4] { 0.1f, 0.1f, 0.4f, 1f };
		m_blendArrowButtonBorder = new Blend();
		m_blendArrowButtonBorder.Positions = new float[3] { 0f, 0.3f, 1f };
		m_blendArrowButtonBorder.Factors = new float[3] { 0f, 1f, 1f };
		m_blendThumb = new Blend();
		m_blendThumb.Positions = new float[4] { 0f, 0.65f, 0.76f, 1f };
		m_blendThumb.Factors = new float[4] { 0f, 0.3f, 1f, 1f };
		m_blendSmallThumb = new Blend();
		m_blendSmallThumb.Positions = new float[4] { 0f, 0.5f, 0.65f, 1f };
		m_blendSmallThumb.Factors = new float[4] { 0f, 0.2f, 1f, 1f };
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
			DrawShadowForArrowButton(g, rectangle, m_shadowColor, m_defaultBackGroundStartColor, m_defaultBackGroundEndColor);
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
			DrawShadowForThumb(g, bounds, m_shadowColor);
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

	private GraphicsPath GetTopRoundedPath(RectangleF bounds, int iRadius)
	{
		InitializeRectangleEdges(bounds);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(m_iLeft, m_iBottom - (float)iRadius, m_iLeft, m_iTop + (float)iRadius);
		graphicsPath.AddLine(m_iLeft, m_iTop + (float)iRadius, m_iLeft + (float)iRadius, m_iTop);
		graphicsPath.AddLine(m_iLeft + (float)iRadius, m_iTop, m_iRight - (float)iRadius, m_iTop);
		return graphicsPath;
	}

	private GraphicsPath GetBottomRoundedPath(RectangleF bounds, int iRadius)
	{
		InitializeRectangleEdges(bounds);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(m_iRight, m_iTop + (float)iRadius, m_iRight, m_iBottom - (float)iRadius);
		graphicsPath.AddLine(m_iRight, m_iBottom - (float)iRadius, m_iRight - (float)iRadius, m_iBottom);
		graphicsPath.AddLine(m_iRight - (float)iRadius, m_iBottom, m_iLeft + (float)iRadius, m_iBottom);
		return graphicsPath;
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
		g.DrawRectangle(new Pen(m_defaultArrowButtonBackColor), rectangle.Left, rectangle.Top, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorderForArrowButton(g, rectangle, m_defaultArrowButtonEndColor, m_defaultArrowButtonBorderColor);
		rectangle.Inflate(-1, -1);
		using LinearGradientBrush linearGradientBrush = GetSlopingBrush(rectangle, m_defaultArrowButtonStartColor, m_defaultArrowButtonEndColor);
		linearGradientBrush.Blend = m_blendArrowButtonDefault;
		g.FillRectangle(linearGradientBrush, rectangle);
	}

	private void DrawSelectedArrowButton(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_selectedArrowButtonBackColor), rectangle.Left, rectangle.Top, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorderForArrowButton(g, rectangle, m_selectedArrowButtonBorderColor, m_selectedArrowButtonBorderColor);
		rectangle.Inflate(-1, -1);
		using LinearGradientBrush linearGradientBrush = GetSlopingBrush(rectangle, m_selectedArrowButtonStartColor, m_selectedArrowButtonEndColor);
		linearGradientBrush.Blend = m_blendArrowButtonDefault;
		g.FillRectangle(linearGradientBrush, rectangle);
	}

	private void DrawPushedArrowButton(Graphics g, Rectangle bounds)
	{
		Rectangle rectangle = bounds;
		Pen pen = new Pen(m_pushedArrowButtonBackColor);
		Pen pen2 = new Pen(m_defaultArrowButtonBackColor);
		rectangle.Inflate(-1, -1);
		g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Left + rectangle.Width - 1, rectangle.Top);
		g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Left, rectangle.Top + rectangle.Height - 1);
		g.DrawLine(pen2, rectangle.Left, rectangle.Top + rectangle.Height - 1, rectangle.Left + rectangle.Width - 1, rectangle.Top + rectangle.Height - 1);
		DrawBorderForArrowButton(g, rectangle, m_pushedArrowButtonBorderColor, m_defaultArrowButtonBorderColor);
		rectangle.Inflate(-1, -1);
		using LinearGradientBrush linearGradientBrush = GetSlopingBrush(rectangle, m_pushedArrowButtonStartColor, m_pushedArrowButtonEndColor);
		linearGradientBrush.Blend = m_blendArrowButtonPushed;
		g.FillRectangle(linearGradientBrush, rectangle);
	}

	private void DrawDefaultThumb(Graphics g, Rectangle bounds)
	{
		Blend blend = new Blend();
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_defaultThumbBackColor), rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		g.DrawPath(new Pen(m_defaultThumbBorderColor), GetRoundedPath(rectangle, 1));
		rectangle.Inflate(-1, -1);
		blend = m_blendThumb;
		if (IsVerticalScrollBar)
		{
			if (bounds.Width <= 13)
			{
				blend = m_blendSmallThumb;
			}
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(new Rectangle(rectangle.X - 1, rectangle.Y, rectangle.Width + 1, rectangle.Height), m_defaultThumbStartColor, m_defaultThumbEndColor);
			linearGradientBrush.Blend = blend;
			g.FillRectangle(linearGradientBrush, rectangle);
		}
		else
		{
			if (bounds.Height <= 13)
			{
				blend = m_blendSmallThumb;
			}
			using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, m_defaultThumbStartColor, m_defaultThumbEndColor);
			linearGradientBrush2.Blend = blend;
			g.FillRectangle(linearGradientBrush2, rectangle);
		}
		DrawMiddleLinesForThumb(g, bounds, m_defaultThumbWhiteLineColor, m_defaultThumbBlueLineColor);
	}

	private void DrawSelectedThumb(Graphics g, Rectangle bounds)
	{
		Blend blend = new Blend();
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_selectedThumbBackColor), rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		g.DrawPath(new Pen(m_selectedThumbBorderColor), GetRoundedPath(rectangle, 1));
		rectangle.Inflate(-1, -1);
		blend = m_blendThumb;
		if (IsVerticalScrollBar)
		{
			if (bounds.Width <= 13)
			{
				blend = m_blendSmallThumb;
			}
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(new Rectangle(rectangle.X - 1, rectangle.Y, rectangle.Width + 1, rectangle.Height), m_selectedThumbStartColor, m_selectedThumbEndColor);
			linearGradientBrush.Blend = blend;
			g.FillRectangle(linearGradientBrush, rectangle);
		}
		else
		{
			if (bounds.Height <= 13)
			{
				blend = m_blendSmallThumb;
			}
			using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, m_selectedThumbStartColor, m_selectedThumbEndColor);
			linearGradientBrush2.Blend = blend;
			g.FillRectangle(linearGradientBrush2, rectangle);
		}
		DrawMiddleLinesForThumb(g, bounds, m_selectedThumbWhiteLineColor, m_selectedThumbBlueLineColor);
	}

	private void DrawPushedThumb(Graphics g, Rectangle bounds)
	{
		Blend blend = new Blend();
		Rectangle rectangle = bounds;
		rectangle.Inflate(-1, -1);
		g.DrawRectangle(new Pen(m_pushedThumbBackColor), rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		DrawBorderForThumb(g, rectangle, m_pushedThumbBorderColor, Color.FromArgb(100, m_pushedThumbBorderColor));
		rectangle.Inflate(-1, -1);
		blend = m_blendThumb;
		if (IsVerticalScrollBar)
		{
			if (bounds.Width <= 13)
			{
				blend = m_blendSmallThumb;
			}
			using LinearGradientBrush linearGradientBrush = GetVerticalBrush(new Rectangle(rectangle.X - 1, rectangle.Y, rectangle.Width + 1, rectangle.Height), m_pushedThumbStartColor, m_pushedThumbEndColor);
			linearGradientBrush.Blend = blend;
			g.FillRectangle(linearGradientBrush, rectangle);
		}
		else
		{
			if (bounds.Height <= 13)
			{
				blend = m_blendSmallThumb;
			}
			using LinearGradientBrush linearGradientBrush2 = GetHorizontalBrush(rectangle, m_pushedThumbStartColor, m_pushedThumbEndColor);
			linearGradientBrush2.Blend = blend;
			g.FillRectangle(linearGradientBrush2, rectangle);
		}
		g.DrawRectangle(new Pen(Color.FromArgb(50, m_shadowColor)), rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		DrawMiddleLinesForThumb(g, bounds, m_pushedThumbWhiteLineColor, m_pushedThumbBlueLineColor);
	}

	private void DrawBorderForThumb(Graphics g, RectangleF bounds, Color color1, Color color2)
	{
		using (GraphicsPath path = GetTopRoundedPath(bounds, 1))
		{
			g.DrawPath(new Pen(color1), path);
		}
		using GraphicsPath path2 = GetBottomRoundedPath(bounds, 1);
		g.DrawPath(new Pen(color2), path2);
	}

	private void DrawBorderForArrowButton(Graphics g, RectangleF bounds, Color color1, Color color2)
	{
		using (GraphicsPath path = GetTopRoundedPath(bounds, 1))
		{
			using LinearGradientBrush linearGradientBrush = GetSlopingBrush(bounds, Color.FromArgb(75, color1), color1);
			linearGradientBrush.Blend = m_blendArrowButtonBorder;
			g.DrawPath(new Pen(linearGradientBrush), path);
		}
		using GraphicsPath path2 = GetBottomRoundedPath(bounds, 1);
		g.DrawPath(new Pen(color2), path2);
	}
}
