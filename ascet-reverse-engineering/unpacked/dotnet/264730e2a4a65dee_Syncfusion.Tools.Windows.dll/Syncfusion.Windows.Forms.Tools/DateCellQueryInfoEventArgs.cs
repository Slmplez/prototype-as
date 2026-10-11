using Syncfusion.ComponentModel;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

public class DateCellQueryInfoEventArgs : SyncfusionHandledEventArgs
{
	private int rowIndex;

	private int colIndex;

	private GridStyleInfo style;

	private bool isCurrentCell;

	private bool isOutsideRange;

	private object dateValue;

	[TraceProperty(true)]
	public int RowIndex => rowIndex;

	[TraceProperty(true)]
	public int ColIndex => colIndex;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public object DateValue
	{
		get
		{
			if (dateValue == null)
			{
				return null;
			}
			return dateValue;
		}
	}

	[TraceProperty(true)]
	public bool IsCurrentCell => isCurrentCell;

	[TraceProperty(true)]
	public bool IsOutsideRange => isOutsideRange;

	public DateCellQueryInfoEventArgs(int rowIndex, int colIndex, GridStyleInfo style, object dateValue, bool isCurrentCell, bool isOutsideRange)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.style = style;
		if (dateValue != null)
		{
			this.dateValue = dateValue;
		}
		this.isCurrentCell = isCurrentCell;
		this.isOutsideRange = isOutsideRange;
	}
}
