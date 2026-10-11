using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRowEventArgs : SyncfusionCancelEventArgs
{
	private int rowIndex;

	private bool isAddNew;

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
	public bool IsAddNew
	{
		get
		{
			return isAddNew;
		}
		set
		{
			isAddNew = value;
		}
	}

	public GridRowEventArgs(int rowIndex)
	{
		this.rowIndex = rowIndex;
	}

	public GridRowEventArgs(int rowIndex, bool isAddNew)
	{
		this.rowIndex = rowIndex;
		this.isAddNew = isAddNew;
	}
}
