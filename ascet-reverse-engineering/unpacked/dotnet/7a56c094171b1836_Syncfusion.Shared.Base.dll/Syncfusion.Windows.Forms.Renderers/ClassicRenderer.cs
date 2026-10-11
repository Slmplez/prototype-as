using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Renderers;

public class ClassicRenderer : BasicRenderer
{
	private enum EIMAGE
	{
		eiDownArrow,
		eiRightArrow,
		eiLeftArrow,
		eiUpArrow,
		MAX
	}

	private int BORDER_WIDTH = 2;

	private Bitmaps m_hImages;

	protected internal ClassicRenderer(bool isVerticalScrollBar)
		: base(isVerticalScrollBar)
	{
	}

	public ClassicRenderer(ScrollBarCustomDraw parent)
		: base(parent)
	{
		m_hImages = new Bitmaps(4);
	}

	public override void DrawArrowButton(Graphics g, Rectangle rcArrow, ScrollButton type, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (rcArrow.Width <= 0 || rcArrow.Height <= 0)
		{
			return;
		}
		if (!m_parent.ThemeEnabled)
		{
			base.DrawArrowButton(g, rcArrow, type, state);
		}
		else if (m_parent.Enabled)
		{
			if (state == ButtonState.Pushed)
			{
				DrawArrowPushedBackground(g, rcArrow);
				DrawArrow(g, rcArrow, type, state);
			}
			else
			{
				ControlPaint.DrawScrollButton(g, rcArrow, type, ButtonState.Normal);
			}
		}
		else
		{
			ControlPaint.DrawScrollButton(g, rcArrow, type, ButtonState.Inactive);
		}
	}

	public override void DrawBackground(Graphics g, Rectangle rcBackground, ButtonState state)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (rcBackground.Width <= 0 || rcBackground.Height <= 0)
		{
			return;
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
			case ButtonState.Inactive:
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
		if (rcThumb.Width > 0 && rcThumb.Height > 0)
		{
			if (!m_parent.ThemeEnabled)
			{
				base.DrawThumb(g, rcThumb, state);
			}
			else if (!m_parent.Enabled)
			{
				DrawBackground(g, rcThumb);
			}
			else
			{
				DrawThumbArrowBackground(g, rcThumb);
			}
		}
	}

	private void DrawArrow(Graphics g, Rectangle rc, ScrollButton type, ButtonState state)
	{
		int num = rc.Width - 2 * BORDER_WIDTH;
		int num2 = rc.Height - 2 * BORDER_WIDTH;
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		int num6 = 0;
		Point empty = Point.Empty;
		if (state == ButtonState.Pushed)
		{
			switch (type)
			{
			case ScrollButton.Up:
			case ScrollButton.Left:
				num5 = 1;
				num6 = 1;
				break;
			case ScrollButton.Down:
				num5 = 1;
				num6 = 2;
				break;
			default:
				num5 = 2;
				num6 = 1;
				break;
			}
		}
		switch (type)
		{
		case ScrollButton.Up:
		case ScrollButton.Down:
		{
			num4 = num2 / 2 + 1;
			num3 = num4 / 2 + 1;
			Bitmap image = ((type == ScrollButton.Down) ? GetOfficeDownArrow(num4, num3) : GetOfficeUpArrow(num4, num3));
			empty.X = rc.Left + BORDER_WIDTH + (num - num4) / 2 + num5;
			empty.Y = rc.Top + BORDER_WIDTH + (num2 - num3) / 2 + num6;
			g.DrawImage(image, empty);
			break;
		}
		case ScrollButton.Left:
		case ScrollButton.Right:
		{
			num3 = num / 2 + 1;
			num4 = num3 / 2 + 1;
			Bitmap image = ((type == ScrollButton.Right) ? GetOfficeRightArrow(num4, num3) : GetOfficeLeftArrow(num4, num3));
			empty.X = rc.Left + BORDER_WIDTH + (num - num4) / 2 + num5;
			empty.Y = rc.Top + BORDER_WIDTH + (num2 - num3) / 2 + num6;
			g.DrawImage(image, empty);
			break;
		}
		}
	}

	private void DrawArrowPushedBackground(Graphics g, Rectangle rcArrow)
	{
		g.FillRectangle(SystemBrushes.Control, rcArrow);
		rcArrow.Width--;
		rcArrow.Height--;
		g.DrawRectangle(SystemPens.ControlDark, rcArrow);
	}

