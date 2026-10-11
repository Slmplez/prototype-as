using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class UtilFuncs
{
	internal const int SWP_NOSIZE = 1;

	internal const int SWP_NOMOVE = 2;

	internal const int SWP_NOZORDER = 4;

	internal const int SWP_NOACTIVATE = 16;

	internal const int SWP_SHOWWINDOW = 64;

	internal const int SWP_HIDEWINDOW = 128;

	internal const int SWP_DRAWFRAME = 32;

	public static void ShowWindowTopMost(IntPtr handle, Point location, Size size)
	{
		NativeMethods.SetWindowPos(handle, (IntPtr)(-1), location.X, location.Y, size.Width, size.Height, 80);
	}

	public static void SetVisibleNoActivate(Control control, bool visible)
	{
		if (control != null)
		{
			if (visible)
			{
				ShowWindowTopMost(control.Handle, control.Location, control.Size);
				control.Visible = true;
			}
			else
			{
				control.Visible = false;
			}
		}
	}
}
