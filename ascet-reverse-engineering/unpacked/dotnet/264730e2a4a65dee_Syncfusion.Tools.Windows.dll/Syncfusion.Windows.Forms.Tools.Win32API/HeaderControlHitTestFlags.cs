using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public enum HeaderControlHitTestFlags : uint
{
	HHT_NOWHERE = 1u,
	HHT_ONHEADER = 2u,
	HHT_ONDIVIDER = 4u,
	HHT_ONDIVOPEN = 8u,
	HHT_ABOVE = 0x100u,
	HHT_BELOW = 0x200u,
	HHT_TORIGHT = 0x400u,
	HHT_TOLEFT = 0x800u
}
