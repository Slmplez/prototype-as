using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridMergeCellsMode
{
	None = 0,
	OnDemandCalculation = 1,
	BeforeDisplayCalculation = 2,
	MergeRowsInColumn = 4,
	MergeColumnsInRow = 8,
	SkipHiddencells = 0x10
}
