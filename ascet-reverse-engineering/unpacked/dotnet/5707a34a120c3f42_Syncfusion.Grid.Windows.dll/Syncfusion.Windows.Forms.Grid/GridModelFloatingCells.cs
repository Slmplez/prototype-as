using System;
using System.Drawing;
using System.Runtime.Serialization;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridModelFloatingCells : GridModelBound, ISerializable
{
	[DocumentationExclude]
	protected internal class InternalFloatingCellsData
	{
		public int offsetColumn;

		public int[] widths = new int[0];

		public int savedRow;

		public void InitColOffset(int colIndex)
		{
			offsetColumn = Math.Max(256, colIndex) - 256;
		}

		public int GetIndex(int colIndex)
		{
			if (colIndex > offsetColumn)
			{
				return colIndex - offsetColumn;
			}
			return 0;
		}

		public void Reset()
		{
			savedRow = 0;
		}
	}

	[NonSerialized]
	internal InternalFloatingCellsData floatCellData = new InternalFloatingCellsData();

	[NonSerialized]
	internal bool lockEvaluateFloatingCells;

	internal GridFloatCellsMode floatCellsMode;

	internal GridSpanCellPool floatSpanCellPool;

	internal GridDelayedRangePool floatDelayedRangePool;

	public GridModelFloatingCells(GridModel model)
		: base(model)
	{
		model.Options.FloatCellsModeChanged += ModelFloatCellsModeChanged;
		model.DataProviderChanged += model_DataProviderChanged;
		SetFloatCellsMode(model.Options.FloatCellsMode);
	}

	protected GridModelFloatingCells(SerializationInfo info, StreamingContext context)
	{
		floatCellData = new InternalFloatingCellsData();
		floatSpanCellPool = (GridSpanCellPool)info.GetValue("Pool", typeof(GridSpanCellPool));
		floatDelayedRangePool = (GridDelayedRangePool)info.GetValue("Delayed", typeof(GridDelayedRangePool));
	}

	private void model_DataProviderChanged(object sender, EventArgs e)
	{
		GridFloatCellsMode gridFloatCellsMode = floatCellsMode;
		SetFloatCellsMode(GridFloatCellsMode.None);
		SetFloatCellsMode(gridFloatCellsMode);
	}

	private void ModelFloatCellsModeChanged(object sender, EventArgs e)
	{
		SetFloatCellsMode(model.Options.FloatCellsMode);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			SetFloatCellsMode(GridFloatCellsMode.None);
			model.Options.FloatCellsModeChanged -= ModelFloatCellsModeChanged;
			model.DataProviderChanged -= model_DataProviderChanged;
		}
		base.Dispose(disposing);
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Pool", floatSpanCellPool);
		info.AddValue("Delayed", floatDelayedRangePool);
	}

	internal void OnChanged(GridFloatingCellsChangedEventArgs e)
	{
		try
		{
			base.Model.RaiseFloatingCellsChanged(e);
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

	public void DelayFloatCells(GridRangeInfo range)
	{
		DelayFloatCellsInt(range, int.MaxValue);
	}

	internal GridSpanCellPool GetFloatCellsPool()
	{
		return floatSpanCellPool;
	}

	internal void InsertRows(int index, int count)
	{
		if (floatCellsMode != GridFloatCellsMode.None)
		{
			floatSpanCellPool.InsertRows(index, count);
		}
	}

	internal void InsertCols(int index, int count)
	{
		if (floatCellsMode != GridFloatCellsMode.None)
		{
			floatSpanCellPool.InsertCols(index, count);
		}
	}

	internal void RemoveRows(int from, int to)
	{
		if (floatCellsMode != GridFloatCellsMode.None)
		{
			floatSpanCellPool.RemoveRows(from, to);
		}
	}

	internal void RemoveCols(int from, int to)
	{
		if (floatCellsMode != GridFloatCellsMode.None)
		{
			floatSpanCellPool.RemoveCols(from, to);
		}
	}

	internal void MoveRows(int from, int last, int dest)
	{
		if (floatCellsMode != GridFloatCellsMode.None)
		{
			floatSpanCellPool.MoveRows(from, last, dest);
		}
	}

	internal void MoveCols(int from, int last, int dest)
	{
		if (floatCellsMode != GridFloatCellsMode.None)
		{
			floatSpanCellPool.MoveCols(from, last, dest);
		}
	}

	public bool LockEvaluate()
	{
		bool result = lockEvaluateFloatingCells;
		lockEvaluateFloatingCells = true;
		return result;
	}

	public void UnlockEvaluate()
	{
		lockEvaluateFloatingCells = false;
	}

	internal void SetFloatCellsMode(GridFloatCellsMode nMode)
	{
		_ = base.Model;
		if (nMode != floatCellsMode)
		{
			floatCellsMode = nMode;
			floatDelayedRangePool = null;
			floatSpanCellPool = null;
			switch (nMode)
			{
			case GridFloatCellsMode.BeforeDisplayCalculation:
				floatSpanCellPool = new GridSpanCellPool();
				break;
			case GridFloatCellsMode.OnDemandCalculation:
				floatDelayedRangePool = new GridDelayedRangePool();
				floatSpanCellPool = new GridSpanCellPool();
				DelayFloatCells(GridRangeInfo.Table());
				break;
			case GridFloatCellsMode.None:
				break;
			}
		}
	}

	internal void DelayFloatCellsInt(GridRangeInfo range, int nMaxCols)
	{
		GridModel gridModel = base.Model;
		if (floatCellsMode != GridFloatCellsMode.OnDemandCalculation)
		{
			return;
		}
		GridRangeInfo gridRangeInfo = range.IntersectRange(gridModel.GridCellsRange);
		if (!gridRangeInfo.IsEmpty)
		{
			floatDelayedRangePool.DelayRange(gridRangeInfo);
			if (nMaxCols != int.MaxValue)
			{
				floatDelayedRangePool.SetColCount(nMaxCols);
			}
		}
	}

	public bool EvaluateFloatingCells(GridRangeInfo range)
	{
		GridRangeInfo boundsInfo = range;
		return EvaluateFloatingCells(range, ref boundsInfo);
	}

	internal bool EvaluateFloatingCells(GridRangeInfo range, ref GridRangeInfo boundsInfo)
	{
		_ = base.Model;
		if (lockEvaluateFloatingCells)
		{
			return false;
		}
		return floatCellsMode switch
		{
			GridFloatCellsMode.None => false, 
			GridFloatCellsMode.OnDemandCalculation => EvalDelayedFloatCells(range, ref boundsInfo), 
			GridFloatCellsMode.BeforeDisplayCalculation => EvalAllFloatCells(range, ref boundsInfo), 
			_ => false, 
		};
	}

	private bool EvalAllFloatCells(GridRangeInfo range, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		range = range.IntersectRange(gridModel.GridCellsRange);
		bool flag = false;
		floatCellData.InitColOffset(range.Left);
		for (int i = range.Top; i <= range.Bottom; i++)
		{
			if (!gridModel.HideRows[i])
			{
				for (int j = range.Left; j <= range.Right; j++)
				{
					if (!gridModel.HideCols[j])
					{
						flag |= FloatCell(i, j, ref boundsInfo);
					}
				}
			}
			floatCellData.Reset();
		}
		return flag;
	}

	internal bool EvaluateFloatingCells(GridControlBase pGrid, GridRangeInfo range, int nfr, int nfc, int nTopRow, int nLeftCol, int nLastRow, int nLastCol, ref GridRangeInfo prgBoundary)
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
			flag |= pGrid.Model.FloatingCells.EvaluateFloatingCells(gridRangeInfo, ref prgBoundary);
		}
		if (!gridRangeInfo2.IsEmpty)
		{
			flag |= pGrid.Model.FloatingCells.EvaluateFloatingCells(gridRangeInfo2, ref prgBoundary);
		}
		if (!gridRangeInfo3.IsEmpty)
		{
			flag |= pGrid.Model.FloatingCells.EvaluateFloatingCells(gridRangeInfo3, ref prgBoundary);
		}
		if (!gridRangeInfo4.IsEmpty)
		{
			flag |= pGrid.Model.FloatingCells.EvaluateFloatingCells(gridRangeInfo4, ref prgBoundary);
		}
		return flag;
	}

	private bool EvalDelayedFloatCells(GridRangeInfo range, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		range = range.IntersectRange(gridModel.GridCellsRange);
		bool flag = false;
		GridDelayedRangePool gridDelayedRangePool = floatDelayedRangePool;
		if (gridDelayedRangePool.EvalRows(range, out var dwColStart, out var dwColEnd))
		{
			floatCellData.InitColOffset(range.Left);
			for (int i = 0; i < dwColStart.Length; i++)
			{
				int num = i + range.Top;
				if (dwColEnd[i] > 0 && !gridModel.Rows.Hidden[num])
				{
					for (int j = dwColStart[i]; j <= dwColEnd[i]; j++)
					{
						if (!gridModel.Cols.Hidden[j])
						{
							flag |= FloatCell(num, j, ref boundsInfo);
						}
					}
				}
				floatCellData.Reset();
			}
		}
		return flag;
	}

	internal bool SetFloatedCellsRowCol(int rowIndex, int colIndex, int toRowIndex, int toColIndex)
	{
		_ = base.Model;
		bool result = false;
		int num = rowIndex;
		int num2 = colIndex;
		if (Find(rowIndex, colIndex, out var range))
		{
			num = range.Bottom;
			num2 = range.Right;
			result = true;
			ResetFloatedCells(range);
		}
		if (((toRowIndex != rowIndex || toColIndex != colIndex) && StoreFloatedCells(GridRangeInfo.Cells(rowIndex, colIndex, toRowIndex, toColIndex))) || num != toRowIndex || num2 != toColIndex)
		{
			OnChanged(new GridFloatingCellsChangedEventArgs(range, success: true));
			result = true;
		}
		return result;
	}

	private bool ResetFloatedCells(GridRangeInfo range)
	{
		_ = base.Model;
		if (floatCellsMode == GridFloatCellsMode.None)
		{
			return false;
		}
		return GetFloatCellsPool().ResetSpanCells(range);
	}

	private bool StoreFloatedCells(GridRangeInfo range)
	{
		_ = base.Model;
		if (floatCellsMode == GridFloatCellsMode.None)
		{
			return false;
		}
		GridSpanCellPool floatCellsPool = GetFloatCellsPool();
		try
		{
			floatCellsPool.ResetSpanCells(range, checkContainment: true);
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
		return floatCellsPool.StoreSpanCells(range);
	}

	public bool Find(int rowIndex, int colIndex, out GridRangeInfo range)
	{
		GridSpanCellPool floatCellsPool = GetFloatCellsPool();
		range = GridRangeInfo.Cell(rowIndex, colIndex);
		if (floatCellsMode != GridFloatCellsMode.None && floatCellsPool.GetSpanCellsRowCol(rowIndex, colIndex, out range))
		{
			return true;
		}
		return false;
	}

	public GridRangeInfo FindRange(int rowIndex, int colIndex)
	{
		if (Find(rowIndex, colIndex, out var range))
		{
			colIndex = range.Right + 1;
			return range;
		}
		return GridRangeInfo.Empty;
	}

	public GridRangeInfo Merge(GridRangeInfo range)
	{
		_ = base.Model;
		if (floatCellsMode != GridFloatCellsMode.None)
		{
			GridRangeInfo gridRangeInfo = range;
			for (int i = gridRangeInfo.Top; i <= gridRangeInfo.Bottom; i++)
			{
				for (int j = gridRangeInfo.Left; j <= gridRangeInfo.Right; j++)
				{
					if (Find(i, j, out var range2))
					{
						j = range2.Right + 1;
						range = GridRangeInfo.UnionRange(range2, range);
					}
				}
			}
		}
		return range;
	}

	internal bool CanFloatCell(GridCellModelBase cellModel, int rowIndex, int colIndex, GridStyleInfo style, GridQueryFloatCell query)
	{
		GridModel gridModel = base.Model;
		if (floatCellsMode == GridFloatCellsMode.None)
		{
			return false;
		}
		if (gridModel.HideCols[colIndex] || gridModel.HideRows[rowIndex])
		{
			return false;
		}
		if (gridModel.CoveredRanges.Find(rowIndex, colIndex, out var range))
		{
			return false;
		}
		if (gridModel.MergeCells.Find(GridMergeCellDirection.Both, rowIndex, colIndex, out range))
		{
			return false;
		}
		if (query == GridQueryFloatCell.FloatCell)
		{
			if (style.FloatCell)
			{
				return cellModel.OnQueryCanFloatCell(rowIndex, colIndex, style, query);
			}
			return false;
		}
		if (colIndex != gridModel.Cols.FrozenCount + 1 && style.FloodCell)
		{
			return cellModel.OnQueryCanFloatCell(rowIndex, colIndex, style, query);
		}
		return false;
	}

	private bool FloatCell(int rowIndex, int colIndex, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		if (floatCellsMode == GridFloatCellsMode.None)
		{
			return false;
		}
		if (colIndex <= gridModel.Cols.HeaderCount || rowIndex <= gridModel.Rows.HeaderCount)
		{
			return false;
		}
		GridStyleInfo gridStyleInfo = null;
		gridStyleInfo = gridModel[rowIndex, colIndex];
		GridCellModelBase cellModel = gridStyleInfo.CellModel;
		bool flag = CanFloatCell(cellModel, rowIndex, colIndex, gridStyleInfo, GridQueryFloatCell.FloatCell);
		int colIndex2 = colIndex - 1;
		if (Find(rowIndex, colIndex - 1, out var range))
		{
			colIndex2 = range.Left;
		}
		bool flag2 = false;
		bool flag3 = false;
		if (flag)
		{
			flag2 = InternalCheckFloatCell(rowIndex, colIndex2, ref boundsInfo);
			flag3 = InternalCheckFloatCell(rowIndex, colIndex, ref boundsInfo);
		}
		else
		{
			flag3 = InternalCheckFloatCell(rowIndex, colIndex, ref boundsInfo);
			flag2 = InternalCheckFloatCell(rowIndex, colIndex2, ref boundsInfo);
		}
		if (!flag2)
		{
			return flag3;
		}
		return true;
	}

	private bool InternalCheckFloatCell(int rowIndex, int colIndex, ref GridRangeInfo boundsInfo)
	{
		GridModel gridModel = base.Model;
		bool flag = false;
		Find(rowIndex, colIndex, out var range);
		colIndex = range.Left;
		InternalFloatingCellsData internalFloatingCellsData = floatCellData;
		int index = internalFloatingCellsData.GetIndex(colIndex);
		GridStyleInfo gridStyleInfo = null;
		gridStyleInfo = gridModel[rowIndex, colIndex];
		GridCellModelBase cellModel = gridStyleInfo.CellModel;
		int i = 0;
		if (CanFloatCell(cellModel, rowIndex, colIndex, gridStyleInfo, GridQueryFloatCell.FloatCell))
		{
			if (rowIndex != internalFloatingCellsData.savedRow)
			{
				for (int j = 0; j < internalFloatingCellsData.widths.Length; j++)
				{
					internalFloatingCellsData.widths[j] = 0;
				}
				internalFloatingCellsData.savedRow = rowIndex;
			}
			Size size = Size.Empty;
			if (index < internalFloatingCellsData.widths.Length)
			{
				size.Width = internalFloatingCellsData.widths[index];
			}
			if (size.Width == 0)
			{
				IGraphicsProvider graphicsProvider = gridModel.GetGraphicsProvider();
				size = cellModel.CalculatePreferredCellSize(graphicsProvider.Graphics, rowIndex, colIndex, gridStyleInfo, GridQueryBounds.Width);
			}
			if (index >= internalFloatingCellsData.widths.Length)
			{
				int[] array = new int[(index + 1) * 2];
				internalFloatingCellsData.widths.CopyTo(array, 0);
				internalFloatingCellsData.widths = array;
			}
			internalFloatingCellsData.widths[index] = size.Width;
			for (int colCount = gridModel.ColCount; colIndex + i < colCount && size.Width > gridModel.ColWidths[colIndex + i]; i++)
			{
				internalFloatingCellsData.GetIndex(colIndex + i + 1);
				GridStyleInfo gridStyleInfo2 = null;
				gridStyleInfo2 = gridModel[rowIndex, colIndex + i + 1];
				GridCellModelBase cellModel2 = gridStyleInfo2.CellModel;
				if (!CanFloatCell(cellModel2, rowIndex, colIndex + i + 1, gridStyleInfo2, GridQueryFloatCell.FloodCell))
				{
					break;
				}
				size.Width -= gridModel.ColWidths[colIndex + i];
			}
		}
		if (range.Right != colIndex + i)
		{
			flag = SetFloatedCellsRowCol(rowIndex, colIndex, rowIndex, colIndex + i);
		}
		if (flag)
		{
			if (boundsInfo.IsEmpty)
			{
				boundsInfo = GridRangeInfo.Cell(rowIndex, colIndex);
			}
			boundsInfo = GridRangeInfo.Cells(Math.Min(boundsInfo.Top, rowIndex), Math.Min(boundsInfo.Left, colIndex), Math.Max(boundsInfo.Bottom, rowIndex), Math.Max(Math.Max(boundsInfo.Right, range.Right), colIndex + i));
		}
		return flag;
	}

	internal static void UpdateFloatedCellsRowCol(GridControlBase grid, int rowIndex, int colIndex, int nOldToRow, int nOldToCol)
	{
		int val = rowIndex;
		int val2 = colIndex;
		if (grid.Model.FloatingCells.Find(rowIndex, colIndex, out var range))
		{
			val = range.Bottom;
			val2 = range.Right;
		}
		grid.InvalidateRange(GridRangeInfo.Cells(rowIndex, colIndex, Math.Max(val, nOldToRow), Math.Max(val2, nOldToCol)));
	}
}
