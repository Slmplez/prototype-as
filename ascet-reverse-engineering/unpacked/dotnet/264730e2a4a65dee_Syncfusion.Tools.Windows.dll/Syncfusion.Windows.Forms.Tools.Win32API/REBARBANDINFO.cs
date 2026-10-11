using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct REBARBANDINFO
{
	public int cbSize;

	public int fMask;

	public int fStyle;

	public int clrFore;

	public int clrBack;

	public IntPtr lpText;

	public int cch;

	public int iImage;

	public IntPtr hwndChild;

	public int cxMinChild;

	public int cyMinChild;

	public int cx;

	public IntPtr hbmBack;

	public int wID;

	public int cyChild;

	public int cyMaxChild;

	public int cyIntegral;

	public int cxIdeal;

	public int lParam;

	public int cxHeader;
}
