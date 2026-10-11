using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridControlRowAccessibleObject : Control.ControlAccessibleObject
{
	internal GridControlBaseImp grid;

	private int rowIndex;

	private GridControlCellAccessibleObjectsIndexer cellAccessibleObjects;

	public int RowIndex => rowIndex;

	internal GridControlBaseAccessibleObject GridAccessibilityObject => grid.AccessibilityObject as GridControlBaseAccessibleObject;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.Focusable | AccessibleStates.Selectable;
			int num = RowIndex;
			if (grid.Model.SelectedRanges.Contains(GridRangeInfo.Row(num)))
			{
				accessibleStates |= AccessibleStates.Selected;
			}
			if (grid.CurrentCell.HasCurrentCellAt(num))
			{
				accessibleStates |= AccessibleStates.Focused;
			}
			if (num < grid.TopRowIndex || num > grid.ViewLayout.LastVisibleRow)
			{
				accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
			}
			return accessibleStates | AccessibleStates.MultiSelectable;
		}
	}

	public override AccessibleRole Role => AccessibleRole.Row;

	public override AccessibleObject Parent => grid.AccessibilityObject;

	public override string Name => "Row " + RowIndex;

	public override string DefaultAction => "Click";

	public override Rectangle Bounds
	{
		get
		{
			Rectangle p = grid.RangeInfoToRectangle(GridRangeInfo.Row(rowIndex));
			p.Intersect(grid.ClientRectangle);
			return grid.RectangleToScreen(p);
		}
	}

	public override string Description => "Row " + RowIndex;

	internal GridControlCellAccessibleObjectsIndexer CellAccessibleObjects
	{
		get
		{
			if (cellAccessibleObjects == null)
			{
				cellAccessibleObjects = new GridControlCellAccessibleObjectsIndexer(this);
			}
			return cellAccessibleObjects;
		}
	}

	public GridControlRowAccessibleObject(GridControlBaseImp grid, int rowIndex)
		: base(grid)
	{
		this.grid = grid;
		this.rowIndex = rowIndex;
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !grid.Focused)
		{
			grid.Focus();
		}
		if ((flags & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			GridAccessibilityObject.SelectChild(this, flags);
		}
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		return GridAccessibilityObject.NavigateFromChild(this, navdir);
	}

	public override void DoDefaultAction()
	{
		Select(AccessibleSelection.TakeFocus | AccessibleSelection.TakeSelection);
	}

	public override AccessibleObject GetFocused()
	{
		return GridAccessibilityObject.GetFocused();
	}

	public override int GetChildCount()
	{
		return grid.Model.ColCount;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index < grid.Model.ColCount)
		{
			return CellAccessibleObjects[index];
		}
		return null;
	}

	internal AccessibleObject NavigateFromChild(GridControlCellAccessibleObject child, AccessibleNavigation navdir)
	{
		int num = child.ColIndex - 1;
		switch (navdir)
		{
		case AccessibleNavigation.FirstChild:
			num = 0;
			break;
		case AccessibleNavigation.LastChild:
			num = GetChildCount() - 1;
			break;
		case AccessibleNavigation.Up:
		case AccessibleNavigation.Left:
		case AccessibleNavigation.Previous:
			if (num > 0)
			{
				num--;
			}
			break;
		case AccessibleNavigation.Down:
		case AccessibleNavigation.Right:
		case AccessibleNavigation.Next:
			if (num < GetChildCount())
			{
				num++;
			}
			break;
		}
		return GetChild(num);
	}

	internal void SelectChild(GridControlCellAccessibleObject child, AccessibleSelection selection)
	{
		int colIndex = child.ColIndex;
		if ((selection & AccessibleSelection.TakeFocus) != AccessibleSelection.None)
		{
			if ((selection & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
			{
				grid.CurrentCell.MoveTo(rowIndex, colIndex, GridSetCurrentCellOptions.ScrollInView);
			}
			if ((selection & AccessibleSelection.AddSelection) != AccessibleSelection.None)
			{
				grid.Selections.Add(GridRangeInfo.Cell(rowIndex, colIndex));
			}
			if ((selection & AccessibleSelection.RemoveSelection) != AccessibleSelection.None)
			{
				grid.Selections.Remove(GridRangeInfo.Cell(rowIndex, colIndex));
			}
			if ((selection & AccessibleSelection.ExtendSelection) != AccessibleSelection.None)
			{
				int val = grid.CurrentCell.RowIndex;
				grid.Selections.Add(GridRangeInfo.Cells(rowIndex, Math.Min(colIndex, val), rowIndex, Math.Max(colIndex, val)));
			}
		}
	}

	public override AccessibleObject GetSelected()
	{
		if (grid.CurrentCell.HasCurrentCellAt(RowIndex) && grid.CurrentCell.ColIndex > 0)
		{
			return GetChild(grid.CurrentCell.ColIndex - 1);
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point point = grid.PointToClient(new Point(x, y));
		GridRangeInfo gridRangeInfo = grid.PointToRangeInfo(point);
		if (!gridRangeInfo.IsEmpty && gridRangeInfo.Top == RowIndex && gridRangeInfo.Left > 0)
		{
			return CellAccessibleObjects[gridRangeInfo.Left - 1];
		}
		return base.HitTest(x, y);
	}
}
