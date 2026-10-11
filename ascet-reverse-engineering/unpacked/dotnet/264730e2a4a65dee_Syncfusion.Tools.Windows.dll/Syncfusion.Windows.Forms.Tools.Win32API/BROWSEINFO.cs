using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct BROWSEINFO
{
	public IntPtr hwndOwner;

	public IntPtr pidlRoot;

	[MarshalAs(UnmanagedType.LPStr)]
	public string pszDisplayName;

	[MarshalAs(UnmanagedType.LPStr)]
	public string lpszTitle;

	public uint ulFlags;

	[MarshalAs(UnmanagedType.FunctionPtr)]
	public WindowsAPI.BrowseCallbackProc lpfn;

	public int lParam;

	public int iImage;
}
