using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Renderers;

public class Office2007Renderer : ClassicRenderer
{
	private enum EIMAGE
	{
		eiDownArrow,
		eiRightArrow,
		eiLeftArrow,
		eiUpArrow,
		eiDownArrowNormal,
		eiRightArrowNormal,
		eiLeftArrowNormal,
		eiUpArrowNormal,
		eiThumbLinesVertical,
		eiThumbLinesHorizontal,
		MAX
	}

	private const int MIN_THUMB_LENGTH_FOR_LINES = 15;

	private const int THUMB_LINE_LENGTH = 8;

	private ColorTableOffice2007 m_colorTable;

	private static Blend m_blBackGround;

	private static Blend m_blBackGroundBlack;

	private static Blend m_blArrowButton;

	private static Blend m_blArrowButtonSelected;

	private static Blend m_blArrowButtonSelectedSilverBlack;

	private static Blend m_blThumbBackGround;

	private Bitmaps m_hImages;

	static Office2007Renderer()
	{
		m_blBackGround = new Blend();
		m_blBackGround.Positions = new float[4] { 0f, 0.18f, 0.18f, 1f };
		m_blBackGround.Factors = new float[4] { 0f, 0.7f, 1f, 0.7f };
		m_blBackGroundBlack = new Blend();
		m_blBackGroundBlack.Positions = new float[4] { 0f, 0.72f, 0.72f, 1f };
		m_blBackGroundBlack.Factors = new float[4] { 0f, 0.3f, 0.7f, 1f };
		m_blArrowButton = new Blend();
		m_blArrowButton.Positions = new float[6] { 0f, 0.25f, 0.45f, 0.45f, 0.75f, 1f };
		m_blArrowButton.Factors = new float[6] { 0f, 0.2f, 0f, 1f, 0.6f, 1f };
		m_blArrowButtonSelected = new Blend();
		m_blArrowButtonSelected.Positions = new float[6] { 0f, 0.45f, 0.45f, 0.7f, 0.7f, 1f };
		m_blArrowButtonSelected.Factors = new float[6] { 0.7f, 0.1f, 1f, 0.9f, 0.6f, 0f };
		m_blArrowButtonSelectedSilverBlack = new Blend();
		m_blArrowButtonSelectedSilverBlack.Positions = new float[4] { 0f, 0.45f, 0.45f, 1f };
		m_blArrowButtonSelectedSilverBlack.Factors = new float[4] { 0f, 0.3f, 0.7f, 1f };
		m_blThumbBackGround = new Blend();
		m_blThumbBackGround.Positions = new float[4] { 0f, 0.45f, 0.45f, 1f };
		m_blThumbBackGround.Factors = new float[4] { 1f, 0f, 0f, 1f };
	}

	public Office2007Renderer(ScrollBarCustomDraw parent, ColorTableOffice2007 colorTable)
		: base(parent)
	{
		m_colorTable = colorTable;
		m_hImages = new Bitmaps(10);
	}

	public override void DrawArrowButton(Graphics g, Rectangle rcArrow, ScrollButton type, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (!m_parent.ThemeEnabled)
		{
			base.DrawArrowButton(g, rcArrow, type, state);
		}
		else
		{
			DrawArrowBackground(g, rcArrow, type, state);
		}
	}

	public override void DrawBackground(Graphics g, Rectangle rcBackground, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (!m_parent.ThemeEnabled)
		{
			base.DrawBackground(g, rcBackground, state);
		}
		else if (rcBackground.Width > 0 && rcBackground.Height > 0)
		{
			switch (state)
			{
			case ButtonState.Normal:
				DrawBackground(g, rcBackground);
				break;
			case ButtonState.Pushed:
				DrawPushedBackground(g, rcBackground);
				break;
			}
		}
	}

	public override void DrawThumb(Graphics g, Rectangle rcThumb, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (!m_parent.ThemeEnabled)
		{
			base.DrawThumb(g, rcThumb, state);
		}
		else
		{
			DrawThumbBackground(g, rcThumb, state);
		}
	}

