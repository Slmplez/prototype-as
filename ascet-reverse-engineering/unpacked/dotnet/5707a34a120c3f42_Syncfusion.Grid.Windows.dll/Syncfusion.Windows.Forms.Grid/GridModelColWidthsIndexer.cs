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
internal sealed class GridModelColWidthsIndexer : GridModelRowColSizeIndexer
{
	public override GridModelRowColOperations RowColObject => model.Cols;

	public override string RowColName => "ColumnWidth";

	public override int this[string name]
	{
		get
		{
			return base[base.Model.NameToColIndex(name)];
		}
		set
		{
			base[base.Model.NameToColIndex(name)] = value;
		}
	}

	private GridModelColWidthsIndexer(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridModelColWidthsIndexer(GridModel model)
		: base(model)
	{
	}

	public override void OnChanged(GridRowColSizeChangedEventArgs e)
	{
		base.Model.RaiseColWidthsChanged(e);
		base.Model.Modified = true;
		base.Model.colWidthEntries = null;
	}

	public override bool OnChanging(GridRowColSizeChangingEventArgs e)
	{
		base.Model.RaiseColWidthsChanging(e);
		return !e.Cancel;
	}

	protected override void OnSaveSize(GridRowColSizeEventArgs e)
	{
		base.Model.RaiseSaveColWidth(e);
	}

	protected override void OnQuerySize(GridRowColSizeEventArgs e)
	{
		base.Model.RaiseQueryColWidth(e);
	}

	protected override void OnQuerySizeTotal(GridRowColSizeTotalEventArgs e)
	{
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
		operationFeedback.Description = SR.GetString("GRID_IDM_RESIZECOLS");
		int maxSize = RowColObject.MaxSize;
		try
		{
			int[] range2 = GetRange(range.Left, range.Right);
			EvalRange(range.Left, range2);
			int[] array = (int[])range2.Clone();
			if (!flag3)
			{
				for (int i = 0; i < range2.Length; i++)
				{
					range2[i] = -1;
				}
			}
			bool flag5 = flag4 && range.Top > 0;
			for (int j = range.Top; j <= range.Bottom; j++)
			{
				if (flag5)
				{
					j = 0;
				}
				int num = 0;
				for (int k = range.Left; k <= range.Right; k++)
				{
					GridRangeInfo range3;
					bool spannedRangeInfo = base.Model.GetSpannedRangeInfo(j, k, out range3);
					bool flag6 = false;
					if (spannedRangeInfo && !flag)
					{
						if (flag2 || range3.Width == 1)
						{
							flag6 = j == range3.Top && k == range3.Right && range.Left <= range3.Left && range.Bottom >= range3.Bottom;
						}
					}
					else
					{
						flag6 = base.Model.RowHeights[j] > 0;
					}
					if (flag6)
					{
						GridStyleInfo gridStyleInfo = null;
						Size size;
						if (spannedRangeInfo)
						{
							gridStyleInfo = base.Model[range3.Top, range3.Left];
							GridCellModelBase cellModel = gridStyleInfo.CellModel;
							size = cellModel.CalculatePreferredCellSize(graphics, range3.Top, range3.Left, gridStyleInfo, GridQueryBounds.Width);
							if (k > range3.Left)
							{
								size.Width -= GetTotal(range3.Left, k - 1);
							}
						}
						else
						{
							gridStyleInfo = base.Model[j, k];
							GridCellModelBase cellModel2 = gridStyleInfo.CellModel;
							size = cellModel2.CalculatePreferredCellSize(graphics, j, k, gridStyleInfo, GridQueryBounds.Width);
						}
						num = size.Width + 2;
					}
					else
					{
						num = base.Model.ColWidths[k];
					}
					if (operationFeedback.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
					if (spannedRangeInfo && flag6)
					{
						if (range3.Right > range.Right)
						{
							continue;
						}
						k = range3.Right;
					}
					if (num > range2[k - range.Left])
					{
						range2[k - range.Left] = num;
					}
				}
				operationFeedback.PercentComplete = (j - range.Top) * 100 / range.Height;
				num = Math.Min(maxSize, num);
				if (flag5)
				{
					flag5 = false;
					j = range.Top - 1;
				}
			}
			bool flag7 = true;
			for (int l = 0; l < range2.Length; l++)
			{
				flag7 &= range2[l] == array[l];
			}
			if (!flag7)
			{
				SetRange(range.Left, range.Right, range2);
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
