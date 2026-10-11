using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
[CLSCompliant(false)]
public struct LVITEM
{
	public uint mask;

	public int iItem;

	public int iSubItem;

	public uint state;

	public uint stateMask;

	public IntPtr pszText;

	public int cchTextMax;

	public int iImage;

	public int lParam;

	public int iIndent;
}
