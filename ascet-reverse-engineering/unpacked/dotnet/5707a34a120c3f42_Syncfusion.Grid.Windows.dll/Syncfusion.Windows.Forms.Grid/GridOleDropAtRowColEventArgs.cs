using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridOleDropAtRowColEventArgs : SyncfusionHandledEventArgs
{
	private IDataObject dataObject;

	private int rowIndex;

	private int colIndex;

	private bool result;

	[TraceProperty(true)]
	public IDataObject DataObject
	{
		get
		{
			return dataObject;
		}
		set
		{
			dataObject = value;
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

	public GridOleDropAtRowColEventArgs(IDataObject dataObject, int rowIndex, int colIndex, bool result)
	{
		this.dataObject = dataObject;
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.result = result;
	}
}
