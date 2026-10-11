using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class Office2007BarItemPainter
{
	private static readonly int s_iItemRadius;

	private static readonly Size s_flashSize;

	private static Blend m_blButtonHorizontalShadow;

	private static Blend m_blButtonVerticalShadow;

	private static Blend m_blButtonFlash;

	protected static Hashtable m_htBitmaps;

	private static Office2007Colors m_colorTable;

	protected static Bitmap CheckedFlashImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebCheckedFlash] as Bitmap;
			if (bitmap == null)
			{
				bitmap = GetFlashImage(ColorTable.BarItemCheckFlashColor, s_flashSize);
				m_htBitmaps[EBITMAP.ebCheckedFlash] = bitmap;
			}
			return bitmap;
		}
	}

	protected static Bitmap SelectedFlashImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebSelectedFlash] as Bitmap;
			if (bitmap == null)
			{
				bitmap = GetFlashImage(ColorTable.BarItemSelectFlashColor, s_flashSize);
				m_htBitmaps[EBITMAP.ebSelectedFlash] = bitmap;
			}
			return bitmap;
		}
	}

	protected static Bitmap PressedFlashImage
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebPressedFlash] as Bitmap;
			if (bitmap == null)
			{
				bitmap = GetFlashImage(ColorTable.BarItemPressFlashColor, s_flashSize);
				m_htBitmaps[EBITMAP.ebPressedFlash] = bitmap;
			}
			return bitmap;
		}
	}

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

	static Office2007BarItemPainter()
	{
		s_iItemRadius = 1;
		s_flashSize = new Size(20, 20);
		m_blButtonHorizontalShadow = null;
		m_blButtonVerticalShadow = null;
		m_blButtonFlash = null;
		m_colorTable = null;
		m_blButtonHorizontalShadow = new Blend();
		m_blButtonHorizontalShadow.Positions = new float[6] { 0f, 0.2f, 0.4f, 0.6f, 0.8f, 1f };
		m_blButtonHorizontalShadow.Factors = new float[6] { 0f, 0.3f, 0.6f, 0.8f, 0.95f, 1f };
		m_blButtonVerticalShadow = new Blend();
		m_blButtonVerticalShadow.Positions = new float[6] { 0f, 0.2f, 0.4f, 0.6f, 0.8f, 1f };
		m_blButtonVerticalShadow.Factors = new float[6] { 0f, 0.2f, 0.5f, 0.9f, 0.95f, 1f };
		m_blButtonFlash = new Blend();
		m_blButtonFlash.Positions = new float[3] { 0f, 0.4f, 1f };
		m_blButtonFlash.Factors = new float[3] { 0f, 0.6f, 1f };
		m_htBitmaps = new Hashtable();
	}

	private static Rectangle GetButtonBackgroundRect(Rectangle rc)
	{
		Rectangle result = rc;
		result.Inflate(-1, -1);
		return result;
	}

	public static Point[] GetRoundedPolygon(Rectangle rc, int iRadius)
	{
		int x = rc.X;
		int y = rc.Y;
		int num = rc.Right - 1;
		int num2 = rc.Bottom - 1;
		return new Point[8]
		{
			new Point(x, y + iRadius),
			new Point(x + iRadius, y),
			new Point(num - iRadius, y),
			new Point(num, y + iRadius),
			new Point(num, num2 - iRadius),
			new Point(num - iRadius, num2),
			new Point(x + iRadius, num2),
			new Point(x, num2 - iRadius)
		};
	}

	public static Color GetAlphaBlendedColor(Color src, Color dest, int alpha)
	{
		int red = (src.R * alpha + (255 - alpha) * dest.R) / 255;
		int green = (src.G * alpha + (255 - alpha) * dest.G) / 255;
		int blue = (src.B * alpha + (255 - alpha) * dest.B) / 255;
		int alpha2 = (src.A * alpha + (255 - alpha) * dest.A) / 255;
		return Color.FromArgb(alpha2, red, green, blue);
	}

	protected static LinearGradientBrush GetVerticalBrush(Rectangle rc, Color cl1, Color cl2)
	{
		return GetVerticalBrush(rc.Top, rc.Height, cl1, cl2);
	}

	protected static LinearGradientBrush GetVerticalBrush(int top, int height, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(0, top, 1, height);
		return new LinearGradientBrush(rect, cl1, cl2, LinearGradientMode.Vertical);
	}

	protected static LinearGradientBrush GetHorizontalBrush(Rectangle rc, Color cl1, Color cl2)
	{
		return GetHorizontalBrush(rc.Left, rc.Width, cl1, cl2);
	}

	protected static LinearGradientBrush GetHorizontalBrush(int left, int width, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(left - 1, 0, width + 1, 1);
		return new LinearGradientBrush(rect, cl1, cl2, LinearGradientMode.Horizontal);
	}

	private static void PaintGradientSelected(Graphics g, Rectangle rc, Color clBegin, Color clEnd, bool bHorizontal)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		Color alphaBlendedColor = GetAlphaBlendedColor(clBegin, clEnd, 128);
		int num = (bHorizontal ? ((int)((double)rc.Height * 0.38)) : ((int)((double)rc.Width * 0.38)));
		int num2 = (bHorizontal ? (rc.Height - num) : (rc.Width - num));
		if (num > 0)
		{
			Rectangle rectangle = (bHorizontal ? new Rectangle(rc.X, rc.Y, rc.Width, num + 1) : new Rectangle(rc.X + num2, rc.Y, num, rc.Height));
			using LinearGradientBrush linearGradientBrush = (bHorizontal ? GetVerticalBrush(rectangle, clBegin, alphaBlendedColor) : GetHorizontalBrush(rectangle, alphaBlendedColor, clBegin));
			linearGradientBrush.WrapMode = WrapMode.TileFlipY;
			g.FillRectangle(linearGradientBrush, rectangle);
		}
		Rectangle rectangle2 = (bHorizontal ? new Rectangle(rc.X, rc.Y + num, rc.Width, num2) : new Rectangle(rc.X - 1, rc.Y, num2 + 1, rc.Height));
		using LinearGradientBrush linearGradientBrush2 = (bHorizontal ? GetVerticalBrush(rectangle2, clEnd, alphaBlendedColor) : GetHorizontalBrush(rectangle2, alphaBlendedColor, clEnd));
		linearGradientBrush2.WrapMode = WrapMode.TileFlipY;
		g.FillRectangle(linearGradientBrush2, rectangle2);
	}

	private static void PainButtonPressedOutsideBorder(Graphics g, Rectangle rc, Color clHighlightBorder, bool bDropDown, bool bHorizontal)
	{
		int num = (bDropDown ? 1 : 0);
		Color barItemPressBorderColor = ColorTable.BarItemPressBorderColor;
		Color alphaBlendedColor = GetAlphaBlendedColor(barItemPressBorderColor, Color.White, 128);
		if (bHorizontal)
		{
			using (LinearGradientBrush linearGradientBrush = GetVerticalBrush(rc.Top, rc.Height, barItemPressBorderColor, alphaBlendedColor))
			{
				linearGradientBrush.TranslateTransform(2 * (rc.Width + 2 * rc.X), rc.Height, MatrixOrder.Append);
				using Pen pen = new Pen(linearGradientBrush);
				Point[] points = new Point[6]
				{
					new Point(rc.Left, rc.Bottom - 2 + num),
					new Point(rc.Left, rc.Top + 1),
					new Point(rc.Left + 1, rc.Top),
					new Point(rc.Right - 2, rc.Top),
					new Point(rc.Right - 1, rc.Top + 1),
					new Point(rc.Right - 1, rc.Bottom - 2 + num)
				};
				g.DrawLines(pen, points);
				return;
			}
		}
		using LinearGradientBrush brush = GetHorizontalBrush(rc.Left, rc.Width, alphaBlendedColor, barItemPressBorderColor);
		using Pen pen2 = new Pen(brush);
		Point[] points2 = new Point[6]
		{
			new Point(rc.Left + 1, rc.Top),
			new Point(rc.Right - 2, rc.Top),
			new Point(rc.Right - 1, rc.Top + 1),
			new Point(rc.Right - 1, rc.Bottom - 2),
			new Point(rc.Right - 2, rc.Bottom - 1),
			new Point(rc.Left + 1, rc.Bottom - 1)
		};
		g.DrawLines(pen2, points2);
	}

	private static void PainButtonPressedInsideBorder(Graphics g, Rectangle rc, Color clHighlightBorder, bool bDropDown, bool bHorizontal)
	{
		Color color = Color.FromArgb(32, clHighlightBorder);
		if (bHorizontal)
		{
			using (LinearGradientBrush brush = GetVerticalBrush(rc.Top + 1, rc.Height - 1, color, clHighlightBorder))
			{
				using Pen pen = new Pen(brush);
				Point[] points = new Point[4]
				{
					new Point(rc.Right - 2, rc.Y + 2),
					new Point(rc.Right - 2, rc.Bottom - 1),
					new Point(rc.Left + 1, rc.Bottom - 1),
					new Point(rc.Left + 1, rc.Y + 2)
				};
				g.DrawLines(pen, points);
				return;
			}
		}
		using LinearGradientBrush brush2 = GetHorizontalBrush(rc.Left + 1, rc.Width - 1, clHighlightBorder, color);
		using Pen pen2 = new Pen(brush2);
		Point[] points2 = new Point[4]
		{
			new Point(rc.Right - 3, rc.Y + 1),
			new Point(rc.X, rc.Y + 1),
			new Point(rc.X, rc.Bottom - 2),
			new Point(rc.Right - 3, rc.Bottom - 2)
		};
		g.DrawLines(pen2, points2);
	}

	private static void PaintButtonPressedBorder(Graphics g, Rectangle rc, Color clHighlightBorder, bool bDropDown, bool bHorizontal)
	{
		PainButtonPressedOutsideBorder(g, rc, clHighlightBorder, bDropDown, bHorizontal);
		PainButtonPressedInsideBorder(g, rc, clHighlightBorder, bDropDown, bHorizontal);
	}

	private static void PaintButtonSelectedBorder(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0)
		{
			GraphicsState gstate = g.Save();
			g.SmoothingMode = SmoothingMode.AntiAlias;
			using (Pen pen = new Pen(ColorTable.BarItemHighlightBorderColor))
			{
				g.DrawPolygon(pen, GetRoundedPolygon(rc, s_iItemRadius));
			}
			using (Pen pen2 = new Pen(GetAlphaBlendedColor(Color.Transparent, Color.White, 128)))
			{
				g.DrawRectangle(pen2, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
			}
			g.Restore(gstate);
		}
	}

	protected static Bitmap GetFlashImage(Color colorBase, Size size)
	{
		Rectangle rect = new Rectangle(0, 0, size.Width, size.Height);
		Bitmap bitmap = new Bitmap(rect.Width, rect.Height);
		using Graphics graphics = Graphics.FromImage(bitmap);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddEllipse(rect);
		using PathGradientBrush pathGradientBrush = new PathGradientBrush(graphicsPath);
		pathGradientBrush.Blend = m_blButtonFlash;
		pathGradientBrush.CenterColor = colorBase;
		pathGradientBrush.SurroundColors = new Color[1] { Color.Transparent };
		graphics.FillRectangle(pathGradientBrush, rect);
		return bitmap;
	}

	private static void PaintBarItemShadow(Graphics g, Rectangle rect, Color color, bool bHorizontal)
	{
		if (rect.Width > 0 && rect.Height > 0)
		{
			Color color2 = Color.FromArgb(160, color);
			Color transparent = Color.Transparent;
			int num = (bHorizontal ? Math.Max(rect.Height / 10, 2) : Math.Max(rect.Width / 10, 2));
			Rectangle rectangle = (bHorizontal ? new Rectangle(rect.X, rect.Y, rect.Width, num) : new Rectangle(rect.Right - num, rect.Y, num, rect.Height));
			LinearGradientBrush linearGradientBrush = (bHorizontal ? GetVerticalBrush(rectangle, color2, transparent) : GetHorizontalBrush(rectangle, transparent, color2));
			if (bHorizontal)
			{
				linearGradientBrush.TranslateTransform(2 * (rect.Width + 2 * rect.X), rectangle.Height, MatrixOrder.Append);
			}
			using (linearGradientBrush)
			{
				linearGradientBrush.Blend = (bHorizontal ? m_blButtonHorizontalShadow : m_blButtonVerticalShadow);
				g.FillRectangle(linearGradientBrush, rectangle);
			}
		}
	}

	private static void PaintFlashPress(Graphics g, Rectangle rect, bool bHorizontal)
	{
		g.SmoothingMode = SmoothingMode.None;
		Rectangle clip = (bHorizontal ? new Rectangle(rect.X, rect.Y + rect.Height / 2 + 1, rect.Width, rect.Height / 2) : new Rectangle(rect.X, rect.Y, rect.Width / 2, rect.Height));
		g.SetClip(clip);
		Rectangle rect2 = (bHorizontal ? new Rectangle(rect.X, rect.Y + rect.Height / 2, rect.Width, rect.Height) : new Rectangle(rect.X - rect.Width / 2, rect.Y, rect.Width, rect.Height));
		g.DrawImage(PressedFlashImage, rect2);
		g.ResetClip();
	}

	private static void PaintFlashSelected(Graphics g, Rectangle rect, bool bHorizontal)
	{
		g.SmoothingMode = SmoothingMode.None;
		Rectangle clip = (bHorizontal ? new Rectangle(rect.X, rect.Y + rect.Height / 2 + 1, rect.Width, rect.Height / 2) : new Rectangle(rect.X, rect.Y, rect.Width / 2, rect.Height));
		g.SetClip(clip);
		Rectangle rect2 = (bHorizontal ? new Rectangle(rect.X, rect.Y + rect.Height / 2, rect.Width, rect.Height) : new Rectangle(rect.X - rect.Width / 2, rect.Y, rect.Width, rect.Height));
		g.DrawImage(SelectedFlashImage, rect2);
		g.ResetClip();
	}

	private static void PaintFlashCheck(Graphics g, Rectangle rect, bool bHorizontal)
	{
		g.SmoothingMode = SmoothingMode.None;
		Rectangle clip = (bHorizontal ? new Rectangle(rect.X, rect.Y + rect.Height / 2 + 1, rect.Width, rect.Height / 2) : new Rectangle(rect.X, rect.Y, rect.Width / 2, rect.Height));
		g.SetClip(clip);
		Rectangle rect2 = (bHorizontal ? new Rectangle(rect.X, rect.Y + rect.Height / 2, rect.Width, rect.Height) : new Rectangle(rect.X - rect.Width / 2, rect.Y, rect.Width, rect.Height));
		g.DrawImage(CheckedFlashImage, rect2);
		g.ResetClip();
	}

	private static void DrawBarItemBackgroundHighlight(Graphics g, Rectangle rect, bool bHorizontal)
	{
		Color menuItemLightColor = ColorTable.MenuItemLightColor;
		Color menuItemDarkColor = ColorTable.MenuItemDarkColor;
		Rectangle buttonBackgroundRect = GetButtonBackgroundRect(rect);
		PaintGradientSelected(g, buttonBackgroundRect, menuItemLightColor, menuItemDarkColor, bHorizontal);
		PaintFlashSelected(g, buttonBackgroundRect, bHorizontal);
		PaintButtonSelectedBorder(g, rect);
	}

	private static void DrawBarItemBackgroundPress(Graphics g, Rectangle rect, bool bHorizontal)
	{
		Color barItemPressLightColor = ColorTable.BarItemPressLightColor;
		Color barItemPressDarkColor = ColorTable.BarItemPressDarkColor;
		Rectangle buttonBackgroundRect = GetButtonBackgroundRect(rect);
		PaintGradientSelected(g, buttonBackgroundRect, barItemPressLightColor, barItemPressDarkColor, bHorizontal);
		Color barItemPressBorderColor = ColorTable.BarItemPressBorderColor;
		PaintBarItemShadow(g, buttonBackgroundRect, barItemPressBorderColor, bHorizontal);
		PaintFlashPress(g, buttonBackgroundRect, bHorizontal);
		PaintButtonPressedBorder(g, rect, barItemPressDarkColor, bDropDown: false, bHorizontal);
	}

	private static void DrawBarItemBackgroundCheck(Graphics g, Rectangle rect, bool bHorizontal)
	{
		Color dropDownBarItemLightColor = ColorTable.DropDownBarItemLightColor;
		Color dropDownBarItemDarkColor = ColorTable.DropDownBarItemDarkColor;
		Rectangle buttonBackgroundRect = GetButtonBackgroundRect(rect);
		PaintGradientSelected(g, buttonBackgroundRect, dropDownBarItemLightColor, dropDownBarItemDarkColor, bHorizontal);
		Color dropDownBarItemBorderColor = ColorTable.DropDownBarItemBorderColor;
		PaintBarItemShadow(g, buttonBackgroundRect, dropDownBarItemBorderColor, bHorizontal);
		PaintFlashCheck(g, buttonBackgroundRect, bHorizontal);
		PaintButtonPressedBorder(g, rect, dropDownBarItemDarkColor, bDropDown: false, bHorizontal);
	}

	private static void DrawBarItemBackgroundCheckHighlight(Graphics g, Rectangle rect, bool bHorizontal)
	{
		Color barItemCheckLightColor = ColorTable.BarItemCheckLightColor;
		Color barItemCheckDarkColor = ColorTable.BarItemCheckDarkColor;
		Rectangle buttonBackgroundRect = GetButtonBackgroundRect(rect);
		PaintGradientSelected(g, buttonBackgroundRect, barItemCheckLightColor, barItemCheckDarkColor, bHorizontal);
		Color barItemCheckBorderColor = ColorTable.BarItemCheckBorderColor;
		PaintBarItemShadow(g, buttonBackgroundRect, barItemCheckBorderColor, bHorizontal);
		PaintFlashCheck(g, buttonBackgroundRect, bHorizontal);
		PaintButtonPressedBorder(g, rect, barItemCheckDarkColor, bDropDown: false, bHorizontal);
	}

	private static void DrawBarItemBackground(Graphics g, Rectangle rect, ItemState state, bool bHorizontal)
	{
		switch (state)
		{
		case ItemState.Selected:
			DrawBarItemBackgroundHighlight(g, rect, bHorizontal);
			break;
		case ItemState.Pressed:
			DrawBarItemBackgroundPress(g, rect, bHorizontal);
			break;
		case ItemState.Checked:
			DrawBarItemBackgroundCheck(g, rect, bHorizontal);
			break;
		case ItemState.Collapsed:
			DrawBarItemBackgroundCheckHighlight(g, rect, bHorizontal);
			break;
		}
	}

	private static void DrawDropDownBarItemBackground(Graphics g, Rectangle rect, ItemState state, bool bHorizontal)
	{
		switch (state)
		{
		case ItemState.Selected:
			DrawBarItemBackgroundHighlight(g, rect, bHorizontal);
			break;
		case ItemState.Collapsed:
			DrawBarItemBackgroundDropDown(g, rect, bHorizontal);
			break;
		case ItemState.Checked:
			DrawBarItemBackgroundCheck(g, rect, bHorizontal);
			break;
		}
	}

	private static void DrawBarItemBackgroundDropDown(Graphics g, Rectangle rect, bool bHorizontal)
	{
		Color dropDownBarItemLightColor = ColorTable.DropDownBarItemLightColor;
		Color dropDownBarItemDarkColor = ColorTable.DropDownBarItemDarkColor;
		Rectangle buttonBackgroundRect = GetButtonBackgroundRect(rect);
		PaintGradientSelected(g, buttonBackgroundRect, dropDownBarItemLightColor, dropDownBarItemDarkColor, bHorizontal);
		Color dropDownBarItemBorderColor = ColorTable.DropDownBarItemBorderColor;
		PaintBarItemShadow(g, buttonBackgroundRect, dropDownBarItemBorderColor, bHorizontal);
		PaintFlashSelected(g, buttonBackgroundRect, bHorizontal);
		PaintButtonPressedBorder(g, rect, dropDownBarItemDarkColor, bDropDown: true, bHorizontal);
	}

	private static void DrawTextBoxBarItemBackground(Graphics g, Rectangle rect, ItemState state)
	{
		using SolidBrush brush = new SolidBrush(ColorTable.TextBarItemBackColor);
		g.FillRectangle(brush, rect);
	}

	private static void DrawTextBoxBarItemBorder(Graphics g, Rectangle rect, ItemState state)
	{
		switch (state)
		{
		case ItemState.Normal:
		{
			using Pen pen2 = new Pen(ColorTable.TextBarItemBorderColor);
			g.DrawRectangle(pen2, rect);
			break;
		}
		case ItemState.Selected:
		{
			using Pen pen = new Pen(ColorTable.TextBarItemBorderHighlightColor);
			g.DrawRectangle(pen, rect);
			break;
		}
		}
	}

	private static void DrawComboButtonBackground(Graphics g, Rectangle rect, ItemState state, bool bHorizontal)
	{
		switch (state)
		{
		case ItemState.Selected:
			DrawButtonSelected(g, rect, bHorizontal);
			break;
		case ItemState.Pressed:
			DrawButtonPressed(g, rect, bHorizontal);
			break;
		default:
			DrawButtonNormal(g, rect, bHorizontal);
			break;
		}
	}

	private static void PaintArrow(Graphics g, Rectangle rect)
	{
		int num = rect.X + rect.Width / 2;
		int num2 = rect.Y + rect.Height / 2;
		Point[] points = new Point[3]
		{
			new Point(num - 2, num2 - 1),
			new Point(num + 3, num2 - 1),
			new Point(num, num2 + 2)
		};
		g.FillPolygon(SystemBrushes.ControlText, points);
	}

	private static void DrawButtonNormal(Graphics g, Rectangle rect, bool bHorizontal)
	{
		if (rect.Width > 0 && rect.Height > 0)
		{
			Color comboButtonLightColor = ColorTable.ComboButtonLightColor;
			Color comboButtonDarkColor = ColorTable.ComboButtonDarkColor;
			PaintGradientSelected(g, rect, comboButtonLightColor, comboButtonDarkColor, bHorizontal);
			using (Pen pen = new Pen(ColorTable.ComboButtonBorder))
			{
				g.DrawRectangle(pen, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
			}
			PaintArrow(g, rect);
		}
	}

	private static void DrawButtonSelected(Graphics g, Rectangle rect, bool bHorizontal)
	{
		if (rect.Width > 0 && rect.Height > 0)
		{
			Color comboButtonHighlightLightColor = ColorTable.ComboButtonHighlightLightColor;
			Color comboButtonHighlightDarkColor = ColorTable.ComboButtonHighlightDarkColor;
			PaintGradientSelected(g, rect, comboButtonHighlightLightColor, comboButtonHighlightDarkColor, bHorizontal);
			using (Pen pen = new Pen(ColorTable.ComboButtonHighlightBorder))
			{
				g.DrawRectangle(pen, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
			}
			using (Pen pen2 = new Pen(Color.FromArgb(127, Color.White)))
			{
				g.DrawRectangle(pen2, rect.X + 1, rect.Y + 1, rect.Width - 3, rect.Height - 3);
			}
			PaintArrow(g, rect);
		}
	}

	private static void DrawButtonPressed(Graphics g, Rectangle rect, bool bHorizontal)
	{
		if (rect.Width > 0 && rect.Height > 0)
		{
			Color comboButtonPressLightColor = ColorTable.ComboButtonPressLightColor;
			Color comboButtonPressDarkColor = ColorTable.ComboButtonPressDarkColor;
			PaintGradientSelected(g, rect, comboButtonPressLightColor, comboButtonPressDarkColor, bHorizontal);
			using (Pen pen = new Pen(ColorTable.ComboButtonPressBorder))
			{
				g.DrawRectangle(pen, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
			}
			using (Pen pen2 = new Pen(Color.FromArgb(127, Color.White)))
			{
				g.DrawRectangle(pen2, rect.X + 1, rect.Y + 1, rect.Width - 3, rect.Height - 3);
			}
			PaintArrow(g, rect);
		}
	}

	private static void DrawComboBoxBarItemBackground(Graphics g, Rectangle rect, ItemState state)
	{
		using Pen pen = new Pen(ColorTable.ComboButtonBorder);
		g.DrawRectangle(pen, rect);
	}

	public static void DrawSeparator(Graphics g, RectangleF rect, bool bRTL)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		float y = rect.Y + 3f;
		float num = rect.Bottom - 5f;
		float num2 = (bRTL ? (rect.Right + 3f) : (rect.Left - 3f));
		using (Pen pen = new Pen(ColorTable.BarItemSeparatorColor))
		{
			g.DrawLine(pen, num2 - 1f, y, num2 - 1f, num);
		}
		using Pen pen2 = new Pen(Color.FromArgb(200, Color.White));
		g.DrawLine(pen2, num2, y, num2, num + 1f);
	}

	public static void DrawBarItem(Graphics g, Rectangle rect, ItemState state, bool bHorizontal)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		DrawBarItemBackground(g, rect, state, bHorizontal);
	}

	public static void DrawDropDownBarItem(Graphics g, Rectangle rect, ItemState state, bool bHorizontal)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		DrawDropDownBarItemBackground(g, rect, state, bHorizontal);
	}

	public static void DrawTextBoxBarItem(Graphics g, Rectangle rect, ItemState state, bool bHorizontal)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		DrawTextBoxBarItemBackground(g, rect, state);
		DrawTextBoxBarItemBorder(g, rect, state);
	}

	public static void DrawComboButton(Graphics g, Rectangle rect, ItemState state, bool bHorizontal)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		DrawComboButtonBackground(g, rect, state, bHorizontal);
	}

	public static void DrawComboBoxBarItem(Graphics g, Rectangle rect, ItemState state)
	{
		if (g == null || rect == Rectangle.Empty)
		{
			throw new NullReferenceException();
		}
		DrawComboBoxBarItemBackground(g, rect, state);
	}
}
