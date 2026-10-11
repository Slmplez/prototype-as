using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridSelectCellsMouseController : GridMouseController
{
	[DocumentationExclude]
	private sealed class MouseRowColInfo
	{
		internal int mouseClickRowIndex;

		internal int mouseClickColIndex;

		internal int mouseDownRowIndex;

		internal int mouseDownColIndex;

		internal int mouseMoveRowIndex = -1;

		internal int mouseMoveColIndex = -1;

		internal bool firstClick = true;

		public override string ToString()
		{
			return $"{mouseDownRowIndex},{mouseDownColIndex}->{mouseMoveRowIndex},{mouseMoveColIndex}";
		}
	}

	[DocumentationExclude]
	internal sealed class SelectCellsHitTestInfo
	{
		internal int hitTestResult;

		internal Point point;

		internal Rectangle cellBounds = Rectangle.Empty;

		internal int clientCol;

		internal int clientRow;

		internal int rowIndex;

		internal int colIndex;

		internal GridCellRendererBase cellRenderer;

		internal bool selectCells;

		public override string ToString()
		{
			return $"{hitTestResult}:{rowIndex},{colIndex}";
		}

		internal SelectCellsHitTestInfo(GridControlBase grid, MouseEventArgs e, IMouseController controller)
		{
			point = new Point(e.X, e.Y);
			clientCol = grid.ViewLayout.PointToClientCol(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			clientRow = grid.ViewLayout.PointToClientRow(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			if (clientCol < 0 || clientRow < 0)
			{
				return;
			}
			rowIndex = grid.GetRow(clientRow);
			colIndex = grid.GetCol(clientCol);
			if (clientCol >= grid.ViewLayout.VisibleCols || clientRow >= grid.ViewLayout.VisibleRows || rowIndex > grid.Model.RowCount || colIndex > grid.Model.ColCount)
			{
				return;
			}
			if (grid.Model.CoveredRanges.Find(rowIndex, colIndex, out var range))
			{
				rowIndex = range.Top;
				colIndex = range.Left;
				cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), GridRangeOptions.MergeAllSpannedCells);
			}
			else
			{
				cellBounds = new Rectangle(grid.ViewLayout.ClientRowColToPoint(clientRow, clientCol, GridCellSizeKind.VisibleSize), new Size(grid.GetColWidth(colIndex), grid.GetRowHeight(rowIndex)));
			}
			cellRenderer = grid.GetCellRenderer(rowIndex, colIndex);
			hitTestResult = cellRenderer.RaiseHitTest(rowIndex, colIndex, e, controller);
			selectCells = false;
			if (hitTestResult == 0 && grid.Model.Options.AllowSelection != GridSelectionFlags.None)
			{
				selectCells = true;
				int num = grid.InternalGetHeaderRows();
				int num2 = grid.InternalGetHeaderCols();
				bool flag = rowIndex <= num2 && colIndex > num2;
				bool flag2 = colIndex <= num && rowIndex > num;
				bool flag3 = rowIndex > num && colIndex > num2;
				GridRangeInfo empty = GridRangeInfo.Empty;
				empty = ((colIndex <= num2 || grid.Model.Options.ListBoxSelectionMode != SelectionMode.None) ? GridRangeInfo.Row(rowIndex) : ((rowIndex > num || grid.Model.Options.ListBoxSelectionMode == SelectionMode.None) ? GridRangeInfo.Cell(rowIndex, colIndex) : GridRangeInfo.Col(colIndex)));
				if (((flag2 || empty.IsRows) && (grid.Model.Options.AllowSelection & GridSelectionFlags.Row) != GridSelectionFlags.None) || ((flag || empty.IsCols) && (grid.Model.Options.AllowSelection & GridSelectionFlags.Column) != GridSelectionFlags.None) || ((flag3 || empty.IsCells) && (grid.Model.Options.AllowSelection & GridSelectionFlags.Cell) != GridSelectionFlags.None))
				{
					if (clientCol > grid.InternalGetHeaderCols() && clientRow > grid.InternalGetHeaderRows())
					{
						hitTestResult = 3;
					}
					else
					{
						hitTestResult = 4;
					}
				}
			}
			if (hitTestResult == 0)
			{
				hitTestResult = 3;
			}
		}
	}

	private MouseRowColInfo mrci;

	private SelectCellsHitTestInfo hitTestInfo;

	private SelectCellsHitTestInfo mouseHoverInfo;

	private bool ignoreMouseMessages;

	private bool inSelectingCells;

	private bool addNewSelection;

	private bool extendSelection;

	[ThreadStatic]
	private static bool scrolled;

	private bool canceled;

	private GridControlBase grid;

	private bool disposed;

	private bool multiExtendedShouldMoveCurrentCell = true;

	private MouseRowColInfo Mrci
	{
		get
		{
			if (mrci == null)
			{
				if (grid.Model.UserData.Contains("MouseRowColInfo"))
				{
					mrci = (MouseRowColInfo)grid.Model.UserData["MouseRowColInfo"];
				}
				else
				{
					grid.Model.UserData["MouseRowColInfo"] = (mrci = new MouseRowColInfo());
				}
			}
			return mrci;
		}
	}

	[DocumentationExclude]
	public bool MultiExtendedShouldMoveCurrentCell
	{
		get
		{
			return multiExtendedShouldMoveCurrentCell;
		}
		set
		{
			multiExtendedShouldMoveCurrentCell = value;
		}
	}

	public override string Name => "SelectCells";

	public override Cursor Cursor
	{
		get
		{
			if (hitTestInfo != null)
			{
				if (hitTestInfo.selectCells)
				{
					if (hitTestInfo.hitTestResult == 4 && hitTestInfo.rowIndex == 0 && hitTestInfo.colIndex > 0)
					{
						if ((grid.Model.Options.AllowSelection & GridSelectionFlags.Column) != GridSelectionFlags.None)
						{
							return GridCursors.SelectColumnCursor;
						}
					}
					else if (hitTestInfo.hitTestResult == 4 && hitTestInfo.rowIndex > 0 && hitTestInfo.colIndex == 0 && (grid.Model.Options.AllowSelection & GridSelectionFlags.Row) != GridSelectionFlags.None)
					{
						if (grid.IsRightToLeft())
						{
							return GridCursors.SelectRowRTLCursor;
						}
						return GridCursors.SelectRowCursor;
					}
				}
				if (hitTestInfo.cellRenderer != null)
				{
					return hitTestInfo.cellRenderer.RaiseGetCursor(hitTestInfo.rowIndex, hitTestInfo.colIndex);
				}
			}
			return null;
		}
	}

	internal void SetSelectClickRowCol(int rowIndex, int colIndex)
	{
		Mrci.mouseClickColIndex = colIndex;
		Mrci.mouseClickRowIndex = rowIndex;
		Mrci.mouseDownColIndex = colIndex;
		Mrci.mouseDownRowIndex = rowIndex;
		Mrci.firstClick = false;
	}

	public override string ToString()
	{
		return "GSM(" + (ignoreMouseMessages ? "IGN " : string.Empty) + (inSelectingCells ? "INS " : string.Empty) + (addNewSelection ? "ADD " : string.Empty) + (extendSelection ? "EXT " : string.Empty) + (scrolled ? "SCR " : string.Empty) + " ) " + Mrci.ToString() + " " + ((hitTestInfo != null) ? (hitTestInfo.ToString() + " ") : string.Empty) + grid.Model.SelectedRanges.ToString() + " " + grid.ToString();
	}

	public GridSelectCellsMouseController(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
		grid.CurrentCellMoved += GridCurrentCellMoveComplete;
		grid.CurrentCellActivated += GridCurrentCellActivated;
		grid.WindowScrolled += GridWindowScrolled;
		grid.ExternalMove = GridCurrentCellExternalMove;
		grid.CancelMode += grid_CancelMode;
	}

	private void GridCurrentCellMoveComplete(object sender, GridCurrentCellMovedEventArgs e)
	{
		if (!grid.CurrentCell.MoveFromActiveState || !grid.CurrentCell.IsInMoveTo || !grid.CurrentCell.HasCurrentCellAt(grid.CurrentCell.MoveFromRowIndex, grid.CurrentCell.MoveFromColIndex))
		{
			ProcessSetCurrentCell(grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex, e.Options);
		}
	}

	private void GridCurrentCellActivated(object sender, EventArgs e)
	{
		if (!base.Grid.CurrentCell.IsInMoveTo)
		{
			ProcessSetCurrentCell(grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex, GridSetCurrentCellOptions.None);
		}
	}

	private void GridWindowScrolled(object sender, ScrollWindowEventArgs e)
	{
		scrolled = true;
	}

	public override bool GetAllowFixFocus()
	{
		return false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && grid != null)
		{
			grid.CurrentCellMoved -= GridCurrentCellMoveComplete;
			grid.CurrentCellActivated -= GridCurrentCellActivated;
			grid.WindowScrolled -= GridWindowScrolled;
			grid.CancelMode -= grid_CancelMode;
			grid.ExternalMove = null;
			grid.CancelMode -= grid_CancelMode;
			disposed = true;
		}
		base.Dispose(disposing);
	}

	private bool RaiseSelectionChanging(ref GridRangeInfo range, GridSelectionReason reason)
	{
		return RaiseSelectionChanging(ref range, reason, GridRangeInfo.Empty);
	}

	private bool RaiseSelectionChanging(ref GridRangeInfo range, GridSelectionReason reason, GridRangeInfo clickRange)
	{
		GridSelectionChangingEventArgs e = new GridSelectionChangingEventArgs(range, reason, clickRange);
		grid.Model.RaiseSelectionChanging(e);
		range = e.Range;
		return !e.Cancel;
	}

	private void RaiseSelectionChanged(GridRangeInfo range, GridSelectionReason reason)
	{
		GridSelectionChangedEventArgs e = new GridSelectionChangedEventArgs(range, null, reason);
		grid.Model.RaiseSelectionChanged(e);
	}

	private void RaiseSelectionChanged(GridRangeInfo range, GridRangeInfoList oldRanges, GridSelectionReason reason)
	{
		GridSelectionChangedEventArgs e = new GridSelectionChangedEventArgs(range, oldRanges, reason);
		grid.Model.RaiseSelectionChanged(e);
	}

	[DocumentationExclude]
	protected virtual bool GridCurrentCellExternalMove(GridDirectionType direction, int num, bool extendSelection)
	{
		int rowIndex = 0;
		int colIndex = 0;
		GridRangeInfoList selectedRanges = grid.Model.SelectedRanges;
		extendSelection &= ((grid.Model.Options.AllowSelection & GridSelectionFlags.Keyboard) != GridSelectionFlags.None && grid.Model.Options.ListBoxSelectionMode != SelectionMode.One) || grid.Model.Options.ListBoxSelectionMode == SelectionMode.MultiExtended;
		if (grid.Model.Options.ListBoxSelectionMode == SelectionMode.One || (grid.Model.Options.ListBoxSelectionMode == SelectionMode.MultiExtended && grid.Model.Options.MulitExtendedArrowKeySelect))
		{
			GridRangeInfo range = selectedRanges.ActiveRange;
			if (grid.CurrentCell.GetCurrentCell(out rowIndex, out colIndex))
			{
				if (direction == GridDirectionType.Left || direction == GridDirectionType.Right || direction == GridDirectionType.MostLeft || direction == GridDirectionType.MostRight)
				{
					return grid.CurrentCell.InternalMove(direction, num, GridSetCurrentCellOptions.ScrollInView);
				}
				if (selectedRanges.Count == 0 || !extendSelection)
				{
					GridRangeInfo range2 = GridRangeInfo.Empty;
					if (!RaiseSelectionChanging(ref range2, GridSelectionReason.ArrowKey))
					{
						return false;
					}
					grid.Selections.Clear();
					RaiseSelectionChanged(GridRangeInfo.Empty, GridSelectionReason.ArrowKey);
					Mrci.mouseDownRowIndex = rowIndex;
					Mrci.mouseDownColIndex = colIndex;
				}
				if (RaiseSelectionChanging(ref range, GridSelectionReason.ArrowKey))
				{
					grid.CurrentCell.InternalMove(direction, num, GridSetCurrentCellOptions.None);
					grid.CurrentCell.GetCurrentCell(out rowIndex, out colIndex);
					GridRangeInfo newRange = GridRangeInfo.Rows(extendSelection ? Mrci.mouseDownRowIndex : rowIndex, rowIndex);
					grid.Selections.ChangeSelection(selectedRanges.ActiveRange, newRange);
					Mrci.mouseMoveRowIndex = rowIndex;
					Mrci.mouseMoveColIndex = colIndex;
					RaiseSelectionChanged(selectedRanges.ActiveRange, GridSelectionReason.ArrowKey);
					grid.ScrollCellInView(rowIndex, colIndex, GridScrollCurrentCellReason.MoveTo);
					if (!extendSelection)
					{
						Mrci.mouseDownRowIndex = rowIndex;
						Mrci.mouseDownColIndex = colIndex;
					}
					return true;
				}
				return false;
			}
		}
		else
		{
			if (!extendSelection)
			{
				GridSetCurrentCellOptions gridSetCurrentCellOptions = GridSetCurrentCellOptions.ScrollInView;
				if (!grid.Model.Options.ExcelLikeCurrentCell)
				{
					gridSetCurrentCellOptions |= GridSetCurrentCellOptions.NoSelectRange;
				}
				grid.CurrentCell.InternalMove(direction, num, gridSetCurrentCellOptions);
				if (grid.CurrentCell.GetCurrentCell(out rowIndex, out colIndex))
				{
					Mrci.mouseDownRowIndex = rowIndex;
					Mrci.mouseDownColIndex = colIndex;
				}
				return true;
			}
			if (grid.CurrentCell.GetCurrentCell(out rowIndex, out colIndex))
			{
				if (selectedRanges.Count == 0)
				{
					GridRangeInfo range3 = GridRangeInfo.Empty;
					if (!RaiseSelectionChanging(ref range3, GridSelectionReason.ArrowKey))
					{
						return false;
					}
					grid.Selections.Clear();
					RaiseSelectionChanged(GridRangeInfo.Empty, GridSelectionReason.ArrowKey);
					Mrci.mouseDownRowIndex = rowIndex;
					Mrci.mouseDownColIndex = colIndex;
				}
				grid.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
				bool flag = false;
				try
				{
					GridRangeInfo range4 = selectedRanges.ActiveRange;
					if (RaiseSelectionChanging(ref range4, GridSelectionReason.ArrowKey))
					{
						grid.CurrentCell.InternalMove(direction, num, GridSetCurrentCellOptions.NoSelectRange);
						grid.EndUpdate();
						flag = true;
						grid.CurrentCell.GetCurrentCell(out rowIndex, out colIndex);
						GridRangeInfo range5 = selectedRanges.ActiveRange;
						if (range5.IsEmpty)
						{
							int mouseDownRowIndex = Mrci.mouseDownRowIndex;
							int mouseDownColIndex = Mrci.mouseDownColIndex;
							if (mouseDownRowIndex <= grid.InternalGetHeaderRows() || mouseDownColIndex <= grid.InternalGetHeaderCols())
							{
								range5 = ((mouseDownRowIndex > grid.InternalGetHeaderRows()) ? GridRangeInfo.Row(mouseDownRowIndex) : ((mouseDownColIndex <= grid.InternalGetHeaderCols()) ? GridRangeInfo.Empty : GridRangeInfo.Col(mouseDownColIndex)));
							}
							else
							{
								base.Grid.Model.CoveredRanges.Find(mouseDownRowIndex, mouseDownColIndex, out range5);
							}
						}
						GridRangeInfo range6 = (range5.IsRows ? GridRangeInfo.Rows(Mrci.mouseDownRowIndex, rowIndex) : ((!range5.IsCols) ? GridRangeInfo.Cells(Mrci.mouseDownRowIndex, Mrci.mouseDownColIndex, rowIndex, colIndex) : GridRangeInfo.Cols(Mrci.mouseDownColIndex, colIndex)));
						if (((range6.IsTable && (grid.Model.Options.AllowSelection & GridSelectionFlags.Table) != GridSelectionFlags.None) || (range6.IsRows && (grid.Model.Options.AllowSelection & GridSelectionFlags.Row) != GridSelectionFlags.None) || (range6.IsCols && (grid.Model.Options.AllowSelection & GridSelectionFlags.Column) != GridSelectionFlags.None) || (range6.IsCells && (grid.Model.Options.AllowSelection & GridSelectionFlags.Cell) != GridSelectionFlags.None)) && RaiseSelectionChanging(ref range6, GridSelectionReason.ArrowKey))
						{
							grid.Selections.ChangeSelection(selectedRanges.ActiveRange, range6);
						}
						Mrci.mouseMoveRowIndex = rowIndex;
						Mrci.mouseMoveColIndex = colIndex;
						RaiseSelectionChanged(selectedRanges.ActiveRange, GridSelectionReason.ArrowKey);
						grid.ScrollCellInView(rowIndex, colIndex, GridScrollCurrentCellReason.MoveTo);
						return true;
					}
					return false;
				}
				finally
				{
					if (!flag)
					{
						grid.EndUpdate();
					}
				}
			}
		}
		return false;
	}

	private void BeginSelectCells(int rowIndex, int colIndex, Keys modifierKeys)
	{
		GridRangeInfoList selectedRanges = grid.Model.SelectedRanges;
		if (rowIndex == 0 && colIndex == 0 && (grid.Model.Options.AllowSelection & GridSelectionFlags.Table) != GridSelectionFlags.None && selectedRanges.AnyRangeContains(GridRangeInfo.Cell(0, 0)))
		{
			GridRangeInfo range = GridRangeInfo.Empty;
			if (RaiseSelectionChanging(ref range, GridSelectionReason.MouseDown, GridRangeInfo.Cell(0, 0)))
			{
				grid.Selections.Clear();
				RaiseSelectionChanged(GridRangeInfo.Empty, GridSelectionReason.MouseDown);
			}
			Mrci.mouseClickRowIndex = grid.TopRowIndex;
			Mrci.mouseClickColIndex = grid.LeftColIndex;
			Mrci.mouseDownRowIndex = grid.TopRowIndex;
			Mrci.mouseDownColIndex = grid.LeftColIndex;
			Mrci.mouseMoveRowIndex = Mrci.mouseDownRowIndex;
			Mrci.mouseMoveColIndex = Mrci.mouseDownColIndex;
			return;
		}
		int num = grid.InternalGetHeaderRows();
		int num2 = grid.InternalGetHeaderCols();
		bool flag = rowIndex <= 0 && colIndex > num2;
		bool flag2 = colIndex <= 0 && rowIndex > num;
		bool flag3 = rowIndex > num && colIndex > num2;
		bool flag4 = colIndex == 0 && rowIndex == 0;
		if (grid.Model.Options.ListBoxSelectionMode == SelectionMode.MultiExtended)
		{
			addNewSelection = (modifierKeys & Keys.Control) != 0;
			extendSelection = !Mrci.firstClick && (modifierKeys & Keys.Shift) != 0;
			if (rowIndex <= num)
			{
				return;
			}
		}
		else if (grid.Model.Options.ListBoxSelectionMode == SelectionMode.MultiSimple)
		{
			addNewSelection = true;
			if (rowIndex <= num)
			{
				return;
			}
		}
		else if (grid.Model.Options.ListBoxSelectionMode == SelectionMode.One)
		{
			addNewSelection = (extendSelection = false);
			if (rowIndex <= num)
			{
				return;
			}
		}
		else
		{
			addNewSelection = (modifierKeys & Keys.Control) != Keys.None && (grid.Model.Options.AllowSelection & GridSelectionFlags.Multiple) != 0;
			extendSelection = !Mrci.firstClick && (modifierKeys & Keys.Shift) != Keys.None && (grid.Model.Options.AllowSelection & GridSelectionFlags.Shift) != 0;
		}
		Mrci.firstClick = false;
		if (grid.Model.Options.AllowSelection == GridSelectionFlags.None)
		{
			return;
		}
		GridRangeInfo empty = GridRangeInfo.Empty;
		empty = ((rowIndex == 0 && colIndex == 0) ? GridRangeInfo.Table() : ((colIndex <= 0 || grid.Model.Options.ListBoxSelectionMode != SelectionMode.None) ? GridRangeInfo.Row(rowIndex) : ((rowIndex > 0) ? GridRangeInfo.Cell(rowIndex, colIndex) : GridRangeInfo.Col(colIndex))));
		base.Grid.Model.CoveredRanges.Find(rowIndex, colIndex, out var range2);
		bool flag5 = false;
		if ((selectedRanges.Count == 1 && selectedRanges[0] != range2) || selectedRanges.Count > 1)
		{
			flag5 = (!extendSelection && !addNewSelection) || ((grid.Model.Options.AllowSelection & GridSelectionFlags.MixRangeType) == 0 && selectedRanges.FilterRangeType(empty.RangeType).Count != selectedRanges.Count);
		}
		if (flag5)
		{
			extendSelection = (addNewSelection = false);
			GridRangeInfo range3 = GridRangeInfo.Empty;
			if (!RaiseSelectionChanging(ref range3, GridSelectionReason.MouseDown, empty))
			{
				return;
			}
			grid.Selections.Clear();
			RaiseSelectionChanged(GridRangeInfo.Empty, GridSelectionReason.MouseDown);
		}
		if (addNewSelection)
		{
			if (!empty.IsCells && selectedRanges.AnyRangeContains(empty))
			{
				grid.Selections.Remove(empty);
				Mrci.mouseClickRowIndex = empty.Top;
				Mrci.mouseClickColIndex = empty.Left;
				Mrci.mouseDownRowIndex = empty.Top;
				Mrci.mouseDownColIndex = empty.Left;
				Mrci.mouseMoveRowIndex = empty.Top;
				Mrci.mouseMoveColIndex = empty.Left;
				return;
			}
			if (!flag5 && !extendSelection && selectedRanges.Count == 0 && grid.CurrentCell.GetCurrentCell(out var rowIndex2, out var colIndex2) && !grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && grid.Model.Options.ListBoxSelectionMode == SelectionMode.None)
			{
				GridRangeInfo range4 = GridRangeInfo.Cell(rowIndex2, colIndex2);
				if (rowIndex2 > num && colIndex2 > num2)
				{
					if (RaiseSelectionChanging(ref range4, GridSelectionReason.MouseDown, empty))
					{
						grid.Selections.ChangeSelection(GridRangeInfo.Empty, range4);
						RaiseSelectionChanged(range4, GridSelectionReason.MouseDown);
					}
					else
					{
						addNewSelection = false;
					}
				}
			}
		}
		if (((!flag4 && !empty.IsTable) || (grid.Model.Options.AllowSelection & GridSelectionFlags.Table) == 0) && ((!flag2 && !empty.IsRows) || (grid.Model.Options.AllowSelection & GridSelectionFlags.Row) == 0) && ((!flag && !empty.IsCols) || (grid.Model.Options.AllowSelection & GridSelectionFlags.Column) == 0) && ((!flag3 && !empty.IsCells) || (grid.Model.Options.AllowSelection & GridSelectionFlags.Cell) == 0))
		{
			return;
		}
		if (addNewSelection)
		{
			selectedRanges.Add(GridRangeInfo.Empty);
		}
		if ((!extendSelection || selectedRanges.Count != 0) && !extendSelection)
		{
			Mrci.mouseClickRowIndex = rowIndex;
			Mrci.mouseClickColIndex = colIndex;
			Mrci.mouseDownRowIndex = rowIndex;
			Mrci.mouseDownColIndex = colIndex;
		}
		GridRangeInfo activeRange = selectedRanges.ActiveRange;
		GridRangeInfo range5 = empty.UnionRange(GridRangeInfo.Cell(Mrci.mouseDownRowIndex, Mrci.mouseDownColIndex));
		if ((!grid.Model.Options.ExcelLikeSelectionFrame || flag5) && !addNewSelection && range5.IsCells && range5.Width == 1 && range5.Height == 1)
		{
			range5 = GridRangeInfo.Empty;
		}
		if (RaiseSelectionChanging(ref range5, GridSelectionReason.MouseDown, range5))
		{
			grid.Selections.ChangeSelection(activeRange, range5);
			RaiseSelectionChanged(selectedRanges.ActiveRange, GridSelectionReason.MouseDown);
			if (grid.Model.Options.ListBoxSelectionMode != SelectionMode.MultiSimple)
			{
				inSelectingCells = true;
			}
		}
		else
		{
			selectedRanges.RemoveEmptyRanges();
		}
	}

	private bool ChangeSelectCells(int rowIndex, int colIndex)
	{
		if (grid.Model.Options.AllowSelection != GridSelectionFlags.None && inSelectingCells)
		{
			GridRangeInfoList selectedRanges = grid.Model.SelectedRanges;
			int num = grid.InternalGetHeaderRows();
			int num2 = grid.InternalGetHeaderCols();
			int num3 = grid.InternalGetFrozenRows();
			int num4 = grid.InternalGetFrozenCols();
			GridRangeInfo activeRange = selectedRanges.ActiveRange;
			rowIndex = Math.Max(num + 1, rowIndex);
			if (Mrci.mouseDownRowIndex > num3 && grid.TopRowIndex - 1 > num3)
			{
				rowIndex = Math.Max(grid.TopRowIndex - 1, rowIndex);
			}
			colIndex = Math.Max(num2 + 1, colIndex);
			if (Mrci.mouseDownColIndex > num4 && grid.LeftColIndex - 1 > num4)
			{
				colIndex = Math.Max(grid.LeftColIndex - 1, colIndex);
			}
			GridRangeInfo range = ((grid.Model.Options.ListBoxSelectionMode == SelectionMode.One) ? GridRangeInfo.Row(rowIndex) : (activeRange.IsCols ? GridRangeInfo.Cols(colIndex, Mrci.mouseDownColIndex) : (activeRange.IsRows ? GridRangeInfo.Rows(rowIndex, Mrci.mouseDownRowIndex) : ((rowIndex == Mrci.mouseDownRowIndex && colIndex == Mrci.mouseDownColIndex && !grid.Model.Options.ExcelLikeSelectionFrame) ? GridRangeInfo.Empty : GridRangeInfo.Cells(Mrci.mouseDownRowIndex, Mrci.mouseDownColIndex, rowIndex, colIndex)))));
			bool flag = false;
			if ((grid.Model.Options.AllowSelection & GridSelectionFlags.AlphaBlend) != GridSelectionFlags.None)
			{
				grid.BeginUpdate(BeginUpdateOptions.Invalidate);
				flag = true;
			}
			try
			{
				if (RaiseSelectionChanging(ref range, GridSelectionReason.MouseMove, range))
				{
					grid.Selections.ChangeSelection(selectedRanges.ActiveRange, range);
					if (grid.Model.Options.ListBoxSelectionMode == SelectionMode.One || (grid.Model.Options.ListBoxSelectionMode == SelectionMode.MultiExtended && multiExtendedShouldMoveCurrentCell))
					{
						grid.CurrentCell.MoveTo(rowIndex, grid.CurrentCell.ColIndex, GridSetCurrentCellOptions.NoSelectRange | GridSetCurrentCellOptions.NoSetFocus | GridSetCurrentCellOptions.NoSyncCurrentCell);
					}
					RaiseSelectionChanged(selectedRanges.ActiveRange, GridSelectionReason.MouseMove);
				}
			}
			finally
			{
				if (flag)
				{
					grid.EndUpdate(update: true);
				}
			}
			return true;
		}
		return false;
	}

	private void EndSelectCells()
	{
		GridRangeInfoList selectedRanges = grid.Model.SelectedRanges;
		grid.CurrentCell.AdjustRowColIfCoveredCell(ref Mrci.mouseMoveRowIndex, ref Mrci.mouseMoveColIndex);
		if (grid.Model.Options.AllowSelection == GridSelectionFlags.None || !inSelectingCells || (Mrci.mouseDownColIndex == 0 && Mrci.mouseDownRowIndex == 0))
		{
			return;
		}
		if (grid.Model.Options.ListBoxSelectionMode == SelectionMode.None && Mrci.mouseDownColIndex == Mrci.mouseMoveColIndex && Mrci.mouseDownRowIndex == Mrci.mouseMoveRowIndex && Mrci.mouseDownRowIndex > 0 && Mrci.mouseDownColIndex > 0)
		{
			if (addNewSelection)
			{
				GridRangeInfo range = GridRangeInfo.Cell(Mrci.mouseDownRowIndex, Mrci.mouseDownColIndex);
				if (selectedRanges.Count > 0 && RaiseSelectionChanging(ref range, GridSelectionReason.MouseUp))
				{
					grid.Selections.ChangeSelection(selectedRanges.ActiveRange, range);
					RaiseSelectionChanged(selectedRanges.ActiveRange, GridSelectionReason.MouseUp);
				}
			}
			else if (!grid.Model.Options.ExcelLikeCurrentCell)
			{
				grid.Selections.Clear();
			}
		}
		else
		{
			RaiseSelectionChanged(selectedRanges.ActiveRange, GridSelectionReason.MouseUp);
		}
	}

	[DocumentationExclude]
	protected virtual void ProcessSetCurrentCell(int rowIndex, int colIndex, GridSetCurrentCellOptions flags)
	{
		if ((flags & GridSetCurrentCellOptions.NoSelectRange) == GridSetCurrentCellOptions.NoSelectRange)
		{
			return;
		}
		if (grid.Model.Options.ExcelLikeCurrentCell)
		{
			if (rowIndex != -1 && colIndex != -1 && grid.Model.SelectedRanges.AnyRangeContains(GridRangeInfo.Cell(rowIndex, colIndex)))
			{
				return;
			}
			GridRangeInfo range;
			if (rowIndex <= grid.InternalGetHeaderRows() || colIndex <= grid.InternalGetHeaderCols())
			{
				range = ((rowIndex > grid.InternalGetHeaderRows()) ? GridRangeInfo.Row(rowIndex) : ((colIndex <= grid.InternalGetHeaderCols()) ? GridRangeInfo.Empty : GridRangeInfo.Col(colIndex)));
			}
			else
			{
				base.Grid.Model.CoveredRanges.Find(rowIndex, colIndex, out range);
			}
			if (((range.IsTable && (grid.Model.Options.AllowSelection & GridSelectionFlags.Table) != GridSelectionFlags.None) || (range.IsRows && (grid.Model.Options.AllowSelection & GridSelectionFlags.Row) != GridSelectionFlags.None) || (range.IsCols && (grid.Model.Options.AllowSelection & GridSelectionFlags.Column) != GridSelectionFlags.None) || (range.IsCells && (grid.Model.Options.AllowSelection & GridSelectionFlags.Cell) != GridSelectionFlags.None)) && RaiseSelectionChanging(ref range, GridSelectionReason.SetCurrentCell, range))
			{
				grid.Selections.Clear();
				grid.Selections.ChangeSelection(GridRangeInfo.Empty, range);
				RaiseSelectionChanged(range, GridSelectionReason.SetCurrentCell);
				if (rowIndex >= 0 && colIndex >= 0)
				{
					Mrci.mouseDownRowIndex = rowIndex;
					Mrci.mouseDownColIndex = colIndex;
					Mrci.mouseClickRowIndex = rowIndex;
					Mrci.mouseClickColIndex = colIndex;
				}
			}
			return;
		}
		if (grid.Model.SelectedRanges.Count == 0 && rowIndex >= 0 && colIndex >= 0)
		{
			Mrci.mouseDownRowIndex = rowIndex;
			Mrci.mouseDownColIndex = colIndex;
			Mrci.mouseClickRowIndex = rowIndex;
			Mrci.mouseClickColIndex = colIndex;
		}
		if (!inSelectingCells && rowIndex >= grid.InternalGetHeaderRows() && (flags & GridSetCurrentCellOptions.NoSelectRange) == 0 && grid.Model.Options.ListBoxSelectionMode != SelectionMode.None && !grid.Model.SelectedRanges.AnyRangeContains(GridRangeInfo.Cell(rowIndex, colIndex)))
		{
			GridRangeInfo range2 = GridRangeInfo.Empty;
			if (RaiseSelectionChanging(ref range2, GridSelectionReason.SetCurrentCell))
			{
				grid.Selections.Clear();
				RaiseSelectionChanged(GridRangeInfo.Empty, GridSelectionReason.SetCurrentCell);
			}
			if (RaiseSelectionChanging(ref range2, GridSelectionReason.SetCurrentCell))
			{
				GridRangeInfo gridRangeInfo = GridRangeInfo.Row(rowIndex);
				grid.Selections.ChangeSelection(range2, gridRangeInfo);
				RaiseSelectionChanged(gridRangeInfo, GridSelectionReason.ArrowKey);
			}
		}
	}

	public override void MouseHoverEnter()
	{
		if (hitTestInfo.cellRenderer != null)
		{
			hitTestInfo.cellRenderer.RaiseMouseHoverEnter(hitTestInfo.rowIndex, hitTestInfo.colIndex);
		}
	}

	public override void MouseHover(MouseEventArgs e)
	{
		if (mouseHoverInfo != null)
		{
			if (mouseHoverInfo.rowIndex != hitTestInfo.rowIndex || mouseHoverInfo.colIndex != hitTestInfo.colIndex || mouseHoverInfo.cellRenderer != hitTestInfo.cellRenderer)
			{
				if (mouseHoverInfo.cellRenderer != null)
				{
					mouseHoverInfo.cellRenderer.RaiseMouseHoverLeave(mouseHoverInfo.rowIndex, mouseHoverInfo.colIndex, e);
				}
				if (hitTestInfo != null && hitTestInfo.cellRenderer != null)
				{
					hitTestInfo.cellRenderer.RaiseMouseHoverEnter(hitTestInfo.rowIndex, hitTestInfo.colIndex);
				}
				mouseHoverInfo = hitTestInfo;
			}
		}
		else if (hitTestInfo != null && hitTestInfo.cellRenderer != null)
		{
			mouseHoverInfo = hitTestInfo;
			hitTestInfo.cellRenderer.RaiseMouseHoverEnter(hitTestInfo.rowIndex, hitTestInfo.colIndex);
		}
		if (hitTestInfo != null && hitTestInfo.cellRenderer != null)
		{
			hitTestInfo.cellRenderer.RaiseMouseHover(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
		}
	}

	public override void MouseHoverLeave(EventArgs e)
	{
		if (mouseHoverInfo != null)
		{
			if (mouseHoverInfo.cellRenderer != null)
			{
				mouseHoverInfo.cellRenderer.RaiseMouseHoverLeave(mouseHoverInfo.rowIndex, mouseHoverInfo.colIndex, e);
			}
			mouseHoverInfo = null;
		}
		if (hitTestInfo != null)
		{
			hitTestInfo.cellRenderer = null;
		}
	}

	public override void MouseDown(MouseEventArgs e)
	{
		HitTest(e, null);
		if (hitTestInfo != null && hitTestInfo.cellRenderer != null && !hitTestInfo.selectCells)
		{
			if (hitTestInfo.cellRenderer is IGridWindowlessObject || grid.RaiseMouseActivating())
			{
				hitTestInfo.cellRenderer.RaiseMouseDown(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
			}
			return;
		}
		if (hitTestInfo != null && (CheckMouseButtons(e) || e.Button == MouseButtons.None))
		{
			ignoreMouseMessages = false;
			_ = hitTestInfo.point;
			int rowIndex = hitTestInfo.rowIndex;
			int colIndex = hitTestInfo.colIndex;
			grid.CurrentCell.AdjustRowColIfCoveredCell(ref rowIndex, ref colIndex);
			canceled = false;
			if (e.Clicks == 2)
			{
				GridCellRendererBase cellRenderer = grid.GetCellRenderer(rowIndex, colIndex);
				cellRenderer.RaiseDoubleClick(rowIndex, colIndex, e);
				canceled = true;
				return;
			}
			canceled = !grid.RaiseMouseActivating();
			if (!canceled)
			{
				if (grid.Model.Options.ExcelLikeCurrentCell && !grid.Model[rowIndex, colIndex].Enabled && (grid.Model.Options.ClickedOnDisabledCellBehavior == GridClickedOnDisabledCellBehavior.LeaveCurrentCell || grid.Model.Options.ClickedOnDisabledCellBehavior == GridClickedOnDisabledCellBehavior.Default || !grid.CurrentCell.Deactivate(discardChanges: false)))
				{
					return;
				}
				BeginSelectCells(rowIndex, colIndex, Control.ModifierKeys);
				GridSetCurrentCellOptions gridSetCurrentCellOptions = ((!grid.Model.Options.ExcelLikeCurrentCell || grid.Model.SelectedRanges.Count != 0) ? GridSetCurrentCellOptions.NoSelectRange : GridSetCurrentCellOptions.None);
				grid.IsMousePressed = true;
				if (grid.CurrentCell.MoveTo(rowIndex, colIndex, gridSetCurrentCellOptions | GridSetCurrentCellOptions.NoSetFocus) && (Control.ModifierKeys & Keys.Shift) == 0)
				{
					Mrci.mouseDownRowIndex = rowIndex;
					Mrci.mouseDownColIndex = colIndex;
				}
				Mrci.mouseClickRowIndex = rowIndex;
				Mrci.mouseClickColIndex = colIndex;
				Mrci.mouseMoveRowIndex = rowIndex;
				Mrci.mouseMoveColIndex = colIndex;
				if (ignoreMouseMessages)
				{
					return;
				}
				int top = 0;
				int left = 0;
				Rectangle gridBounds = grid.GridBounds;
				ScrollBars scrollBars = ScrollBars.None;
				if (e.Button != MouseButtons.None)
				{
					if (rowIndex > 0 && !grid.InternalIsFrozenRow(rowIndex))
					{
						top = grid.ViewLayout.GetRowRangeHeight(0, grid.InternalGetFrozenRows(), GridCellSizeKind.VisibleSize);
						scrollBars |= ScrollBars.Vertical;
					}
					if (colIndex > 0 && !grid.InternalIsFrozenCol(colIndex))
					{
						left = grid.ViewLayout.GetColRangeWidth(0, grid.InternalGetFrozenCols(), GridCellSizeKind.VisibleSize);
						scrollBars |= ScrollBars.Horizontal;
					}
				}
				grid.AutoScrolling = scrollBars;
				grid.AutoScrollBounds = Rectangle.FromLTRB(left, top, gridBounds.Right, gridBounds.Bottom);
			}
		}
		scrolled = false;
	}

	public override void MouseMove(MouseEventArgs e)
	{
		if (canceled || (scrolled && e.Button == MouseButtons.None))
		{
			if (scrolled)
			{
				Rectangle clientRectangle = base.Grid.ClientRectangle;
				clientRectangle.X = clientRectangle.Right - SystemInformation.VerticalScrollBarWidth;
				if (e.X > clientRectangle.X)
				{
					scrolled = false;
				}
			}
		}
		else
		{
			if (grid.CurrentCell.StaticDrawing)
			{
				return;
			}
			if (hitTestInfo != null && hitTestInfo.cellRenderer != null && !hitTestInfo.selectCells)
			{
				hitTestInfo.cellRenderer.RaiseMouseMove(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
				return;
			}
			GridRangeInfo gridRangeInfo = grid.PointToRangeInfo(new Point(e.X, e.Y), 0);
			int top = gridRangeInfo.Top;
			int left = gridRangeInfo.Left;
			if (top != Mrci.mouseMoveRowIndex || left != Mrci.mouseMoveColIndex || scrolled)
			{
				ChangeSelectCells(top, left);
				if (!canceled)
				{
					Mrci.mouseMoveRowIndex = top;
					Mrci.mouseMoveColIndex = left;
				}
			}
			scrolled = false;
		}
	}

	public override void MouseUp(MouseEventArgs e)
	{
		if (hitTestInfo != null && hitTestInfo.cellRenderer != null && !hitTestInfo.selectCells)
		{
			hitTestInfo.cellRenderer.RaiseMouseUp(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
		}
		else
		{
			if (canceled || disposed)
			{
				return;
			}
			EndSelectCells();
			grid.AutoScrolling = ScrollBars.None;
			inSelectingCells = false;
			GridRangeInfo gridRangeInfo = grid.PointToRangeInfo(new Point(e.X, e.Y), 0);
			int rowIndex = gridRangeInfo.Top;
			int colIndex = gridRangeInfo.Left;
			grid.CurrentCell.AdjustRowColIfCoveredCell(ref rowIndex, ref colIndex);
			if (rowIndex == Mrci.mouseClickRowIndex && colIndex == Mrci.mouseClickColIndex)
			{
				GridRangeInfo range = GridRangeInfo.Empty;
				if (rowIndex <= grid.InternalGetHeaderRows() || colIndex <= grid.InternalGetHeaderCols())
				{
					range = ((rowIndex > grid.InternalGetHeaderRows()) ? GridRangeInfo.Row(rowIndex) : ((colIndex <= grid.InternalGetHeaderCols()) ? GridRangeInfo.Empty : GridRangeInfo.Col(colIndex)));
				}
				else
				{
					base.Grid.Model.CoveredRanges.Find(rowIndex, colIndex, out range);
				}
				if (((range.IsTable && (grid.Model.Options.AllowSelection & GridSelectionFlags.Table) != GridSelectionFlags.None) || (range.IsRows && (grid.Model.Options.AllowSelection & GridSelectionFlags.Row) != GridSelectionFlags.None) || (range.IsCols && (grid.Model.Options.AllowSelection & GridSelectionFlags.Column) != GridSelectionFlags.None) || (range.IsCells && (grid.Model.Options.AllowSelection & GridSelectionFlags.Cell) != GridSelectionFlags.None)) && grid.Model.Options.ExcelLikeCurrentCell && !grid.Model.Selections.Ranges.AnyRangeContains(range))
				{
					grid.Model.Selections.Add(range);
				}
				GridCellRendererBase cellRenderer = grid.GetCellRenderer(rowIndex, colIndex);
				cellRenderer.RaiseClick(rowIndex, colIndex, e);
			}
		}
	}

	public override void CancelMode()
	{
		if (hitTestInfo != null && hitTestInfo.cellRenderer != null && !hitTestInfo.selectCells)
		{
			hitTestInfo.cellRenderer.RaiseCancelMode(hitTestInfo.rowIndex, hitTestInfo.colIndex);
			return;
		}
		inSelectingCells = false;
		canceled = true;
	}

	private bool CheckMouseButtons(MouseEventArgs e)
	{
		if (e.Button != MouseButtons.None || grid.Model.Options.SelectCellsMouseButtonsMask == MouseButtons.None)
		{
			return (e.Button & grid.Model.Options.SelectCellsMouseButtonsMask) != 0;
		}
		return true;
	}

	public override int HitTest(MouseEventArgs e, IMouseController controller)
	{
		if (grid.IsDesignMode() && e.Button != MouseButtons.Left)
		{
			return 0;
		}
		hitTestInfo = null;
		new Point(e.X, e.Y);
		if (CheckMouseButtons(e) && (controller == null || GridUtil.IsEmpty(controller.Name)))
		{
			hitTestInfo = new SelectCellsHitTestInfo(grid, e, controller);
			if (hitTestInfo.hitTestResult == 0)
			{
				hitTestInfo = null;
			}
		}
		if (hitTestInfo == null)
		{
			return 0;
		}
		return hitTestInfo.hitTestResult;
	}

	private void grid_CancelMode(object sender, EventArgs e)
	{
		mouseHoverInfo = null;
		hitTestInfo = null;
	}
}
