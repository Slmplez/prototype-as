using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct NMCUSTOMDRAW
{
	public NMHDR hdr;

	public int dwDrawStage;

	public IntPtr hdc;

	public RECT rc;

	public int dwItemSpec;

	public int uItemState;

	public int lItemlParam;
}
