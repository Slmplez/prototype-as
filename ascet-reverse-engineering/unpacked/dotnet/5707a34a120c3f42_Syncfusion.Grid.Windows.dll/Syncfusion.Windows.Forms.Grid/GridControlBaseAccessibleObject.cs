using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridControlBaseAccessibleObject : Control.ControlAccessibleObject
{
	private GridControlBaseImp grid;

	public override AccessibleRole Role => AccessibleRole.Table;

	public override string Name => grid.AccessibleName;

	public override Rectangle Bounds => grid.RectangleToScreen(grid.ClientRectangle);

	public override string Description => grid.AccessibleDescription;

	public override string Help => string.Empty;

	public override AccessibleObject Parent => grid.AccessibilityObject;

	public override AccessibleStates State => AccessibleStates.None;

	public override string Value
	{
		get
		{
			return grid.Text;
		}
		set
		{
			grid.Text = value;
		}
	}

	public GridControlBaseAccessibleObject(GridControlBaseImp owner)
		: base(owner)
	{
		grid = owner;
		grid.CurrentCellActivated += grid_CurrentCellActivated;
	}

	private void grid_CurrentCellActivated(object sender, EventArgs e)
	{
		if (grid.CurrentCell.RowIndex > 0 && grid.CurrentCell.ColIndex > 0)
		{
			int childID = grid.CurrentCell.RowIndex - 1 + grid.Model.ColCount;
			NotifyClients(AccessibleEvents.Focus, childID);
			NotifyClients(AccessibleEvents.Selection, childID);
		}
	}

	public override int GetChildCount()
	{
		return grid.Model.RowCount + grid.Model.ColCount;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index < grid.Model.ColCount)
		{
			return grid.ColHeaderAccessibleObjects[index];
		}
		index -= grid.Model.ColCount;
		if (index < grid.Model.RowCount)
		{
			return grid.RowAccessibleObjects[index];
		}
		return null;
	}

	internal AccessibleObject NavigateFromChild(AccessibleObject child, AccessibleNavigation navdir)
	{
		int num = -1;
		if (child is GridControlRowAccessibleObject gridControlRowAccessibleObject)
		{
			num = gridControlRowAccessibleObject.RowIndex - 1 + grid.Model.ColCount;
		}
		else
		{
			GridControlColHeaderAccessibleObject gridControlColHeaderAccessibleObject = child as GridControlColHeaderAccessibleObject;
			num = gridControlColHeaderAccessibleObject.ColIndex - 1;
		}
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

	internal void SelectChild(GridControlRowAccessibleObject child, AccessibleSelection selection)
	{
		int rowIndex = child.RowIndex;
		if ((selection & AccessibleSelection.TakeFocus) != AccessibleSelection.None)
		{
			if ((selection & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
			{
				grid.CurrentCell.MoveTo(rowIndex, grid.CurrentCell.ColIndex, GridSetCurrentCellOptions.ScrollInView);
			}
			if ((selection & AccessibleSelection.AddSelection) != AccessibleSelection.None)
			{
				grid.Selections.Add(GridRangeInfo.Row(rowIndex));
			}
			if ((selection & AccessibleSelection.RemoveSelection) != AccessibleSelection.None)
			{
				grid.Selections.Remove(GridRangeInfo.Row(rowIndex));
			}
			if ((selection & AccessibleSelection.ExtendSelection) != AccessibleSelection.None)
			{
				int rowIndex2 = grid.CurrentCell.RowIndex;
				grid.Selections.Add(GridRangeInfo.Rows(Math.Min(rowIndex, rowIndex2), Math.Max(rowIndex, rowIndex2)));
			}
		}
	}

	public override AccessibleObject GetFocused()
	{
		if (grid.Focused)
		{
			return GetSelected();
		}
		return base.GetFocused();
	}

	public override AccessibleObject GetSelected()
	{
		if (grid.CurrentCell.HasCurrentCell && grid.CurrentCell.RowIndex > 0)
		{
			return GetChild(grid.CurrentCell.RowIndex - 1 + grid.Model.ColCount);
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point point = grid.PointToClient(new Point(x, y));
		GridRangeInfo gridRangeInfo = grid.PointToRangeInfo(point);
		if (!gridRangeInfo.IsEmpty && gridRangeInfo.Top > 0)
		{
			return grid.RowAccessibleObjects[gridRangeInfo.Top - 1];
		}
		return base.HitTest(x, y);
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		if (GetSelected() is GridControlRowAccessibleObject child)
		{
			return NavigateFromChild(child, navdir);
		}
		return base.Navigate(navdir);
	}
}
