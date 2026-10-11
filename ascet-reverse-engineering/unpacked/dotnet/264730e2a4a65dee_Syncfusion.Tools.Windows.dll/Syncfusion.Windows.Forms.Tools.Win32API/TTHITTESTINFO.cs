using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct TTHITTESTINFO
{
	public IntPtr hwnd;

	public POINT pt;

	public TOOLINFO ti;
}
