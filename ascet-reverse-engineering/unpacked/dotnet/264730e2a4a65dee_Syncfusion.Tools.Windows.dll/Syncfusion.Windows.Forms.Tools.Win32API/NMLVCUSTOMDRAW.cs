using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct NMLVCUSTOMDRAW
{
	public NMCUSTOMDRAW nmcd;

	public uint clrText;

	public uint clrTextBk;

	public int iSubItem;
}
