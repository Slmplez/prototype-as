using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridControlColHeaderAccessibleObject : AccessibleObject
{
	private GridControlBase grid;

	private int colIndex;

	public int ColIndex => colIndex;

	internal GridControlBaseAccessibleObject GridAccessibilityObject => grid.AccessibilityObject as GridControlBaseAccessibleObject;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.Selectable;
			if (colIndex < grid.LeftColIndex || colIndex > grid.ViewLayout.LastVisibleCol)
			{
				accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
			}
			return accessibleStates;
		}
	}

	public override AccessibleRole Role => AccessibleRole.ColumnHeader;

	public override AccessibleObject Parent => grid.AccessibilityObject;

	public override string Name
	{
		get
		{
			string text = grid.Model[0, colIndex].Text;
			if (GridUtil.IsEmpty(text))
			{
				text = GridRangeInfo.Col(ColIndex).ToString();
			}
			return text;
		}
	}

	public override string DefaultAction => "Select";

	public override Rectangle Bounds => grid.RectangleToScreen(grid.RangeInfoToRectangle(GridRangeInfo.Cell(0, colIndex)));

	public override string Description
	{
		get
		{
			string text = grid.Model[0, colIndex].Text;
			if (GridUtil.IsEmpty(text))
			{
				text = GridRangeInfo.Col(ColIndex).ToString();
			}
			return text;
		}
	}

	public GridControlColHeaderAccessibleObject(GridControlBase grid, int colIndex)
	{
		this.grid = grid;
		this.colIndex = colIndex;
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None)
		{
			if (!grid.Focused)
			{
				grid.Focus();
			}
			grid.CurrentCell.MoveTo(grid.CurrentCell.RowIndex, ColIndex, GridSetCurrentCellOptions.ScrollInView);
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
