namespace Syncfusion.Windows.Forms.Grid;

public enum GridScrollCurrentCellReason
{
	None = 0,
	GridFocus = 1,
	BeginEdit = 2,
	KeyPress = 4,
	Modified = 8,
	Activate = 16,
	Click = 32,
	MoveTo = 64,
	Error = 128,
	Command = 256,
	ResizedCells = 512,
	FindText = 1024,
	SynchronizeRecord = 1024,
	Any = 4095
}
