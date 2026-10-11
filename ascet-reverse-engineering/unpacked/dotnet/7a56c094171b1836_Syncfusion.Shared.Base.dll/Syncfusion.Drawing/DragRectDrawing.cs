using System;
using System.Drawing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public class DragRectDrawing
{
	public static void DrawDragFBRectangle(Rectangle rcdrag)
	{
		IntPtr dCEx = NativeMethods.GetDCEx(IntPtr.Zero, IntPtr.Zero, 1026);
		IntPtr hObject = CreateHalftoneHbrush();
		IntPtr hObject2 = NativeMethods.SelectObject(dCEx, hObject);
		NativeMethods.PatBlt(dCEx, rcdrag.X, rcdrag.Y, rcdrag.Width, rcdrag.Height, 5898313);
		NativeMethods.SelectObject(dCEx, hObject2);
		NativeMethods.DeleteObject(hObject);
		NativeMethods.ReleaseDC(IntPtr.Zero, dCEx);
	}

	public static IntPtr CreateHalftoneHbrush()
	{
		int i = 0;
		short[] array = new short[8];
		for (; i < 8; i++)
		{
			array[i] = (short)(21845 << (i & 1));
		}
		IntPtr intPtr = NativeMethods.CreateBitmap(8, 8, 1, 1, array);
		NativeMethods.LOGBRUSH lb = new NativeMethods.LOGBRUSH
		{
			lbColor = ColorTranslator.ToWin32(Color.Black),
			lbStyle = 3,
			lbHatch = intPtr
		};
		IntPtr result = NativeMethods.CreateBrushIndirect(ref lb);
		NativeMethods.DeleteObject(intPtr);
		return result;
	}
}
