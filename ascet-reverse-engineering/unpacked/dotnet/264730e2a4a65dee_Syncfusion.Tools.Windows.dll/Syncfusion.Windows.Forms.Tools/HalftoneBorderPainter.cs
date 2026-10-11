using System;
using System.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class HalftoneBorderPainter : CustomBorderPainter
{
	public override void StartPaint()
	{
	}

	public override void EndPaint()
	{
	}

	public override void DrawFrame(Rectangle rectangle)
	{
		InternalDrawRectangle(new Rectangle(rectangle.Left, rectangle.Top, 4, rectangle.Height));
		InternalDrawRectangle(new Rectangle(rectangle.Left + 4, rectangle.Top, rectangle.Width - 8, 4));
		InternalDrawRectangle(new Rectangle(rectangle.Right - 4, rectangle.Top, 4, rectangle.Height));
		InternalDrawRectangle(new Rectangle(rectangle.Left + 4, rectangle.Bottom - 4, rectangle.Width - 8, 4));
	}

	public override void DrawTabFrame(Rectangle rectangle, DockTabAlignmentStyle alignment)
	{
		int num = 0;
		int num2 = 22;
		int num3 = 0;
		if (alignment == DockTabAlignmentStyle.Top || alignment == DockTabAlignmentStyle.Bottom)
		{
			num = ((rectangle.Width > 100) ? 45 : (rectangle.Width / 2));
			num3 = rectangle.Left + 8;
		}
		else
		{
			num = ((rectangle.Height > 100) ? 45 : (rectangle.Height / 2));
			num3 = rectangle.Top + 8;
		}
		Rectangle rectangle2 = Rectangle.Empty;
		switch (alignment)
		{
		case DockTabAlignmentStyle.Bottom:
			rectangle2 = new Rectangle(num3, rectangle.Bottom - num2 - 4, num, num2 + 4);
			rectangle.Size = new Size(rectangle.Width, rectangle.Height - num2);
			break;
		case DockTabAlignmentStyle.Top:
			rectangle2 = new Rectangle(num3, rectangle.Y, num, num2 + 4);
			rectangle.Size = new Size(rectangle.Width, rectangle.Height - num2);
			rectangle.Location = new Point(rectangle.Location.X, rectangle.Location.Y + num2);
			break;
		case DockTabAlignmentStyle.Left:
			rectangle2 = new Rectangle(rectangle.X, num3, num2 + 4, num);
			rectangle.Size = new Size(rectangle.Width - num2, rectangle.Height);
			rectangle.Location = new Point(rectangle.Location.X + num2, rectangle.Location.Y);
			break;
		case DockTabAlignmentStyle.Right:
			rectangle.Size = new Size(rectangle.Width - num2, rectangle.Height);
			rectangle2 = new Rectangle(rectangle.X + rectangle.Width - 4, num3, num2 + 4, num);
			break;
		}
		DrawFrame(rectangle);
		InternalDrawTabFrameHelper(rectangle2, alignment);
	}

	public override void DrawRectangle(Rectangle rectangle)
	{
		InternalDrawRectangle(rectangle);
	}

	protected IntPtr CreateHalftoneHBRUSH()
	{
		int i = 0;
		short[] array = new short[8];
		for (; i < 8; i++)
		{
			array[i] = (short)(21845 << (i & 1));
		}
		IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.CreateBitmap(8, 8, 1, 1, array);
		Syncfusion.Runtime.InteropServices.NativeMethods.LOGBRUSH lb = new Syncfusion.Runtime.InteropServices.NativeMethods.LOGBRUSH
		{
			lbStyle = 3,
			lbColor = ColorTranslator.ToWin32(Color.Black),
			lbHatch = intPtr
		};
		IntPtr result = Syncfusion.Runtime.InteropServices.NativeMethods.CreateBrushIndirect(ref lb);
		Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(intPtr);
		return result;
	}

	protected void InternalDrawRectangle(Rectangle rcdrag)
	{
		IntPtr windowDC = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowDC(IntPtr.Zero);
		try
		{
			IntPtr hObject = CreateHalftoneHBRUSH();
			IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(windowDC, hObject);
			Syncfusion.Runtime.InteropServices.NativeMethods.PatBlt(windowDC, rcdrag.X, rcdrag.Y, rcdrag.Width, rcdrag.Height, 5898313);
			Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(windowDC, hObject2);
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
		}
		finally
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(IntPtr.Zero, windowDC);
		}
	}

	protected void InternalDrawTabFrameHelper(Rectangle rectangle, DockTabAlignmentStyle alignment)
	{
		Rectangle rcdrag = Rectangle.Empty;
		Rectangle rcdrag2 = Rectangle.Empty;
		Rectangle rcdrag3 = Rectangle.Empty;
		Rectangle rcdrag4 = Rectangle.Empty;
		switch (alignment)
		{
		case DockTabAlignmentStyle.Bottom:
			rcdrag = new Rectangle(rectangle.Left, rectangle.Top + 4, 4, rectangle.Height - 4);
			rcdrag2 = new Rectangle(rectangle.Left + 4, rectangle.Top, rectangle.Width - 8, 4);
			rcdrag3 = new Rectangle(rectangle.Right - 4, rectangle.Top + 4, 4, rectangle.Height - 4);
			rcdrag4 = new Rectangle(rectangle.Left + 4, rectangle.Bottom - 4, rectangle.Width - 8, 4);
			break;
		case DockTabAlignmentStyle.Top:
			rcdrag = new Rectangle(rectangle.Left, rectangle.Top, 4, rectangle.Height - 4);
			rcdrag2 = new Rectangle(rectangle.Left + 4, rectangle.Top, rectangle.Width - 8, 4);
			rcdrag3 = new Rectangle(rectangle.Right - 4, rectangle.Top, 4, rectangle.Height - 4);
			rcdrag4 = new Rectangle(rectangle.Left + 4, rectangle.Bottom - 4, rectangle.Width - 8, 4);
			break;
		case DockTabAlignmentStyle.Right:
			rcdrag = new Rectangle(rectangle.Left, rectangle.Top, 4, rectangle.Height - 4);
			rcdrag2 = new Rectangle(rectangle.Left, rectangle.Top, rectangle.Width - 4, 4);
			rcdrag3 = new Rectangle(rectangle.Right - 4, rectangle.Top, 4, rectangle.Height - 4);
			rcdrag4 = new Rectangle(rectangle.Left + 4, rectangle.Bottom - 4, rectangle.Width - 4, 4);
			break;
		case DockTabAlignmentStyle.Left:
			rcdrag = new Rectangle(rectangle.Left, rectangle.Top + 4, 4, rectangle.Height - 4);
			rcdrag2 = new Rectangle(rectangle.Left, rectangle.Top, rectangle.Width - 4, 4);
			rcdrag3 = new Rectangle(rectangle.Right - 4, rectangle.Top + 4, 4, rectangle.Height - 4);
			rcdrag4 = new Rectangle(rectangle.Left + 4, rectangle.Bottom - 4, rectangle.Width - 4, 4);
			break;
		}
		InternalDrawRectangle(rcdrag);
		InternalDrawRectangle(rcdrag2);
		InternalDrawRectangle(rcdrag3);
		InternalDrawRectangle(rcdrag4);
	}
}
