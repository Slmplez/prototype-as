using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellInitializeControlTextEventArgs : SyncfusionCancelEventArgs
{
	private int rowIndex;

	private int colIndex;

	private GridStyleInfo style;

	private object cellValue;

	private string controlText;

	[TraceProperty(true)]
	public int RowIndex => rowIndex;

	[TraceProperty(true)]
	public int ColIndex => colIndex;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public object CellValue => cellValue;

	[TraceProperty(true)]
	public string ControlText
	{
		get
		{
			return controlText;
		}
		set
		{
			controlText = value;
		}
	}

	public GridCurrentCellInitializeControlTextEventArgs(int rowIndex, int colIndex, GridStyleInfo style, object cellValue, string controlText)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.style = style;
		this.cellValue = cellValue;
		this.controlText = controlText;
	}
}