	private void DrawPushedBackground(Graphics g, Rectangle rcBackground)
	{
		using TextureBrush brush = new TextureBrush(GetBackgroundPressedImage(), WrapMode.Tile);
		g.FillRectangle(brush, rcBackground);
	}

	private void DrawBackground(Graphics g, Rectangle rcBackground)
	{
		using TextureBrush brush = new TextureBrush(GetBackgroundImage(), WrapMode.Tile);
		g.FillRectangle(brush, rcBackground);
	}

	private void DrawThumbArrowBackground(Graphics g, Rectangle rcThumb)
	{
		g.FillRectangle(SystemBrushes.Control, rcThumb);
		g.DrawLine(SystemPens.ControlLight, rcThumb.X, rcThumb.Y, rcThumb.Right - 2, rcThumb.Y);
		g.DrawLine(SystemPens.ControlLight, rcThumb.X, rcThumb.Y, rcThumb.X, rcThumb.Bottom - 2);
		g.DrawLine(SystemPens.ControlDarkDark, rcThumb.X, rcThumb.Bottom - 1, rcThumb.Right - 1, rcThumb.Bottom - 1);
		g.DrawLine(SystemPens.ControlDarkDark, rcThumb.Right - 1, rcThumb.Y, rcThumb.Right - 1, rcThumb.Bottom - 1);
		g.DrawLine(SystemPens.ControlLightLight, rcThumb.X + 1, rcThumb.Y + 1, rcThumb.Right - 3, rcThumb.Y + 1);
		g.DrawLine(SystemPens.ControlLightLight, rcThumb.X + 1, rcThumb.Y + 1, rcThumb.X + 1, rcThumb.Bottom - 3);
		g.DrawLine(SystemPens.ControlDark, rcThumb.X + 1, rcThumb.Bottom - 2, rcThumb.Right - 2, rcThumb.Bottom - 2);
		g.DrawLine(SystemPens.ControlDark, rcThumb.Right - 2, rcThumb.Y + 1, rcThumb.Right - 2, rcThumb.Bottom - 2);
	}

	private Bitmap GetBackgroundImage()
	{
		Bitmap bitmap = new Bitmap(2, 2);
		using Graphics graphics = Graphics.FromImage(bitmap);
		graphics.FillRectangle(SystemBrushes.ControlLightLight, 1, 0, 1, 1);
		graphics.FillRectangle(SystemBrushes.ControlLightLight, 0, 1, 1, 1);
		graphics.FillRectangle(SystemBrushes.ControlLight, 0, 0, 1, 1);
		graphics.FillRectangle(SystemBrushes.ControlLight, 1, 1, 1, 1);
		return bitmap;
	}

	private Bitmap GetBackgroundPressedImage()
	{
		Bitmap bitmap = new Bitmap(2, 2);
		using Graphics graphics = Graphics.FromImage(bitmap);
		graphics.FillRectangle(new SolidBrush(Color.FromArgb(43, 47, 55)), 1, 0, 1, 1);
		graphics.FillRectangle(new SolidBrush(Color.FromArgb(43, 47, 55)), 0, 1, 1, 1);
		graphics.FillRectangle(SystemBrushes.ControlText, 0, 0, 1, 1);
		graphics.FillRectangle(SystemBrushes.ControlText, 1, 1, 1, 1);
		return bitmap;
	}

	protected virtual Bitmap GetOfficeRightArrow(int width, int height)
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
				graphics.FillRegion(SystemBrushes.ControlText, region);
			}
			m_hImages[EIMAGE.eiRightArrow] = bitmap;
		}
		return bitmap;
	}

	protected virtual Bitmap GetOfficeLeftArrow(int width, int height)
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
				graphics.FillRegion(SystemBrushes.ControlText, region);
			}
			m_hImages[EIMAGE.eiLeftArrow] = bitmap;
		}
		return bitmap;
	}

	protected virtual Bitmap GetOfficeDownArrow(int width, int height)
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
				graphics.FillRegion(SystemBrushes.ControlText, region);
			}
			m_hImages[EIMAGE.eiDownArrow] = bitmap;
		}
		return bitmap;
	}

	protected virtual Bitmap GetOfficeUpArrow(int width, int height)
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
				graphics.FillRegion(SystemBrushes.ControlText, region);
			}
			m_hImages[EIMAGE.eiUpArrow] = bitmap;
		}
		return bitmap;
	}
}
