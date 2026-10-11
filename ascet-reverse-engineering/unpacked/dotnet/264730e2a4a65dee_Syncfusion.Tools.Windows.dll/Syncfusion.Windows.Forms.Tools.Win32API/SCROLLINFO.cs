using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
[CLSCompliant(false)]
public struct SCROLLINFO
{
	public uint cbSize;

	public uint fMask;

	public int nMin;

	public int nMax;

	public uint nPage;

	public int nPos;

	public int nTrackPos;
}
