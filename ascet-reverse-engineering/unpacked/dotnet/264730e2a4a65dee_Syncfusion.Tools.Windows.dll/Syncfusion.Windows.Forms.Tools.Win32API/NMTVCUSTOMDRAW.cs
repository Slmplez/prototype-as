using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct NMTVCUSTOMDRAW
{
	public NMCUSTOMDRAW nmcd;

	public uint clrText;

	public uint clrTextBk;

	public int iLevel;
}
