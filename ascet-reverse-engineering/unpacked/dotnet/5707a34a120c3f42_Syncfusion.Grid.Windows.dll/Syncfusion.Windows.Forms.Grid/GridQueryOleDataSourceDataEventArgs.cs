using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridQueryOleDataSourceDataEventArgs : SyncfusionHandledEventArgs
{
	private bool ignoreCurrentCell;

	private bool result = true;

	private IDataObject dataObject;

	private GridRangeInfoList rangeList;

	private int dragDropFlags;

	private int rowCount;

	private int colCount;

	[TraceProperty(true)]
	public bool IgnoreCurrentCell
	{
		get
		{
			return ignoreCurrentCell;
		}
		set
		{
			ignoreCurrentCell = value;
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

	public IDataObject DataObject => dataObject;

	[TraceProperty(true)]
	public GridRangeInfoList RangeList
	{
		get
		{
			return rangeList;
		}
		set
		{
			rangeList = value;
		}
	}

	[TraceProperty(true)]
	public int DragDropFlags
	{
		get
		{
			return dragDropFlags;
		}
		set
		{
			dragDropFlags = value;
		}
	}

	[TraceProperty(true)]
	public int RowCount
	{
		get
		{
			return rowCount;
		}
		set
		{
			rowCount = value;
		}
	}

	[TraceProperty(true)]
	public int ColCount
	{
		get
		{
			return colCount;
		}
		set
		{
			colCount = value;
		}
	}

	public GridQueryOleDataSourceDataEventArgs(IDataObject dataObject, GridRangeInfoList rangeList, int dragDropFlags, int rowCount, int colCount)
	{
		this.dataObject = dataObject;
		this.rangeList = rangeList;
		this.dragDropFlags = dragDropFlags;
		this.rowCount = rowCount;
		this.colCount = colCount;
	}
}
