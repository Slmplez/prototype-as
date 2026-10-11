using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridControlCellAccessibleObject : AccessibleObject
{
	private GridControlBaseImp grid;

	private int rowIndex;

	private int colIndex;

	public int ColIndex => colIndex;

	public int RowIndex => rowIndex;

	internal GridControlBaseAccessibleObject GridAccessibilityObject => grid.AccessibilityObject as GridControlBaseAccessibleObject;

	internal GridControlRowAccessibleObject RowAccessibilityObject => grid.RowAccessibleObjects[rowIndex - 1];

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.Focusable | AccessibleStates.Selectable;
			int num = ColIndex;
			if (grid.Model.SelectedRanges.Contains(GridRangeInfo.Cell(num, colIndex)))
			{
				accessibleStates |= AccessibleStates.Selected;
			}
			if (grid.CurrentCell.HasCurrentCellAt(num, colIndex))
			{
				accessibleStates |= AccessibleStates.Focused;
			}
			if (num < grid.TopRowIndex || num > grid.ViewLayout.LastVisibleRow || colIndex < grid.LeftColIndex || colIndex > grid.ViewLayout.LastVisibleCol)
			{
				accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
			}
			return accessibleStates | AccessibleStates.MultiSelectable;
		}
	}

	public override AccessibleRole Role => AccessibleRole.Cell;

	public override AccessibleObject Parent => RowAccessibilityObject;

	public override string Name => "Column " + ColIndex;

	public override string DefaultAction => "Click";

	public override Rectangle Bounds
	{
		get
		{
			Rectangle p = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex));
			p.Intersect(grid.ClientRectangle);
			return grid.RectangleToScreen(p);
		}
	}

	public override string Description => "Column " + ColIndex;

	public override string Value
	{
		get
		{
			return grid.Model[RowIndex, ColIndex].FormattedText;
		}
		set
		{
			grid.Model[RowIndex, ColIndex].FormattedText = value;
		}
	}

	public GridControlCellAccessibleObject(GridControlBaseImp grid, int rowIndex, int colIndex)
	{
		this.grid = grid;
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !grid.Focused)
		{
			grid.Focus();
		}
		if ((flags & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			RowAccessibilityObject.SelectChild(this, flags);
		}
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		return RowAccessibilityObject.NavigateFromChild(this, navdir);
	}

	public override void DoDefaultAction()
	{
		Select(AccessibleSelection.TakeFocus | AccessibleSelection.TakeSelection);
	}

	public override AccessibleObject GetFocused()
	{
		return RowAccessibilityObject.GetFocused();
	}
}
