using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct TOOLINFO
{
	public uint cbSize;

	public uint uFlags;

	public IntPtr hwnd;

	public IntPtr uId;

	public RECT rect;

	public IntPtr hinst;

	public IntPtr lpszText;

	public IntPtr lParam;
}
