#define TRACE
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCell : GridSubComponent
{
	private int rowIndex = -1;

	private int colIndex = -1;

	private int keyMoveRowIndex = -1;

	private int keyMoveColIndex = -1;

	internal bool notifyChangingCalled;

	private WeakReference weakRefCellRenderer = new WeakReference(null);

	private bool savedModified;

	private bool isModified;

	private bool isEditing;

	private bool inDeactivate;

	private bool inActivate;

	private bool inActivated;

	private bool inDeactivateFailed;

	private bool inActivateFailed;

	private bool inShowDropDown;

	private bool inConfirmChanges;

	private bool inAcceptedChanges;

	private int suspendEvents;

	private bool moveToDone;

	private int moveToRowIndex = -1;

	private int moveToColIndex = -1;

	private GridSetCurrentCellOptions moveToOptions;

	private bool moveFromActiveState;

	private int moveFromRowIndex = -1;

	private int moveFromColIndex = -1;

	private bool inMoveTo;

	internal bool updateInInitialize = true;

	private bool hidden;

	private bool staticDrawing;

	private GridControlBase grid;

	private bool focusRendererOnBeginEdit = true;

	[DocumentationExclude]
	public bool defaultUpdateFlag = true;

	private int locked;

	internal bool noScrollInView;

	private bool raiseExceptionIfNestedActiveOrDeactivate;

	private bool inEndEdit;

	private bool inBeginEdit;

	private bool activateOnGotFocus;

	private bool isValid = true;

	private bool isChanging;

	internal bool m_bIgnoreFocus;

	private string errorMessage = string.Empty;

	private Exception exception;

	internal bool errorMessageShown;

	private Control staticRenderControl;

	private GridCellRendererBase cellRenderer
	{
		get
		{
			return (GridCellRendererBase)weakRefCellRenderer.Target;
		}
		set
		{
			weakRefCellRenderer = new WeakReference(value);
		}
	}

	private GridCellModelBase cellModel
	{
		get
		{
			if (cellRenderer != null)
			{
				return cellRenderer.cellModel;
			}
			return null;
		}
	}

	private GridModel gridModel => grid.Model;

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	internal bool FocusRendererOnBeginEdit
	{
		get
		{
			return focusRendererOnBeginEdit;
		}
		set
		{
			focusRendererOnBeginEdit = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	public bool StaticDrawing
	{
		get
		{
			return staticDrawing;
		}
		set
		{
			staticDrawing = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	public Control StaticRenderControl
	{
		get
		{
			return staticRenderControl;
		}
		set
		{
			staticRenderControl = value;
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool InternalHide
	{
		get
		{
			return hidden;
		}
		set
		{
			hidden = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string Info => ToString();

	private string lastSyncText
	{
		get
		{
			if (gridModel == null)
			{
				return string.Empty;
			}
			return gridModel.lastSyncText;
		}
		set
		{
			if (gridModel != null)
			{
				gridModel.lastSyncText = value;
			}
		}
	}

	[DocumentationExclude]
	public GridCurrentCellMoveDelegateHandler ExternalMove
	{
		get
		{
			return grid.externalMove;
		}
		set
		{
			grid.externalMove = value;
		}
	}

	public bool IsLocked
	{
		get
		{
			if (locked <= 0)
			{
				return base.Grid.IsDisposed;
			}
			return true;
		}
	}

	public GridRangeInfo RangeInfo
	{
		get
		{
			if (GetCurrentCell(out var row, out var col))
			{
				return GridRangeInfo.Cell(row, col);
			}
			return GridRangeInfo.Empty;
		}
		set
		{
			if (value.IsEmpty)
			{
				MoveTo(-1, -1);
				return;
			}
			if (value.Width == 1 && value.Height == 1)
			{
				MoveTo(value.Top, value.Left);
				return;
			}
			throw new InvalidEnumArgumentException("value");
		}
	}

	public bool IsVisible
	{
		get
		{
			if (!InternalHide && GetCurrentCell(out var num, out var num2))
			{
				return base.Grid.IsVisibleCell(num, num2);
			}
			return false;
		}
	}

	[DocumentationExclude]
	public bool RaiseExceptionIfNestedActiveOrDeactivate
	{
		get
		{
			return raiseExceptionIfNestedActiveOrDeactivate;
		}
		set
		{
			raiseExceptionIfNestedActiveOrDeactivate = value;
		}
	}

	public string ErrorMessage
	{
		get
		{
			return errorMessage;
		}
		set
		{
			errorMessage = value;
		}
	}

	public Exception Exception
	{
		get
		{
			return exception;
		}
		set
		{
			exception = value;
		}
	}

	public bool IsInBeginEdit => inBeginEdit;

	public bool MoveToDone => moveToDone;

	public bool MoveFromActiveState
	{
		get
		{
			if (!inMoveTo && raiseExceptionIfNestedActiveOrDeactivate)
			{
				throw new InvalidOperationException("Invalid state: IsInMoveTo returns false");
			}
			return moveFromActiveState;
		}
	}

	public int MoveToRowIndex
	{
		get
		{
			if (!inMoveTo)
			{
				if (raiseExceptionIfNestedActiveOrDeactivate)
				{
					throw new InvalidOperationException("Invalid state: IsInMoveTo returns false");
				}
				Trace.WriteLine("Invalid state: IsInMoveTo returns false");
			}
			return moveToRowIndex;
		}
	}

	public int MoveToColIndex
	{
		get
		{
			if (!inMoveTo)
			{
				if (raiseExceptionIfNestedActiveOrDeactivate)
				{
					throw new InvalidOperationException("Invalid state: IsInMoveTo returns false");
				}
				Trace.WriteLine("Invalid state: IsInMoveTo returns false");
			}
			return moveToColIndex;
		}
	}

	public GridSetCurrentCellOptions MoveToOptions
	{
		get
		{
			if (!inMoveTo)
			{
				if (raiseExceptionIfNestedActiveOrDeactivate)
				{
					throw new InvalidOperationException("Invalid state: IsInMoveTo returns false");
				}
				Trace.WriteLine("Invalid state: IsInMoveTo returns false");
			}
			return moveToOptions;
		}
	}

	public int MoveFromRowIndex
	{
		get
		{
			if (!inMoveTo)
			{
				if (raiseExceptionIfNestedActiveOrDeactivate)
				{
					throw new InvalidOperationException("Invalid state: IsInMoveTo returns false");
				}
				Trace.WriteLine("Invalid state: IsInMoveTo returns false");
			}
			return moveFromRowIndex;
		}
	}

	public int MoveFromColIndex
	{
		get
		{
			if (!inMoveTo)
			{
				if (raiseExceptionIfNestedActiveOrDeactivate)
				{
					throw new InvalidOperationException("Invalid state: IsInMoveTo returns false");
				}
				Trace.WriteLine("Invalid state: IsInMoveTo returns false");
			}
			return moveFromColIndex;
		}
	}

	public bool IsInMoveTo => inMoveTo;

	public bool HasCurrentCell
	{
		get
		{
			if (!InternalHide)
			{
				return cellRenderer != null;
			}
			return false;
		}
	}

	public bool ActivateOnGotFocus
	{
		get
		{
			return activateOnGotFocus;
		}
		set
		{
			activateOnGotFocus = value;
		}
	}

	public bool IsActive
	{
		get
		{
			if (cellRenderer != null)
			{
				return !InternalHide;
			}
			return false;
		}
	}

	public bool IsEditing
	{
		get
		{
			if (isEditing)
			{
				return IsActive;
			}
			return false;
		}
	}

	public bool IsValid
	{
		get
		{
			return isValid;
		}
		set
		{
			isValid = value;
		}
	}

	public bool IsDroppedDown
	{
		get
		{
			if (cellRenderer != null)
			{
				return cellRenderer.GetDroppedDown();
			}
			return false;
		}
	}

	internal bool InShowDropDown => inShowDropDown;

	public bool HasControlFocus
	{
		get
		{
			if (cellRenderer != null && !InternalHide)
			{
				return cellRenderer.HasFocusControl;
			}
			return false;
		}
		set
		{
			if (value != HasControlFocus)
			{
				if (cellRenderer != null && IsEditing)
				{
					cellRenderer.SetHasFocusControl(value);
				}
				grid.InvalidateRange(RangeInfo);
			}
		}
	}

	public bool IsModified
	{
		get
		{
			if (isModified)
			{
				return IsActive;
			}
			return false;
		}
		set
		{
			if (!IsModified && value)
			{
				isModified = value;
			}
			isModified = value;
		}
	}

	public bool IsChanging
	{
		get
		{
			return isChanging;
		}
		set
		{
			isChanging = value;
		}
	}

	public bool IsSuspendEvents => suspendEvents > 0;

	public int RowIndex => rowIndex;

	public int ColIndex => colIndex;

	public GridCellRendererBase Renderer => cellRenderer;

	public GridCellModelBase Model => cellModel;

	public bool IsInActivate => inActivate;

	[DocumentationExclude]
	public bool IsInActivated => inActivated;

	public bool IsInDeactivate => inDeactivate;

	[DocumentationExclude]
	public bool IsInConfirmChanges => inConfirmChanges;

	[DocumentationExclude]
	public bool IsInAcceptedChanges => inAcceptedChanges;

	[DocumentationExclude]
	public bool IsInEndEdit => inEndEdit;

	public bool IsInActiveOrDeactivate
	{
		get
		{
			if (!inDeactivate && !inActivate && !inActivateFailed)
			{
				return inDeactivateFailed;
			}
			return true;
		}
	}

	public GridCurrentCell(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
	}

	public override string ToString()
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append("CC: { ");
		stringBuilder.Append(string.Concat("Act "));
		if (HasCurrentCell)
		{
			stringBuilder.Append(RangeInfo.ToString() + " ");
			if (isModified)
			{
				stringBuilder.Append("Mod ");
			}
			if (IsEditing)
			{
				stringBuilder.Append("Edi ");
			}
			if (HasControlFocus)
			{
				stringBuilder.Append("Foc ");
			}
		}
		if (inMoveTo)
		{
			stringBuilder.Append("InMoveTo ");
			stringBuilder.Append(moveFromActiveState + ", " + moveFromRowIndex + ", " + moveFromColIndex + ", ");
			stringBuilder.Append("-> " + moveToOptions.ToString() + ", " + moveToRowIndex + ", " + moveToColIndex + ", ");
		}
		if (inActivate)
		{
			stringBuilder.Append("InAct ");
		}
		if (inActivateFailed)
		{
			stringBuilder.Append("InActFail ");
		}
		if (inDeactivate)
		{
			stringBuilder.Append("InDeact ");
		}
		if (inDeactivateFailed)
		{
			stringBuilder.Append("InDeactFail ");
		}
		if (HasCurrentCell && inConfirmChanges)
		{
			stringBuilder.Append("InConf ");
		}
		if (IsLocked)
		{
			stringBuilder.Append("Lock ");
		}
		stringBuilder.Append(string.Concat("}"));
		return stringBuilder.ToString();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			cellRenderer = null;
			cellRenderer = null;
			isEditing = false;
			isModified = false;
		}
		base.Dispose(disposing);
	}

	internal void gridModel_CellModelsChanged(object sender, CollectionChangeEventArgs e)
	{
		cellRenderer = null;
	}

	internal void gridModel_SynchronizingCurrentCell(object sender, GridCellEventArgs e)
	{
		if (!HasControlFocus && !IsInMoveTo && e.RowIndex >= 0 && e.ColIndex >= 0)
		{
			MoveTo(e.RowIndex, e.ColIndex, GridSetCurrentCellOptions.NoSelectRange | GridSetCurrentCellOptions.NoSetFocus | GridSetCurrentCellOptions.NoSyncCurrentCell);
		}
	}

	internal void GridModelChanged(object sender, EventArgs e)
	{
		cellRenderer = null;
		colIndex = 0;
		rowIndex = 0;
		keyMoveRowIndex = 0;
		keyMoveColIndex = 0;
	}

	public void Lock()
	{
		locked++;
	}

	public void Unlock()
	{
		if (locked > 0)
		{
			locked--;
		}
	}

	public void Invalidate()
	{
		if (!InternalHide && GetCurrentCell(out var row, out var col) && base.Grid.Visible && base.Grid.IsVisibleCell(row, col) && Renderer != null && Renderer.ShouldRefreshCurrentCell())
		{
			base.Grid.InvalidateRange(GridRangeInfo.Cell(row, col), GridRangeOptions.MergeAllSpannedCells);
		}
	}

	public void MoveDown()
	{
		MoveDown(1, extendSelection: false);
	}

	public void MoveDown(int num)
	{
		MoveDown(num, extendSelection: false);
	}

	public void MoveDown(int num, bool extendSelection)
	{
		Move(GridDirectionType.Down, num, extendSelection);
	}

	public void MoveUp()
	{
		MoveUp(1, extendSelection: false);
	}

	public void MoveUp(int num)
	{
		MoveUp(num, extendSelection: false);
	}

	public void MoveUp(int num, bool extendSelection)
	{
		Move(GridDirectionType.Up, num, extendSelection);
	}

	public void MoveLeft()
	{
		MoveLeft(1, extendSelection: false);
	}

	public void MoveLeft(int num)
	{
		MoveLeft(num, extendSelection: false);
	}

	public void MoveLeft(int num, bool extendSelection)
	{
		Move(GridDirectionType.Left, num, extendSelection);
	}

	public void MoveRight()
	{
		MoveRight(1, extendSelection: false);
	}

	public void MoveRight(int num)
	{
		MoveRight(num, extendSelection: false);
	}

	public void MoveRight(int num, bool extendSelection)
	{
		Move(GridDirectionType.Right, num, extendSelection);
	}

	public void MovePageUp()
	{
		MovePageUp(extendSelection: false);
	}

	public void MovePageUp(bool extendSelection)
	{
		Move(GridDirectionType.PageUp, 1, extendSelection);
	}

	public void MovePageDown()
	{
		MovePageDown(extendSelection: false);
	}

	public void MovePageDown(bool extendSelection)
	{
		Move(GridDirectionType.PageDown, 1, extendSelection);
	}

	public bool Move(GridDirectionType direction, int num, bool extendSelection, bool wrapCell)
	{
		if (IsLocked)
		{
			return false;
		}
		GridMoveCurrentCellDirectionEventArgs e = new GridMoveCurrentCellDirectionEventArgs(direction, num, extendSelection, RowIndex, ColIndex);
		base.Grid.RaiseMoveCurrentCellDirection(e);
		if (e.Handled)
		{
			if (!e.Result && Exception != null)
			{
				base.Grid.CancelUpdate();
				DisplayWarningText(ErrorMessage);
			}
			return e.Result;
		}
		if (wrapCell && grid.CurrentCell.HasCurrentCell)
		{
			GridWrapCellBehavior wrapCellBehavior = base.Grid.Model.Options.WrapCellBehavior;
			int num2 = RowIndex;
			int num3 = ColIndex;
			switch (direction)
			{
			case GridDirectionType.Right:
			{
				bool flag3 = num3 == gridModel.ColCount;
				if (!flag3)
				{
					num3++;
					flag3 = !base.Grid.GetNextCurrentCellPosition(GridDirectionType.Right, ref num2, ref num3);
				}
				if (!flag3)
				{
					break;
				}
				bool flag4 = num2 == gridModel.RowCount;
				if (!flag4)
				{
					num2++;
					num3 = ColIndex;
					flag4 = !base.Grid.GetNextCurrentCellPosition(GridDirectionType.Down, ref num2, ref num3);
				}
				if (flag4)
				{
					switch (wrapCellBehavior)
					{
					case GridWrapCellBehavior.WrapGrid:
						return Move(GridDirectionType.TopLeft, 1, extendSelection: false, wrapCell: false);
					case GridWrapCellBehavior.NextControlInForm:
					{
						GridWrapCellNextControlInFormEventArgs e3 = new GridWrapCellNextControlInFormEventArgs(forward: true, moveTopLeft: false);
						base.Grid.RaiseWrapCellNextControlInForm(e3);
						if (e3.Cancel || (e3.MoveTopLeft && !Move(GridDirectionType.TopLeft, 1, extendSelection: false, wrapCell: false)))
						{
							break;
						}
						Form form2 = FindFormHelper.FindForm(base.Grid);
						if (form2 != null)
						{
							if (!grid.AllowSelectNextControlinProcessDialogKey)
							{
								return grid.ProcessTabKeyMovingFocus(forward: true);
							}
							if (form2.SelectNextControl(base.Grid, forward: true, tabStopOnly: true, nested: false, wrap: true) && form2.ActiveControl != null)
							{
								if (form2.ActiveControl == base.Grid && form2.SelectNextControl(base.Grid, forward: true, tabStopOnly: true, nested: false, wrap: true) && form2.ActiveControl != null)
								{
									form2.ActiveControl.Focus();
								}
								form2.ActiveControl.Focus();
							}
						}
						return true;
					}
					}
					return false;
				}
				GridCellActivateAction activateCurrentCellBehavior2 = grid.Model.Options.ActivateCurrentCellBehavior;
				grid.Model.Options.activateCurrentCellBehavior = GridCellActivateAction.None;
				grid.BeginUpdateModel(BeginUpdateOptions.InvalidateAndScroll, fromModel: true);
				try
				{
					if (Move(GridDirectionType.Down, 1, extendSelection: false, wrapCell: false))
					{
						Move(GridDirectionType.MostLeft, 1, extendSelection: false, wrapCell: false);
					}
				}
				finally
				{
					grid.EndUpdateModel(defaultUpdateFlag, fromModel: true);
					grid.Model.Options.activateCurrentCellBehavior = activateCurrentCellBehavior2;
					if ((activateCurrentCellBehavior2 & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None && HasCurrentCell)
					{
						BeginEdit();
					}
				}
				return true;
			}
			case GridDirectionType.Left:
			{
				bool flag = num3 == gridModel.Cols.HeaderCount + 1;
				if (!flag)
				{
					num3--;
					flag = !base.Grid.GetNextCurrentCellPosition(GridDirectionType.Left, ref num2, ref num3);
				}
				if (!flag)
				{
					break;
				}
				bool flag2 = num2 == gridModel.Rows.HeaderCount + 1;
				if (!flag2)
				{
					num2--;
					num3 = ColIndex;
					flag2 = !base.Grid.GetNextCurrentCellPosition(GridDirectionType.Up, ref num2, ref num3);
				}
				if (flag2)
				{
					switch (wrapCellBehavior)
					{
					case GridWrapCellBehavior.WrapGrid:
						return Move(GridDirectionType.BottomRight, 1, extendSelection: false, wrapCell: false);
					case GridWrapCellBehavior.NextControlInForm:
					{
						GridWrapCellNextControlInFormEventArgs e2 = new GridWrapCellNextControlInFormEventArgs(forward: false, moveTopLeft: false);
						base.Grid.RaiseWrapCellNextControlInForm(e2);
						if (!e2.Cancel)
						{
							if (!grid.AllowSelectNextControlinProcessDialogKey)
							{
								return grid.ProcessTabKeyMovingFocus(forward: false);
							}
							Form form = FindFormHelper.FindForm(base.Grid);
							if (form != null && form.SelectNextControl(base.Grid, forward: false, tabStopOnly: true, nested: false, wrap: true) && form.ActiveControl != null)
							{
								form.ActiveControl.Focus();
							}
							return true;
						}
						break;
					}
					}
					return false;
				}
				GridCellActivateAction activateCurrentCellBehavior = grid.Model.Options.ActivateCurrentCellBehavior;
				grid.Model.Options.activateCurrentCellBehavior = GridCellActivateAction.None;
				grid.BeginUpdateModel(BeginUpdateOptions.InvalidateAndScroll, fromModel: true);
				try
				{
					if (Move(GridDirectionType.Up, 1, extendSelection: false, wrapCell: false))
					{
						Move(GridDirectionType.MostRight, 1, extendSelection: false, wrapCell: false);
					}
				}
				finally
				{
					grid.EndUpdateModel(defaultUpdateFlag, fromModel: true);
					grid.Model.Options.activateCurrentCellBehavior = activateCurrentCellBehavior;
					if ((activateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None && HasCurrentCell)
					{
						BeginEdit();
					}
				}
				return true;
			}
			}
		}
		int num4 = rowIndex;
		int num5 = colIndex;
		bool flag5 = false;
		if (grid.Model.Options.ListBoxSelectionMode == SelectionMode.One || (grid.Model.Options.ListBoxSelectionMode == SelectionMode.MultiExtended && grid.Model.Options.MulitExtendedArrowKeySelect))
		{
			flag5 = true;
			grid.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
		}
		try
		{
			if (ExternalMove != null)
			{
				ExternalMove(direction, num, extendSelection);
			}
			else
			{
				InternalMove(direction, num, (!noScrollInView) ? GridSetCurrentCellOptions.ScrollInView : GridSetCurrentCellOptions.None);
			}
		}
		finally
		{
			if (flag5)
			{
				grid.EndUpdate(defaultUpdateFlag);
			}
		}
		if (rowIndex == num4)
		{
			return colIndex != num5;
		}
		return true;
	}

	public bool Move(GridDirectionType direction, int num, bool extendSelection)
	{
		return Move(direction, num, extendSelection, gridModel.Options.WrapCell);
	}

	public bool InternalMove(GridDirectionType direction, int num, GridSetCurrentCellOptions options)
	{
		if (IsLocked)
		{
			return false;
		}
		if (grid.ScrollGrid.m_nLeftCol < 0)
		{
			return false;
		}
		if (grid.ScrollGrid.m_nTopRow < 0)
		{
			return false;
		}
		if (gridModel.ColCount != 0 && gridModel.ColCount < grid.ScrollGrid.m_nLeftCol - 1)
		{
			return false;
		}
		if (gridModel.RowCount != 0 && gridModel.RowCount < grid.ScrollGrid.m_nTopRow - 1)
		{
			return false;
		}
		bool flag = false;
		bool disableScrollWindow = grid.DisableScrollWindow;
		bool hasCurrentCell = HasCurrentCell;
		bool flag2 = (options & GridSetCurrentCellOptions.NoSelectRange) == 0;
		bool scrollFrozen = gridModel.Options.ScrollFrozen;
		int num2 = GridUtil.MinMax(rowIndex, 0, gridModel.RowCount);
		int num3 = GridUtil.MinMax(colIndex, 0, gridModel.ColCount);
		int num4 = grid.InternalGetFrozenRows();
		int num5 = grid.InternalGetFrozenCols();
		int num6 = grid.InternalGetHeaderRows();
		int num7 = grid.InternalGetHeaderCols();
		int num8 = num2;
		int num9 = num3;
		grid.GetClientRow(num2);
		int num10 = 0;
		int num11 = 0;
		int num12 = 0;
		bool flag3 = false;
		bool flag4 = false;
		switch (direction)
		{
		case GridDirectionType.Up:
		case GridDirectionType.Down:
		case GridDirectionType.PageDown:
		case GridDirectionType.PageUp:
		case GridDirectionType.Top:
		case GridDirectionType.Bottom:
			flag3 = true;
			break;
		case GridDirectionType.Left:
		case GridDirectionType.Right:
		case GridDirectionType.MostLeft:
		case GridDirectionType.MostRight:
			flag4 = true;
			break;
		}
		num = Math.Max(num, 1);
		if (flag4 && keyMoveRowIndex != -1)
		{
			num2 = GridUtil.MinMax(keyMoveRowIndex, 0, gridModel.RowCount);
		}
		if (flag3 && keyMoveColIndex != -1)
		{
			num3 = GridUtil.MinMax(keyMoveColIndex, 0, gridModel.ColCount);
		}
		int num13 = num2;
		int num14 = num3;
		int num15 = 0;
		int num16 = 0;
		if (gridModel.CoveredRanges.Find(num2, num3, out var range))
		{
			num15 = range.Bottom - range.Top;
			num16 = range.Right - range.Left;
		}
		switch (direction)
		{
		case GridDirectionType.Up:
			flag3 = true;
			while (num > 0)
			{
				if (scrollFrozen && (num13 == grid.TopRowIndex || num11 > 0))
				{
					num11++;
					if (!grid.ScrollGrid.GetPrevRowIndex(ref num13))
					{
						break;
					}
				}
				else if (num13 > num6 + 1 && num11 <= 0)
				{
					num13 = ((num4 <= num6 || num13 < grid.TopRowIndex || num13 > grid.GetRow(grid.GetClientRow(num4) + 1)) ? (num13 - 1) : grid.GetRow(grid.GetClientRow(num13) - 1));
				}
				else
				{
					num11++;
					if (num2 > num4)
					{
						num13 = grid.GetRow(grid.GetClientRow(num4) + 1) - num11;
					}
				}
				if (!base.Grid.GetNextCurrentCellPosition(GridDirectionType.Up, ref num13, ref num14))
				{
					break;
				}
				if (num13 > num4 && num13 < grid.TopRowIndex)
				{
					num11 += grid.TopRowIndex - num13;
				}
				num--;
				flag = true;
				num8 = Math.Max(num13, num6);
				num9 = num14;
			}
			break;
		case GridDirectionType.Down:
			flag3 = true;
			gridModel.RaiseQueryMaximumRowCol(gridModel.RowCount, 0);
			num10 = gridModel.RowCount;
			while (num > 0)
			{
				if (num13 <= num4)
				{
					num13 += num15;
					grid.ScrollGrid.GetNextRowIndex(ref num13, skipFirstHidden: false);
					if (num13 > num4)
					{
						num13 = grid.TopRowIndex;
					}
				}
				else
				{
					num13 += num15 + 1;
				}
				if (!base.Grid.GetNextCurrentCellPosition(GridDirectionType.Down, ref num13, ref num14))
				{
					break;
				}
				num--;
				flag = true;
				num8 = Math.Min(num13, num10);
				num9 = num14;
			}
			break;
		case GridDirectionType.Left:
			while (num > 0)
			{
				if (scrollFrozen && (num14 == grid.LeftColIndex || num12 > 0))
				{
					num12++;
					if (!grid.ScrollGrid.GetPrevColIndex(ref num14))
					{
						break;
					}
				}
				else if (num14 > num7 + 1 && num12 <= 0)
				{
					num14 = ((num5 <= num7 || num14 < grid.LeftColIndex || num14 > grid.GetCol(grid.GetClientCol(num5) + 1)) ? (num14 - 1) : grid.GetCol(grid.GetClientCol(num14) - 1));
				}
				else
				{
					num12++;
					if (num14 > num5)
					{
						num14 = grid.GetCol(grid.GetClientCol(num5) + 1) - num12;
					}
				}
				if (!base.Grid.GetNextCurrentCellPosition(GridDirectionType.Left, ref num13, ref num14))
				{
					break;
				}
				if (num14 > num5 && num14 < grid.LeftColIndex)
				{
					num12 += grid.LeftColIndex - num14;
				}
				num--;
				flag = true;
				num8 = num13;
				num9 = Math.Max(num14, num7);
			}
			break;
		case GridDirectionType.Right:
			gridModel.RaiseQueryMaximumRowCol(0, gridModel.ColCount);
			num10 = gridModel.ColCount;
			while (num > 0)
			{
				if (num14 <= num5)
				{
					num14 += num16;
					grid.ScrollGrid.GetNextColIndex(ref num14, skipFirstHidden: false);
					if (num14 > num5)
					{
						num14 = grid.LeftColIndex;
					}
				}
				else
				{
					num14 += num16 + 1;
				}
				if (!base.Grid.GetNextCurrentCellPosition(GridDirectionType.Right, ref num13, ref num14))
				{
					break;
				}
				num--;
				flag = true;
				num8 = num13;
				num9 = Math.Min(num14, num10);
			}
			break;
		case GridDirectionType.PageDown:
		{
			flag3 = true;
			gridModel.RaiseQueryMaximumRowCol(gridModel.RowCount, 0);
			num10 = gridModel.RowCount;
			if (grid.ScrollGrid.m_nTopRow >= num10)
			{
				break;
			}
			for (int i = grid.GetRowHeight(num13); i < base.Grid.ViewLayout.VscrollAreaBounds.Height; i += grid.GetRowHeight(num13))
			{
				if (!grid.ScrollGrid.GetNextRowIndex(ref num13, skipFirstHidden: true))
				{
					break;
				}
			}
			flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Down, ref num13, ref num14);
			if (!flag)
			{
				flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Up, ref num13, ref num14);
			}
			if (flag)
			{
				num8 = num13;
				num9 = num14;
			}
			break;
		}
		case GridDirectionType.PageUp:
			flag3 = true;
			if (grid.ScrollGrid.m_nTopRow > num4 + 1)
			{
				int firstScrollableRow = grid.GetFirstScrollableRow();
				_ = grid.GridBounds;
				for (int j = grid.GetRowHeight(num13); j < base.Grid.ViewLayout.VscrollAreaBounds.Height; j += grid.GetRowHeight(num13))
				{
					if (!grid.ScrollGrid.GetPrevRowIndex(ref num13))
					{
						break;
					}
				}
				if (num13 < firstScrollableRow)
				{
					num13 = grid.InternalGetHeaderRows();
					grid.ScrollGrid.GetNextRowIndex(ref num13, skipFirstHidden: false);
					num11 = 1;
				}
				flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Up, ref num13, ref num14);
				if (!flag)
				{
					gridModel.RaiseQueryMaximumRowCol(gridModel.RowCount, 0);
					flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Down, ref num13, ref num14);
				}
				if (flag)
				{
					num8 = num13;
					num9 = num14;
				}
			}
			else
			{
				gridModel.RaiseQueryMaximumRowCol(gridModel.RowCount, 0);
				num13 = Math.Min(grid.InternalGetHeaderRows() + 1, gridModel.RowCount);
				flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Down, ref num13, ref num14);
				if (flag)
				{
					num8 = num13;
					num9 = num14;
				}
			}
			break;
		case GridDirectionType.MostLeft:
			gridModel.RaiseQueryMaximumRowCol(0, gridModel.ColCount);
			num12 = 1;
			num14 = Math.Min(grid.InternalGetHeaderCols() + 1, gridModel.ColCount);
			flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Right, ref num13, ref num14);
			if (flag)
			{
				num8 = num13;
				num9 = num14;
			}
			break;
		case GridDirectionType.MostRight:
			gridModel.RaiseQueryMaximumRowCol(0, 2147483646);
			num14 = gridModel.ColCount;
			flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Left, ref num13, ref num14);
			if (flag)
			{
				num8 = num13;
				num9 = num14;
			}
			break;
		case GridDirectionType.TopLeft:
			gridModel.RaiseQueryMaximumRowCol(gridModel.RowCount, gridModel.ColCount);
			num14 = Math.Min(grid.InternalGetHeaderCols() + 1, gridModel.ColCount);
			num13 = Math.Min(grid.InternalGetHeaderRows() + 1, gridModel.RowCount);
			flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Right, ref num13, ref num14);
			if (!flag)
			{
				flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Down, ref num13, ref num14);
			}
			if (flag)
			{
				num8 = num13;
				num9 = num14;
			}
			break;
		case GridDirectionType.BottomRight:
			gridModel.RaiseQueryMaximumRowCol(2147483646, 2147483646);
			num14 = gridModel.ColCount;
			num13 = gridModel.RowCount;
			flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Left, ref num13, ref num14);
			if (!flag)
			{
				flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Up, ref num13, ref num14);
			}
			if (flag)
			{
				num8 = num13;
				num9 = num14;
			}
			break;
		case GridDirectionType.Top:
			flag3 = true;
			num11 = 1;
			gridModel.RaiseQueryMaximumRowCol(gridModel.RowCount, 0);
			num13 = Math.Min(grid.InternalGetHeaderRows() + 1, gridModel.RowCount);
			flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Down, ref num13, ref num14);
			if (flag)
			{
				num8 = num13;
				num9 = num14;
			}
			break;
		case GridDirectionType.Bottom:
			flag3 = true;
			gridModel.RaiseQueryMaximumRowCol(2147483646, 0);
			num13 = gridModel.RowCount;
			flag = base.Grid.GetNextCurrentCellPosition(GridDirectionType.Up, ref num13, ref num14);
			if (flag)
			{
				num8 = num13;
				num9 = num14;
			}
			break;
		}
		grid.DisableScrollWindow = Math.Abs(num8 - num2) > grid.ViewLayout.VisibleRows / 2 || Math.Abs(num9 - num3) > grid.ViewLayout.VisibleCols / 2;
		bool result = false;
		if (flag && ((num8 != num2 && num8 > num6) || (num9 != num3 && num9 > num7) || !hasCurrentCell))
		{
			_ = grid.ViewLayout.VisibleCols / 2;
			_ = grid.ViewLayout.VisibleRows / 2;
			if (gridModel.Options.ExcelLikeCurrentCell && flag2 && gridModel.Selections.Ranges.Count > 0 && !gridModel.Selections.Ranges.AnyRangeContains(GridRangeInfo.Cell(num8, num9)))
			{
				grid.Selections.Clear(raiseEvents: true);
			}
			bool hasCurrentCell2 = HasCurrentCell;
			int num17 = num8;
			int num18 = num9;
			AdjustRowColIfCoveredCell(ref num17, ref num18);
			if (MoveTo(num17, num18, options))
			{
				if (num12 > 0 && num18 < grid.LeftColIndex)
				{
					grid.LeftColIndex = Math.Max(num18, grid.GetFirstScrollableCol());
				}
				if (num11 > 0 && num17 < grid.TopRowIndex)
				{
					grid.TopRowIndex = Math.Max(num17, grid.GetFirstScrollableRow());
				}
				if (!hasCurrentCell2 || grid.Model.CoveredRanges.FindRange(rowIndex, colIndex).IsEmpty)
				{
					keyMoveRowIndex = rowIndex;
					keyMoveColIndex = colIndex;
				}
				else if (flag3)
				{
					keyMoveRowIndex = rowIndex;
					keyMoveColIndex = num9;
				}
				else
				{
					keyMoveRowIndex = num8;
					keyMoveColIndex = colIndex;
				}
				result = true;
			}
		}
		grid.DisableScrollWindow = disableScrollWindow;
		return result;
	}

	public void AdjustRowColIfCoveredCell(ref int rowIndex, ref int colIndex)
	{
		if (rowIndex >= 0 && colIndex >= 0 && gridModel.CoveredRanges.Find(rowIndex, colIndex, out var range) && (range.Top != rowIndex || range.Left != colIndex))
		{
			rowIndex = range.Top;
			colIndex = range.Left;
		}
	}

	private ScrollBars GetMovement(int targetRowIndex, int targetColIndex)
	{
		ScrollBars scrollBars = ScrollBars.None;
		if (targetRowIndex < 0 || targetColIndex < 0)
		{
			scrollBars = ((!HasCurrentCell) ? ScrollBars.Both : ScrollBars.None);
		}
		else if (targetColIndex <= grid.InternalGetHeaderCols() || targetRowIndex <= grid.InternalGetHeaderRows())
		{
			scrollBars = ScrollBars.None;
		}
		else if (!HasCurrentCell)
		{
			scrollBars = ScrollBars.Both;
		}
		else
		{
			if (rowIndex != targetRowIndex)
			{
				scrollBars |= ScrollBars.Vertical;
			}
			if (colIndex != targetColIndex)
			{
				scrollBars |= ScrollBars.Horizontal;
			}
		}
		return scrollBars;
	}

	public bool Deactivate(bool discardChanges)
	{
		if (IsLocked)
		{
			return false;
		}
		if (inActivate || inDeactivate)
		{
			if (raiseExceptionIfNestedActiveOrDeactivate)
			{
				throw new InvalidOperationException("Deactivate called while the current cell was in process of activating or deactivating a cell. Calling CurrentCell.Lock() will prevent this exception.");
			}
			Trace.WriteLine("Deactivate called while the current cell was in process of activating or deactivating a cell. Calling CurrentCell.Lock() will prevent this exception.");
			return false;
		}
		GridCellRendererBase gridCellRendererBase = cellRenderer;
		if (gridCellRendererBase == null)
		{
			return true;
		}
		lastSyncText = Model.GetActiveText(RowIndex, ColIndex);
		bool flag = false;
		savedModified = isModified;
		inDeactivate = true;
		Trace.Indent();
		try
		{
			Rectangle savedBounds = Rectangle.Empty;
			if (gridModel.Options.RefreshCurrentCellBehavior == GridRefreshCurrentCellBehavior.RefreshRow && base.Grid.IsVisibleCell(rowIndex, 0))
			{
				savedBounds = base.Grid.RangeInfoToRectangle(GridRangeInfo.Row(rowIndex), GridRangeOptions.MergeAllSpannedCells);
			}
			else if (base.Grid.IsVisibleCell(rowIndex, colIndex))
			{
				savedBounds = base.Grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), GridRangeOptions.MergeAllSpannedCells);
			}
			if (!base.Grid.RaiseCurrentCellDeactivating())
			{
				return false;
			}
			if (cellRenderer == null || !cellRenderer.RaiseDeactivating())
			{
				return false;
			}
			if (IsModified)
			{
				if (!discardChanges)
				{
					if (!ConfirmChanges())
					{
						return false;
					}
				}
				else
				{
					RejectChanges();
				}
			}
			flag = true;
			if (IsEditing)
			{
				CancelEdit();
			}
			if (cellRenderer != null)
			{
				cellRenderer.SetHasFocusControl(value: false);
			}
			cellRenderer = null;
			base.Grid.InvalidateDeactivatedCurrentCell(rowIndex, colIndex, savedBounds);
			inDeactivate = false;
			if (gridCellRendererBase != null)
			{
				gridCellRendererBase.RaiseDeactived(rowIndex, colIndex);
				gridCellRendererBase.Model.ResetActiveText(rowIndex, colIndex);
			}
			gridModel.ResetCurrentCellInfo();
			base.Grid.RaiseCurrentCellDeactivated(rowIndex, colIndex);
			return true;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			flag = false;
			Exception = ex;
			if (!ExceptionManager.RaiseExceptionCatched(grid, ex))
			{
				throw;
			}
			ErrorMessage = ex.Message;
			return false;
		}
		finally
		{
			inDeactivate = false;
			savedModified = false;
			if (!flag)
			{
				inDeactivateFailed = true;
				base.Grid.RaiseCurrentCellDeactivateFailed();
				inDeactivateFailed = false;
			}
			Trace.Unindent();
		}
	}

	public void EndEdit()
	{
		if (IsLocked || cellRenderer == null || !isEditing)
		{
			return;
		}
		try
		{
			inEndEdit = true;
			if (IsDroppedDown)
			{
				CloseDropDown(PopupCloseType.Done);
			}
			if (IsModified && !ConfirmChanges())
			{
				if (Exception != null)
				{
					throw Exception;
				}
				if (!GridUtil.IsEmpty(ErrorMessage))
				{
					throw new Exception(ErrorMessage);
				}
			}
			if (!IsModified && isEditing)
			{
				if (cellRenderer != null)
				{
					cellRenderer.RaiseEndEdit();
					isEditing = false;
				}
				if (cellRenderer != null)
				{
					cellRenderer.RaiseEditingComplete();
				}
				isEditing = false;
				base.Grid.RaiseCurrentCellEditingComplete();
				notifyChangingCalled = false;
			}
		}
		finally
		{
			inEndEdit = false;
		}
	}

	public bool ConfirmChanges()
	{
		return ConfirmChanges(closeDropDown: true);
	}

	public bool ConfirmChanges(bool closeDropDown)
	{
		if (IsLocked)
		{
			return false;
		}
		Trace.Indent();
		bool flag = false;
		inConfirmChanges = true;
		try
		{
			if (cellRenderer != null)
			{
				if (closeDropDown && IsDroppedDown)
				{
					CloseDropDown(PopupCloseType.Done);
				}
				if (IsModified)
				{
					flag = true;
					base.Grid.BeginUpdateModel(BeginUpdateOptions.InvalidateAndScroll, fromModel: true);
					Validate();
					if (!IsValid)
					{
						base.Grid.RaiseCurrentCellConfirmChangesFailed();
						return false;
					}
					if (cellRenderer == null || !cellRenderer.RaiseSaveChanges())
					{
						return false;
					}
					IsModified = false;
					inAcceptedChanges = true;
					if (!base.Grid.RaiseCurrentCellAcceptedChanges())
					{
						inAcceptedChanges = false;
						IsModified = true;
						base.Grid.RaiseCurrentCellConfirmChangesFailed();
						return false;
					}
					inAcceptedChanges = false;
				}
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			base.Grid.RaiseCurrentCellConfirmChangesFailed();
			Exception = ex;
			if (!ExceptionManager.RaiseExceptionCatched(grid, ex))
			{
				throw;
			}
			ErrorMessage = ex.Message;
			return false;
		}
		finally
		{
			inConfirmChanges = false;
			if (flag)
			{
				base.Grid.EndUpdateModel(update: false, fromModel: true);
			}
			Trace.Unindent();
		}
		return true;
	}

	public void CancelEdit()
	{
		if (IsLocked)
		{
			return;
		}
		Trace.Indent();
		try
		{
			if (isEditing)
			{
				if (IsDroppedDown)
				{
					CloseDropDown(PopupCloseType.Canceled);
				}
				if (isModified)
				{
					RejectChanges();
				}
				if (cellRenderer != null)
				{
					cellRenderer.RaiseEndEdit();
				}
				isEditing = false;
				base.Grid.RaiseCurrentCellEditingComplete();
				if (cellRenderer != null)
				{
					cellRenderer.RaiseEditingComplete();
				}
			}
			if (cellRenderer != null)
			{
				cellRenderer.ResetControlText();
				if (!cellRenderer.HasFocusControl && cellRenderer.Control != null && cellRenderer.Control.Focused)
				{
					if (!base.Grid.IsInLeaveOrValidate || base.Grid.validatingFailed)
					{
						base.Grid.Focus();
					}
					else
					{
						Trace.WriteLineIf(Switches.GridFocus.TraceVerbose, "--- No Grid.Focus() because: " + base.Grid.IsInLeaveOrValidate);
					}
				}
			}
			notifyChangingCalled = false;
		}
		finally
		{
			Trace.Unindent();
		}
	}

	public void RejectChanges()
	{
		if (!IsLocked)
		{
			if (IsDroppedDown)
			{
				CloseDropDown(PopupCloseType.Canceled);
			}
			if (cellRenderer != null)
			{
				cellRenderer.RaiseRejectChanges();
			}
			IsModified = false;
			base.Grid.RaiseCurrentCellRejectedChanges();
		}
	}

	public bool Activate(int rowIndex, int colIndex)
	{
		return Activate(rowIndex, colIndex, GridSetCurrentCellOptions.None);
	}

	public bool Activate(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
	{
		if (IsLocked)
		{
			return false;
		}
		if (inActivate || inDeactivate)
		{
			if (raiseExceptionIfNestedActiveOrDeactivate)
			{
				throw new InvalidOperationException("Deactivate called while the current cell was in process of activating or deactivating a cell. Calling CurrentCell.Lock() will prevent this exception.");
			}
			Trace.WriteLine("Deactivate called while the current cell was in process of activating or deactivating a cell. Calling CurrentCell.Lock() will prevent this exception.");
			return false;
		}
		if (HasCurrentCell)
		{
			return false;
		}
		if (rowIndex < 0 || colIndex < 0 || rowIndex > gridModel.RowCount || colIndex > gridModel.ColCount)
		{
			return false;
		}
		bool flag = false;
		inActivate = true;
		Trace.Indent();
		try
		{
			if (!base.Grid.RaiseCurrentCellActivating(ref rowIndex, ref colIndex, ref options))
			{
				return false;
			}
			if (rowIndex < 0 || colIndex < 0 || rowIndex > gridModel.RowCount || colIndex > gridModel.ColCount)
			{
				return false;
			}
			GridCellRendererBase gridCellRendererBase = grid.GetCellRenderer(rowIndex, colIndex);
			string text = null;
			if (base.Grid.Model.Options.ShouldSynchronizeCurrentCell && RowIndex == rowIndex && ColIndex == colIndex)
			{
				text = lastSyncText;
			}
			if (!gridCellRendererBase.RaiseActivating(rowIndex, colIndex))
			{
				return false;
			}
			this.rowIndex = rowIndex;
			this.colIndex = colIndex;
			if (!inMoveTo)
			{
				keyMoveRowIndex = rowIndex;
				keyMoveColIndex = colIndex;
			}
			cellRenderer = gridCellRendererBase;
			bool flag2 = false;
			if ((options & GridSetCurrentCellOptions.ScrollInView) != GridSetCurrentCellOptions.None)
			{
				flag2 = base.Grid.ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell: false, dontScroll: true, GridScrollCurrentCellReason.Activate);
			}
			if (flag2)
			{
				base.Grid.Update();
				base.Grid.ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell: false, dontScroll: false, GridScrollCurrentCellReason.Activate);
			}
			flag = true;
			gridModel.CurrentCellInfo = new GridCurrentCellInfo(grid, cellRenderer, rowIndex, colIndex);
			GridRangeInfo range = GridRangeInfo.Cell(rowIndex, colIndex);
			ActivateOnGotFocus = false;
			base.Grid.BeginUpdateModel(BeginUpdateOptions.InvalidateAndScroll, fromModel: true);
			bool flag3 = false;
			if (cellRenderer != null && cellRenderer.ShouldRefreshCurrentCell())
			{
				if (gridModel.Options.RefreshCurrentCellBehavior == GridRefreshCurrentCellBehavior.RefreshRow && (!IsInMoveTo || MoveFromRowIndex != rowIndex) && base.Grid.Visible && base.Grid.IsVisibleCell(rowIndex, 0))
				{
					flag3 = true;
					base.Grid.InvalidateRange(GridRangeInfo.Row(rowIndex), GridRangeOptions.MergeAllSpannedCells);
				}
				if (!flag3 && base.Grid.Visible && base.Grid.IsVisibleCell(rowIndex, colIndex))
				{
					base.Grid.InvalidateRange(range, GridRangeOptions.MergeAllSpannedCells);
				}
			}
			if (HasCurrentCell)
			{
				cellRenderer.Initialize(rowIndex, colIndex);
			}
			Initialize(options);
			if (!GridUtil.IsEmpty(text))
			{
				if (cellRenderer != null)
				{
					cellRenderer.ControlText = text;
				}
				lastSyncText = null;
			}
			if ((options & GridSetCurrentCellOptions.NoSetFocus) == 0 && (grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None)
			{
				BeginEdit();
			}
			inActivate = false;
			inActivated = true;
			if (cellRenderer != null)
			{
				cellRenderer.RaiseActivated();
			}
			base.Grid.RaiseCurrentCellActivated();
			inActivated = false;
			base.Grid.EndUpdateModel(defaultUpdateFlag, fromModel: true);
			return true;
		}
		finally
		{
			inActivate = false;
			if (!flag)
			{
				inActivateFailed = true;
				base.Grid.RaiseCurrentCellActivateFailed(rowIndex, colIndex);
				inActivateFailed = false;
			}
			Trace.Unindent();
		}
	}

	public bool BeginEdit()
	{
		if (IsLocked)
		{
			return false;
		}
		inBeginEdit = true;
		try
		{
			if (IsValidCellPosition(rowIndex, colIndex))
			{
				if (cellRenderer != null && !IsEditing && cellRenderer.SupportsEditing)
				{
					notifyChangingCalled = false;
					if (!base.Grid.RaiseCurrentCellStartEditing())
					{
						return false;
					}
					if (cellRenderer == null || !cellRenderer.RaiseStartEditing())
					{
						return false;
					}
					isEditing = true;
					cellRenderer.RaiseBeginEdit();
				}
				if (grid.HasControlFocus && !grid.IsMousePressed)
				{
					ScrollInView(GridScrollCurrentCellReason.BeginEdit);
				}
				return true;
			}
		}
		finally
		{
			inBeginEdit = false;
		}
		return false;
	}

	public bool BeginEdit(bool focusRenderer)
	{
		bool flag = FocusRendererOnBeginEdit;
		FocusRendererOnBeginEdit = focusRenderer;
		try
		{
			return BeginEdit();
		}
		finally
		{
			FocusRendererOnBeginEdit = flag;
		}
	}

	public bool MoveTo(int rowIndex, int colIndex, GridSetCurrentCellOptions options, bool discardChanges)
	{
		if (IsLocked)
		{
			return false;
		}
		_ = cellRenderer;
		int num = this.rowIndex;
		int num2 = this.colIndex;
		bool flag = false;
		bool hasControlFocus = grid.HasControlFocus;
		keyMoveRowIndex = -1;
		keyMoveColIndex = -1;
		gridModel.RaiseQueryMaximumRowCol(rowIndex, colIndex);
		if (rowIndex > grid.Model.RowCount || colIndex > grid.Model.ColCount)
		{
			return false;
		}
		GridStyleInfo viewStyleInfo = grid.GetViewStyleInfo(rowIndex, colIndex);
		try
		{
			if (!viewStyleInfo.Enabled && !base.Grid.IsDesignMode())
			{
				return false;
			}
			moveFromColIndex = this.colIndex;
			moveFromRowIndex = this.rowIndex;
			moveFromActiveState = HasCurrentCell;
			moveToOptions = options;
			moveToRowIndex = rowIndex;
			moveToColIndex = colIndex;
			inMoveTo = true;
			bool flag2 = false;
			bool flag3 = false;
			Trace.Indent();
			try
			{
				if (!base.Grid.RaiseCurrentCellMoving(ref rowIndex, ref colIndex, ref options))
				{
					return false;
				}
				moveToOptions = options;
				moveToRowIndex = rowIndex;
				moveToColIndex = colIndex;
				flag2 = (options & GridSetCurrentCellOptions.BeginEndUpdate) != 0;
				if (flag2)
				{
					grid.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
				}
				flag3 = (options & GridSetCurrentCellOptions.NoActivate) != 0;
				if (!flag3 && rowIndex == num && colIndex == num2 && HasCurrentCell)
				{
					if (Renderer.ShouldRefreshCurrentCell())
					{
						if (!HasControlFocus && !IsModified)
						{
							Refresh();
							Initialize(options);
						}
						else
						{
							Renderer.SetHasFocusControl(value: true);
							grid.InvalidateRange(GridRangeInfo.Cell(rowIndex, colIndex));
						}
					}
					flag = true;
					return true;
				}
				AdjustRowColIfCoveredCell(ref rowIndex, ref colIndex);
				moveToRowIndex = rowIndex;
				moveToColIndex = colIndex;
				GetMovement(rowIndex, colIndex);
				if (!Deactivate(discardChanges))
				{
					return false;
				}
				isModified = false;
				if (!flag3 && !Activate(rowIndex, colIndex, options))
				{
					return false;
				}
				moveToRowIndex = this.rowIndex;
				moveToColIndex = this.colIndex;
				moveToDone = true;
				flag = true;
				if (!flag3 && hasControlFocus && grid.WantKeys && !HasControlFocus && (options & GridSetCurrentCellOptions.NoSetFocus) == 0)
				{
					grid.Focus();
				}
				return true;
			}
			finally
			{
				moveToDone = true;
				bool flag4 = HasControlFocus;
				if (flag)
				{
					base.Grid.RaiseCurrentCellMoved(options);
					flag4 = false;
				}
				else
				{
					base.Grid.RaiseCurrentCellMoveFailed(rowIndex, colIndex, options);
					if (ErrorMessage.Length > 0)
					{
						grid.CancelUpdate();
						DisplayWarningText(ErrorMessage);
					}
					else
					{
						flag4 = false;
					}
				}
				if (flag2)
				{
					grid.EndUpdate(defaultUpdateFlag);
				}
				inMoveTo = false;
				Trace.Unindent();
				if (flag4 && (options & GridSetCurrentCellOptions.NoSetFocus) == 0)
				{
					if (Renderer != null && Renderer.Control != null)
					{
						Renderer.Control.Focus();
					}
					else
					{
						grid.Focus();
					}
				}
			}
		}
		finally
		{
			viewStyleInfo.Dispose();
			moveToDone = false;
		}
	}

	public bool MoveTo(GridRangeInfo range)
	{
		if (range.IsEmpty)
		{
			return MoveTo(-1, -1, GridSetCurrentCellOptions.None, discardChanges: false);
		}
		return MoveTo(range.Top, range.Left, GridSetCurrentCellOptions.None, discardChanges: false);
	}

	public bool MoveTo(GridRangeInfo range, GridSetCurrentCellOptions options)
	{
		if (range.IsEmpty)
		{
			return MoveTo(-1, -1, options, discardChanges: false);
		}
		return MoveTo(range.Top, range.Left, options, discardChanges: false);
	}

	public bool MoveTo(GridRangeInfo range, GridSetCurrentCellOptions options, bool discardChanges)
	{
		if (range.IsEmpty)
		{
			return MoveTo(-1, -1, options, discardChanges);
		}
		return MoveTo(range.Top, range.Left, options, discardChanges);
	}

	public void SetPositionNoActivate(int rowIndex, int colIndex)
	{
		if (!IsLocked)
		{
			this.rowIndex = rowIndex;
			this.colIndex = colIndex;
			keyMoveRowIndex = rowIndex;
			keyMoveColIndex = colIndex;
			GridCellRendererBase gridCellRendererBase = grid.GetCellRenderer(rowIndex, colIndex);
			cellRenderer = gridCellRendererBase;
			if (cellRenderer != null)
			{
				cellRenderer.RowIndex = rowIndex;
				cellRenderer.ColIndex = colIndex;
			}
		}
	}

	public void ResetCurrentCellWithoutDeactivate()
	{
		if (!IsLocked)
		{
			if (cellRenderer != null)
			{
				cellRenderer.Hide();
			}
			cellRenderer = null;
			isEditing = false;
			isModified = false;
		}
	}

	public void SetCurrentCellNoActivate(int rowIndex, int colIndex)
	{
		if (!IsLocked)
		{
			this.rowIndex = rowIndex;
			this.colIndex = colIndex;
			keyMoveRowIndex = rowIndex;
			keyMoveColIndex = colIndex;
			if (rowIndex >= 0 && colIndex >= 0)
			{
				GridCellRendererBase gridCellRendererBase = grid.GetCellRenderer(rowIndex, colIndex);
				cellRenderer = gridCellRendererBase;
			}
		}
	}

	public bool MoveTo(int rowIndex, int colIndex)
	{
		return MoveTo(rowIndex, colIndex, GridSetCurrentCellOptions.None, discardChanges: false);
	}

	public bool MoveTo(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
	{
		return MoveTo(rowIndex, colIndex, options, discardChanges: false);
	}

	private void Initialize(GridSetCurrentCellOptions options)
	{
		Trace.Indent();
		if (IsLocked)
		{
			return;
		}
		try
		{
			if (HasCurrentCell)
			{
				if ((options & GridSetCurrentCellOptions.SetFocus) == GridSetCurrentCellOptions.SetFocus)
				{
					BeginEdit(base.Grid.Focused);
				}
				if ((options & GridSetCurrentCellOptions.ScrollInView) != GridSetCurrentCellOptions.None)
				{
					ScrollInView(GridScrollCurrentCellReason.MoveTo);
				}
				gridModel.SetActiveCurrentCell(rowIndex, colIndex);
			}
			if (gridModel.Options.ShouldSynchronizeCurrentCell && (options & GridSetCurrentCellOptions.NoSyncCurrentCell) == 0)
			{
				if (HasCurrentCell)
				{
					gridModel.SynchronizeCurrentCell(rowIndex, colIndex);
				}
				else
				{
					gridModel.SynchronizeCurrentCell(-1, -1);
				}
			}
			if (!grid.Updating && updateInInitialize)
			{
				grid.Update();
			}
			IsModified = false;
		}
		finally
		{
			Trace.Unindent();
		}
	}

	public void Refresh()
	{
		if (IsChanging || IsLocked)
		{
			return;
		}
		Trace.Indent();
		try
		{
			if (Renderer != null && !inActivate && !inDeactivate)
			{
				GridStyleInfo viewStyleInfo = base.Grid.GetViewStyleInfo(rowIndex, colIndex);
				GridCellRendererBase gridCellRendererBase = base.Grid.CellRenderers[viewStyleInfo.CellType];
				if (gridCellRendererBase != cellRenderer)
				{
					Reactivate();
					return;
				}
				Renderer.Hide();
				if (!IsModified)
				{
					Renderer.Initialize(rowIndex, colIndex);
				}
			}
			if (rowIndex >= 0 && colIndex >= 0)
			{
				base.Grid.InvalidateRange(GridRangeInfo.Cell(rowIndex, colIndex), GridRangeOptions.MergeAllSpannedCells);
			}
		}
		finally
		{
			Trace.Unindent();
		}
	}

	public void Reactivate()
	{
		if (!IsLocked && !inActivate && !inDeactivate && !inConfirmChanges && HasCurrentCell)
		{
			bool flag = IsEditing;
			Deactivate(discardChanges: true);
			Activate(RowIndex, ColIndex);
			if (flag && !IsEditing)
			{
				BeginEdit();
			}
		}
	}

	public void Validate()
	{
		if (IsLocked || cellRenderer == null)
		{
			return;
		}
		Trace.Indent();
		try
		{
			IsValid = base.Grid.RaiseCurrentCellValidating() && (cellRenderer == null || cellRenderer.RaiseValidate());
			if (IsValid)
			{
				if (cellRenderer != null)
				{
					cellRenderer.RaiseValidated();
				}
				base.Grid.RaiseCurrentCellValidated();
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			IsValid = false;
			Exception = ex;
			if (!ExceptionManager.RaiseExceptionCatched(grid, ex))
			{
				throw;
			}
			ErrorMessage = ex.Message;
		}
		finally
		{
			Trace.Unindent();
		}
	}

	public void ResetError()
	{
		errorMessage = string.Empty;
		exception = null;
	}

	public void ToggleDropDown()
	{
		if (!IsDroppedDown)
		{
			ShowDropDown();
		}
		else
		{
			CloseDropDown(PopupCloseType.Canceled);
		}
	}

	public void ShowDropDown()
	{
		if (!IsDroppedDown)
		{
			inShowDropDown = true;
			BeginEdit();
			if (cellRenderer != null)
			{
				cellRenderer.RaiseShowDropDown();
			}
			inShowDropDown = true;
		}
	}

	public void CloseDropDown(PopupCloseType reason)
	{
		if (IsDroppedDown && cellRenderer != null)
		{
			cellRenderer.RaiseCloseDropDown(reason);
		}
	}

	private bool IsValidCellPosition(int rowIndex, int colIndex)
	{
		if (rowIndex >= 0 && colIndex >= 0 && rowIndex <= gridModel.RowCount)
		{
			return colIndex <= gridModel.ColCount;
		}
		return false;
	}

	public bool ScrollInView()
	{
		return ScrollInView(GridScrollCurrentCellReason.Any);
	}

	public bool ScrollInView(GridScrollCurrentCellReason reason)
	{
		if (IsValidCellPosition(rowIndex, colIndex) && Renderer != null && Renderer.OnScrollInView(reason))
		{
			return grid.ScrollCellInView(rowIndex, colIndex, reason);
		}
		return false;
	}

	internal void SetWarningText(string s)
	{
		errorMessage = s;
	}

	[DocumentationExclude]
	public void DisplayWarningText(string message)
	{
		if (GridUtil.NotEmptyAfterTrim(errorMessage))
		{
			bool hasControlFocus = grid.HasControlFocus;
			if (GetCurrentCell(out var num, out var num2))
			{
				grid.ScrollCellInView(num, num2, GridScrollCurrentCellReason.Error);
			}
			grid.CancelUpdate();
			Form owner = FindFormHelper.FindForm(grid);
			GridCurrentCellErrorMessageEventArgs e = new GridCurrentCellErrorMessageEventArgs(owner, errorMessage);
			base.Grid.RaiseCurrentCellErrorMessage(e);
			if (!e.Cancel)
			{
				MessageBox.Show(owner, errorMessage);
			}
			errorMessageShown = true;
			if (hasControlFocus && !grid.ContainsFocus)
			{
				grid.Focus();
			}
		}
		ResetError();
	}

	[DocumentationExclude]
	[Obsolete("This call does not have any effect. Just make sure you have CausesValidation = false.")]
	public void SetIgnoreFocus(bool b)
	{
	}

	public void SuspendEvents()
	{
		suspendEvents++;
	}

	public void ResumeEvents()
	{
		if (suspendEvents > 0)
		{
			suspendEvents--;
		}
	}

	[DocumentationExclude]
	public void NotifyControlDoubleClick(Control control)
	{
		base.Grid.RaiseCurrentCellControlDoubleClick(control);
	}

	[DocumentationExclude]
	public void NotifyControlGotFocus(Control control)
	{
		base.Grid.RaiseCurrentCellControlGotFocus(control);
	}

	[DocumentationExclude]
	public void NotifyControlLostFocus(Control control)
	{
		base.Grid.RaiseCurrentCellControlLostFocus(control);
	}

	[DocumentationExclude]
	public void NotifyChanged()
	{
		if (!IsInActiveOrDeactivate)
		{
			IsModified = true;
			base.Grid.RaiseCurrentCellChanged();
		}
	}

	[DocumentationExclude]
	public bool NotifyChanging()
	{
		notifyChangingCalled = true;
		if (!IsInActiveOrDeactivate)
		{
			notifyChangingCalled = base.Grid.RaiseCurrentCellChanging();
			return notifyChangingCalled;
		}
		return true;
	}

	public bool QueryNextEnabledCell(GridDirectionType direction, ref int rowIndex, ref int colIndex)
	{
		int i = rowIndex;
		int j = colIndex;
		bool flag = false;
		GridRangeInfo range;
		switch (direction)
		{
		case GridDirectionType.Up:
			while (i >= 1 && !flag)
			{
				while (i >= 1 && (grid.GetRowHeight(i) == 0 || (gridModel.CoveredRanges.Find(i, j, out range) && range.Top != i)))
				{
					i--;
				}
				if (i >= 1)
				{
					gridModel.CoveredRanges.Find(i, j, out range);
					GridStyleInfo viewStyleInfo = grid.GetViewStyleInfo(range.Top, range.Left);
					flag = viewStyleInfo.Enabled || grid.IsDesignMode();
					viewStyleInfo.Dispose();
				}
				if (!flag && i >= 1)
				{
					i--;
				}
			}
			break;
		case GridDirectionType.Down:
		{
			int colCount = gridModel.RowCount;
			while (i <= colCount && !flag)
			{
				for (; i <= colCount && (grid.GetRowHeight(i) == 0 || (gridModel.CoveredRanges.Find(i, j, out range) && range.Top != i)); i++)
				{
				}
				if (i <= colCount)
				{
					gridModel.CoveredRanges.Find(i, j, out range);
					GridStyleInfo viewStyleInfo = grid.GetViewStyleInfo(range.Top, range.Left);
					flag = viewStyleInfo.Enabled || grid.IsDesignMode();
					viewStyleInfo.Dispose();
					if (!flag)
					{
						i++;
					}
				}
			}
			break;
		}
		case GridDirectionType.Left:
			while (j >= 1 && !flag)
			{
				while (j >= 1 && (grid.GetColWidth(j) == 0 || (gridModel.CoveredRanges.Find(i, j, out range) && range.Left != j)))
				{
					j--;
				}
				if (j >= 1)
				{
					gridModel.CoveredRanges.Find(i, j, out range);
					GridStyleInfo viewStyleInfo = grid.GetViewStyleInfo(range.Top, range.Left);
					flag = viewStyleInfo.Enabled || grid.IsDesignMode();
					viewStyleInfo.Dispose();
					if (!flag && j >= 1)
					{
						j--;
					}
				}
			}
			break;
		case GridDirectionType.Right:
		{
			int colCount = gridModel.ColCount;
			while (j <= colCount && !flag)
			{
				for (; j <= colCount && (grid.GetColWidth(j) == 0 || (gridModel.CoveredRanges.Find(i, j, out range) && range.Left != j)); j++)
				{
				}
				if (j <= colCount)
				{
					gridModel.CoveredRanges.Find(i, j, out range);
					GridStyleInfo viewStyleInfo = grid.GetViewStyleInfo(range.Top, range.Left);
					flag = viewStyleInfo.Enabled || grid.IsDesignMode();
					viewStyleInfo.Dispose();
					if (!flag)
					{
						j++;
					}
				}
			}
			break;
		}
		}
		if (flag)
		{
			rowIndex = i;
			colIndex = j;
		}
		return flag;
	}

	internal void UpdateRemoveRows(int fromRowIndex, int toRowIndex)
	{
		if (!HasCurrentCell)
		{
			int num = toRowIndex - fromRowIndex + 1;
			if ((rowIndex < fromRowIndex || rowIndex > toRowIndex) && rowIndex > toRowIndex)
			{
				rowIndex -= num;
				Activate(rowIndex, colIndex);
			}
		}
	}

	internal void UpdateRemoveCols(int fromColIndex, int toColIndex)
	{
		if (!HasCurrentCell)
		{
			int num = toColIndex - fromColIndex + 1;
			if ((colIndex < fromColIndex || colIndex > toColIndex) && rowIndex > toColIndex)
			{
				colIndex -= num;
				Activate(rowIndex, colIndex);
			}
		}
	}

	internal void UpdateRowsMoved(int fromRowIndex, int toRowIndex, int targetRow)
	{
		if (!HasCurrentCell)
		{
			int num = toRowIndex - fromRowIndex + 1;
			int num2 = targetRow;
			if (num2 > fromRowIndex)
			{
				num2 += num;
			}
			if (rowIndex >= fromRowIndex && rowIndex <= toRowIndex && rowIndex >= num2)
			{
				rowIndex = num2 + (rowIndex - fromRowIndex);
			}
			else if (rowIndex >= fromRowIndex && rowIndex <= toRowIndex && rowIndex < num2)
			{
				rowIndex = num2 - num + (rowIndex - fromRowIndex);
			}
			else if (rowIndex >= fromRowIndex && rowIndex <= num2)
			{
				rowIndex -= num;
			}
			else if (rowIndex <= fromRowIndex && rowIndex >= num2)
			{
				rowIndex += num;
			}
			Activate(rowIndex, colIndex);
		}
	}

	internal void UpdateColsMoved(int fromColIndex, int toColIndex, int targetCol)
	{
		if (!HasCurrentCell)
		{
			int num = toColIndex - fromColIndex + 1;
			int num2 = targetCol;
			if (num2 > fromColIndex)
			{
				num2 += num;
			}
			if (colIndex >= fromColIndex && colIndex <= toColIndex && colIndex >= num2)
			{
				colIndex = num2 + (colIndex - fromColIndex);
			}
			else if (colIndex >= fromColIndex && colIndex <= toColIndex && colIndex < num2)
			{
				colIndex = num2 - (toColIndex - fromColIndex + 1) + (colIndex - fromColIndex);
			}
			else if (colIndex >= fromColIndex && colIndex <= num2)
			{
				colIndex -= toColIndex - fromColIndex + 1;
			}
			else if (colIndex <= fromColIndex && colIndex >= num2)
			{
				colIndex += toColIndex - fromColIndex + 1;
			}
			Activate(rowIndex, colIndex);
		}
	}

	internal void UpdateInsertRows(int rowIndex, int count)
	{
		if (!HasCurrentCell && rowIndex <= this.rowIndex)
		{
			this.rowIndex += count;
		}
		Activate(this.rowIndex, colIndex);
	}

	internal void UpdateInsertCols(int colIndex, int count)
	{
		if (!HasCurrentCell && colIndex <= this.colIndex)
		{
			this.colIndex += count;
		}
		Activate(rowIndex, this.colIndex);
	}

	public bool GetCurrentCell(out int rowIndex, out int colIndex)
	{
		return GetCurrentCell(out rowIndex, out colIndex, bIgnorePrint: false);
	}

	public bool GetCurrentCell(out int rowIndex, out int colIndex, bool bIgnorePrint)
	{
		rowIndex = this.rowIndex;
		colIndex = this.colIndex;
		if (HasCurrentCell)
		{
			if (!bIgnorePrint)
			{
				return !grid.IsPrinting();
			}
			return true;
		}
		return false;
	}

	public bool HasCurrentCellAt(int rowIndex)
	{
		return HasCurrentCellAt(rowIndex, int.MaxValue, bIgnorePrint: false);
	}

	public bool HasCurrentCellAt(int rowIndex, int colIndex)
	{
		return HasCurrentCellAt(rowIndex, colIndex, bIgnorePrint: false);
	}

	public virtual bool HasCurrentCellAt(int rowIndex, int colIndex, bool bIgnorePrint)
	{
		if (!HasCurrentCell || (grid.IsPrinting() && !bIgnorePrint))
		{
			return false;
		}
		if ((rowIndex == int.MaxValue || rowIndex == this.rowIndex) && (colIndex == int.MaxValue || colIndex == this.colIndex) && this.rowIndex <= grid.Model.RowCount && this.colIndex <= grid.Model.ColCount)
		{
			return true;
		}
		return false;
	}
}
