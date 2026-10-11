using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridDataBoundGridFieldHeaderAccessibleObject : AccessibleObject
{
	private GridDataBoundGrid dataBoundGrid;

	private int index;

	public int Index => index;

	internal GridDataBoundGridAccessibleObject GridAccessibilityObject => dataBoundGrid.AccessibilityObject as GridDataBoundGridAccessibleObject;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.Selectable;
			if (GridUtil.IsEmpty(dataBoundGrid.Binder.RootHierarchyLevel.InternalColumns[index].MappingName))
			{
				accessibleStates |= AccessibleStates.Invisible;
			}
			else
			{
				int row;
				int fieldNum = dataBoundGrid.Binder.RootHierarchyLevel.FieldToRowField(index, out row);
				int num = dataBoundGrid.Binder.FieldToColIndex(fieldNum);
				if (num < dataBoundGrid.LeftColIndex || num > dataBoundGrid.ViewLayout.LastVisibleCol)
				{
					accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
				}
			}
			return accessibleStates;
		}
	}

	public override AccessibleRole Role => AccessibleRole.ColumnHeader;

	public override AccessibleObject Parent => dataBoundGrid.AccessibilityObject;

	public override string Name => dataBoundGrid.binder.InternalColumns[index].MappingName;

	public override string DefaultAction => "Select";

	public override Rectangle Bounds
	{
		get
		{
			int row;
			int fieldNum = dataBoundGrid.Binder.RootHierarchyLevel.FieldToRowField(index, out row);
			int num = dataBoundGrid.Binder.FieldToColIndex(fieldNum);
			if (num <= 0)
			{
				return Rectangle.Empty;
			}
			return dataBoundGrid.RectangleToScreen(dataBoundGrid.RangeInfoToRectangle(GridRangeInfo.Cell(row, num), GridRangeOptions.MergeCoveredCells));
		}
	}

	public override string Description => dataBoundGrid.binder.InternalColumns[index].HeaderText;

	public GridDataBoundGridFieldHeaderAccessibleObject(GridDataBoundGrid grid, int index)
	{
		dataBoundGrid = grid;
		this.index = index;
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None)
		{
			if (!dataBoundGrid.Focused)
			{
				dataBoundGrid.Focus();
			}
			int row;
			int fieldNum = dataBoundGrid.Binder.RootHierarchyLevel.FieldToRowField(index, out row);
			int colIndex = dataBoundGrid.Binder.FieldToColIndex(fieldNum);
			dataBoundGrid.CurrentCell.MoveTo(dataBoundGrid.Binder.CurrentRowIndex + row, colIndex, GridSetCurrentCellOptions.ScrollInView);
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
