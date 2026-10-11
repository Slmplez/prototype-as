using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct NMTBCUSTOMDRAW
{
	public NMCUSTOMDRAW nmcd;

	public IntPtr hbrMonoDither;

	public IntPtr hbrLines;

	public IntPtr hpenLines;

	public int clrText;

	public int clrMark;

	public int clrTextHighlight;

	public int clrBtnFace;

	public int clrBtnHighlight;

	public int clrHighlightHotTrack;

	public RECT rcText;

	public int nStringBkMode;

	public int nHLStringBkMode;
}
