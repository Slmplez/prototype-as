using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
[CLSCompliant(false)]
public struct WINDOWPOS
{
	public IntPtr hwnd;

	public IntPtr hwndInsertAfter;

	public int x;

	public int y;

	public int cx;

	public int cy;

	public SetWindowPosFlags flags;
}
