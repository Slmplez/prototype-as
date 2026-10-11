using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridResizeToFitOptions
{
	None = 0,
	ResizeCoveredCells = 1,
	NoShrinkSize = 2,
	IncludeHeaders = 4,
	IncludeCellsWithinCoveredRange = 8
}
