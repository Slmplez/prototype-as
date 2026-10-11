using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
[CLSCompliant(false)]
public struct TVITEM
{
	public uint mask;

	public IntPtr hItem;

	public uint state;

	public uint stateMask;

	public IntPtr pszText;

	public int cchTextMax;

	public int iImage;

	public int iSelectedImage;

	public int cChildren;

	public int lParam;
}
