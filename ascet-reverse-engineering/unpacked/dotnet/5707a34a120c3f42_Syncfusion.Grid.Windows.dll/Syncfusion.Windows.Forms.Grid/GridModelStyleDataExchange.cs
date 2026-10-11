using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridModelStyleDataExchange : GridModelBound
{
	public GridModelStyleDataExchange(GridModel model)
		: base(model)
	{
	}

	public virtual bool CopyCellsToDataObject(out GridData data, GridRangeInfo range, bool bLoadBaseStyles, int dragDropFlags, out int rowCount, out int colCount)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		gridRangeInfoList.Add(range);
		return CopyCellsToDataObject(out data, gridRangeInfoList, bLoadBaseStyles, dragDropFlags, out rowCount, out colCount);
	}

	public bool CopyCellsToDataObject(out GridData data, GridRangeInfoList rangeList, bool bLoadBaseStyles, int dragDropFlags, out int rowCount, out int colCount)
	{
		GridRangeInfoList rowRanges = rangeList.GetRowRanges(GridRangeInfoType.Cells | GridRangeInfoType.Rows);
		GridRangeInfoList colRanges = rangeList.GetColRanges(GridRangeInfoType.Cells | GridRangeInfoType.Cols);
		int num = 0;
		foreach (GridRangeInfo item in rowRanges)
		{
			num += item.Height;
		}
		int num2 = 0;
		foreach (GridRangeInfo item2 in colRanges)
		{
			num2 += item2.Width;
		}
		int num3 = num * num2;
		int num4 = 0;
		int num5 = 0;
		using OperationFeedback operationFeedback = new OperationFeedback(base.Model);
		operationFeedback.Description = SR.GetString("GRID_IDM_COPYINTERNAL");
		operationFeedback.AllowCancel = true;
		bool flag = false;
		data = new GridData();
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		try
		{
			data.RowCount = num;
			data.ColCount = num2;
			int num6 = 0;
			while (!flag && num6 < rowRanges.Count)
			{
				int num7 = 0;
				while (!flag && num7 < colRanges.Count)
				{
					GridRangeInfo gridRangeInfo3 = GridRangeInfo.IntersectRange(rowRanges[num6], colRanges[num7]);
					GridRangeInfoList rangesContained = base.Model.CoveredRanges.Ranges.GetRangesContained(gridRangeInfo3);
					foreach (GridRangeInfo item3 in rangesContained)
					{
						gridRangeInfoList.Add(item3.OffsetRange(-gridRangeInfo3.Top, -gridRangeInfo3.Left));
					}
					num7++;
				}
				for (int i = rowRanges[num6].Top; i <= rowRanges[num6].Bottom; i++)
				{
					num5 = 0;
					int num8 = 0;
					while (!flag && num8 < colRanges.Count)
					{
						for (int j = colRanges[num8].Left; j <= colRanges[num8].Right; j++)
						{
							GridStyleInfo gridStyleInfo = new GridStyleInfo();
							int num9 = num4 * num2 + num5;
							if (GetClipboardStyleRowCol(i, j, gridStyleInfo, bLoadBaseStyles, dragDropFlags))
							{
								data[num4, num5] = gridStyleInfo.Store;
							}
							operationFeedback.PercentComplete = num9 * 100 / num3;
							if (operationFeedback.ShouldCancel)
							{
								throw new GridUserCanceledException();
							}
							num5++;
						}
						num8++;
					}
					num4++;
				}
				num6++;
			}
			if (gridRangeInfoList.Count > 0)
			{
				data.ExtendedInfo = gridRangeInfoList;
			}
		}
		catch (GridUserCanceledException ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			flag = true;
		}
		rowCount = num;
		colCount = num2;
		return !flag;
	}

	internal bool GetClipboardStyleRowCol(int nRow, int nCol, GridStyleInfo style, bool bLoadBaseStyles, int dragDropFlags)
	{
		base.Model.GetCellInfo(nRow, nCol, style);
		return true;
	}

	public bool PasteCellsFromDataObject(GridData data, GridRangeInfo range, bool bIgnoreDiffRange, int dragDropFlags)
	{
		bool flag = false;
		int rowCount = data.RowCount;
		int colCount = data.ColCount;
		int top = range.Top;
		int left = range.Left;
		int num = range.Top + rowCount - 1;
		int num2 = range.Left + colCount - 1;
		if (!bIgnoreDiffRange && (num != range.Bottom || num2 != range.Right) && !base.Model.CutPaste.OnPasteDiffRange())
		{
			flag = true;
		}
		else
		{
			base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "PasteCellsFromDataObject");
			try
			{
				string s = SR.GetString("Grid_IDM_PASTEDATA");
				base.Model.CommandStack.BeginTrans(s);
				using OperationFeedback operationFeedback = new OperationFeedback(base.Model);
				operationFeedback.Description = SR.GetString("GRID_IDM_PASTINGDATA");
				operationFeedback.AllowRollback = true;
				base.Model.ConfirmChanges();
				if (num > base.Model.RowCount)
				{
					if (GridUtil.IsNotSet(dragDropFlags, 512))
					{
						base.Model.RowCount = num;
					}
					num = base.Model.RowCount;
				}
				if (num2 > base.Model.ColCount)
				{
					if (GridUtil.IsNotSet(dragDropFlags, 1024))
					{
						base.Model.ColCount = num2;
					}
					num2 = base.Model.ColCount;
				}
				GridRangeInfo gridRangeInfo = GridRangeInfo.Cells(top, left, num, num2);
				base.Model.CoveredRanges.Remove(base.Model.CoveredRanges.Ranges.GetOuterRange(gridRangeInfo));
				if (data.ExtendedInfo is GridRangeInfoList gridRangeInfoList)
				{
					foreach (GridRangeInfo item in gridRangeInfoList)
					{
						GridRangeInfo range2 = item.OffsetRange(top, left);
						if (!base.Model.CoveredRanges.Ranges.AnyRangeIntersects(range2))
						{
							base.Model.CoveredRanges.Add(range2);
						}
					}
				}
				int num3 = 0;
				GridStyleInfo[] array = new GridStyleInfo[gridRangeInfo.Width * gridRangeInfo.Height];
				for (int i = gridRangeInfo.Top; i <= gridRangeInfo.Bottom; i++)
				{
					for (int j = gridRangeInfo.Left; j <= gridRangeInfo.Right; j++)
					{
						array[num3++] = new GridStyleInfo(data[i - gridRangeInfo.Top, j - gridRangeInfo.Left]);
					}
				}
				flag = gridRangeInfo.Top > base.Model.RowCount || gridRangeInfo.Left > base.Model.ColCount || !base.Model.ChangeCells(gridRangeInfo, array, StyleModifyType.Copy);
				flag |= operationFeedback.RollbackConfirmed;
			}
			finally
			{
				base.Model.EndUpdate();
			}
		}
		if (flag)
		{
			base.Model.CommandStack.Rollback();
		}
		else
		{
			base.Model.CommandStack.CommitTrans();
		}
		return !flag;
	}
}
