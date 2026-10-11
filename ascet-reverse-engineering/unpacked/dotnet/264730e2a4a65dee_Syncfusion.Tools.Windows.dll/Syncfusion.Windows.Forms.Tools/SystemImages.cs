using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools;

internal class SystemImages
{
	public const int IMAGE_SIZE = 9;

	private static Color Highlight => Color.FromArgb(160, Color.White);

	public static Image GetImageClose(Color color)
	{
		Bitmap bitmap = new Bitmap(9, 9);
		using Graphics graphics = Graphics.FromImage(bitmap);
		Rectangle rect = new Rectangle(Point.Empty, bitmap.Size);
		graphics.FillRectangle(Brushes.Transparent, rect);
		int num = 3;
		using Region region = new Region(Rectangle.Empty);
		using (GraphicsPath graphicsPath = new GraphicsPath())
		{
			graphicsPath.AddPolygon(new Point[4]
			{
				new Point(0, 1),
				new Point(num, 1),
				new Point(9, 8),
				new Point(9 - num, 8)
			});
			region.Union(graphicsPath);
		}
		using (GraphicsPath graphicsPath2 = new GraphicsPath())
		{
			graphicsPath2.AddPolygon(new Point[4]
			{
				new Point(-1, 8),
				new Point(9 - num, 1),
				new Point(9, 1),
				new Point(num - 1, 8)
			});
			region.Union(graphicsPath2);
		}
		Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(color, Color.White, 160);
		using (Brush brush = new LinearGradientBrush(rect, color, alphaBlendedColor, LinearGradientMode.Vertical))
		{
			graphics.FillRegion(brush, region);
		}
		using Region region2 = region.Clone();
		region2.Translate(0, 1);
		region2.Exclude(region);
		region2.Exclude(new Rectangle(0, 0, 9, 5));
		using Brush brush2 = new SolidBrush(Highlight);
		graphics.FillRegion(brush2, region2);
		return bitmap;
	}

	public static Image GetImageMinimize(Color color)
	{
		Bitmap bitmap = new Bitmap(9, 9);
		using Graphics graphics = Graphics.FromImage(bitmap);
		graphics.FillRectangle(rect: new Rectangle(Point.Empty, bitmap.Size), brush: Brushes.Transparent);
		using (Pen pen = new Pen(color))
		{
			graphics.DrawLine(pen, 1, 6, 7, 6);
		}
		using Pen pen2 = new Pen(Highlight);
		graphics.DrawLine(pen2, 1, 7, 7, 7);
		return bitmap;
	}

	public static Image GetImageMaximize(Color color)
	{
		Bitmap bitmap = new Bitmap(9, 9);
		using Graphics graphics = Graphics.FromImage(bitmap);
		Rectangle rect = new Rectangle(0, 0, 9, 8);
		using Region region = new Region(rect);
		region.Exclude(new Rectangle(1, rect.Height / 2 - 1, rect.Width - 2, rect.Height / 2));
		using (Brush brush = new SolidBrush(color))
		{
			graphics.FillRegion(brush, region);
		}
		using Region region2 = region.Clone();
		region2.Translate(0, 1);
		region2.Exclude(region);
		using Brush brush2 = new SolidBrush(Highlight);
		graphics.FillRegion(brush2, region2);
		return bitmap;
	}

	public static Image GetImageRestore(Color color)
	{
		Bitmap bitmap = new Bitmap(9, 9);
		using Graphics graphics = Graphics.FromImage(bitmap);
		Rectangle rect = new Rectangle(Point.Empty, bitmap.Size);
		graphics.FillRectangle(Brushes.Transparent, rect);
		Rectangle rectangle = new Rectangle(0, 3, 7, 6);
		using Pen pen = new Pen(color);
		using Pen pen2 = new Pen(Highlight);
		graphics.DrawRectangle(pen2, rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		rectangle.Y--;
		graphics.DrawRectangle(pen, rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		graphics.SetClip(new Rectangle(0, rectangle.Y, rectangle.Right, rect.Bottom - rectangle.Y), CombineMode.Exclude);
		rectangle.Y--;
		rectangle.X += 2;
		graphics.DrawRectangle(pen2, rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		rectangle.Y--;
		graphics.DrawRectangle(pen, rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		return bitmap;
	}

	public static Image GetImageHelp()
	{
		Bitmap bitmap = new Bitmap(typeof(RibbonControlAdv).Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Tools.Controls.RibbonControlAdv.Resources.HelpButton.bmp"));
		bitmap.MakeTransparent(Color.Magenta);
		return bitmap;
	}
}