	private void DrawBackground(Graphics g, Rectangle rc)
	{
		Color scrollerGradientBegin = m_colorTable.ScrollerGradientBegin;
		Color scrollerGradientEnd = m_colorTable.ScrollerGradientEnd;
		using (LinearGradientBrush linearGradientBrush = (IsVerticalScrollBar ? GetHorizontalBrush(ref rc, scrollerGradientBegin, scrollerGradientEnd) : GetVerticalBrush(ref rc, scrollerGradientBegin, scrollerGradientEnd)))
		{
			if (m_colorTable is ColorTableOffice2007Black)
			{
				linearGradientBrush.Blend = m_blBackGroundBlack;
			}
			else
			{
				linearGradientBrush.Blend = m_blBackGround;
			}
			g.FillRectangle(linearGradientBrush, rc);
		}
		using Pen pen = new Pen(m_colorTable.ScrollerBorderBegin);
		using Pen pen2 = new Pen(m_colorTable.ScrollerBorderEnd);
		if (IsVerticalScrollBar)
		{
			g.DrawLine(pen, rc.X, rc.Y, rc.X, rc.Y + rc.Bottom);
			g.DrawLine(pen2, rc.Right - 1, rc.Y, rc.Right - 1, rc.Bottom);
		}
		else
		{
			g.DrawLine(pen, rc.X, rc.Y, rc.Right, rc.Y);
			g.DrawLine(pen2, rc.X, rc.Bottom - 1, rc.Right, rc.Bottom - 1);
		}
	}

	private void DrawPushedBackground(Graphics g, Rectangle rc)
	{
		Color thumbPressedBackgroundGradientBegin = m_colorTable.ThumbPressedBackgroundGradientBegin;
		Color thumbPressedBackgroundGradientEnd = m_colorTable.ThumbPressedBackgroundGradientEnd;
		using LinearGradientBrush linearGradientBrush = (IsVerticalScrollBar ? GetHorizontalBrush(ref rc, thumbPressedBackgroundGradientBegin, thumbPressedBackgroundGradientEnd) : GetVerticalBrush(ref rc, thumbPressedBackgroundGradientBegin, thumbPressedBackgroundGradientEnd));
		linearGradientBrush.Blend = m_blThumbBackGround;
		g.FillRectangle(linearGradientBrush, rc);
	}

