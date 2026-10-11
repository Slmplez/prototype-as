using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridRangeOptions
{
	None = 0,
	MergeCoveredCells = 1,
	MergeMergedCells = 2,
	MergeFloatedCells = 4,
	MergeBanneredCells = 8,
	[Browsable(false)]
	MergeAllSpannedCells = 0xF,
	CalculateNonClientArea = 0x10
}
