using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridResizeCellsBehavior
{
	None = 0,
	ResizeAll = 1,
	ResizeSingle = 2,
	InsideGrid = 4,
	IgnoreHeaders = 8,
	OutlineHeaders = 0x10,
	OutlineBounds = 0x20,
	AllowDragOutside = 0x40
}
