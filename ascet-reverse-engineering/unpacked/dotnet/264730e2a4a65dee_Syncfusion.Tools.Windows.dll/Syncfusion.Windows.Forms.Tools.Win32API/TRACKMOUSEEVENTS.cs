using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct TRACKMOUSEEVENTS
{
	public uint cbSize;

	public uint dwFlags;

	public IntPtr hWnd;

	public uint dwHoverTime;
}
