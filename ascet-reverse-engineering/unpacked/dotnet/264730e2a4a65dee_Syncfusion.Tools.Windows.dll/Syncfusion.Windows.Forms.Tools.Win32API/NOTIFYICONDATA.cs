using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
[CLSCompliant(false)]
public struct NOTIFYICONDATA
{
	public uint cbSize;

	public IntPtr hWnd;

	public uint uID;

	public NotifyFlags uFlags;

	public uint uCallbackMessage;

	public IntPtr hIcon;

	[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
	public string szTip;

	public NotifyState dwState;

	public NotifyState dwStateMask;

	[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 256)]
	public string szInfo;

	public uint uTimeoutOrVersion;

	[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 64)]
	public string szInfoTitle;

	public NotifyInfoFlags dwInfoFlags;
}
