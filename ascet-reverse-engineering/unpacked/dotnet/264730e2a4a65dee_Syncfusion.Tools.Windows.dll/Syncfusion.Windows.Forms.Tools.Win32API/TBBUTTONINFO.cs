using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct TBBUTTONINFO
{
	public int cbSize;

	public int dwMask;

	public int idCommand;

	public int iImage;

	public byte fsState;

	public byte fsStyle;

	public short cx;

	public IntPtr lParam;

	public IntPtr pszText;

	public int cchText;
}
