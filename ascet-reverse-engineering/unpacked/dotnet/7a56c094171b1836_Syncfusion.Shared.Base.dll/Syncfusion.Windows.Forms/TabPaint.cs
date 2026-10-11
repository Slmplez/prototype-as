using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public sealed class TabPaint
{
	private static int TEXT_FLAGS = 34916;

	private TabPaint()
	{
	}

	public static void DrawTab(Graphics g, Rectangle bounds, ImageList imageList, int imageIndex, string label, Brush fillBrush, Color textColor, Font font, bool enabled, int delta, bool overlapping)
	{
		DrawTabButton(g, bounds, label, fillBrush, delta, overlapping);
		bounds.Inflate(-delta, -1);
		DrawTabText(g, bounds, imageList, imageIndex, label, textColor, font, enabled);
	}

	public static void DrawTabButton(Graphics g, Rectangle bounds, string label, Brush fillBrush, int delta, bool overlapping)
	{
		Point[] points = new Point[4]
		{
			new Point(bounds.Left + bounds.Width, bounds.Top),
			new Point(bounds.Left + bounds.Width - delta, bounds.Bottom),
			new Point(bounds.Left + delta, bounds.Bottom),
			new Point(bounds.Left, bounds.Top)
		};
		Point[] points2 = new Point[3]
		{
			new Point(bounds.Left + bounds.Width, bounds.Top),
			new Point(bounds.Left + bounds.Width - delta, bounds.Bottom),
			new Point(bounds.Left + delta + 1, bounds.Bottom)
		};
		g.FillPolygon(fillBrush, points, FillMode.Alternate);
		Pen pen = new Pen(SystemColors.ControlDark, 2f);
		g.DrawLines(pen, points2);
		pen.Dispose();
		Pen windowFrame = SystemPens.WindowFrame;
		g.DrawLines(windowFrame, points);
	}

	public static void DrawTabText(Graphics g, Rectangle bounds, ImageList imageList, int imageIndex, string label, Color textColor, Font font, bool enabled)
	{
		int num = 0;
		SizeF sizeF = TextRenderer.MeasureText(label, font);
		if (imageList != null && imageIndex >= 0)
		{
			num = imageList.ImageSize.Width;
			sizeF.Width += imageList.ImageSize.Width;
			sizeF.Height = Math.Max(imageList.ImageSize.Height, sizeF.Height);
		}
		Rectangle rectangle = bounds;
		rectangle.Inflate(((int)sizeF.Width - bounds.Width) / 2, ((int)sizeF.Height - bounds.Height) / 2);
		Region region = null;
		Rectangle rectangle2 = rectangle;
		rectangle2.Intersect(bounds);
		try
		{
			if (rectangle2 != rectangle)
			{
				region = g.Clip;
				g.IntersectClip(bounds);
			}
			if (enabled)
			{
				Brush brush = new SolidBrush(textColor);
				try
				{
					if (imageIndex >= 0 && imageIndex < imageList.Images.Count)
					{
						imageList.Draw(g, rectangle.Left - 2, rectangle.Top, imageIndex);
						rectangle.X += num;
						rectangle.Width -= num;
					}
					DrawTextInternal(g, font, textColor, rectangle, label);
					return;
				}
				finally
				{
					brush.Dispose();
				}
			}
			ControlPaint.DrawStringDisabled(g, label, font, textColor, rectangle, StringFormat.GenericDefault);
		}
		finally
		{
			if (region != null)
			{
				g.Clip = region;
			}
		}
	}

	private static void DrawTextInternal(Graphics g, Font f, Color color, Rectangle rcBounds, string text)
	{
		IntPtr hrgn = g.Clip.GetHrgn(g);
		IntPtr zero = IntPtr.Zero;
		IntPtr hdc = g.GetHdc();
		IntPtr hObject = f.ToHfont();
		IntPtr hObject2 = NativeMethods.SelectObject(hdc, hObject);
		NativeMethods.GetClipRgn(hdc, zero);
		NativeMethods.SelectClipRgn(hdc, hrgn);
		NativeMethods.SetTextColor(hdc, color.ToArgb() & 0xFFFFFF);
		NativeMethods.SetBkMode(hdc, 1);
		NativeMethods.RECT lpRect = new NativeMethods.RECT(rcBounds);
		NativeMethods.DrawText(hdc, text, text.Length, ref lpRect, TEXT_FLAGS);
		NativeMethods.SelectClipRgn(hdc, zero);
		hObject2 = NativeMethods.SelectObject(hdc, hObject2);
		NativeMethods.DeleteObject(hObject);
		NativeMethods.DeleteObject(hrgn);
		g.ReleaseHdc(hdc);
	}
}
