using System;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public sealed class GridPaintSelectCells : GridSubComponent, IGridPaintSelectCells
{
	private GridPaintSelectCellsInternal paintSelectCells;

	public GridPaintSelectCells(GridControlBase grid)
		: base(grid)
	{
		try
		{
			paintSelectCells = new GridPaintSelectCellsInternal();
			paintSelectCells.grid = grid;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			paintSelectCells = null;
		}
	}

	[DocumentationExclude]
	public void UpdateSelectRange(GridRangeInfo range, GridRangeInfoList pOldRangeList)
	{
		if (paintSelectCells != null)
		{
			paintSelectCells.UpdateSelectRange(range, pOldRangeList);
		}
	}

	[DocumentationExclude]
	public void PrepareClearSelection()
	{
		if (paintSelectCells != null)
		{
			paintSelectCells.PrepareClearSelection();
		}
	}

	[DocumentationExclude]
	public void PrepareChangeSelection(GridRangeInfo oldRange, GridRangeInfo newRange)
	{
		if (paintSelectCells != null)
		{
			paintSelectCells.PrepareChangeSelection(oldRange, newRange);
		}
	}
}