	private void DrawArrowBackground(Graphics g, Rectangle rc, ScrollButton type, ButtonState state)
	{
		bool flag = true;
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Color color = Color.Empty;
		Color color2 = Color.Empty;
		Blend blend = new Blend();
		switch (state)
		{
		case ButtonState.Normal:
			empty = m_colorTable.ScrollerGradientBegin;
			empty2 = m_colorTable.ScrollerGradientEnd;
			blend = m_blBackGround;
			flag = false;
			break;
		case ButtonState.Inactive:
			empty = m_colorTable.ArrowButtonGradientBegin;
			empty2 = m_colorTable.ArrowButtonGradientEnd;
			color = m_colorTable.ArrowButtonBorderDark;
			color2 = m_colorTable.ArrowButtonBorderLight;
			blend = m_blArrowButton;
			break;
		case ButtonState.Checked:
			empty = m_colorTable.ArrowButtonGradientSelectedBegin;
			empty2 = m_colorTable.ArrowButtonGradientSelectedEnd;
			color = m_colorTable.ArrowButtonBorderSelectedDark;
			color2 = m_colorTable.ArrowButtonBorderSelectedLight;
			blend = ((!(m_colorTable is ColorTableOffice2007Silver) && !(m_colorTable is ColorTableOffice2007Black)) ? m_blArrowButtonSelected : m_blArrowButtonSelectedSilverBlack);
			break;
		case ButtonState.Pushed:
			empty = m_colorTable.ArrowButtonGradientPressedBegin;
			empty2 = m_colorTable.ArrowButtonGradientPressedEnd;
			color = m_colorTable.ArrowButtonBorderPressedDark;
			color2 = m_colorTable.ArrowButtonBorderPressedLight;
			blend = m_blArrowButtonSelected;
			blend = ((!(m_colorTable is ColorTableOffice2007Silver) && !(m_colorTable is ColorTableOffice2007Black)) ? m_blArrowButtonSelected : m_blArrowButtonSelectedSilverBlack);
			break;
		default:
			empty = m_colorTable.ScrollerGradientBegin;
			empty2 = m_colorTable.ScrollerGradientEnd;
			blend = m_blBackGround;
			flag = false;
			break;
		}
		using (LinearGradientBrush linearGradientBrush = (IsVerticalScrollBar ? GetHorizontalBrush(ref rc, empty, empty2) : GetVerticalBrush(ref rc, empty, empty2)))
		{
			linearGradientBrush.Blend = blend;
			g.FillRectangle(linearGradientBrush, rc);
		}
		DrawArrow(g, rc, type, state);
		if (flag)
		{
			g.SmoothingMode = SmoothingMode.AntiAlias;
			using (Pen pen = new Pen(color2))
			{
				g.DrawPolygon(pen, GetRoundedPolygon(Rectangle.Inflate(rc, -1, -1), 1));
			}
			using Pen pen2 = new Pen(color);
			g.DrawPolygon(pen2, GetRoundedPolygon(rc, 1));
			return;
		}
		using Pen pen3 = new Pen(m_colorTable.ScrollerBorderBegin);
		using Pen pen4 = new Pen(m_colorTable.ScrollerBorderEnd);
		if (IsVerticalScrollBar)
		{
			g.DrawLine(pen3, rc.X, rc.Y, rc.X, rc.Y + rc.Bottom);
			g.DrawLine(pen4, rc.Right - 1, rc.Y, rc.Right - 1, rc.Bottom);
		}
		else
		{
			g.DrawLine(pen3, rc.X, rc.Y, rc.Right, rc.Y);
			g.DrawLine(pen4, rc.X, rc.Bottom - 1, rc.Right, rc.Bottom - 1);
		}
	}

	private void DrawThumbBackground(Graphics g, Rectangle rc, ButtonState state)
	{
		bool flag = true;
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Color empty3 = Color.Empty;
		Color empty4 = Color.Empty;
		Blend blend = new Blend();
		switch (state)
		{
		case ButtonState.Normal:
			empty = m_colorTable.ArrowButtonGradientBegin;
			empty2 = m_colorTable.ArrowButtonGradientEnd;
			empty3 = m_colorTable.ArrowButtonBorderDark;
			empty4 = m_colorTable.ArrowButtonBorderLight;
			blend = m_blArrowButton;
			break;
		case ButtonState.Checked:
			empty = m_colorTable.ArrowButtonGradientSelectedBegin;
			empty2 = m_colorTable.ArrowButtonGradientSelectedEnd;
			empty3 = m_colorTable.ArrowButtonBorderSelectedDark;
			empty4 = m_colorTable.ArrowButtonBorderSelectedLight;
			blend = ((!(m_colorTable is ColorTableOffice2007Silver) && !(m_colorTable is ColorTableOffice2007Black)) ? m_blArrowButtonSelected : m_blArrowButtonSelectedSilverBlack);
			break;
		case ButtonState.Pushed:
			empty = m_colorTable.ArrowButtonGradientPressedBegin;
			empty2 = m_colorTable.ArrowButtonGradientPressedEnd;
			empty3 = m_colorTable.ArrowButtonBorderPressedDark;
			empty4 = m_colorTable.ArrowButtonBorderPressedLight;
			blend = ((!(m_colorTable is ColorTableOffice2007Silver) && !(m_colorTable is ColorTableOffice2007Black)) ? m_blArrowButtonSelected : m_blArrowButtonSelectedSilverBlack);
			break;
		default:
			empty = m_colorTable.ArrowButtonGradientBegin;
			empty2 = m_colorTable.ArrowButtonGradientEnd;
			empty3 = m_colorTable.ArrowButtonBorderDark;
			empty4 = m_colorTable.ArrowButtonBorderLight;
			blend = m_blArrowButton;
			break;
		}
		using (LinearGradientBrush linearGradientBrush = (IsVerticalScrollBar ? GetHorizontalBrush(ref rc, empty, empty2) : GetVerticalBrush(ref rc, empty, empty2)))
		{
			linearGradientBrush.Blend = blend;
			g.FillRectangle(linearGradientBrush, rc);
		}
		DrawLines(g, rc, IsVerticalScrollBar);
		if (flag)
		{
			g.SmoothingMode = SmoothingMode.AntiAlias;
			using (Pen pen = new Pen(empty4))
			{
				g.DrawPolygon(pen, GetRoundedPolygon(Rectangle.Inflate(rc, -1, -1), 1));
			}
			using Pen pen2 = new Pen(empty3);
			g.DrawPolygon(pen2, GetRoundedPolygon(rc, 1));
		}
	}

