using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridControllerOptions
{
	None = 0,
	ClickCells = 1,
	DragSelectRowOrColumn = 2,
	OleDataSource = 4,
	OleDropTarget = 8,
	SelectCells = 0x10,
	ExcelLikeSelection = 0x20,
	ResizeCells = 0x40,
	DragColumnHeader = 0x80,
	[Browsable(false)]
	All = 0x7F
}
