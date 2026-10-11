using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Reflection;
using Syncfusion.Diagnostics;

namespace Syncfusion.Drawing;

public class IconPaint
{
	private Hashtable bitmaps = new Hashtable();

	private string manifestPrefix;

	private Assembly assembly;

	public IconPaint(string manifestPrefix, Assembly ass)
	{
		if (ass == null)
		{
			throw new ArgumentNullException("assembly");
		}
		this.manifestPrefix = manifestPrefix;
		assembly = ass;
	}

	private Bitmap _GetBitmap(string bitmapName)
	{
		Bitmap bitmap = null;
		try
		{
			Stream manifestResourceStream = assembly.GetManifestResourceStream(manifestPrefix + bitmapName);
			bitmap = new Bitmap(manifestResourceStream);
			bitmap?.MakeTransparent();
		}
		catch (Exception e)
		{
			TraceUtil.TraceExceptionCatched(e);
		}
		return bitmap;
	}

	public Bitmap GetBitmap(string bitmapName)
	{
		if (!bitmaps.Contains(bitmapName))
		{
			bitmaps[bitmapName] = _GetBitmap(bitmapName);
		}
		return bitmaps[bitmapName] as Bitmap;
	}

	public Rectangle CenterInRect(Rectangle rect, Size size)
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

	public Rectangle PaintIcon(Graphics g, Rectangle bounds, Point offset, Bitmap bmp, Color foreColor)
	{
		Size size = bmp.Size;
		Rectangle rectangle = CenterInRect(bounds, size);
		rectangle.Offset(offset);
		ColorMap colorMap = new ColorMap();
		colorMap.NewColor = foreColor;
		colorMap.OldColor = Color.Black;
		ImageAttributes imageAttributes = new ImageAttributes();
		imageAttributes.SetRemapTable(new ColorMap[1] { colorMap }, ColorAdjustType.Bitmap);
		g.DrawImage(bmp, rectangle, 0, 0, rectangle.Width, rectangle.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
		return rectangle;
	}

	public void PaintIcon(Graphics g, Rectangle bounds, Point offset, string bitmapName, Color foreColor)
	{
		Bitmap bitmap = GetBitmap(bitmapName);
		if (bitmap != null)
		{
			PaintIcon(g, bounds, offset, bitmap, foreColor);
		}
	}
}
