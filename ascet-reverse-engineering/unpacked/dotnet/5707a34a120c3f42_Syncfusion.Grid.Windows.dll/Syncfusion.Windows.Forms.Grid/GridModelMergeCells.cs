using System;
using System.Runtime.Serialization;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridModelMergeCells : GridModelBound, ISerializable
{
	[NonSerialized]
	internal bool lockEvaluateMergeCells;

	internal GridMergeCellsMode mergeCellsMode;

	internal GridSpanCellPool mergeSpanCellPoolRowsInColumn;

	internal GridSpanCellPool mergeSpanCellPoolColumnsInRow;

	internal GridDelayedRangePool mergeDelayedRangePool;

	public GridModelMergeCells(GridModel model)
		: base(model)
	{
		model.Options.MergeCellsModeChanged += ModelMergeCellsModeChanged;
		SetMergeCellsMode(model.Options.MergeCellsMode);
	}

	protected GridModelMergeCells(SerializationInfo info, StreamingContext context)
	{
		mergeSpanCellPoolRowsInColumn = (GridSpanCellPool)info.GetValue("PoolRowsInColumn", typeof(GridSpanCellPool));
		mergeSpanCellPoolColumnsInRow = (GridSpanCellPool)info.GetValue("PoolColumnsInRow", typeof(GridSpanCellPool));
		mergeDelayedRangePool = (GridDelayedRangePool)info.GetValue("Delayed", typeof(GridDelayedRangePool));
	}

	private void ModelMergeCellsModeChanged(object sender, EventArgs e)
	{
		SetMergeCellsMode(model.Options.MergeCellsMode);
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("PoolRowsInColumn", mergeSpanCellPoolRowsInColumn);
		info.AddValue("PoolColumnsInRow", mergeSpanCellPoolColumnsInRow);
		info.AddValue("Delayed", mergeDelayedRangePool);
	}

	internal void OnChanged(GridMergeCellsChangedEventArgs e)
	{
		try
		{
			base.Model.RaiseMergeCellsChanged(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public void DelayMergeCells(GridRangeInfo range)
	{
		DelayMergeCellsInt(range, int.MaxValue, int.MaxValue);
	}

	internal GridSpanCellPool GetMergeCellsPoolColumnsInRow()
	{
		return mergeSpanCellPoolColumnsInRow;
	}

	internal GridSpanCellPool GetMergeCellsPoolRowsInColumn()
	{
		return mergeSpanCellPoolRowsInColumn;
	}

	internal void InsertRows(int index, int count)
	{
		if (mergeCellsMode != GridMergeCellsMode.None)
		{
			mergeSpanCellPoolColumnsInRow.InsertRows(index, count);
			mergeSpanCellPoolRowsInColumn.InsertCols(index, count);
		}
	}

	internal void InsertCols(int index, int count)
	{
		if (mergeCellsMode != GridMergeCellsMode.None)
		{
			mergeSpanCellPoolColumnsInRow.InsertCols(index, count);
			mergeSpanCellPoolRowsInColumn.InsertRows(index, count);
		}
	}

	internal void RemoveRows(int from, int to)
	{
		if (mergeCellsMode != GridMergeCellsMode.None)
		{
			mergeSpanCellPoolColumnsInRow.RemoveRows(from, to);
			mergeSpanCellPoolRowsInColumn.RemoveCols(from, to);
		}
	}

	internal void RemoveCols(int from, int to)
	{
		if (mergeCellsMode != GridMergeCellsMode.None)
		{
			mergeSpanCellPoolColumnsInRow.RemoveCols(from, to);
			mergeSpanCellPoolRowsInColumn.RemoveRows(from, to);
		}
	}

	internal void MoveRows(int from, int last, int dest)
	{
		if (mergeCellsMode != GridMergeCellsMode.None)
		{
			mergeSpanCellPoolColumnsInRow.MoveRows(from, last, dest);
			mergeSpanCellPoolRowsInColumn.MoveCols(from, last, dest);
		}
	}

	internal void MoveCols(int from, int last, int dest)
	{
		if (mergeCellsMode != GridMergeCellsMode.None)
		{
			mergeSpanCellPoolColumnsInRow.MoveCols(from, last, dest);
			mergeSpanCellPoolRowsInColumn.MoveRows(from, last, dest);
		}
	}

	internal void SetMergeCellsMode(GridMergeCellsMode nMode)
	{
		_ = base.Model;
		if (nMode != mergeCellsMode)
		{
			mergeCellsMode = nMode;
			mergeDelayedRangePool = new GridDelayedRangePool();
			mergeSpanCellPoolColumnsInRow = null;
			mergeSpanCellPoolRowsInColumn = null;
			switch (nMode & (GridMergeCellsMode.OnDemandCalculation | GridMergeCellsMode.BeforeDisplayCalculation))
			{
			case GridMergeCellsMode.BeforeDisplayCalculation:
				mergeSpanCellPoolRowsInColumn = new GridSpanCellPool();
				mergeSpanCellPoolColumnsInRow = new GridSpanCellPool();
				break;
			case GridMergeCellsMode.OnDemandCalculation:
				mergeSpanCellPoolRowsInColumn = new GridSpanCellPool();
				mergeSpanCellPoolColumnsInRow = new GridSpanCellPool();
				DelayMergeCells(GridRangeInfo.Table());
				break;
			case GridMergeCellsMode.None:
				break;
			}
		}
	}

	internal void DelayMergeCellsInt(GridRangeInfo range, int nMaxRows, int nMaxCols)
	{
		GridModel gridModel = base.Model;
		if ((mergeCellsMode & GridMergeCellsMode.OnDemandCalculation) == 0)
		{
			return;
		}
		GridRangeInfo gridRangeInfo = range.ExpandRange(0, 0, gridModel.RowCount, gridModel.ColCount);
		if (!gridRangeInfo.IsEmpty)
		{
			mergeDelayedRangePool.DelayRange(gridRangeInfo);
			if (nMaxRows != int.MaxValue)
			{
				mergeDelayedRangePool.SetRowCount(nMaxRows);
			}
			if (nMaxCols != int.MaxValue)
			{
				mergeDelayedRangePool.SetColCount(nMaxCols);
			}
		}
	}

	public bool EvaluateMergeCells(GridRangeInfo range)
	{
		GridRangeInfo boundsInfo = range;
		return EvaluateMergeCells(range, ref boundsInfo);
	}

	internal bool EvaluateMergeCells(GridRangeInfo range, ref GridRangeInfo boundsInfo)
	{
		_ = base.Model;
		if (lockEvaluateMergeCells)
		{
			return false;
		}
		return (mergeCellsMode & (GridMergeCellsMode.OnDemandCalculation | GridMergeCellsMode.BeforeDisplayCalculation)) switch
		{
			GridMergeCellsMode.None => false, 
			GridMergeCellsMode.OnDemandCalculation => EvalDelayedMergeCells(range, ref boundsInfo), 
			GridMergeCellsMode.BeforeDisplayCalculation => EvalAllMergeCells(range, ref boundsInfo), 
			_ => false, 
		};
	}

	private bool EvalAllMergeCells(GridRangeInfo range, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		range = range.IntersectRange(gridModel.GridCellsRange);
		bool flag = false;
		for (int i = range.Top; i <= range.Bottom; i++)
		{
			if (gridModel.HideRows[i])
			{
				continue;
			}
			for (int j = range.Left; j <= range.Right; j++)
			{
				if (!gridModel.HideCols[j])
				{
					flag |= MergeCell(i, j, ref boundsInfo);
				}
			}
		}
		return flag;
	}

	internal bool EvaluateMergeCells(GridControlBase pGrid, GridRangeInfo range, int nfr, int nfc, int nTopRow, int nLeftCol, int nLastRow, int nLastCol, ref GridRangeInfo prgBoundary)
	{
		if (!range.IsCells)
		{
			range = range.ExpandRange(0, 0, pGrid.Model.RowCount, pGrid.Model.ColCount);
		}
		GridRangeInfo gridRangeInfo = GridRangeInfo.IntersectRange(GridRangeInfo.InternalCells(0, 0, nfr, nfc), range);
		GridRangeInfo gridRangeInfo2 = GridRangeInfo.IntersectRange(GridRangeInfo.InternalCells(0, nLeftCol, nfr, nLastCol), range);
		GridRangeInfo gridRangeInfo3 = GridRangeInfo.IntersectRange(GridRangeInfo.InternalCells(nTopRow, 0, nLastRow, nfc), range);
		GridRangeInfo gridRangeInfo4 = GridRangeInfo.IntersectRange(GridRangeInfo.InternalCells(nTopRow, nLeftCol, nLastRow, nLastCol), range);
		bool flag = false;
		if (!gridRangeInfo.IsEmpty)
		{
			flag |= pGrid.Model.MergeCells.EvaluateMergeCells(gridRangeInfo, ref prgBoundary);
		}
		if (!gridRangeInfo2.IsEmpty)
		{
			flag |= pGrid.Model.MergeCells.EvaluateMergeCells(gridRangeInfo2, ref prgBoundary);
		}
		if (!gridRangeInfo3.IsEmpty)
		{
			flag |= pGrid.Model.MergeCells.EvaluateMergeCells(gridRangeInfo3, ref prgBoundary);
		}
		if (!gridRangeInfo4.IsEmpty)
		{
			flag |= pGrid.Model.MergeCells.EvaluateMergeCells(gridRangeInfo4, ref prgBoundary);
		}
		return flag;
	}

	private bool EvalDelayedMergeCells(GridRangeInfo range, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		if (!range.IsCells)
		{
			range = range.ExpandRange(0, 0, gridModel.RowCount, gridModel.ColCount);
		}
		bool flag = false;
		GridDelayedRangePool gridDelayedRangePool = mergeDelayedRangePool;
		if (gridDelayedRangePool.EvalRows(range, out var dwColStart, out var dwColEnd))
		{
			for (int i = 0; i < dwColStart.Length; i++)
			{
				int num = i + range.Top;
				if (dwColEnd[i] < 0 || gridModel.Rows.Hidden[num])
				{
					continue;
				}
				for (int j = dwColStart[i]; j <= dwColEnd[i]; j++)
				{
					if (!gridModel.Cols.Hidden[j])
					{
						flag |= MergeCell(num, j, ref boundsInfo);
					}
				}
			}
		}
		return flag;
	}

	internal bool SetMergedCellsRowCol(GridMergeCellDirection mergeDirection, int rowIndex, int colIndex, int toRowIndex, int toColIndex)
	{
		_ = base.Model;
		bool result = false;
		int num = rowIndex;
		int num2 = colIndex;
		if (Find(mergeDirection, rowIndex, colIndex, out var range))
		{
			num = range.Bottom;
			num2 = range.Right;
			result = true;
			ResetMergedCells(mergeDirection, range);
		}
		if (((toRowIndex != rowIndex || toColIndex != colIndex) && StoreMergedCells(mergeDirection, rowIndex, colIndex, toRowIndex, toColIndex)) || num != toRowIndex || num2 != toColIndex)
		{
			OnChanged(new GridMergeCellsChangedEventArgs(range, success: true));
			result = true;
		}
		return result;
	}

	private bool ResetMergedCells(GridMergeCellDirection mergeDirection, GridRangeInfo range)
	{
		_ = base.Model;
		if (mergeCellsMode == GridMergeCellsMode.None)
		{
			return false;
		}
		GridSpanCellPool gridSpanCellPool = ((mergeDirection != GridMergeCellDirection.ColumnsInRow) ? GetMergeCellsPoolRowsInColumn() : GetMergeCellsPoolColumnsInRow());
		return gridSpanCellPool.ResetSpanCells(range);
	}

	private bool StoreMergedCells(GridMergeCellDirection mergeDirection, int rowIndex, int colIndex, int toRowIndex, int toColIndex)
	{
		_ = base.Model;
		if (mergeCellsMode == GridMergeCellsMode.None)
		{
			return false;
		}
		GridRangeInfo range = GridRangeInfo.Cells(rowIndex, colIndex, toRowIndex, toColIndex);
		GridSpanCellPool gridSpanCellPool = ((mergeDirection != GridMergeCellDirection.ColumnsInRow) ? GetMergeCellsPoolRowsInColumn() : GetMergeCellsPoolColumnsInRow());
		try
		{
			gridSpanCellPool.ResetSpanCells(range, checkContainment: true);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			return false;
		}
		return gridSpanCellPool.StoreSpanCells(range);
	}

	public bool Find(GridMergeCellDirection mergeDirection, int rowIndex, int colIndex, out GridRangeInfo range)
	{
		range = GridRangeInfo.Cell(rowIndex, colIndex);
		if (mergeCellsMode == GridMergeCellsMode.None)
		{
			return false;
		}
		if ((mergeDirection & GridMergeCellDirection.ColumnsInRow) != GridMergeCellDirection.None && GetMergeCellsPoolColumnsInRow().GetSpanCellsRowCol(rowIndex, colIndex, out range))
		{
			return true;
		}
		if ((mergeDirection & GridMergeCellDirection.RowsInColumn) != GridMergeCellDirection.None && GetMergeCellsPoolRowsInColumn().GetSpanCellsRowCol(rowIndex, colIndex, out range))
		{
			return true;
		}
		return false;
	}

	public GridRangeInfo FindRange(int rowIndex, int colIndex)
	{
		if (Find(GridMergeCellDirection.Both, rowIndex, colIndex, out var range))
		{
			colIndex = range.Right + 1;
			return range;
		}
		return GridRangeInfo.Empty;
	}

	public GridRangeInfo Merge(GridRangeInfo range)
	{
		_ = base.Model;
		if (mergeCellsMode != GridMergeCellsMode.None)
		{
			GridRangeInfo gridRangeInfo = range;
			for (int i = gridRangeInfo.Top; i <= gridRangeInfo.Bottom; i++)
			{
				for (int j = gridRangeInfo.Left; j <= gridRangeInfo.Right; j++)
				{
					if (Find(GridMergeCellDirection.ColumnsInRow, i, j, out var range2))
					{
						j = range2.Right + 1;
						range = GridRangeInfo.UnionRange(range2, range);
					}
				}
			}
			gridRangeInfo = range;
			for (int k = gridRangeInfo.Top; k <= gridRangeInfo.Bottom; k++)
			{
				for (int l = gridRangeInfo.Left; l <= gridRangeInfo.Right; l++)
				{
					if (Find(GridMergeCellDirection.RowsInColumn, k, l, out var range3))
					{
						l = range3.Right + 1;
						range = GridRangeInfo.UnionRange(range3, range);
					}
				}
			}
		}
		return range;
	}

	internal bool CanMergeCell(GridCellModelBase cellModel, int rowIndex, int colIndex, GridStyleInfo style, GridMergeCellDirection query)
	{
		GridModel gridModel = base.Model;
		if (mergeCellsMode == GridMergeCellsMode.None)
		{
			return false;
		}
		if (gridModel.CoveredRanges.Find(rowIndex, colIndex, out var _))
		{
			return false;
		}
		if (gridModel.HideCols[colIndex] || gridModel.HideRows[rowIndex])
		{
			return false;
		}
		if ((style.MergeCell & query) != GridMergeCellDirection.None)
		{
			return cellModel.OnQueryCanMergeCell(rowIndex, colIndex, style, query);
		}
		return false;
	}

	internal bool CanMergeCells(GridStyleInfo style1, GridStyleInfo style2)
	{
		if ((style1.MergeCell & style2.MergeCell) != GridMergeCellDirection.None)
		{
			GridQueryCanMergeCellsEventArgs e = new GridQueryCanMergeCellsEventArgs(style1, style2, result: false);
			base.Model.RaiseQueryCanMergeCells(e);
			if (e.Handled)
			{
				return e.Result;
			}
			if (style1.CellValue == null || GridUtil.IsEmpty(style1.Text))
			{
				return false;
			}
			return style1.Text == style2.Text;
		}
		return false;
	}

	private bool MergeCell(int rowIndex, int colIndex, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		if (mergeCellsMode == GridMergeCellsMode.None)
		{
			return false;
		}
		GridStyleInfo gridStyleInfo = gridModel[rowIndex, colIndex];
		_ = gridStyleInfo.CellModel;
		int rowCount = base.Model.RowCount;
		int colCount = base.Model.ColCount;
		bool flag = false;
		bool flag2 = false;
		bool flag3 = false;
		bool flag4 = false;
		if ((mergeCellsMode & GridMergeCellsMode.MergeColumnsInRow) != GridMergeCellsMode.None)
		{
			int num = colIndex - 1;
			flag = InternalCheckMergeColumnsInRow(rowIndex, num, colIndex, ref boundsInfo);
			if (flag && !boundsInfo.IsEmpty)
			{
				int num2 = num;
				while (num2 > 0 && InternalCheckMergeColumnsInRow(rowIndex, num2 - 1, num2, ref boundsInfo))
				{
					num2--;
				}
			}
			int num3 = colIndex + 1;
			if (num3 <= gridModel.ColCount)
			{
				flag2 = InternalCheckMergeColumnsInRow(rowIndex, colIndex, num3, ref boundsInfo);
				if (flag2 && !boundsInfo.IsEmpty)
				{
					for (int i = num3; i < colCount && InternalCheckMergeColumnsInRow(rowIndex, i, i + 1, ref boundsInfo); i++)
					{
					}
				}
			}
		}
		if ((mergeCellsMode & GridMergeCellsMode.MergeRowsInColumn) != GridMergeCellsMode.None)
		{
			int num4 = rowIndex - 1;
			flag3 = InternalCheckMergeRowsInColumn(colIndex, num4, rowIndex, ref boundsInfo);
			if (flag3 && !boundsInfo.IsEmpty)
			{
				int num5 = num4;
				while (num5 > 0 && InternalCheckMergeRowsInColumn(colIndex, num5 - 1, num5, ref boundsInfo))
				{
					num5--;
				}
			}
			int num6 = rowIndex + 1;
			if (num6 <= gridModel.RowCount)
			{
				flag4 = InternalCheckMergeRowsInColumn(colIndex, rowIndex, num6, ref boundsInfo);
				if (flag4 && !boundsInfo.IsEmpty)
				{
					for (int j = num6; j < rowCount && InternalCheckMergeRowsInColumn(colIndex, j, j + 1, ref boundsInfo); j++)
					{
					}
				}
			}
		}
		if (!flag && !flag2 && !flag3)
		{
			return flag4;
		}
		return true;
	}

	private bool InternalCheckMergeColumnsInRow(int rowIndex, int colIndex1, int colIndex2, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		bool flag = false;
		GridRangeInfo range = GridRangeInfo.Empty;
		bool flag2 = colIndex1 >= 0 && Find(GridMergeCellDirection.ColumnsInRow, rowIndex, colIndex1, out range);
		GridRangeInfo range2 = GridRangeInfo.Empty;
		bool flag3 = colIndex2 >= 0 && Find(GridMergeCellDirection.ColumnsInRow, rowIndex, colIndex2, out range2);
		GridStyleInfo gridStyleInfo = gridModel[rowIndex, colIndex1];
		GridStyleInfo gridStyleInfo2 = gridModel[rowIndex, colIndex2];
		bool flag4 = colIndex1 >= 0 && CanMergeCell(gridStyleInfo.CellModel, rowIndex, colIndex1, gridStyleInfo, GridMergeCellDirection.ColumnsInRow);
		bool flag5 = colIndex2 >= 0 && CanMergeCell(gridStyleInfo2.CellModel, rowIndex, colIndex2, gridStyleInfo2, GridMergeCellDirection.ColumnsInRow);
		if (flag4 && flag5 && CanMergeCells(gridStyleInfo, gridStyleInfo2))
		{
			if (range2.Right != range.Right)
			{
				if (flag3)
				{
					flag = SetMergedCellsRowCol(GridMergeCellDirection.ColumnsInRow, range2.Top, range2.Left, range2.Top, range2.Left);
				}
				flag |= SetMergedCellsRowCol(GridMergeCellDirection.ColumnsInRow, range.Top, Math.Min(range.Left, range2.Right), range.Bottom, Math.Max(range.Left, range2.Right));
			}
		}
		else
		{
			if (flag2 && range.Right >= colIndex2)
			{
				flag = SetMergedCellsRowCol(GridMergeCellDirection.ColumnsInRow, range2.Top, range2.Left, range2.Top, range2.Left);
				if (colIndex1 > range.Left)
				{
					flag |= SetMergedCellsRowCol(GridMergeCellDirection.ColumnsInRow, range.Top, range.Left, range.Top, colIndex1);
				}
			}
			if (flag3 && range2.Left <= colIndex1)
			{
				if (range.Right != range2.Right)
				{
					flag |= SetMergedCellsRowCol(GridMergeCellDirection.ColumnsInRow, range2.Top, range2.Left, range2.Top, range2.Left);
				}
				if (colIndex2 < range2.Right)
				{
					flag |= SetMergedCellsRowCol(GridMergeCellDirection.ColumnsInRow, range2.Top, colIndex2, range2.Top, range2.Right);
				}
			}
		}
		if (flag)
		{
			if (boundsInfo.IsEmpty)
			{
				boundsInfo = GridRangeInfo.Cell(rowIndex, colIndex2);
			}
			boundsInfo = GridRangeInfo.Cells(Math.Min(boundsInfo.Top, range.Top), Math.Min(boundsInfo.Left, range.Left), Math.Max(boundsInfo.Bottom, range.Bottom), Math.Max(boundsInfo.Right, range2.Right));
		}
		return flag;
	}

	private bool InternalCheckMergeRowsInColumn(int colIndex, int rowIndex1, int rowIndex2, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		bool flag = false;
		GridRangeInfo range = GridRangeInfo.Empty;
		bool flag2 = rowIndex1 >= 0 && Find(GridMergeCellDirection.RowsInColumn, rowIndex1, colIndex, out range);
		GridRangeInfo range2 = GridRangeInfo.Empty;
		bool flag3 = rowIndex2 >= 0 && Find(GridMergeCellDirection.RowsInColumn, rowIndex2, colIndex, out range2);
		GridStyleInfo gridStyleInfo = gridModel[rowIndex1, colIndex];
		GridStyleInfo gridStyleInfo2 = gridModel[rowIndex2, colIndex];
		bool flag4 = rowIndex1 >= 0 && CanMergeCell(gridStyleInfo.CellModel, rowIndex1, colIndex, gridStyleInfo, GridMergeCellDirection.RowsInColumn);
		bool flag5 = rowIndex2 >= 0 && CanMergeCell(gridStyleInfo2.CellModel, rowIndex2, colIndex, gridStyleInfo2, GridMergeCellDirection.RowsInColumn);
		if (flag4 && flag5 && CanMergeCells(gridStyleInfo, gridStyleInfo2))
		{
			if (range2.Bottom != range.Bottom)
			{
				if (flag3)
				{
					flag = SetMergedCellsRowCol(GridMergeCellDirection.RowsInColumn, range2.Top, range2.Left, range2.Top, range2.Left);
				}
				flag |= SetMergedCellsRowCol(GridMergeCellDirection.RowsInColumn, Math.Min(range.Top, range2.Bottom), range.Left, Math.Max(range.Top, range2.Bottom), range.Right);
			}
		}
		else
		{
			if (flag2 && range.Bottom >= rowIndex2)
			{
				flag = SetMergedCellsRowCol(GridMergeCellDirection.RowsInColumn, range2.Top, range2.Left, range2.Top, range2.Left);
				if (rowIndex1 > range.Top)
				{
					flag |= SetMergedCellsRowCol(GridMergeCellDirection.RowsInColumn, range.Top, range.Left, rowIndex1, range.Left);
				}
			}
			if (flag3 && range2.Top <= rowIndex1)
			{
				if (range.Bottom != range2.Bottom)
				{
					flag |= SetMergedCellsRowCol(GridMergeCellDirection.RowsInColumn, range2.Top, range2.Left, range2.Top, range2.Left);
				}
				if (rowIndex2 < range2.Bottom)
				{
					flag |= SetMergedCellsRowCol(GridMergeCellDirection.RowsInColumn, rowIndex2, range2.Left, range2.Bottom, range.Left);
				}
			}
		}
		if (flag)
		{
			if (boundsInfo.IsEmpty)
			{
				boundsInfo = GridRangeInfo.Cell(rowIndex1, colIndex);
			}
			boundsInfo = GridRangeInfo.Cells(Math.Min(boundsInfo.Top, range.Top), Math.Min(boundsInfo.Left, range.Left), Math.Max(boundsInfo.Bottom, range.Bottom), Math.Max(boundsInfo.Right, range2.Right));
		}
		return flag;
	}

	internal static void UpdateMergedCellsRowCol(GridControlBase grid, int rowIndex, int colIndex, int nOldToRow, int nOldToCol)
	{
		int val = rowIndex;
		int val2 = colIndex;
		if (grid.Model.MergeCells.Find(GridMergeCellDirection.Both, rowIndex, colIndex, out var range))
		{
			val = range.Bottom;
			val2 = range.Right;
		}
		grid.InvalidateRange(GridRangeInfo.Cells(rowIndex, colIndex, Math.Max(val, nOldToRow), Math.Max(val2, nOldToCol)));
	}
}
