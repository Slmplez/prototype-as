using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridScrollbarMode
{
	DetectIfShared = -1,
	Disabled = 0,
	Enabled = 1,
	Automatic = 2,
	Shared = 4,
	AutoScroll = 8,
	DisableAutoScroll = 0x10
}
