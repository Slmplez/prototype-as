using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFindReplaceDialogSink : GridSubComponent, IGridFindReplaceDialogSink
{
	private enum Operation
	{
		None,
		Find,
		Replace,
		ReplaceAll
	}

	private Operation op;

	private bool replaceAllFound;

	private bool useFirstRowCol;

	public GridFindReplaceDialogSink(GridControlBase grid)
		: base(grid)
	{
	}

	public virtual object Find(GridFindReplaceEventArgs e)
	{
		op = Operation.Find;
		return InternalFind(e);
	}

	[DocumentationExclude]
	protected virtual object InternalFind(GridFindReplaceEventArgs find)
	{
		bool flag = (find.Options & GridFindTextOptions.SearchUp) != 0;
		if (!base.Grid.CurrentCell.GetCurrentCell(out var rowIndex, out var colIndex))
		{
			return null;
		}
		base.Grid.CurrentCell.ConfirmChanges();
		try
		{
			GridRangeInfo gridRangeInfo = GridRangeInfo.Cell(rowIndex, colIndex);
			GridRangeInfo gridRangeInfo2 = null;
			GridRangeInfo gridRangeInfo3 = GridRangeInfo.Empty;
			GridRangeInfo gridCellsRange = base.Grid.GridCellsRange;
			if ((find.Options & GridFindTextOptions.SelectionOnly) != GridFindTextOptions.None)
			{
				gridRangeInfo3 = base.Grid.Selections.Ranges.GetRangesContaining(gridRangeInfo).ActiveRange;
			}
			else if ((find.Options & GridFindTextOptions.ColumnOnly) != GridFindTextOptions.None)
			{
				gridRangeInfo3 = GridRangeInfo.Col(colIndex);
			}
			else if ((find.Options & GridFindTextOptions.WholeTable) != GridFindTextOptions.None)
			{
				gridRangeInfo3 = GridRangeInfo.Table();
			}
			if (!gridRangeInfo3.IsEmpty)
			{
				gridRangeInfo3 = gridRangeInfo3.ExpandRange(gridCellsRange.Top, gridCellsRange.Left, gridCellsRange.Bottom, gridCellsRange.Right);
				GridRangeInfo gridRangeInfo4 = GridRangeInfo.Cell(gridRangeInfo3.Top, gridRangeInfo3.Left);
				GridRangeInfo gridRangeInfo5 = GridRangeInfo.Cell(gridRangeInfo3.Bottom, gridRangeInfo3.Right);
				useFirstRowCol = false;
				if (!flag)
				{
					gridRangeInfo2 = FindInRange(find, gridRangeInfo3, gridRangeInfo, gridRangeInfo5);
					if (gridRangeInfo2 == null)
					{
						useFirstRowCol = true;
						gridRangeInfo2 = FindInRange(find, gridRangeInfo3, gridRangeInfo4, gridRangeInfo);
					}
				}
				else
				{
					gridRangeInfo2 = FindInRange(find, gridRangeInfo3, gridRangeInfo, gridRangeInfo4);
					if (gridRangeInfo2 == null)
					{
						useFirstRowCol = true;
						gridRangeInfo2 = FindInRange(find, gridRangeInfo3, gridRangeInfo5, gridRangeInfo);
					}
				}
				useFirstRowCol = false;
			}
			return gridRangeInfo2;
		}
		finally
		{
			base.Grid.CurrentCell.Refresh();
		}
	}

	[DocumentationExclude]
	protected virtual GridRangeInfo FindInRange(GridFindReplaceEventArgs find, GridRangeInfo selRange, GridRangeInfo start, GridRangeInfo end)
	{
		bool searchUp = (find.Options & GridFindTextOptions.SearchUp) != 0;
		using OperationFeedback operationFeedback = new OperationFeedback(base.Grid.Model);
		int nRow = start.Top;
		int nCol = start.Left;
		useFirstRowCol |= op != Operation.Find;
		while (useFirstRowCol || GetNextCell(selRange, ref nRow, ref nCol, bSortByRow: true, searchUp))
		{
			useFirstRowCol = false;
			GridStyleInfo gridStyleInfo = base.Grid.Model[nRow, nCol];
			GridCellRendererBase gridCellRendererBase = base.Grid.CellRenderers[gridStyleInfo.CellType];
			bool flag = false;
			switch (op)
			{
			case Operation.Find:
				flag = gridCellRendererBase.FindText(find.FindString, nRow, nCol, find.Options, bSetCell: true);
				break;
			case Operation.Replace:
				flag = gridCellRendererBase.ReplaceText(find.FindString, find.ReplaceString, nRow, nCol, find.Options, bSetCell: true);
				break;
			case Operation.ReplaceAll:
				replaceAllFound |= gridCellRendererBase.ReplaceText(find.FindString, find.ReplaceString, nRow, nCol, find.Options, bSetCell: false);
				break;
			}
			if (flag)
			{
				base.Grid.CurrentCell.ScrollInView(GridScrollCurrentCellReason.FindText);
				return GridRangeInfo.Cell(nRow, nCol);
			}
			if (nRow == end.Top && nCol == end.Left)
			{
				return null;
			}
			if (operationFeedback.ShouldCancel)
			{
				return null;
			}
		}
		return null;
	}

	[DocumentationExclude]
	public static bool GetNextCell(GridRangeInfo rg, ref int nRow, ref int nCol, bool bSortByRow, bool searchUp)
	{
		if (!searchUp)
		{
			if (bSortByRow && ++nCol > rg.Right)
			{
				if (++nRow > rg.Bottom)
				{
					nRow = (nCol = 0);
				}
				else
				{
					nCol = rg.Left;
				}
			}
			else if (!bSortByRow && ++nRow > rg.Bottom)
			{
				if (++nCol > rg.Right)
				{
					nRow = (nCol = 0);
				}
				else
				{
					nRow = rg.Top;
				}
			}
			if (nRow <= 0)
			{
				return nCol > 0;
			}
			return true;
		}
		if (bSortByRow && --nCol < rg.Left)
		{
			if (--nRow < rg.Top)
			{
				nRow = rg.Bottom;
				nCol = rg.Right;
			}
			else
			{
				nCol = rg.Right;
			}
		}
		else if (!bSortByRow && --nRow < rg.Top)
		{
			if (--nCol < rg.Left)
			{
				nRow = rg.Bottom;
				nCol = rg.Right;
			}
			else
			{
				nRow = rg.Bottom;
			}
		}
		if (nRow >= rg.Bottom)
		{
			return nCol < rg.Right;
		}
		return true;
	}

	public virtual Rectangle GetScreenRect(object lc)
	{
		GridRangeInfo range = lc as GridRangeInfo;
		if (lc != null)
		{
			Rectangle p = base.Grid.RangeInfoToRectangle(range);
			return base.Grid.RectangleToScreen(p);
		}
		return Rectangle.Empty;
	}

	public virtual object Replace(GridFindReplaceEventArgs e)
	{
		op = Operation.Replace;
		return InternalFind(e);
	}

	public virtual void ReplaceAll(GridFindReplaceEventArgs e)
	{
		replaceAllFound = false;
		op = Operation.ReplaceAll;
		InternalFind(e);
	}

	public virtual void ShowInfoMessage(string msg, string category)
	{
		MessageBox.Show(base.Grid, msg, category);
	}
}
