using System;
using System.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

public sealed class HalftonePainter
{
	private static IntPtr CreateHalftoneHBRUSH()
	{
		short[] array = new short[8];
		for (int i = 0; i < 8; i++)
		{
			array[i] = (short)(21845 << (i & 1));
		}
		IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.CreateBitmap(8, 8, 1, 1, array);
		Syncfusion.Runtime.InteropServices.NativeMethods.LOGBRUSH lb = new Syncfusion.Runtime.InteropServices.NativeMethods.LOGBRUSH
		{
			lbColor = ColorTranslator.ToWin32(Color.Black),
			lbStyle = 3,
			lbHatch = intPtr
		};
		IntPtr result = Syncfusion.Runtime.InteropServices.NativeMethods.CreateBrushIndirect(ref lb);
		Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(intPtr);
		return result;
	}

	public static void DrawRectangle(Rectangle rectangle)
	{
		IntPtr dCEx = Syncfusion.Runtime.InteropServices.NativeMethods.GetDCEx(IntPtr.Zero, IntPtr.Zero, 1026u);
		IntPtr hObject = CreateHalftoneHBRUSH();
		IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(dCEx, hObject);
		Syncfusion.Runtime.InteropServices.NativeMethods.PatBlt(dCEx, rectangle.X, rectangle.Y, rectangle.Width, rectangle.Height, 5898313);
		Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(dCEx, hObject2);
		Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
		Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(IntPtr.Zero, dCEx);
	}
}
