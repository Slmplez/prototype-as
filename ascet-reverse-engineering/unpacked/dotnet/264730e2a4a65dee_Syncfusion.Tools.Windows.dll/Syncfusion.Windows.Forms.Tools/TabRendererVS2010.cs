using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabRendererVS2010 : TabRenderer2D
{
	private const string DEF_RENDERER_NAME = "VS2010Style";

	private const int DEF_CORNER_RADIUS = 2;

	private const int DEF_OVERLAP_HEIGHT = 3;

	protected internal const int DEF_SELECTION_LINE_WIDTH = 5;

	private static StyleRendererPropertyVS2010 tabPanelProperty;

	private Rectangle lastCloseButtonBounds = Rectangle.Empty;

	public new static string TabStyleName => "VS2010Style";

	public new static StyleRendererPropertyVS2010 TabPanelPropertyExtender => tabPanelProperty;

	public new Rectangle CloseButtonBounds => lastCloseButtonBounds;

	static TabRendererVS2010()
	{
		tabPanelProperty = new StyleRendererPropertyVS2010();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererVS2010), tabPanelProperty);
	}

	public TabRendererVS2010(ITabControl tabControl, ITabPanelRenderer tabPanelRenderer)
		: base(tabControl, tabPanelRenderer)
	{
	}

	public new static void RegisterTabType()
	{
		tabPanelProperty = new StyleRendererPropertyVS2010();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(TabRendererVS2010), tabPanelProperty);
	}

	protected override void DrawBackground(DrawTabEventArgs drawItemInfo)
	{
		if (drawItemInfo.Bounds.Width <= 0 || drawItemInfo.Bounds.Height <= 0)
		{
			return;
		}
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rect = TabUtils.ApplyTransform(graphics, base.TabAlignment, drawItemInfo.Bounds, apply: true);
		base.ApplyTransform(graphics);
		if (IsSelectedState(drawItemInfo.State))
		{
			Color color = Color.FromArgb(255, 252, 242);
			Color color2 = Color.FromArgb(255, 232, 166);
			using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, color, color2, LinearGradientMode.Vertical))
			{
				Blend blend = new Blend();
				blend.Factors = new float[4] { 0f, 0.2f, 1f, 1f };
				blend.Positions = new float[4] { 0f, 0.4f, 0.5f, 1f };
				linearGradientBrush.Blend = blend;
				graphics.FillRectangle(linearGradientBrush, rect);
			}
			FillCorners(rect, graphics);
		}
		else if (IsHotLightState(drawItemInfo.State))
		{
			Color color3 = Color.FromArgb(111, 119, 118);
			Color color4 = Color.FromArgb(79, 95, 116);
			using (LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect, color3, color4, LinearGradientMode.Vertical))
			{
				RectangleF empty = RectangleF.Empty;
				empty = ((base.TabAlignment != TabAlignment.Top && base.TabAlignment != TabAlignment.Left) ? new RectangleF(rect.Location, new SizeF(rect.Width, rect.Height - 5f + 4f)) : new RectangleF(rect.Location, new SizeF(rect.Width, rect.Height - 5f + 1f)));
				Blend blend2 = new Blend();
				blend2.Factors = new float[3] { 0f, 0.6f, 1f };
				blend2.Positions = new float[3] { 0f, 0.5f, 1f };
				linearGradientBrush2.Blend = blend2;
				graphics.FillRectangle(linearGradientBrush2, empty);
				using Pen pen = new Pen(Color.FromArgb(155, 167, 183));
				Rectangle rect2 = new Rectangle((int)empty.X, (int)empty.Y, (int)empty.Width - 1, (int)empty.Height);
				graphics.DrawRectangle(pen, rect2);
			}
			Color color5 = Color.FromArgb(41, 57, 85);
			using SolidBrush brush = new SolidBrush(color5);
			if (base.TabAlignment == TabAlignment.Top || base.TabAlignment == TabAlignment.Left)
			{
				RectangleF rect3 = new RectangleF(rect.X, rect.Y, 1f, 1f);
				graphics.FillRectangle(brush, rect3);
				rect3 = new RectangleF(rect.Right - 1f, rect.Y, 1f, 1f);
				graphics.FillRectangle(brush, rect3);
			}
			else
			{
				RectangleF rect4 = new RectangleF(rect.X, rect.Y - 1f, 1f, 1f);
				graphics.FillRectangle(brush, rect4);
				rect4 = new RectangleF(rect.Right - 1f, rect.Y - 1f, 1f, 1f);
				graphics.FillRectangle(brush, rect4);
			}
		}
		else
		{
			using SolidBrush brush2 = new SolidBrush(Color.FromArgb(41, 57, 85));
			RectangleF rect5 = new RectangleF(rect.Location, new SizeF(rect.Width, rect.Height - 5f));
			graphics.FillRectangle(brush2, rect5);
		}
		graphics.ResetTransform();
	}

	private void FillCorners(RectangleF bounds, Graphics g)
	{
		Color color = Color.FromArgb(205, 207, 206);
		Color color2 = Color.FromArgb(41, 57, 85);
		RectangleF rect = new RectangleF(bounds.X, bounds.Y + 1f, 1f, 1f);
		using SolidBrush solidBrush = new SolidBrush(color);
		g.FillRectangle(solidBrush, rect);
		rect = new RectangleF(bounds.X + 1f, bounds.Y, 1f, 1f);
		g.FillRectangle(solidBrush, rect);
		rect = new RectangleF(bounds.Right - 1f, bounds.Y + 1f, 1f, 1f);
		g.FillRectangle(solidBrush, rect);
		rect = new RectangleF(bounds.Right - 2f, bounds.Y, 1f, 1f);
		g.FillRectangle(solidBrush, rect);
		solidBrush.Color = color2;
		rect = new RectangleF(bounds.X, bounds.Y, 1f, 1f);
		g.FillRectangle(solidBrush, rect);
		rect = new RectangleF(bounds.Right - 1f, bounds.Y, 1f, 1f);
		g.FillRectangle(solidBrush, rect);
	}

	protected override void DrawCloseButton(Graphics g, RectangleF closeButtonBounds)
	{
		Color color = Color.FromArgb(229, 195, 101);
		Color color2 = Color.FromArgb(255, 252, 244);
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if ((int)closeButtonBounds.Width < CloseButtonSize || (int)closeButtonBounds.Height < CloseButtonSize)
		{
			return;
		}
		GraphicsState graphicsState = null;
		if (base.ShouldDrawRotatedWhenVertical)
		{
			graphicsState = g.Save();
			g.ResetTransform();
		}
		closeButtonBounds.X += CorrectCloseButtonPosition.X;
		closeButtonBounds.Y += CorrectCloseButtonPosition.Y;
		closeButtonBounds.Height -= 1f;
		Rectangle rectangle = Rectangle.Ceiling(closeButtonBounds);
		if (HitCloseButton)
		{
			Rectangle rect = Rectangle.Round(closeButtonBounds);
			rect.Height++;
			rect.Inflate(3, 3);
			using (SolidBrush brush = new SolidBrush(color2))
			{
				g.FillRectangle(brush, rect);
			}
			ControlPaint.DrawBorder(g, rect, color, ButtonBorderStyle.Solid);
		}
		Pen pen = new Pen(Color.FromArgb(200, Color.Black));
		g.DrawLine(pen, rectangle.X + 1, rectangle.Y, rectangle.X + rectangle.Width, rectangle.Y + rectangle.Height);
		g.DrawLine(pen, rectangle.X, rectangle.Y, rectangle.X + rectangle.Width - 1, rectangle.Y + rectangle.Height);
		g.DrawLine(pen, rectangle.X + rectangle.Width - 1, rectangle.Y, rectangle.X, rectangle.Y + rectangle.Height);
		g.DrawLine(pen, rectangle.X + rectangle.Width, rectangle.Y, rectangle.X + 1, rectangle.Y + rectangle.Height);
		if (graphicsState != null)
		{
			g.Restore(graphicsState);
		}
		lastCloseButtonBounds = Rectangle.Round(closeButtonBounds);
	}

	protected override void DrawFocusRect(Graphics g, RectangleF focusRect, Color fore, Color back)
	{
	}

	protected override void DrawInterior(DrawTabEventArgs drawItemInfo)
	{
		base.DrawInterior(drawItemInfo);
	}

	protected override void DrawBorders(DrawTabEventArgs drawItemInfo)
	{
	}

	protected override Color GetForeColor()
	{
		if (panelRenderer.TabPanelData.SelectedIndex == -1 || panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] != TabData)
		{
			return Color.White;
		}
		return base.GetForeColor();
	}

	protected override RectangleF CorrectBounds(RectangleF bounds)
	{
		if (base.TabAlignment == TabAlignment.Top || base.TabAlignment == TabAlignment.Left)
		{
			return new RectangleF(bounds.X, bounds.Y, bounds.Width, bounds.Height - 1f);
		}
		return new RectangleF(bounds.X, bounds.Y + 1f, bounds.Width, bounds.Height - 4f);
	}

	protected override RectangleF CorrectInteriorBounds(RectangleF rectTextAndImage)
	{
		_ = panelRenderer.TabPanelData;
		if (base.ShowCloseButton)
		{
			int num = CloseButtonSize + CloseButtonPadding;
			bool shouldDrawRotatedWhenVertical = base.ShouldDrawRotatedWhenVertical;
			if (shouldDrawRotatedWhenVertical)
			{
				rectTextAndImage.Height -= num;
				if (base.TabAlignment == TabAlignment.Right)
				{
					rectTextAndImage.Height += 4f;
				}
			}
			else
			{
				rectTextAndImage.Width -= num;
			}
			if (panelRenderer.IsMirrored)
			{
				if (shouldDrawRotatedWhenVertical)
				{
					rectTextAndImage.Offset(0f, num);
				}
				else
				{
					rectTextAndImage.Offset(num, 0f);
				}
			}
		}
		return rectTextAndImage;
	}

	public override bool CloseButtonHitTest(Point pt)
	{
		return lastCloseButtonBounds.Contains(pt);
	}
}
