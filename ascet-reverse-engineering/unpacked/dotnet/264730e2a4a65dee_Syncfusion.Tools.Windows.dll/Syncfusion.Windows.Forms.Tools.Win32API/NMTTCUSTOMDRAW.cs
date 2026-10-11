using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct NMTTCUSTOMDRAW
{
	public NMCUSTOMDRAW nmcd;

	public uint uDrawFlags;
}