	private void DrawArrow(Graphics g, Rectangle rc, ScrollButton type, ButtonState state)
	{
		int width = rc.Width;
		int height = rc.Height;
		int num = 0;
		int num2 = 0;
		Point empty = Point.Empty;
		switch (type)
		{
		case ScrollButton.Up:
		case ScrollButton.Down:
		{
			num2 = height / 2 + 1;
			num = num2 / 2 + 1;
			Bitmap image = ((type != ScrollButton.Down) ? ((state == ButtonState.Normal) ? GetOfficeUpArrowNormal(num2, num) : GetOfficeUpArrow(num2, num)) : ((state == ButtonState.Normal) ? GetOfficeDownArrowNormal(num2, num) : GetOfficeDownArrow(num2, num)));
			empty.X = rc.Left + (width - num2) / 2;
			empty.Y = rc.Top + (height - num) / 2;
			g.DrawImage(image, empty);
			break;
		}
		case ScrollButton.Left:
		case ScrollButton.Right:
		{
			num = width / 2 + 1;
			num2 = num / 2 + 1;
			Bitmap image = ((type != ScrollButton.Right) ? ((state == ButtonState.Normal) ? GetOfficeLeftArrowNormal(num2, num) : GetOfficeLeftArrow(num2, num)) : ((state == ButtonState.Normal) ? GetOfficeRightArrowNormal(num2, num) : GetOfficeRightArrow(num2, num)));
			empty.X = rc.Left + (width - num2) / 2;
			empty.Y = rc.Top + (height - num) / 2;
			g.DrawImage(image, empty);
			break;
		}
		}
	}

	private void DrawLines(Graphics g, Rectangle rc, bool isVerticalScrollBar)
	{
		Point empty = Point.Empty;
		if (rc.Width > 15 && rc.Height > 15)
		{
			if (isVerticalScrollBar)
			{
				Bitmap officeThumbLinesVertical = GetOfficeThumbLinesVertical();
				empty.X = rc.Left + (rc.Width - 8) / 2;
				empty.Y = rc.Top + (rc.Height - 8) / 2 + 1;
				g.DrawImage(officeThumbLinesVertical, empty);
			}
			else
			{
				Bitmap officeThumbLinesVertical = GetOfficeThumbLinesHorizontal();
				empty.X = rc.Left + (rc.Width - 8) / 2;
				empty.Y = rc.Top + (rc.Height - 8) / 2 + 1;
				g.DrawImage(officeThumbLinesVertical, empty);
			}
		}
	}

	private Brush GetBackgroundBrushHorizontal(int width, Color clBegin, Color clEnd)
	{
		return new LinearGradientBrush(new Rectangle(0, 0, width, 1), clBegin, clEnd, LinearGradientMode.Horizontal);
	}

	private Brush GetBackgroundBrushVertical(int height, Color clBegin, Color clEnd)
	{
		return new LinearGradientBrush(new Rectangle(0, 0, 1, height), clBegin, clEnd, LinearGradientMode.Vertical);
	}

	protected LinearGradientBrush GetVerticalBrush(ref Rectangle rc, Color cl1, Color cl2)
	{
		return GetVerticalBrush(rc.Top, rc.Height, cl1, cl2);
	}

