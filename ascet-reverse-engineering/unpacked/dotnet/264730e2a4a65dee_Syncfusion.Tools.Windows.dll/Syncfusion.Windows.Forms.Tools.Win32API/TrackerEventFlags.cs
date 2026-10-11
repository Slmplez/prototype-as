using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public enum TrackerEventFlags : uint
{
	TME_HOVER = 1u,
	TME_LEAVE = 2u,
	TME_NONCLIENT = 0x10u,
	TME_QUERY = 0x40000000u,
	TME_CANCEL = 0x80000000u
}
