using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct TTGETTITLE
{
	public uint dwSize;

	public uint uTitleBitmap;

	public uint cch;

	public IntPtr pszTitle;
}
