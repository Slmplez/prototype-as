using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[Flags]
public enum CustomDrawReturnFlags
{
	CDRF_DODEFAULT = 0,
	CDRF_NEWFONT = 2,
	CDRF_SKIPDEFAULT = 4,
	CDRF_NOTIFYPOSTPAINT = 0x10,
	CDRF_NOTIFYITEMDRAW = 0x20,
	CDRF_NOTIFYSUBITEMDRAW = 0x20,
	CDRF_NOTIFYPOSTERASE = 0x40
}
