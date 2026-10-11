using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridSetCurrentCellOptions
{
	None = 0,
	NoSelectRange = 1,
	ScrollInView = 2,
	NoSetFocus = 4,
	SetFocus = 8,
	NoSyncCurrentCell = 0x10,
	ForceRefresh = 0x20,
	BeginEndUpdate = 0x40,
	NoActivate = 0x80
}
