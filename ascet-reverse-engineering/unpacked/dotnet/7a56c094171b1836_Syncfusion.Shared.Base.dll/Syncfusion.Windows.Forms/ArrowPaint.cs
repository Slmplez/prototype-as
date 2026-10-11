using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

namespace Syncfusion.Windows.Forms;

public sealed class ArrowPaint
{
	[ThreadStatic]
	private static Bitmap starBmp = null;

	private static ColorMap[] colorMap = new ColorMap[1]
	{
		new ColorMap()
	};

	private static string manifestPrefix = SharedBaseAssembly.RootNamespace + ".RecordNavigate.";

	private ArrowPaint()
	{
	}

	private static Bitmap GetBitmap(string bitmapName)
	{
		Bitmap bitmap = null;
		try
		{
			Type typeFromHandle = typeof(ArrowPaint);
			Stream manifestResourceStream = typeFromHandle.Module.Assembly.GetManifestResourceStream(manifestPrefix + bitmapName);
			bitmap = new Bitmap(manifestResourceStream);
			bitmap?.MakeTransparent();
		}
		catch (Exception)
		{
			throw;
		}
		return bitmap;
	}

	private static Bitmap GetStarBitmap()
	{
		if (starBmp == null)
		{
			starBmp = GetBitmap("ArrowPaint.star.bmp");
		}
		return starBmp;
	}

	public static Rectangle CenterInRect(Rectangle rect, Size size)
	{
		int num = 0;
		if (size.Width < rect.Width)
		{
			num = rect.Width - size.Width + 1;
		}
		int num2 = 0;
		if (size.Height < rect.Height)
		{
			num2 = rect.Height - size.Height + 1;
		}
		return new Rectangle(rect.Left + num / 2, rect.Top + num2 / 2, Math.Min(size.Width, rect.Width), Math.Min(size.Height, rect.Height));
	}

	public static Rectangle PaintIcon(Graphics g, Rectangle visualBounds, Point offset, Bitmap bmp, Color foreColor)
	{
		Size size = bmp.Size;
		Rectangle rectangle = CenterInRect(visualBounds, size);
		rectangle.Offset(offset);
		colorMap[0].NewColor = foreColor;
		colorMap[0].OldColor = Color.Black;
		ImageAttributes imageAttributes = new ImageAttributes();
		imageAttributes.SetRemapTable(colorMap, ColorAdjustType.Bitmap);
		g.DrawImage(bmp, rectangle, 0, 0, rectangle.Width, rectangle.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
		return rectangle;
	}

	public static void DrawArrow(Graphics g, Rectangle bounds, ArrowType arrowType, Point offset, Color arrowColor)
	{
		SolidBrush solidBrush = new SolidBrush(arrowColor);
		try
		{
			Rectangle visualBounds = bounds;
			int num = ((visualBounds.Height > 19) ? 8 : 7);
			int num2 = ((visualBounds.Height > 19) ? 9 : 7);
			int num3 = visualBounds.Top + (visualBounds.Height - 9) / 2;
			int y = visualBounds.Top + (visualBounds.Height - num2) / 2;
			num3 += offset.Y;
			switch (arrowType)
			{
			case ArrowType.First:
			{
				int x = visualBounds.Left + (visualBounds.Width - num) / 2 - 1 + offset.X;
				g.FillRectangle(solidBrush, x, y, 1, num2);
				goto case ArrowType.Previous;
			}
			case ArrowType.Previous:
			{
				int x = visualBounds.Left + (visualBounds.Width - num) / 2 - 1 + offset.X;
				g.FillRectangle(solidBrush, x + 2, num3 + 4, 1, 1);
				g.FillRectangle(solidBrush, x + 3, num3 + 3, 1, 3);
				g.FillRectangle(solidBrush, x + 4, num3 + 2, 1, 5);
				g.FillRectangle(solidBrush, x + 5, num3 + 1, 1, 7);
				if (visualBounds.Height > 19)
				{
					g.FillRectangle(solidBrush, x + 6, num3, 1, 9);
				}
				break;
			}
			case ArrowType.Last:
			{
				int x = visualBounds.Right - (visualBounds.Width - num) / 2 + offset.X;
				g.FillRectangle(solidBrush, x, y, 1, num2);
				goto case ArrowType.Next;
			}
			case ArrowType.Next:
			{
				int x = visualBounds.Right - (visualBounds.Width - num) / 2 + offset.X;
				g.FillRectangle(solidBrush, x - 2, num3 + 4, 1, 1);
				g.FillRectangle(solidBrush, x - 3, num3 + 3, 1, 3);
				g.FillRectangle(solidBrush, x - 4, num3 + 2, 1, 5);
				g.FillRectangle(solidBrush, x - 5, num3 + 1, 1, 7);
				if (visualBounds.Height > 19)
				{
					g.FillRectangle(solidBrush, x - 6, num3, 1, 9);
				}
				break;
			}
			case ArrowType.AddNew:
			{
				Bitmap starBitmap = GetStarBitmap();
				if (starBitmap != null)
				{
					PaintIcon(g, visualBounds, offset, starBitmap, arrowColor);
				}
				break;
			}
			}
		}
		finally
		{
			solidBrush.Dispose();
		}
	}
}
