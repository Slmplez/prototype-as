using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridSelectionFlags
{
	None = 0,
	Row = 1,
	Column = 2,
	Table = 4,
	Cell = 8,
	Multiple = 0x10,
	Shift = 0x20,
	Keyboard = 0x40,
	AlphaBlend = 0x80,
	MixRangeType = 0x100,
	[Browsable(false)]
	Any = 0xFF
}
