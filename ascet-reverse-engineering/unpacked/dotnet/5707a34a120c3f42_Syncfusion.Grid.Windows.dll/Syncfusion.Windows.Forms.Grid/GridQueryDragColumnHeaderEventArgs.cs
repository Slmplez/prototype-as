using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridQueryDragColumnHeaderEventArgs : SyncfusionEventArgs
{
	private GridControlBase grid;

	private int column;

	private bool allowDrag = true;

	private int insertBeforeColumn;

	private GridQueryDragColumnHeaderReason reason;

	[TraceProperty(true)]
	public GridControlBase Grid => grid;

	[TraceProperty(true)]
	public int Column => column;

	[TraceProperty(true)]
	public int InsertBeforeColumn => insertBeforeColumn;

	[TraceProperty(true)]
	public GridQueryDragColumnHeaderReason Reason
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
	public bool AllowDrag
	{
		get
		{
			return allowDrag;
		}
		set
		{
			allowDrag = value;
		}
	}

	public GridQueryDragColumnHeaderEventArgs(GridControlBase grid, int column, int insertBeforeColumn, GridQueryDragColumnHeaderReason reason)
	{
		this.grid = grid;
		this.column = column;
		this.insertBeforeColumn = insertBeforeColumn;
		this.reason = reason;
	}
}