	protected LinearGradientBrush GetVerticalBrush(int top, int height, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(0, top, 1, height);
		return new LinearGradientBrush(rect, cl1, cl2, 90f);
	}

	protected LinearGradientBrush GetHorizontalBrush(ref Rectangle rc, Color cl1, Color cl2)
	{
		Rectangle rect = new Rectangle(rc.Left, rc.Top, rc.Width, 1);
		return new LinearGradientBrush(rect, cl1, cl2, 0f);
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

	protected override Bitmap GetOfficeRightArrow(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiRightArrow] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(0, 0, 1, height);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < width; i++)
				{
					rect.Inflate(0, -1);
					rect.X++;
					region.Union(rect);
				}
				Color arrowGradientBegin = m_colorTable.ArrowGradientBegin;
				Color arrowGradientEnd = m_colorTable.ArrowGradientEnd;
				using Brush brush = GetBackgroundBrushHorizontal(width, arrowGradientBegin, arrowGradientEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiRightArrow] = bitmap;
		}
		return bitmap;
	}

	protected override Bitmap GetOfficeLeftArrow(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiLeftArrow] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(width - 1, 0, 1, height);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < width; i++)
				{
					rect.Inflate(0, -1);
					rect.X--;
					region.Union(rect);
				}
				Color arrowGradientBegin = m_colorTable.ArrowGradientBegin;
				Color arrowGradientEnd = m_colorTable.ArrowGradientEnd;
				using Brush brush = GetBackgroundBrushHorizontal(width, arrowGradientBegin, arrowGradientEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiLeftArrow] = bitmap;
		}
		return bitmap;
	}

	protected override Bitmap GetOfficeDownArrow(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiDownArrow] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(0, 0, width, 1);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < height; i++)
				{
					rect.Inflate(-1, 0);
					rect.Y++;
					region.Union(rect);
				}
				Color arrowGradientBegin = m_colorTable.ArrowGradientBegin;
				Color arrowGradientEnd = m_colorTable.ArrowGradientEnd;
				using Brush brush = GetBackgroundBrushVertical(height, arrowGradientBegin, arrowGradientEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiDownArrow] = bitmap;
		}
		return bitmap;
	}

	protected override Bitmap GetOfficeUpArrow(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiUpArrow] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(0, height - 1, width, 1);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < height; i++)
				{
					rect.Inflate(-1, 0);
					rect.Y--;
					region.Union(rect);
				}
				Color arrowGradientBegin = m_colorTable.ArrowGradientBegin;
				Color arrowGradientEnd = m_colorTable.ArrowGradientEnd;
				using Brush brush = GetBackgroundBrushVertical(height, arrowGradientBegin, arrowGradientEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiUpArrow] = bitmap;
		}
		return bitmap;
	}

	protected Bitmap GetOfficeRightArrowNormal(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiRightArrowNormal] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(0, 0, 1, height);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < width; i++)
				{
					rect.Inflate(0, -1);
					rect.X++;
					region.Union(rect);
				}
				Color arrowGradientNormalBegin = m_colorTable.ArrowGradientNormalBegin;
				Color arrowGradientNormalEnd = m_colorTable.ArrowGradientNormalEnd;
				using Brush brush = GetBackgroundBrushHorizontal(width, arrowGradientNormalBegin, arrowGradientNormalEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiRightArrowNormal] = bitmap;
		}
		return bitmap;
	}

	protected Bitmap GetOfficeLeftArrowNormal(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiLeftArrowNormal] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(width - 1, 0, 1, height);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < width; i++)
				{
					rect.Inflate(0, -1);
					rect.X--;
					region.Union(rect);
				}
				Color arrowGradientNormalBegin = m_colorTable.ArrowGradientNormalBegin;
				Color arrowGradientNormalEnd = m_colorTable.ArrowGradientNormalEnd;
				using Brush brush = GetBackgroundBrushHorizontal(width, arrowGradientNormalBegin, arrowGradientNormalEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiLeftArrowNormal] = bitmap;
		}
		return bitmap;
	}

	protected Bitmap GetOfficeDownArrowNormal(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiDownArrowNormal] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(0, 0, width, 1);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < height; i++)
				{
					rect.Inflate(-1, 0);
					rect.Y++;
					region.Union(rect);
				}
				Color arrowGradientNormalBegin = m_colorTable.ArrowGradientNormalBegin;
				Color arrowGradientNormalEnd = m_colorTable.ArrowGradientNormalEnd;
				using Brush brush = GetBackgroundBrushVertical(height, arrowGradientNormalBegin, arrowGradientNormalEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiDownArrowNormal] = bitmap;
		}
		return bitmap;
	}

	protected Bitmap GetOfficeUpArrowNormal(int width, int height)
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiUpArrowNormal] as Bitmap;
		if (bitmap == null || bitmap.Width != width || bitmap.Height != height)
		{
			bitmap = new Bitmap(width, height);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Rectangle rect = new Rectangle(0, height - 1, width, 1);
				using Region region = new Region(rect);
				region.Union(rect);
				for (int i = 0; i < height; i++)
				{
					rect.Inflate(-1, 0);
					rect.Y--;
					region.Union(rect);
				}
				Color arrowGradientNormalBegin = m_colorTable.ArrowGradientNormalBegin;
				Color arrowGradientNormalEnd = m_colorTable.ArrowGradientNormalEnd;
				using Brush brush = GetBackgroundBrushVertical(height, arrowGradientNormalBegin, arrowGradientNormalEnd);
				graphics.FillRegion(brush, region);
			}
			m_hImages[EIMAGE.eiUpArrowNormal] = bitmap;
		}
		return bitmap;
	}

	protected Bitmap GetOfficeThumbLinesVertical()
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiThumbLinesVertical] as Bitmap;
		if (bitmap == null)
		{
			bitmap = new Bitmap(8, 8);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Point empty = Point.Empty;
				Point pt = new Point(7, 0);
				Color thumbLinesGradientBegin = m_colorTable.ThumbLinesGradientBegin;
				Color thumbLinesGradientEnd = m_colorTable.ThumbLinesGradientEnd;
				using Pen pen = new Pen(GetBackgroundBrushVertical(8, thumbLinesGradientBegin, thumbLinesGradientEnd));
				graphics.DrawLine(pen, empty, pt);
				empty.Y += 2;
				pt.Y += 2;
				graphics.DrawLine(pen, empty, pt);
				empty.Y += 2;
				pt.Y += 2;
				graphics.DrawLine(pen, empty, pt);
				empty.Y += 2;
				pt.Y += 2;
				graphics.DrawLine(pen, empty, pt);
			}
			m_hImages[EIMAGE.eiThumbLinesVertical] = bitmap;
		}
		return bitmap;
	}

	protected Bitmap GetOfficeThumbLinesHorizontal()
	{
		Bitmap bitmap = m_hImages[EIMAGE.eiThumbLinesHorizontal] as Bitmap;
		if (bitmap == null)
		{
			bitmap = new Bitmap(8, 8);
			using (Graphics graphics = Graphics.FromImage(bitmap))
			{
				graphics.Clear(Color.Transparent);
				Point empty = Point.Empty;
				Point pt = new Point(0, 7);
				Color thumbLinesGradientBegin = m_colorTable.ThumbLinesGradientBegin;
				Color thumbLinesGradientEnd = m_colorTable.ThumbLinesGradientEnd;
				using Pen pen = new Pen(GetBackgroundBrushHorizontal(8, thumbLinesGradientBegin, thumbLinesGradientEnd));
				graphics.DrawLine(pen, empty, pt);
				empty.X += 2;
				pt.X += 2;
				graphics.DrawLine(pen, empty, pt);
				empty.X += 2;
				pt.X += 2;
				graphics.DrawLine(pen, empty, pt);
				empty.X += 2;
				pt.X += 2;
				graphics.DrawLine(pen, empty, pt);
			}
			m_hImages[EIMAGE.eiThumbLinesHorizontal] = bitmap;
		}
		return bitmap;
	}
}
