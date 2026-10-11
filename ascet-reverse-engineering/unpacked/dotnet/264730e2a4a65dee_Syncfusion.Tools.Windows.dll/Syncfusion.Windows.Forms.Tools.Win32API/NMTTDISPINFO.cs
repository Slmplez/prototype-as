using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct NMTTDISPINFO
{
	public NMHDR hdr;

	public IntPtr lpszText;

	[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 80)]
	public string szText;

	public IntPtr hinst;

	public int uFlags;
}
