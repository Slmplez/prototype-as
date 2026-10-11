using System;
using System.Drawing;
using System.Globalization;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridUtil
{
	public const ContentAlignment AnyRight = (ContentAlignment)1092;

	public const ContentAlignment AnyBottom = (ContentAlignment)1792;

	public const ContentAlignment AnyCenter = (ContentAlignment)546;

	public const ContentAlignment AnyMiddle = (ContentAlignment)112;

	private GridUtil()
	{
	}

	private static IntPtr CreatePatternHBrush(short[] pattern)
	{
		IntPtr intPtr = NativeMethods.CreateBitmap(8, 8, 1, 1, pattern);
		NativeMethods.LOGBRUSH lb = new NativeMethods.LOGBRUSH
		{
			lbStyle = 3,
			lbHatch = (int)intPtr
		};
		IntPtr result = NativeMethods.CreateBrushIndirect(ref lb);
		NativeMethods.DeleteObject(intPtr);
		return result;
	}

	private static IntPtr CreateHalftoneHBRUSH()
	{
		short[] array = new short[8];
		for (int i = 0; i < 8; i++)
		{
			array[i] = (short)(21845 << (i & 1));
		}
		return CreatePatternHBrush(array);
	}

	private static void DrawDragLine(IntPtr hdc, int x, int y, int width, int height, Rectangle clip)
	{
		Rectangle rectangle = Rectangle.Intersect(clip, new Rectangle(x, y, width, height));
		if (!rectangle.IsEmpty)
		{
			NativeMethods.PatBlt(hdc, rectangle.X, rectangle.Y, rectangle.Width, rectangle.Height, 5898313);
		}
	}

	[DocumentationExclude]
	public static void DrawDragRectHelper(Graphics g, Rectangle rect, Rectangle clip)
	{
		IntPtr hdc = g.GetHdc();
		int num = 2;
		IntPtr hObject = CreateHalftoneHBRUSH();
		IntPtr hObject2 = NativeMethods.SelectObject(hdc, hObject);
		DrawDragLine(hdc, rect.X, rect.Y, rect.Width, num, clip);
		DrawDragLine(hdc, rect.X, rect.Y + num, num, rect.Height - num, clip);
		DrawDragLine(hdc, rect.X + num, rect.Y + rect.Height - num, rect.Width - num * 2, num, clip);
		DrawDragLine(hdc, rect.X + rect.Width - num, rect.Y + num, num, rect.Height - num, clip);
		NativeMethods.SelectObject(hdc, hObject2);
		NativeMethods.DeleteObject(hObject);
		g.ReleaseHdc(hdc);
	}

	[DocumentationExclude]
	public static void Draw3dFrame(Graphics g, int x0, int y0, int x1, int y1, int w, Color rgbTopLeft, Color rgbBottomRight)
	{
		for (int i = 0; i < w; i++)
		{
			Brush brush = new SolidBrush(rgbTopLeft);
			Rectangle rect = Rectangle.FromLTRB(x0, y0, x1, y0 + 1);
			g.FillRectangle(brush, rect);
			rect = Rectangle.FromLTRB(x0, y0, x0 + 1, y1);
			g.FillRectangle(brush, rect);
			brush.Dispose();
			Brush brush2 = new SolidBrush(rgbBottomRight);
			rect = Rectangle.FromLTRB(x0, y1, x1 + 1, y1 + 1);
			g.FillRectangle(brush2, rect);
			rect = Rectangle.FromLTRB(x1, y0, x1 + 1, y1);
			g.FillRectangle(brush2, rect);
			brush2.Dispose();
			if (i < w - 1)
			{
				x0++;
				y0++;
				x1--;
				y1--;
			}
		}
	}

	[DocumentationExclude]
	public static bool IsSet(int value, int flags)
	{
		return (value & flags) != 0;
	}

	[DocumentationExclude]
	public static bool IsNotSet(int value, int flags)
	{
		return (value & flags) == 0;
	}

	[DocumentationExclude]
	public static bool AllSet(int value, int flags)
	{
		return (value & flags) == flags;
	}

	[DocumentationExclude]
	public static void ClearBits(ref int value, int flags)
	{
		value &= ~flags;
	}

	public static int MinMax(int value, int min, int max)
	{
		return Math.Min(Math.Max(value, min), max);
	}

	public static float MinMax(float value, float min, float max)
	{
		return Math.Min(Math.Max(value, min), max);
	}

	public static double MinMax(double value, double min, double max)
	{
		return Math.Min(Math.Max(value, min), max);
	}

	public static Point MinMax(Point point, Point min, Point max)
	{
		point.X = Math.Min(Math.Max(point.X, min.X), max.X);
		point.Y = Math.Min(Math.Max(point.Y, min.Y), max.Y);
		return point;
	}

	public static Point MinMax(Point point, Rectangle bounds)
	{
		return MinMax(point, bounds.Location, new Point(bounds.Right, bounds.Bottom));
	}

	public static Point Min(Point point1, Point point2)
	{
		point1.X = Math.Min(point1.X, point2.X);
		point1.Y = Math.Min(point1.Y, point2.Y);
		return point1;
	}

	public static Point Max(Point point1, Point point2)
	{
		point1.X = Math.Max(point1.X, point2.X);
		point1.Y = Math.Max(point1.Y, point2.Y);
		return point1;
	}

	public static Size Min(Size size1, Size size2)
	{
		size1.Width = Math.Min(size1.Width, size2.Width);
		size1.Height = Math.Min(size1.Height, size2.Height);
		return size1;
	}

	public static Size Max(Size size1, Size size2)
	{
		size1.Width = Math.Max(size1.Width, size2.Width);
		size1.Height = Math.Max(size1.Height, size2.Height);
		return size1;
	}

	public static void OffsetLeft(ref Rectangle r, int dx)
	{
		r.X += dx;
		r.Width = Math.Max(r.Width - dx, 0);
	}

	public static void OffsetTop(ref Rectangle r, int dy)
	{
		r.Y += dy;
		r.Height = Math.Max(r.Height - dy, 0);
	}

	public static void OffsetLeftTop(ref Rectangle r, int dx, int dy)
	{
		r.X += dx;
		r.Width = Math.Max(r.Width - dx, 0);
		r.Y += dy;
		r.Height = Math.Max(r.Height - dy, 0);
	}

	public static void SetLeft(ref Rectangle r, int x)
	{
		r.Width = r.Right - x;
		r.X = x;
	}

	public static void SetRight(ref Rectangle r, int x)
	{
		r.Width = x - r.Left;
	}

	public static void SetTop(ref Rectangle r, int y)
	{
		r.Height = r.Bottom - y;
		r.Y = y;
	}

	public static void OffsetLeft(ref RectangleF r, float dx)
	{
		r.X += dx;
		r.Width = Math.Max(r.Width - dx, 0f);
	}

	public static void OffsetTop(ref RectangleF r, float dy)
	{
		r.Y += dy;
		r.Height = Math.Max(r.Height - dy, 0f);
	}

	public static void OffsetLeftTop(ref RectangleF r, float dx, float dy)
	{
		r.X += dx;
		r.Width = Math.Max(r.Width - dx, 0f);
		r.Y += dy;
		r.Height = Math.Max(r.Height - dy, 0f);
	}

	public static void SetLeft(ref RectangleF r, float x)
	{
		r.Width = r.Right - x;
		r.X = x;
	}

	public static void SetTop(ref RectangleF r, float y)
	{
		r.Height = r.Bottom - y;
		r.Y = y;
	}

	internal static Rectangle ConvertRectangle(RectangleF rect)
	{
		return new Rectangle((int)rect.X, (int)rect.Y, (int)rect.Width, (int)rect.Height);
	}

	internal static void Wait(int milliseconds)
	{
		int num = Environment.TickCount + milliseconds;
		while (Environment.TickCount < num)
		{
		}
	}

	internal static int LOWORD(int n)
	{
		return n & 0xFFFF;
	}

	internal static int HIWORD(int n)
	{
		return (n >> 16) & 0xFFFF;
	}

	public static int Loword(int n)
	{
		return n & 0xFFFF;
	}

	public static int Hiword(int n)
	{
		return (n >> 16) & 0xFFFF;
	}

	internal static int LOWORD(IntPtr n)
	{
		return LOWORD((int)n);
	}

	internal static int HIWORD(IntPtr n)
	{
		return HIWORD((int)n);
	}

	public static int MakeLong(int low, int high)
	{
		return (high << 16) | (low & 0xFFFF);
	}

	internal static int MAKELONG(int low, int high)
	{
		return (high << 16) | (low & 0xFFFF);
	}

	internal static int MAKELPARAM(int low, int high)
	{
		return (high << 16) | (low & 0xFFFF);
	}

	[DocumentationExclude]
	public static int SignedHIWORD(IntPtr n)
	{
		return SignedHIWORD((int)n);
	}

	[DocumentationExclude]
	public static int SignedHIWORD(int n)
	{
		int num = (short)((n >> 16) & 0xFFFF);
		num <<= 16;
		return num >> 16;
	}

	[DocumentationExclude]
	public static int SignedLOWORD(int n)
	{
		int num = (short)(n & 0xFFFF);
		num <<= 16;
		return num >> 16;
	}

	[DocumentationExclude]
	public static int SignedLOWORD(IntPtr n)
	{
		return SignedLOWORD((int)n);
	}

	internal static bool EmptyOrSpace(string str)
	{
		if (str != null)
		{
			return str.Trim().Length == 0;
		}
		return true;
	}

	public static bool IsNotValidNumber(double b)
	{
		if (b >= double.MinValue)
		{
			return !(b <= double.MaxValue);
		}
		return true;
	}

	public static bool IsNotValidNumber(float b)
	{
		if (b >= float.MinValue)
		{
			return !(b <= float.MaxValue);
		}
		return true;
	}

	internal static bool NotEmpty(string str)
	{
		if (str != null)
		{
			return str.Length == 0;
		}
		return false;
	}

	public static bool IsEmpty(string str)
	{
		if (str != null)
		{
			return str.Length == 0;
		}
		return true;
	}

	internal static bool NotEmptyAfterTrim(string str)
	{
		if (str != null)
		{
			return str.Trim().Length > 0;
		}
		return false;
	}

	internal static bool StringEqual(string str1, string str2, CultureInfo culture)
	{
		if (str1 == null && str2 != null)
		{
			return true;
		}
		if (str1 == null || str2 == null)
		{
			return false;
		}
		return string.Compare(str1, str2, ignoreCase: false, culture) == 0;
	}

	public static StringAlignment SwapAlignment(StringAlignment alignment)
	{
		return alignment switch
		{
			StringAlignment.Near => StringAlignment.Far, 
			StringAlignment.Far => StringAlignment.Near, 
			_ => alignment, 
		};
	}

	public static StringAlignment ConvertToStringAlignment(GridVerticalAlignment align)
	{
		return align switch
		{
			GridVerticalAlignment.Bottom => StringAlignment.Far, 
			GridVerticalAlignment.Middle => StringAlignment.Center, 
			_ => StringAlignment.Near, 
		};
	}

	public static StringAlignment ConvertToStringAlignment(GridHorizontalAlignment align)
	{
		return align switch
		{
			GridHorizontalAlignment.Right => StringAlignment.Far, 
			GridHorizontalAlignment.Center => StringAlignment.Center, 
			_ => StringAlignment.Near, 
		};
	}

	public static ContentAlignment ConvertToContentAlignment(GridVerticalAlignment align)
	{
		return align switch
		{
			GridVerticalAlignment.Bottom => (ContentAlignment)1792, 
			GridVerticalAlignment.Middle => (ContentAlignment)112, 
			_ => (ContentAlignment)7, 
		};
	}

	internal static GridBackgroundImageMode ConvertToBackgroundImageMode(PictureBoxSizeMode mode)
	{
		switch (mode)
		{
		case PictureBoxSizeMode.Normal:
		case PictureBoxSizeMode.AutoSize:
			return GridBackgroundImageMode.Normal;
		case PictureBoxSizeMode.CenterImage:
			return GridBackgroundImageMode.CenterImage;
		case PictureBoxSizeMode.StretchImage:
			return GridBackgroundImageMode.StretchImage;
		default:
			return GridBackgroundImageMode.Normal;
		}
	}

	internal static PictureBoxSizeMode ConvertToPictureBoxSizeMode(GridBackgroundImageMode mode)
	{
		return mode switch
		{
			GridBackgroundImageMode.Normal => PictureBoxSizeMode.Normal, 
			GridBackgroundImageMode.CenterImage => PictureBoxSizeMode.CenterImage, 
			GridBackgroundImageMode.StretchImage => PictureBoxSizeMode.StretchImage, 
			_ => PictureBoxSizeMode.Normal, 
		};
	}

	internal static Rectangle GetImageRectangle(Image image, Size clientSize, PictureBoxSizeMode sizeMode)
	{
		Rectangle result = new Rectangle(0, 0, 0, 0);
		if (image != null)
		{
			switch (sizeMode)
			{
			case PictureBoxSizeMode.Normal:
			case PictureBoxSizeMode.AutoSize:
				result.Size = image.Size;
				break;
			case PictureBoxSizeMode.StretchImage:
				result.Size = new Size(clientSize.Width + clientSize.Width / 10, clientSize.Height + clientSize.Width / 10);
				break;
			case PictureBoxSizeMode.CenterImage:
				result.Size = image.Size;
				result.X = (clientSize.Width - result.Width) / 2;
				result.Y = (clientSize.Height - result.Height) / 2;
				break;
			}
		}
		return result;
	}

	public static ContentAlignment ConvertToContentAlignment(GridHorizontalAlignment align)
	{
		return align switch
		{
			GridHorizontalAlignment.Right => (ContentAlignment)1092, 
			GridHorizontalAlignment.Center => (ContentAlignment)546, 
			_ => (ContentAlignment)273, 
		};
	}

	public static Rectangle CenterInRect(Rectangle rect, Size size)
	{
		int num = 0;
		if (size.Width < rect.Width)
		{
			num = rect.Width - size.Width;
		}
		int num2 = 0;
		if (size.Height < rect.Height)
		{
			num2 = rect.Height - size.Height;
		}
		return new Rectangle(rect.Left + num / 2, rect.Top + num2 / 2, Math.Min(size.Width, rect.Width), Math.Min(size.Height, rect.Height));
	}

	public static Point CenterPoint(Rectangle rect)
	{
		return new Point(rect.X + rect.Width / 2, rect.Y + rect.Height / 2);
	}

	public static Form GetParentFrame(Control control)
	{
		if (control is Form || control == null)
		{
			return (Form)control;
		}
		return GetParentFrame(control.Parent);
	}

	public static bool IsActiveControl(Control control)
	{
		bool flag = true;
		for (Control parentControl = GetParentControl(control, typeof(IContainerControl)); parentControl != null; parentControl = GetParentControl(control, typeof(IContainerControl)))
		{
			flag &= ((IContainerControl)parentControl).ActiveControl == control;
			control = parentControl;
		}
		return flag;
	}

	public static Control GetParentControl(Control control, Type type)
	{
		if (type.IsInstanceOfType(control) || control == null)
		{
			return control;
		}
		return GetParentControl(control.Parent, type);
	}

	internal static void Sleep(int ticks)
	{
		Thread.Sleep(new TimeSpan(0, 0, 0, ticks));
	}
}
