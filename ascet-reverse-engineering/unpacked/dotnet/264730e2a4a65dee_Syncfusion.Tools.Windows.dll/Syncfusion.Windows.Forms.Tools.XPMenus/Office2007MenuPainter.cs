using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class Office2007MenuPainter
{
	private static readonly int s_menuItemRadius;

	private static readonly int s_arrowHeight;

	private static readonly int s_arrowWidth;

	private static readonly int s_offsetRTL;

	private static Blend m_blMenuItemHighlight;

	private static Blend m_blMenuComboButtonPushed1;

	private static Blend m_blMenuComboButtonPushed2;

	private static Office2007Colors m_colorTable;

	public static Office2007Colors ColorTable
	{
		get
		{
			return (m_colorTable == null) ? Office2007Colors.Default : m_colorTable;
		}
		set
		{
			if (value != m_colorTable)
			{
				m_colorTable = value;
			}
		}
	}

	static Office2007MenuPainter()
	{
		s_menuItemRadius = 1;
		s_arrowHeight = 7;
		s_arrowWidth = 4;
		s_offsetRTL = 1;
		m_blMenuItemHighlight = null;
		m_blMenuComboButtonPushed1 = null;
		m_blMenuComboButtonPushed2 = null;
		m_colorTable = null;
		m_blMenuItemHighlight = new Blend();
		m_blMenuItemHighlight.Positions = new float[4] { 0f, 0.4f, 0.5f, 1f };
		m_blMenuItemHighlight.Factors = new float[4] { 0f, 0.2f, 1f, 0.4f };
		m_blMenuComboButtonPushed1 = new Blend();
		m_blMenuComboButtonPushed1.Positions = new float[3] { 0f, 0.5f, 1f };
		m_blMenuComboButtonPushed1.Factors = new float[3] { 0f, 0.2f, 1f };
		m_blMenuComboButtonPushed2 = new Blend();
		m_blMenuComboButtonPushed2.Positions = new float[3] { 0f, 0.2f, 1f };
		m_blMenuComboButtonPushed2.Factors = new float[3] { 0f, 0.4f, 1f };
	}

	public static Color GetAlphaBlendedColor(Color src, Color dest, int alpha)
	{
		int red = (src.R * alpha + (255 - alpha) * dest.R) / 255;
		int green = (src.G * alpha + (255 - alpha) * dest.G) / 255;
		int blue = (src.B * alpha + (255 - alpha) * dest.B) / 255;
		int alpha2 = (src.A * alpha + (255 - alpha) * dest.A) / 255;
		return Color.FromArgb(alpha2, red, green, blue);
	}

	private static Point[] GetRoundedPolygon(Rectangle rect, int radius)
	{
		int x = rect.X;
		int y = rect.Y;
		int right = rect.Right;
		int bottom = rect.Bottom;
		return new Point[8]
		{
			new Point(x, y + radius),
			new Point(x + radius, y),
			new Point(right - radius, y),
			new Point(right, y + radius),
			new Point(right, bottom - radius),
			new Point(right - radius, bottom),
			new Point(x + radius, bottom),
			new Point(x, bottom - radius)
		};
	}

	private static Point[] GetMenuPolygon(Rectangle rect, int radius, bool bParent, bool bRTL)
	{
		int x = rect.X;
		int y = rect.Y;
		int right = rect.Right;
		int bottom = rect.Bottom;
		Point[] array = null;
		if (bParent)
		{
			if (bRTL)
			{
				return new Point[10]
				{
					new Point(x, y + radius),
					new Point(x + radius, y + radius),
					new Point(x + radius, y),
					new Point(right, y),
					new Point(right, bottom - radius),
					new Point(right - radius, bottom - radius),
					new Point(right - radius, bottom),
					new Point(x + radius, bottom),
					new Point(x + radius, bottom - radius),
					new Point(x, bottom - radius)
				};
			}
			return new Point[10]
			{
				new Point(x, y),
				new Point(right - radius, y),
				new Point(right - radius, y + radius),
				new Point(right, y + radius),
				new Point(right, bottom - radius),
				new Point(right - radius, bottom - radius),
				new Point(right - radius, bottom),
				new Point(x + radius, bottom),
				new Point(x + radius, bottom - radius),
				new Point(x, bottom - radius)
			};
		}
		return new Point[12]
		{
			new Point(x, y + radius),
			new Point(x + radius, y + radius),
			new Point(x + radius, y),
			new Point(right - radius, y),
			new Point(right - radius, y + radius),
			new Point(right, y + radius),
			new Point(right, bottom - radius),
			new Point(right - radius, bottom - radius),
			new Point(right - radius, bottom),
			new Point(x + radius, bottom),
			new Point(x + radius, bottom - radius),
			new Point(x, bottom - radius)
		};
	}

	private static Rectangle GetArrowRect(Rectangle bounds)
	{
		int num = 1;
		int num2 = 1;
		return new Rectangle(bounds.Left + (bounds.Width - s_arrowWidth) / 2, bounds.Top + (bounds.Height - s_arrowHeight) / 2 - num, s_arrowWidth, s_arrowHeight + num2);
	}

	private static Point[] GetArrowPolygon(Rectangle rect, bool bRTL)
	{
		int y = rect.Top + (rect.Bottom - rect.Top) / 2;
		Point[] array = null;
		if (bRTL)
		{
			return new Point[3]
			{
				new Point(rect.Right, rect.Top),
				new Point(rect.Right, rect.Bottom),
				new Point(rect.Left, y)
			};
		}
		return new Point[3]
		{
			new Point(rect.Left, rect.Top),
			new Point(rect.Left, rect.Bottom),
			new Point(rect.Right, y)
		};
	}

	private static void DrawComboButtonArrow(Graphics g, Rectangle rect)
	{
		Point[] dropDownBorderBounds = ComboBoxItemRenderer.GetDropDownBorderBounds(rect);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(dropDownBorderBounds);
		bool flag = false;
		Color menuComboButtonArrowColor = ColorTable.MenuComboButtonArrowColor;
		using Brush brush = new SolidBrush(flag ? Color.FromArgb(125, menuComboButtonArrowColor) : menuComboButtonArrowColor);
		Region region = new Region(graphicsPath);
		g.FillRegion(brush, region);
		region.Dispose();
		graphicsPath.Dispose();
	}

	private static void DrawMenuArrow(Graphics g, Rectangle rect, Color lightColor, Color darkColor, bool bRTL)
	{
		Rectangle arrowRect = GetArrowRect(rect);
		using Brush brush = new LinearGradientBrush(arrowRect, lightColor, darkColor, LinearGradientMode.Horizontal);
		g.FillPolygon(brush, GetArrowPolygon(arrowRect, bRTL));
	}

	private static void DrawComboButtonHighlight(Graphics g, Rectangle rect, bool bRTL)
	{
		using (Pen pen = new Pen(ColorTable.MenuItemBorderColor))
		{
			if (bRTL)
			{
				g.DrawLine(pen, rect.Right + s_offsetRTL, rect.Top, rect.Right + s_offsetRTL, rect.Bottom);
			}
			else
			{
				g.DrawLine(pen, rect.Left, rect.Top, rect.Left, rect.Bottom);
			}
		}
		rect.X++;
		rect.Height++;
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, ColorTable.MenuItemLightColor, ColorTable.MenuItemDarkColor, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blMenuItemHighlight;
		g.FillRectangle(linearGradientBrush, rect);
	}

	private static void DrawComboButtonSelected(Graphics g, Rectangle rect, bool bRTL)
	{
		using (Pen pen = new Pen(ColorTable.MenuTextBoxBorderColor))
		{
			if (bRTL)
			{
				g.DrawLine(pen, rect.Right + s_offsetRTL, rect.Top, rect.Right + s_offsetRTL, rect.Bottom);
			}
			else
			{
				g.DrawLine(pen, rect.Left, rect.Top, rect.Left, rect.Bottom);
			}
		}
		rect.X++;
		rect.Height++;
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, ColorTable.MenuComboButtonHighlightLightColor, ColorTable.MenuComboButtonHighlightDarkColor, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blMenuItemHighlight;
		g.FillRectangle(linearGradientBrush, rect);
	}

	private static void DrawComboButtonPopup(Graphics g, Rectangle rect, bool bRTL)
	{
		using (Pen pen = new Pen(ColorTable.MenuItemBorderColor))
		{
			if (bRTL)
			{
				g.DrawLine(pen, rect.Right + s_offsetRTL, rect.Top, rect.Right + s_offsetRTL, rect.Bottom);
			}
			else
			{
				g.DrawLine(pen, rect.Left, rect.Top, rect.Left, rect.Bottom);
			}
		}
		rect.X++;
		rect.Height++;
		Rectangle rect2 = new Rectangle(rect.X, rect.Y, rect.Width, rect.Height / 2);
		using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect2, ColorTable.MenuComboButtonPushed1Color, ColorTable.MenuComboButtonPushed2Color, LinearGradientMode.Vertical))
		{
			linearGradientBrush.Blend = m_blMenuComboButtonPushed1;
			g.FillRectangle(linearGradientBrush, rect2);
		}
		Rectangle rect3 = new Rectangle(rect.X, rect.Y + rect.Height / 2, rect.Width, rect.Height / 2);
		using LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect3, ColorTable.MenuComboButtonPushed3Color, ColorTable.MenuComboButtonPushed4Color, LinearGradientMode.Vertical);
		linearGradientBrush2.Blend = m_blMenuComboButtonPushed2;
		g.FillRectangle(linearGradientBrush2, rect3);
	}

	public static void DrawMenuTextBoxItem(Graphics g, Rectangle rect, bool selected)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		rect.Inflate(-1, -1);
		rect.Width--;
		rect.Height--;
		Color color = (selected ? Color.White : ColorTable.MenuTextBoxBackColor);
		using (Brush brush = new SolidBrush(color))
		{
			g.FillRectangle(brush, rect);
		}
		using Pen pen = new Pen(ColorTable.MenuTextBoxBorderColor);
		g.DrawRectangle(pen, rect);
	}

	public static void DrawComboButton(Graphics g, Rectangle rect, ButtonState buttonState, bool bDroppedDown, bool bSelected, bool bRTL)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		Rectangle rect2 = rect;
		rect2.Inflate(1, 1);
		rect2.Width--;
		rect2.Height--;
		bool flag = true;
		if (bDroppedDown)
		{
			DrawComboButtonPopup(g, rect2, bRTL);
		}
		else if (bSelected && buttonState != ButtonState.Normal)
		{
			DrawComboButtonSelected(g, rect2, bRTL);
			flag = false;
		}
		else
		{
			switch (buttonState)
			{
			case ButtonState.Flat:
				flag = false;
				break;
			case ButtonState.Normal:
				DrawComboButtonHighlight(g, rect2, bRTL);
				break;
			}
		}
		if (flag)
		{
			Color alphaBlendedColor = GetAlphaBlendedColor(Color.Transparent, Color.White, 128);
			using Pen pen = new Pen(alphaBlendedColor);
			rect2.X++;
			rect2.Width--;
			g.DrawRectangle(pen, rect2);
		}
		DrawComboButtonArrow(g, rect);
	}

	public static void DrawMenuChecked(Graphics g, Rectangle rect, bool bDrawCheckmark)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		Rectangle rect2 = rect;
		rect2.Inflate(-1, -1);
		rect2.Width -= 2;
		rect2.Height--;
		using (Brush brush = new SolidBrush(ColorTable.MenuCheckedFillColor))
		{
			g.FillRectangle(brush, rect2);
		}
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		using (Pen pen = new Pen(ColorTable.MenuCheckedBorderColor))
		{
			g.DrawPolygon(pen, GetRoundedPolygon(rect2, s_menuItemRadius));
		}
		if (bDrawCheckmark)
		{
			float num = (float)rect2.Width / 4f + (float)rect2.Width / 10f;
			float num2 = num + (float)rect2.Width / 10f;
			float num3 = num2 + (float)rect2.Width / 5f;
			num = (int)num;
			num3 = (float)Math.Round(num3);
			float num4 = (float)rect2.Height / 3f + (float)rect2.Height / 5f;
			float num5 = num4 + (float)rect2.Height / 4f;
			float num6 = num5 - (float)rect2.Height / 2f;
			num4 = (int)num4;
			num5 = (float)Math.Round(num5);
			num6 = (int)num6;
			int num7 = (int)((float)rect2.Width / 10f);
			using Pen pen2 = new Pen(ColorTable.MenuCheckedColor);
			for (int i = 0; i < num7; i++)
			{
				g.DrawLine(pen2, (float)rect2.Left + num, (float)rect2.Top + num4 + (float)i, (float)rect2.Left + num2, (float)rect2.Top + num5 + (float)i);
				g.DrawLine(pen2, (float)rect2.Left + num2, (float)rect2.Top + num5 + (float)i, (float)rect2.Left + num3, (float)rect2.Top + num6 + (float)i);
			}
		}
		g.SmoothingMode = smoothingMode;
	}

	public static void DrawMenuItemHighlightBackground(Graphics g, Rectangle rect)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, ColorTable.MenuItemLightColor, ColorTable.MenuItemDarkColor, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blMenuItemHighlight;
		g.FillRectangle(linearGradientBrush, rect);
	}

	public static void DrawMenuItemHighlightBorder(Graphics g, Rectangle rect)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		g.DrawLine(Pens.White, rect.X, rect.Y, rect.Right, rect.Y);
		g.DrawLine(Pens.White, rect.X, rect.Bottom, rect.Right, rect.Bottom);
		using (Pen pen = new Pen(ColorTable.MenuItemBorderColor))
		{
			g.DrawPolygon(pen, GetRoundedPolygon(rect, s_menuItemRadius));
		}
		Color alphaBlendedColor = GetAlphaBlendedColor(Color.Transparent, Color.White, 128);
		using Pen pen2 = new Pen(alphaBlendedColor);
		rect.Inflate(-1, -1);
		g.DrawRectangle(pen2, rect);
	}

	public static void DrawMenuBorder(Graphics g, Rectangle rect, bool bParent, bool bRTL)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		using (Pen pen = new Pen(ColorTable.MenuBorderColor))
		{
			g.DrawPolygon(pen, GetMenuPolygon(rect, s_menuItemRadius, bParent, bRTL));
		}
		Color alphaBlendedColor = GetAlphaBlendedColor(ColorTable.MenuColumnColor, Color.White, 128);
		using (Pen pen2 = new Pen(alphaBlendedColor))
		{
			rect.Inflate(-1, -1);
			g.DrawPolygon(pen2, GetMenuPolygon(rect, s_menuItemRadius, bParent, bRTL));
		}
		g.SmoothingMode = smoothingMode;
	}

	public static void DrawMenuColumn(Graphics g, Rectangle rect, bool bRTL)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		using (Brush brush = new SolidBrush(ColorTable.MenuColumnColor))
		{
			g.FillRectangle(brush, rect);
		}
		using (Pen pen = new Pen(ColorTable.MenuColumnSeparatorColor))
		{
			if (bRTL)
			{
				g.DrawLine(pen, rect.Left + 1, rect.Top, rect.Left + 1, rect.Bottom);
			}
			else
			{
				g.DrawLine(pen, rect.Right - 2, rect.Top, rect.Right - 2, rect.Bottom);
			}
		}
		Color alphaBlendedColor = GetAlphaBlendedColor(Color.Transparent, Color.White, 128);
		using Pen pen2 = new Pen(alphaBlendedColor);
		if (bRTL)
		{
			g.DrawLine(pen2, rect.Left, rect.Top, rect.Left, rect.Bottom);
		}
		else
		{
			g.DrawLine(pen2, rect.Right - 1, rect.Top, rect.Right - 1, rect.Bottom);
		}
	}

	public static void DrawMenuDropDownBarItem(Graphics g, Rectangle rect, bool selected, bool bRTL)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		int num = 0;
		num = ((!bRTL) ? (selected ? 1 : (-1)) : ((!selected) ? 1 : (-1)));
		int num2 = ((!selected) ? 4 : 0);
		using (Pen pen = new Pen(ColorTable.MenuItemBorderColor))
		{
			if (bRTL)
			{
				g.DrawLine(pen, rect.Right - s_offsetRTL, rect.Top + num2, rect.Right - s_offsetRTL, rect.Bottom - num2);
			}
			else
			{
				g.DrawLine(pen, rect.Left, rect.Top + num2, rect.Left, rect.Bottom - num2);
			}
		}
		Color alphaBlendedColor = GetAlphaBlendedColor(Color.Transparent, Color.White, 128);
		using (Pen pen2 = new Pen(alphaBlendedColor))
		{
			if (bRTL)
			{
				g.DrawLine(pen2, rect.Right - s_offsetRTL + num, rect.Top + num2, rect.Right - s_offsetRTL + num, rect.Bottom - num2);
			}
			else
			{
				g.DrawLine(pen2, rect.Left + num, rect.Top + num2, rect.Left + num, rect.Bottom - num2);
			}
		}
		DrawMenuArrow(g, rect, ColorTable.MenuItemArrowLightColor, ColorTable.MenuItemArrowDarkColor, bRTL);
	}

	public static void DrawMenuParentBarItem(Graphics g, Rectangle rect, bool bRTL)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		DrawMenuArrow(g, rect, ColorTable.MenuItemArrowLightColor, ColorTable.MenuItemArrowDarkColor, bRTL);
	}

	public static Region GetMenuRegion(Rectangle rect, bool bParent, bool bRTL)
	{
		if (bRTL)
		{
			rect.X--;
			rect.Width++;
		}
		int radius = s_menuItemRadius;
		Point[] menuPolygon = GetMenuPolygon(rect, radius, bParent, bRTL);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(menuPolygon);
		return new Region(graphicsPath);
	}
}
