using System;
using System.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellInfo
{
	[NonSerialized]
	private GridControlBase gridView;

	[NonSerialized]
	private GridCellRendererBase cellView;

	private int rowIndex;

	private int colIndex;

	public GridControlBase GridView
	{
		[DebuggerStepThrough]
		get
		{
			return gridView;
		}
		[DebuggerStepThrough]
		set
		{
			gridView = value;
		}
	}

	public GridCellRendererBase CellView
	{
		[DebuggerStepThrough]
		get
		{
			return cellView;
		}
		[DebuggerStepThrough]
		set
		{
			cellView = value;
		}
	}

	public int RowIndex
	{
		[DebuggerStepThrough]
		get
		{
			return rowIndex;
		}
		[DebuggerStepThrough]
		set
		{
			rowIndex = value;
		}
	}

	public int ColIndex
	{
		[DebuggerStepThrough]
		get
		{
			return colIndex;
		}
		[DebuggerStepThrough]
		set
		{
			colIndex = value;
		}
	}

	public GridCurrentCellInfo(GridControlBase gridView, GridCellRendererBase cellView, int rowIndex, int colIndex)
	{
		this.gridView = gridView;
		this.cellView = cellView;
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
	}
}
