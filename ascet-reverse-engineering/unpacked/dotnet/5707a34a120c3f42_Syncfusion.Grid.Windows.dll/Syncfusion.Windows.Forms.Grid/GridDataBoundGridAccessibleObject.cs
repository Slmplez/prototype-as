using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridDataBoundGridAccessibleObject : Control.ControlAccessibleObject
{
	private GridDataBoundGrid dataBoundGrid;

	private Rectangle cachedBounds = Rectangle.Empty;

	public override AccessibleRole Role => AccessibleRole.Table;

	public override string Name => dataBoundGrid.AccessibleName;

	public override Rectangle Bounds
	{
		get
		{
			if (!dataBoundGrid.IsHandleCreated)
			{
				return Rectangle.Empty;
			}
			if (dataBoundGrid.InvokeRequired)
			{
				dataBoundGrid.Invoke(new MethodInvoker(getBounds));
			}
			else
			{
				getBounds();
			}
			return cachedBounds;
		}
	}

	public override string Description => dataBoundGrid.AccessibleDescription;

	public override string Help => string.Empty;

	public override AccessibleObject Parent => dataBoundGrid.AccessibilityObject;

	public override AccessibleStates State => AccessibleStates.None;

	public override string Value
	{
		get
		{
			return dataBoundGrid.Text;
		}
		set
		{
			dataBoundGrid.Text = value;
		}
	}

	public GridDataBoundGridAccessibleObject(GridDataBoundGrid owner)
		: base(owner)
	{
		dataBoundGrid = owner;
		dataBoundGrid.CurrentCellActivated += dataBoundGrid_CurrentCellActivated;
	}

	private void getBounds()
	{
		cachedBounds = dataBoundGrid.RectangleToScreen(dataBoundGrid.ClientRectangle);
	}

	public override int GetChildCount()
	{
		return dataBoundGrid.binder.RecordCount + dataBoundGrid.binder.InternalColumns.Count;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index < dataBoundGrid.binder.InternalColumns.Count)
		{
			return dataBoundGrid.FieldHeaderAccessibleObjects[index];
		}
		index -= dataBoundGrid.binder.InternalColumns.Count;
		if (index < dataBoundGrid.binder.RecordCount)
		{
			return dataBoundGrid.RecordAccessibleObjects[index];
		}
		return null;
	}

	internal AccessibleObject NavigateFromChild(AccessibleObject child, AccessibleNavigation navdir)
	{
		int num = -1;
		if (child is GridDataBoundGridRecordAccessibleObject gridDataBoundGridRecordAccessibleObject)
		{
			num = gridDataBoundGridRecordAccessibleObject.Index + dataBoundGrid.binder.InternalColumns.Count;
		}
		else
		{
			GridDataBoundGridFieldHeaderAccessibleObject gridDataBoundGridFieldHeaderAccessibleObject = child as GridDataBoundGridFieldHeaderAccessibleObject;
			num = gridDataBoundGridFieldHeaderAccessibleObject.Index;
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

	internal void SelectChild(GridDataBoundGridRecordAccessibleObject child, AccessibleSelection selection)
	{
		int index = child.Index;
		int num = dataBoundGrid.binder.ListManagerPositionToRowIndex(index);
		if ((selection & AccessibleSelection.TakeFocus) != AccessibleSelection.None)
		{
			if ((selection & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
			{
				dataBoundGrid.CurrentCell.MoveTo(num, dataBoundGrid.CurrentCell.ColIndex, GridSetCurrentCellOptions.ScrollInView);
			}
			if ((selection & AccessibleSelection.AddSelection) != AccessibleSelection.None)
			{
				dataBoundGrid.Selections.Add(GridRangeInfo.Row(num));
			}
			if ((selection & AccessibleSelection.RemoveSelection) != AccessibleSelection.None)
			{
				dataBoundGrid.Selections.Remove(GridRangeInfo.Row(num));
			}
			if ((selection & AccessibleSelection.ExtendSelection) != AccessibleSelection.None)
			{
				int rowIndex = dataBoundGrid.CurrentCell.RowIndex;
				dataBoundGrid.Selections.Add(GridRangeInfo.Rows(Math.Min(num, rowIndex), Math.Max(num, rowIndex)));
			}
		}
	}

	public override AccessibleObject GetFocused()
	{
		if (dataBoundGrid.Focused)
		{
			return GetSelected();
		}
		return base.GetFocused();
	}

	public override AccessibleObject GetSelected()
	{
		if (dataBoundGrid.binder.CurrentPosition != -1)
		{
			return GetChild(dataBoundGrid.binder.CurrentPosition + dataBoundGrid.binder.InternalColumns.Count);
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point point = dataBoundGrid.PointToClient(new Point(x, y));
		GridRangeInfo gridRangeInfo = dataBoundGrid.PointToRangeInfo(point);
		if (!gridRangeInfo.IsEmpty && gridRangeInfo.Top > 0)
		{
			int num = dataBoundGrid.binder.RowIndexToListManagerPosition(gridRangeInfo.Top);
			if (num >= 0)
			{
				return dataBoundGrid.RecordAccessibleObjects[num];
			}
		}
		return base.HitTest(x, y);
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		if (GetSelected() is GridDataBoundGridRecordAccessibleObject child)
		{
			return NavigateFromChild(child, navdir);
		}
		return base.Navigate(navdir);
	}

	private void dataBoundGrid_CurrentCellActivated(object sender, EventArgs e)
	{
		int num = dataBoundGrid.Binder.RowIndexToListManagerPosition(dataBoundGrid.Binder.CurrentRowIndex);
		if (num >= 0)
		{
			int childID = num + dataBoundGrid.binder.InternalColumns.Count;
			NotifyClients(AccessibleEvents.Focus, childID);
			NotifyClients(AccessibleEvents.Selection, childID);
		}
	}
}
