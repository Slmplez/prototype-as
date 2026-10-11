using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridQueryScrollCellInViewEventArgs : SyncfusionHandledEventArgs
{
	private int rowIndex;

	private int colIndex;

	private GridScrollCurrentCellReason reason;

	private bool result;

	[TraceProperty(true)]
	public GridScrollCurrentCellReason Reason
	{
		get
		{
			return reason;
		}
		set
		{
			reason = value;
		}
	}

	[TraceProperty(true)]
	public int RowIndex
	{
		get
		{
			return rowIndex;
		}
		set
		{
			rowIndex = value;
		}
	}

	[TraceProperty(true)]
	public int ColIndex
	{
		get
		{
			return colIndex;
		}
		set
		{
			colIndex = value;
		}
	}

	[TraceProperty(true)]
	public bool Result
	{
		get
		{
			return result;
		}
		set
		{
			result = value;
		}
	}

	public GridQueryScrollCellInViewEventArgs(int rowIndex, int colIndex, GridScrollCurrentCellReason reason)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.reason = reason;
	}
}
