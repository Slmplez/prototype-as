using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct NMREBARCHILDSIZE
{
	public NMHDR hdr;

	public uint uBand;

	public uint wID;

	public RECT rcChild;

	public RECT rcBand;
}
