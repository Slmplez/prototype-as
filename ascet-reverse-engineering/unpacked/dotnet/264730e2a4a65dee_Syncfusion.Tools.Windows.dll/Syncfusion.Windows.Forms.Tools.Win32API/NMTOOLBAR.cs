using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct NMTOOLBAR
{
	public NMHDR hdr;

	public int iItem;

	public TBBUTTON tbButton;

	public int cchText;

	public IntPtr pszText;

	public RECT rcButton;
}
