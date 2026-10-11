using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridDataBoundGridRecordAccessibleObject : AccessibleObject
{
	private GridDataBoundGrid dataBoundGrid;

	private int index;

	public int Index => index;

	internal GridDataBoundGridAccessibleObject GridAccessibilityObject => dataBoundGrid.AccessibilityObject as GridDataBoundGridAccessibleObject;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.Focusable | AccessibleStates.Selectable;
			int num = dataBoundGrid.Binder.ListManagerPositionToRowIndex(Index);
			if (dataBoundGrid.Model.SelectedRanges.Contains(GridRangeInfo.Row(num)))
			{
				accessibleStates |= AccessibleStates.Selected;
			}
			if (dataBoundGrid.Binder.CurrentPosition == index)
			{
				accessibleStates |= AccessibleStates.Focused;
			}
			if (num < dataBoundGrid.TopRowIndex || num > dataBoundGrid.ViewLayout.LastVisibleRow)
			{
				accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
			}
			return accessibleStates | AccessibleStates.MultiSelectable;
		}
	}

	public override AccessibleRole Role => AccessibleRole.Row;

	public override AccessibleObject Parent => dataBoundGrid.AccessibilityObject;

	public override string Name => "Record " + (Index + 1);

	public override string DefaultAction => "Click";

	public override Rectangle Bounds
	{
		get
		{
			int rowIndex = dataBoundGrid.Binder.ListManagerPositionToRowIndex(Index);
			Rectangle p = dataBoundGrid.RangeInfoToRectangle(GridRangeInfo.Row(rowIndex), GridRangeOptions.MergeCoveredCells);
			p.Intersect(dataBoundGrid.ClientRectangle);
			return dataBoundGrid.RectangleToScreen(p);
		}
	}

	public override string Description
	{
		get
		{
			dataBoundGrid.Binder.ListManagerPositionToRowIndex(Index);
			return "Record " + (Index + 1);
		}
	}

	public GridDataBoundGridRecordAccessibleObject(GridDataBoundGrid grid, int index)
	{
		dataBoundGrid = grid;
		this.index = index;
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !dataBoundGrid.Focused)
		{
			dataBoundGrid.Focus();
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
}
