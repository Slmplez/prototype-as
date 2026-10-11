using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public class DrawingUtils
{
	private static Rectangle GetDesktopBounds(Control c)
	{
		NativeMethods.RECT lpRect = default(NativeMethods.RECT);
		NativeMethods.GetWindowRect((int)c.Handle, ref lpRect);
		return new Rectangle(lpRect.left, lpRect.top, lpRect.Width, lpRect.Height);
	}

	public static IntPtr NCPaintHelper(Control control, INonClientPaintingSupport ncPaintDelegate, ref Message m)
	{
		if (ncPaintDelegate == null)
		{
			return IntPtr.Zero;
		}
		IntPtr intPtr = IntPtr.Zero;
		Graphics graphics = null;
		IntPtr hWnd = m.HWnd;
		IntPtr intPtr2 = IntPtr.Zero;
		try
		{
			Rectangle desktopBounds = GetDesktopBounds(control);
			Rectangle rectangle = desktopBounds;
			int x = (rectangle.Y = 0);
			rectangle.X = x;
			intPtr = NativeMethods.GetWindowDC(m.HWnd);
			if (intPtr != IntPtr.Zero)
			{
				Rectangle rectangle2;
				if (m.WParam.ToInt32() == 1 || m.WParam == IntPtr.Zero)
				{
					rectangle2 = rectangle;
				}
				else
				{
					Rectangle rect = desktopBounds;
					Point point = new Point(rect.Left, rect.Top);
					NativeMethods.RECT lprc = default(NativeMethods.RECT);
					NativeMethods.GetRgnBox(m.WParam, ref lprc);
					rectangle2 = new Rectangle(lprc.left, lprc.top, lprc.Width, lprc.Height);
					rectangle2.Intersect(rect);
					rectangle2.Offset(-point.X, -point.Y);
				}
				graphics = Graphics.FromHdc(intPtr);
				graphics.Clip = new Region(rectangle2);
				PaintEventArgs e = new PaintEventArgs(graphics, rectangle2);
				intPtr2 = ncPaintDelegate.NonClientPaint(e, rectangle, desktopBounds);
				if (m.WParam.ToInt32() == 1 || m.WParam == IntPtr.Zero)
				{
					m.WParam = intPtr2;
				}
				else
				{
					NativeMethods.CombineRgn(m.WParam, m.WParam, intPtr2, 1);
					NativeMethods.DeleteObject(intPtr2);
					intPtr2 = IntPtr.Zero;
				}
			}
		}
		finally
		{
			graphics?.Dispose();
			if (intPtr != IntPtr.Zero)
			{
				NativeMethods.ReleaseDC(hWnd, intPtr);
			}
		}
		return intPtr2;
	}

	public static void DrawDesignTimeBorder(Graphics g, Control control)
	{
		Rectangle clientRectangle = control.ClientRectangle;
		Color color = ((!((double)control.BackColor.GetBrightness() >= 0.5)) ? ControlPaint.Light(control.BackColor) : ControlPaint.Dark(control.BackColor));
		Pen pen = new Pen(color);
		pen.DashStyle = DashStyle.Dash;
		clientRectangle.Width--;
		clientRectangle.Height--;
		g.DrawRectangle(pen, clientRectangle);
		pen.Dispose();
	}

	public static void DrawShadow(Graphics g, Image iconImage, int left, int top)
	{
		ImageAttributes imageAttributes = new ImageAttributes();
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 0f;
		colorMatrix.Matrix11 = 0f;
		colorMatrix.Matrix22 = 0f;
		colorMatrix.Matrix33 = 0.25f;
		imageAttributes.SetColorMatrix(colorMatrix);
		g.DrawImage(iconImage, new Rectangle(left, top, iconImage.Width, iconImage.Height), 0, 0, iconImage.Width, iconImage.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
	}

	public static void PaintButtonGradient(Graphics g, Rectangle rect, Color clrBorder, Color topFirst, Color topLast, Color bottomFirst, Color bottomLast, Color bottomLine)
	{
		Pen pen = new Pen(clrBorder);
		g.DrawLine(pen, rect.X + 1, rect.Y, rect.Right - 2, rect.Y);
		g.DrawLine(pen, rect.X, rect.Y + 1, rect.X, rect.Bottom - 2);
		g.DrawLine(pen, rect.X + 1, rect.Bottom - 1, rect.Right - 2, rect.Bottom - 1);
		g.DrawLine(pen, rect.Right - 1, rect.Y + 1, rect.Right - 1, rect.Bottom - 2);
		rect.Inflate(-2, -2);
		RectangleF rect2 = new RectangleF(rect.X, rect.Y, rect.Width, (float)rect.Height / 2f);
		RectangleF rect3 = new RectangleF(rect.X, (float)rect.Y + (float)rect.Height / 2f, rect.Width, (float)rect.Height / 2f);
		using (LinearGradientBrush brush = new LinearGradientBrush(rect2, topFirst, topLast, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush, rect2);
		}
		using (LinearGradientBrush brush2 = new LinearGradientBrush(rect3, bottomFirst, bottomLast, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush2, rect3);
		}
		Pen pen2 = new Pen(bottomLine);
		g.DrawLine(pen2, rect3.X - 1f, rect3.Y, rect3.X - 1f, rect3.Bottom);
		g.DrawLine(pen2, rect3.Right, rect3.Y, rect3.Right, rect3.Bottom);
		g.DrawLine(pen2, rect3.X, rect3.Bottom, rect3.Right, rect3.Bottom);
		pen.Dispose();
		pen2.Dispose();
	}

	public static void DrawGrayedImage(Graphics g, Image image, int left, int top)
	{
		DrawGrayedImage(g, image, left, top, 1f);
	}

	public static void DrawGrayedImage(Graphics g, Image image, int left, int top, float transparency)
	{
		Rectangle destRect = new Rectangle(left, top, image.Width, image.Height);
		RectangleF srcRect = new RectangleF(0f, 0f, image.Width, image.Height);
		DrawGrayedImage(g, image, destRect, srcRect, transparency);
	}

	public static void DrawGrayedImage(Graphics g, Image image, Rectangle destRect, RectangleF srcRect)
	{
		DrawGrayedImage(g, image, destRect, srcRect, 1f);
	}

	public static void DrawGrayedImage(Graphics g, Image image, Rectangle destRect, RectangleF srcRect, float transparency)
	{
		ImageAttributes imageAttributes = new ImageAttributes();
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 1f / 3f;
		colorMatrix.Matrix01 = 1f / 3f;
		colorMatrix.Matrix02 = 1f / 3f;
		colorMatrix.Matrix10 = 1f / 3f;
		colorMatrix.Matrix11 = 1f / 3f;
		colorMatrix.Matrix12 = 1f / 3f;
		colorMatrix.Matrix20 = 1f / 3f;
		colorMatrix.Matrix21 = 1f / 3f;
		colorMatrix.Matrix22 = 1f / 3f;
		colorMatrix.Matrix33 = transparency;
		imageAttributes.SetColorMatrix(colorMatrix);
		g.DrawImage(image, destRect, srcRect.X, srcRect.Y, srcRect.Width, srcRect.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
	}

	protected void DrawTransparentImage(Graphics g, Rectangle rect, Image image, float transparency)
	{
		ImageAttributes imageAttributes = new ImageAttributes();
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 1f;
		colorMatrix.Matrix11 = 1f;
		colorMatrix.Matrix22 = 1f;
		colorMatrix.Matrix33 = transparency;
		imageAttributes.SetColorMatrix(colorMatrix);
		g.DrawImage(image, rect, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
	}

	public static GraphicsPath GetRoundedRectangle(Rectangle rect, int radius)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int x = rect.X;
		int y = rect.Y;
		int right = rect.Right;
		int bottom = rect.Bottom;
		Point[] points = new Point[8]
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
		graphicsPath.AddLines(points);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	public static void AdjustForeColorBrightnessForBackColor(ref Color foreColor, Color backColor, float prefContrastLevel)
	{
		float brightness = foreColor.GetBrightness();
		float brightness2 = backColor.GetBrightness();
		float value = brightness - brightness2;
		if (!(Math.Abs(value) < prefContrastLevel))
		{
			return;
		}
		if (brightness2 < 0.5f)
		{
			brightness = brightness2 + prefContrastLevel;
			if (brightness > 1f)
			{
				brightness = 1f;
			}
		}
		else
		{
			brightness = brightness2 - prefContrastLevel;
			if (brightness < 0f)
			{
				brightness = 0f;
			}
		}
		ConvertHSBToRGB(foreColor.GetHue(), foreColor.GetSaturation(), brightness, out var r, out var g, out var b);
		foreColor = Color.FromArgb(foreColor.A, (int)Math.Floor(r * 255f), (int)Math.Floor(g * 255f), (int)Math.Floor(b * 255f));
	}

	public static void DrawImageViaImageList(Graphics g, ImageList il, int index, Rectangle rect)
	{
		if (index < 0 || index >= il.Images.Count)
		{
			throw new ArgumentOutOfRangeException("InvalidArgument");
		}
		Rectangle rectangle = Rectangle.Ceiling(g.ClipBounds);
		if (rectangle.IntersectsWith(rect))
		{
			IntPtr hdc = g.GetHdc();
			try
			{
				NativeMethods.RECT lpRect = default(NativeMethods.RECT);
				NativeMethods.GetClipBox(hdc, ref lpRect);
				NativeMethods.IntersectClipRect(hdc, rectangle.Left, rectangle.Top, rectangle.Right, rectangle.Bottom);
				uint num = 4278190080u;
				NativeMethods.ImageList_DrawEx(il.Handle, index, hdc, rect.X, rect.Y, rect.Width, rect.Height, num, num, 0u);
				NativeMethods.SelectClipRgn(hdc, IntPtr.Zero);
				NativeMethods.IntersectClipRect(hdc, lpRect.left, lpRect.top, lpRect.right, lpRect.bottom);
			}
			finally
			{
				g.ReleaseHdc(hdc);
			}
		}
	}

	public static void DrawImage(Graphics g, Image image, float x, float y, float maxWidth, float maxHeight)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (image == null)
		{
			throw new ArgumentNullException("image");
		}
		if (!(maxWidth <= 0f) && !(maxHeight <= 0f))
		{
			g.DrawImage(image, x, y, maxWidth, maxHeight);
		}
	}

	public static void ConvertHSBToRGB(float h, float s, float v, out float r, out float g, out float b)
	{
		if (s == 0f)
		{
			r = v;
			g = v;
			b = v;
			return;
		}
		float num = h;
		if (h == 360f)
		{
			num = 0f;
		}
		num /= 60f;
		int num2 = (int)Math.Floor(num);
		float num3 = num - (float)num2;
		float num4 = v * (1f - s);
		float num5 = v * (1f - s * num3);
		float num6 = v * (1f - s * (1f - num3));
		switch (num2)
		{
		case 0:
			r = v;
			g = num6;
			b = num4;
			break;
		case 1:
			r = num5;
			g = v;
			b = num4;
			break;
		case 2:
			r = num4;
			g = v;
			b = num6;
			break;
		case 3:
			r = num4;
			g = num5;
			b = v;
			break;
		case 4:
			r = num6;
			g = num4;
			b = v;
			break;
		case 5:
			r = v;
			g = num4;
			b = num5;
			break;
		default:
			r = 0f;
			g = 0f;
			b = 0f;
			break;
		}
	}
}
