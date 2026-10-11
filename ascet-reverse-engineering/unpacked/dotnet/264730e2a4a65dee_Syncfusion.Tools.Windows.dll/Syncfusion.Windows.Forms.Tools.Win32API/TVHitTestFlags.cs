using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[Flags]
public enum TVHitTestFlags
{
	TVHT_NOWHERE = 1,
	TVHT_ONITEMICON = 2,
	TVHT_ONITEMLABEL = 4,
	TVHT_ONITEMINDENT = 8,
	TVHT_ONITEMBUTTON = 0x10,
	TVHT_ONITEMRIGHT = 0x20,
	TVHT_ONITEMSTATEICON = 0x40,
	TVHT_ABOVE = 0x100,
	TVHT_BELOW = 0x200,
	TVHT_TORIGHT = 0x400,
	TVHT_TOLEFT = 0x800
}
