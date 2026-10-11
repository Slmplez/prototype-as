using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
[CLSCompliant(false)]
public struct HDITEM
{
	public uint mask;

	public int cxy;

	public IntPtr pszText;

	public IntPtr hbm;

	public int cchTextMax;

	public int fmt;

	public int lParam;

	public int iImage;

	public int iOrder;
}
