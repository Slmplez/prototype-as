using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridMergeCellDirection
{
	None = 0,
	ColumnsInRow = 1,
	RowsInColumn = 2,
	[Browsable(false)]
	Both = 3
}
