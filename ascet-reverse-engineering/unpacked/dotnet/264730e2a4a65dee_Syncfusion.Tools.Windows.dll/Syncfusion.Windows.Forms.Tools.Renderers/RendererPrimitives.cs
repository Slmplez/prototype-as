using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class RendererPrimitives
{
	private static void PaintBackground(Graphics g, Rectangle rectangle, Color color)
	{
		using Brush brush = new SolidBrush(color);
		g.FillRectangle(brush, rectangle);
	}

	public static void PaintBackground(Graphics g, Rectangle rectangle, Brush brush)
	{
		g.FillRectangle(brush, rectangle);
	}

	public static void PaintBorders(Graphics g, Rectangle rectangle, Brush brush, int width)
	{
		g.FillRectangles(brush, new Rectangle[4]
		{
			new Rectangle(rectangle.Left, rectangle.Top, rectangle.Width, width),
			new Rectangle(rectangle.Right - width, rectangle.Top, width, rectangle.Height),
			new Rectangle(rectangle.Left, rectangle.Bottom - width, rectangle.Width, width),
			new Rectangle(rectangle.Left, rectangle.Top, width, rectangle.Height)
		});
	}

	public static void PaintGripper(Graphics g, Orientation orientation, Point location, Brush foreBrush, Brush backBrush, int dotCount)
	{
		if (orientation == Orientation.Vertical)
		{
			for (int i = 0; i < dotCount; i++)
			{
				g.FillRectangle(backBrush, new Rectangle(location.X + 1, location.Y + 4 * i + 1, 2, 2));
				g.FillRectangle(foreBrush, new Rectangle(location.X, location.Y + 4 * i, 2, 2));
			}
		}
		else
		{
			for (int j = 0; j < dotCount; j++)
			{
				g.FillRectangle(backBrush, new Rectangle(location.X + 4 * j + 1, location.Y + 1, 2, 2));
				g.FillRectangle(foreBrush, new Rectangle(location.X + 4 * j, location.Y, 2, 2));
			}
		}
	}

	public static void PaintGripper(Graphics g, Orientation orientation, Point location, Bitmap bitmap, int dotCount)
	{
		if (orientation == Orientation.Vertical)
		{
			for (int i = 0; i < dotCount; i++)
			{
				g.DrawImage(bitmap, location.X, location.Y + 4 * i);
			}
		}
		else
		{
			for (int j = 0; j < dotCount; j++)
			{
				g.DrawImage(bitmap, location.X + 4 * j, location.Y);
			}
		}
	}

	public static void PaintButtonBackground(Graphics g, Rectangle rectangle, Pen borderPen, Brush backgroundBrush)
	{
		Rectangle rectangle2 = rectangle;
		if (backgroundBrush != null)
		{
			g.FillRectangle(backgroundBrush, rectangle);
		}
		if (borderPen != null)
		{
			g.DrawRectangle(borderPen, rectangle.X, rectangle.Y, rectangle2.Width - 1, rectangle2.Height - 1);
		}
	}

	public static void DrawText(Graphics g, string text, Font font, Brush brush, Rectangle rectangle, StringFormat format)
	{
		g.DrawString(text, font, brush, rectangle, format);
	}

	private static Rectangle GetImageButtonRect(Rectangle rectangle)
	{
		return new Rectangle(rectangle.X + rectangle.Width / 2 - 4, rectangle.Y + rectangle.Height / 2 - 4, 9, 9);
	}

	public static void PaintCustomButtonImage(Graphics g, Image image, Rectangle rect)
	{
		if (image.Height > rect.Height || image.Width > rect.Width)
		{
			g.DrawImage(image, rect);
			return;
		}
		int x = rect.X + (rect.Width - image.Width) / 2;
		int y = rect.Y + (rect.Height - image.Height) / 2;
		g.DrawImageUnscaled(image, x, y);
	}

	public static void PaintCloseButtonImage(Graphics g, Pen pen, Rectangle rectangle)
	{
		Rectangle imageButtonRect = GetImageButtonRect(rectangle);
		g.DrawLine(pen, imageButtonRect.X, imageButtonRect.Y, imageButtonRect.X + 9, imageButtonRect.Y + 9);
		g.DrawLine(pen, imageButtonRect.X, imageButtonRect.Y + 9, imageButtonRect.X + 9, imageButtonRect.Y);
	}

	public static void PaintPinButtonImageVertical(Graphics g, Pen pen, Rectangle rectangle)
	{
		Rectangle imageButtonRect = GetImageButtonRect(rectangle);
		g.DrawLine(pen, imageButtonRect.X + 3, imageButtonRect.Y, imageButtonRect.X + 4, imageButtonRect.Y);
		g.DrawLine(pen, imageButtonRect.X + 2, imageButtonRect.Y, imageButtonRect.X + 2, imageButtonRect.Y + 4);
		g.DrawLine(pen, imageButtonRect.X, imageButtonRect.Y + 5, imageButtonRect.X + 8, imageButtonRect.Y + 5);
		g.DrawLine(pen, imageButtonRect.X + 5, imageButtonRect.Y, imageButtonRect.X + 5, imageButtonRect.Y + 4);
		g.DrawLine(pen, imageButtonRect.X + 6, imageButtonRect.Y, imageButtonRect.X + 6, imageButtonRect.Y + 4);
		g.DrawLine(pen, imageButtonRect.X + 4, imageButtonRect.Y + 6, imageButtonRect.X + 4, imageButtonRect.Y + 8);
	}

	public static void PaintPinButtonImageHorizontal(Graphics g, Pen pen, Rectangle rectangle)
	{
		Rectangle imageButtonRect = GetImageButtonRect(rectangle);
		g.DrawLine(pen, imageButtonRect.X + 8, imageButtonRect.Y + 3, imageButtonRect.X + 8, imageButtonRect.Y + 5);
		g.DrawLine(pen, imageButtonRect.X + 8, imageButtonRect.Y + 2, imageButtonRect.X + 4, imageButtonRect.Y + 2);
		g.DrawLine(pen, imageButtonRect.X + 3, imageButtonRect.Y, imageButtonRect.X + 3, imageButtonRect.Y + 8);
		g.DrawLine(pen, imageButtonRect.X + 8, imageButtonRect.Y + 5, imageButtonRect.X + 4, imageButtonRect.Y + 5);
		g.DrawLine(pen, imageButtonRect.X + 8, imageButtonRect.Y + 6, imageButtonRect.X + 4, imageButtonRect.Y + 6);
		g.DrawLine(pen, imageButtonRect.X + 2, imageButtonRect.Y + 4, imageButtonRect.X, imageButtonRect.Y + 4);
	}

	public static void PaintMenuButtonImage(Graphics g, Pen pen, Rectangle rectangle)
	{
		Rectangle imageButtonRect = GetImageButtonRect(rectangle);
		g.DrawLine(pen, imageButtonRect.X + 1, imageButtonRect.Y + 3, imageButtonRect.X + 8, imageButtonRect.Y + 3);
		g.DrawLine(pen, imageButtonRect.X + 2, imageButtonRect.Y + 4, imageButtonRect.X + 7, imageButtonRect.Y + 4);
		g.DrawLine(pen, imageButtonRect.X + 3, imageButtonRect.Y + 5, imageButtonRect.X + 6, imageButtonRect.Y + 5);
		g.DrawLine(pen, imageButtonRect.X + 4, imageButtonRect.Y + 6, imageButtonRect.X + 5, imageButtonRect.Y + 6);
	}

	public static void PaintMaximizeButtonImage(Graphics g, Pen pen, Rectangle rectangle)
	{
		Rectangle imageButtonRect = GetImageButtonRect(rectangle);
		int height = imageButtonRect.Height;
		int width = imageButtonRect.Width;
		Point location = new Point(imageButtonRect.Left, imageButtonRect.Top);
		Point point = new Point(location.X + width, location.Y);
		Rectangle rect = new Rectangle(location, new Size(width, height));
		g.DrawRectangle(pen, rect);
		g.DrawLine(pen, new Point(location.X, location.Y + 1), new Point(point.X, point.Y + 1));
	}

	public static void PaintRestoreButtonImage(Graphics g, Pen pen, Rectangle rectangle)
	{
		Rectangle imageButtonRect = GetImageButtonRect(rectangle);
		int num = imageButtonRect.Height / 3 * 2;
		int num2 = imageButtonRect.Width / 3 * 2;
		Point location = new Point(imageButtonRect.Left, imageButtonRect.Top);
		Point pt = new Point(imageButtonRect.Right, imageButtonRect.Bottom);
		Point point = new Point(pt.X - num2, pt.Y);
		Point point2 = new Point(pt.X, pt.Y - num);
		Point pt2 = new Point(point.X, point.Y - 2);
		Point pt3 = new Point(point2.X - 3, point2.Y);
		Rectangle rect = new Rectangle(location, new Size(num2, num));
		g.DrawRectangle(pen, rect);
		g.DrawLine(pen, pt, point);
		g.DrawLine(pen, pt, point2);
		g.DrawLine(pen, point, pt2);
		g.DrawLine(pen, point2, pt3);
	}
}
