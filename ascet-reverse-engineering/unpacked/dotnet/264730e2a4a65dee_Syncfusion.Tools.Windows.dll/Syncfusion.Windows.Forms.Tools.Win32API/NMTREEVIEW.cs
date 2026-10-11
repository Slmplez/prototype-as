using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct NMTREEVIEW
{
	public NMHDR hdr;

	public uint action;

	public TVITEM itemOld;

	public TVITEM itemNew;

	public POINT ptDrag;
}
