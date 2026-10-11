using System;
using System.Runtime.InteropServices;
using System.Security;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[SuppressUnmanagedCodeSecurity]
[ComVisible(false)]
[DocumentationExclude]
internal class UnsafeNativeMethods
{
	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int ClientToScreen(IntPtr hWnd, NativeMethods.POINT pt);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int ScreenToClient(IntPtr hWnd, NativeMethods.POINT pt);
}
