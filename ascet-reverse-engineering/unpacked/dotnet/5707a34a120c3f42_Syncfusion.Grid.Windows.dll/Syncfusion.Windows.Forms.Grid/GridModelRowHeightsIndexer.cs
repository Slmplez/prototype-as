using System;
using System.Drawing;
using System.Runtime.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[DocumentationExclude]
internal sealed class GridModelRowHeightsIndexer : GridModelRowColSizeIndexer, ISerializable
{
	public override GridModelRowColOperations RowColObject => model.Rows;

	public override string RowColName => "RowHeight";

	public override int this[string name]
	{
		get
		{
			return base[base.Model.NameToRowIndex(name)];
		}
		set
		{
			base[base.Model.NameToRowIndex(name)] = value;
		}
	}

	private GridModelRowHeightsIndexer(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridModelRowHeightsIndexer(GridModel model)
		: base(model)
	{
	}

	public override void OnChanged(GridRowColSizeChangedEventArgs e)
	{
		base.Model.RaiseRowHeightsChanged(e);
		base.Model.Modified = true;
		base.Model.rowHeightEntries = null;
	}

	public override bool OnChanging(GridRowColSizeChangingEventArgs e)
	{
		base.Model.RaiseRowHeightsChanging(e);
		return !e.Cancel;
	}

	protected override void OnSaveSize(GridRowColSizeEventArgs e)
	{
		base.Model.RaiseSaveRowHeight(e);
	}

	protected override void OnQuerySize(GridRowColSizeEventArgs e)
	{
		base.Model.RaiseQueryRowHeight(e);
	}

	protected override void OnQuerySizeTotal(GridRowColSizeTotalEventArgs e)
	{
		base.Model.RaiseQueryRowHeightTotal(e);
	}

	public override bool ResizeToFit(GridRangeInfo range, GridResizeToFitOptions options)
	{
		bool flag = (options & GridResizeToFitOptions.IncludeCellsWithinCoveredRange) != 0;
		bool flag2 = (options & GridResizeToFitOptions.ResizeCoveredCells) != GridResizeToFitOptions.None || flag;
		bool flag3 = (options & GridResizeToFitOptions.NoShrinkSize) != 0;
		bool flag4 = (options & GridResizeToFitOptions.IncludeHeaders) != 0;
		IGraphicsProvider graphicsProvider = model.GetGraphicsProvider();
		Graphics graphics = graphicsProvider.Graphics;
		range = range.ExpandRange(0, 0, base.Model.RowCount, base.Model.ColCount);
		base.Model.FloatingCells.EvaluateFloatingCells(range);
		using OperationFeedback operationFeedback = new OperationFeedback(base.Model);
		operationFeedback.Description = SR.GetString("GRID_IDM_RESIZEROWS");
		int maxSize = RowColObject.MaxSize;
		try
		{
			int[] range2 = GetRange(range.Top, range.Bottom);
			EvalRange(range.Top, range2);
			int[] array = (int[])range2.Clone();
			for (int i = range.Top; i <= range.Bottom; i++)
			{
				int num = -1;
				bool flag5 = flag4 && range.Left > 0;
				for (int j = range.Left; j <= range.Right; j++)
				{
					if (flag5)
					{
						j = 0;
					}
					GridRangeInfo range3;
					bool spannedRangeInfo = base.Model.GetSpannedRangeInfo(i, j, out range3);
					bool flag6 = false;
					if (spannedRangeInfo && !flag)
					{
						if (flag2 || range3.Height == 1)
						{
							flag6 = j == range3.Left && i == range3.Bottom && range.Top <= range3.Top && range.Right >= range3.Right;
						}
					}
					else
					{
						flag6 = base.Model.ColWidths[j] > 0;
					}
					if (flag6)
					{
						GridStyleInfo gridStyleInfo = null;
						Size size;
						if (spannedRangeInfo)
						{
							gridStyleInfo = base.Model[range3.Top, range3.Left];
							GridCellModelBase cellModel = gridStyleInfo.CellModel;
							size = cellModel.CalculatePreferredCellSize(graphics, range3.Top, range3.Left, gridStyleInfo, GridQueryBounds.Height);
							if (i > range3.Top)
							{
								size.Height -= GetTotal(range3.Top, i - 1);
							}
						}
						else
						{
							gridStyleInfo = base.Model[i, j];
							GridCellModelBase cellModel2 = gridStyleInfo.CellModel;
							size = cellModel2.CalculatePreferredCellSize(graphics, i, j, gridStyleInfo, GridQueryBounds.Height);
						}
						num = Math.Max(num, size.Height);
					}
					if (operationFeedback.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
					if (flag5)
					{
						flag5 = false;
						j = range.Left - 1;
					}
					if (spannedRangeInfo && flag6 && range3.Right <= range.Right)
					{
						j = range3.Right;
					}
				}
				if (num != -1)
				{
					num = Math.Min(maxSize, num);
					if (flag3)
					{
						if (num > range2[i - range.Top])
						{
							range2[i - range.Top] = num;
						}
					}
					else if (num != range2[i - range.Top] && num > 0)
					{
						range2[i - range.Top] = num;
					}
				}
				operationFeedback.PercentComplete = (i - range.Top) * 100 / range.Height;
			}
			bool flag7 = true;
			for (int k = 0; k < range2.Length; k++)
			{
				flag7 &= array[k] == range2[k];
			}
			if (!flag7)
			{
				SetRange(range.Top, range.Bottom, range2);
			}
		}
		catch (GridUserCanceledException ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			return false;
		}
		return true;
	}
}
