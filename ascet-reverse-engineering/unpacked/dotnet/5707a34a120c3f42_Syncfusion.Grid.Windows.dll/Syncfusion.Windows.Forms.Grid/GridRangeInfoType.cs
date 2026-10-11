using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridRangeInfoType
{
	Empty = 0,
	Cells = 1,
	Rows = 2,
	Cols = 4,
	[Browsable(false)]
	Table = 6
}
