using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxBitmap(typeof(GridRecordNavigationControl), "ToolboxIcons.GridRecordNavigationControl.bmp")]
[Description("Represents a control with splitter frame and NavigationBar on the bottom left scrollbar")]
[ToolboxItem(true)]
public class GridRecordNavigationControl : RecordNavigationControl, ISplitterPaneFactory
{
	private GridControlBase _gridControl;

	private bool inUpdate;

	private bool mouse;

	public override ISite Site
	{
		get
		{
			return base.Site;
		}
		set
		{
			base.Site = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridControlBase GridControl => _gridControl;

	public GridRecordNavigationControl()
		: this(null)
	{
	}

	public GridRecordNavigationControl(GridControlBase gridControl)
	{
		if (gridControl != null)
		{
			_gridControl = gridControl;
			base.Controls.Add(gridControl);
			WireGrid(gridControl);
			ThemesEnabled = gridControl.ThemesEnabled;
		}
		base.ShowToolTips = true;
		base.SplitBars = DynamicSplitBars.Both;
		base.SplitterPaneFactory = this;
		base.NavigationBar.ButtonBarMouseDown += BarMouseDown;
		base.NavigationBar.MouseUp += BarMouseUp;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnwireGrid(_gridControl);
			foreach (Control control in base.Controls)
			{
				control.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (_gridControl == null && e.Control is GridControlBase)
		{
			_gridControl = (GridControlBase)e.Control;
			_gridControl.FillSplitterPane = true;
			base.Controls.Add(_gridControl);
			WireGrid(_gridControl);
			if (e.Control is GridDataBoundGrid gridDataBoundGrid)
			{
				base.NavigationBar.MaxRecord = gridDataBoundGrid.Binder.RecordCount;
				base.NavigationBar.MinRecord = 1;
				base.NavigationBar.AllowAddNew = gridDataBoundGrid.Binder.AllowAddNew;
				base.NavigationBar.Enabled = base.NavigationBar.MaxRecord > 0 || base.NavigationBar.AllowAddNew;
			}
			else
			{
				base.NavigationBar.MaxRecord = RowIndexToRecord(_gridControl, _gridControl.Model.RowCount);
			}
		}
	}

	public void WireGrid(GridControlBase gridControl)
	{
		if (gridControl != null)
		{
			if (gridControl is GridDataBoundGrid gridDataBoundGrid)
			{
				gridDataBoundGrid.RowEnter += DataGridEnterRow;
			}
			gridControl.CurrentCellActivated += GridCurrentCellActivated;
			gridControl.CurrentCellMoving += GridCurrentCellMoving;
			gridControl.ScrollInfoChanged += GridScrollInfoChanged;
			gridControl.ThemeChanged += Theme_Changed;
			gridControl.VisibleChanged += GridVisibleChanged;
			gridControl.Disposed += gridControl_Disposed;
			base.NavigationBar.RnbData = gridControl as IRecordNavigationBarData;
		}
	}

	public void UnwireGrid(GridControlBase gridControl)
	{
		if (gridControl != null)
		{
			if (gridControl is GridDataBoundGrid gridDataBoundGrid)
			{
				gridDataBoundGrid.RowEnter -= DataGridEnterRow;
			}
			gridControl.CurrentCellActivated -= GridCurrentCellActivated;
			gridControl.ScrollInfoChanged -= GridScrollInfoChanged;
			gridControl.ThemeChanged -= Theme_Changed;
			gridControl.VisibleChanged += GridVisibleChanged;
			gridControl.Disposed -= gridControl_Disposed;
			base.NavigationBar.RnbData = null;
			base.NavigationBar.ButtonBarMouseDown -= BarMouseDown;
			base.NavigationBar.MouseUp -= BarMouseUp;
		}
	}

	private void Theme_Changed(object sender, EventArgs e)
	{
		ThemesEnabled = _gridControl != null && _gridControl.ThemesEnabled;
	}

	private void GridVisibleChanged(object sender, EventArgs e)
	{
		if (sender is GridControlBase { Visible: not false } gridControlBase)
		{
			if (sender is GridDataBoundGrid gridDataBoundGrid && gridDataBoundGrid.Binder.List != null)
			{
				base.NavigationBar.CurrentRecord = RowIndexToRecord(gridDataBoundGrid, gridDataBoundGrid.Binder.CurrentRowIndex);
			}
			else if (gridControlBase != null && gridControlBase.CurrentCell.HasCurrentCell)
			{
				base.NavigationBar.CurrentRecord = RowIndexToRecord(gridControlBase, gridControlBase.CurrentCell.RowIndex);
			}
		}
	}

	public Control CreateNewControl(int row, int column, Control mainControl, Control parent)
	{
		Control control = null;
		if (mainControl is ICreateNewWindow createNewWindow)
		{
			control = createNewWindow.CreateNewControl(parent, row, column);
		}
		if (control is GridControlBase)
		{
			WireGrid((GridControlBase)control);
		}
		return control;
	}

	public void DisposeControl(int row, int column, Control control, Control parent)
	{
		if (control is GridControlBase)
		{
			GridControlBase gridControl = (GridControlBase)control;
			UnwireGrid(gridControl);
		}
	}

	private void GridScrollInfoChanged(object sender, EventArgs e)
	{
		if (sender is GridDataBoundGrid gridDataBoundGrid)
		{
			base.NavigationBar.RnbData = gridDataBoundGrid as IRecordNavigationBarData;
			base.NavigationBar.MaxRecord = gridDataBoundGrid.Binder.RecordCount;
			base.NavigationBar.MinRecord = 1;
			base.NavigationBar.AllowAddNew = gridDataBoundGrid.Binder.AllowAddNew;
			base.NavigationBar.Enabled = base.NavigationBar.MaxRecord > 0 || base.NavigationBar.AllowAddNew;
		}
		else
		{
			if (!(sender is GridControlBase gridControlBase))
			{
				return;
			}
			base.NavigationBar.MaxRecord = RowIndexToRecord(gridControlBase, gridControlBase.Model.RowCount);
			if (gridControlBase.CurrentCell.GetCurrentCell(out var rowIndex, out var _))
			{
				int num = RowIndexToRecord(gridControlBase, rowIndex);
				if (num > 0)
				{
					base.NavigationBar.CurrentRecord = num;
				}
			}
		}
	}

	private void GridCurrentCellActivated(object sender, EventArgs e)
	{
		base.NavigationBar.Enabled = base.NavigationBar.MaxRecord >= base.NavigationBar.MinRecord || base.NavigationBar.AllowAddNew;
		if (inUpdate)
		{
			return;
		}
		try
		{
			inUpdate = true;
			if (base.ActivePane is GridControlBase gridControlBase && gridControlBase.CurrentCell.GetCurrentCell(out var rowIndex, out var _))
			{
				int num = RowIndexToRecord(gridControlBase, rowIndex);
				if (num > 0)
				{
					base.NavigationBar.CurrentRecord = num;
				}
			}
		}
		finally
		{
			inUpdate = false;
		}
	}

	private void DataGridEnterRow(object sender, GridRowEventArgs e)
	{
		if (inUpdate || !(sender is GridDataBoundGrid grid))
		{
			return;
		}
		try
		{
			inUpdate = true;
			int num = RowIndexToRecord(grid, e.RowIndex);
			if (num > 0)
			{
				base.NavigationBar.SetCurrentRecord(num, force: true);
			}
		}
		finally
		{
			inUpdate = false;
			base.NavigationBar.PerformLayout();
		}
	}

	public int RowIndexToRecord(GridControlBase grid, int rowIndex)
	{
		if (grid is GridDataBoundGrid gridDataBoundGrid)
		{
			return gridDataBoundGrid.Binder.RowIndexToListManagerPosition(rowIndex) + 1;
		}
		return rowIndex - grid.Model.Rows.HeaderCount;
	}

	public int RecordToRowIndex(GridControlBase grid, int record)
	{
		if (grid is GridDataBoundGrid gridDataBoundGrid)
		{
			return gridDataBoundGrid.Binder.ListManagerPositionToRowIndex(record - 1);
		}
		return record + grid.Model.Rows.HeaderCount;
	}

	private void GridCurrentCellMoving(object sender, GridCurrentCellMovingEventArgs e)
	{
		if (inUpdate && Control.MouseButtons != MouseButtons.None)
		{
			e.Options |= GridSetCurrentCellOptions.NoSetFocus;
			mouse = true;
		}
	}

	private void BarMouseDown(object sender, MouseEventArgs e)
	{
		mouse = false;
	}

	private void BarMouseUp(object sender, MouseEventArgs e)
	{
		if (mouse)
		{
			GridControlBase gridControlBase = base.ActivePane as GridControlBase;
			if ((gridControlBase.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None)
			{
				gridControlBase.CurrentCell.BeginEdit();
			}
			mouse = false;
		}
	}

	protected override void OnCurrentRecordChanging(CurrentRecordEventArgs e)
	{
		base.OnCurrentRecordChanging(e);
		if (inUpdate)
		{
			return;
		}
		GridControlBase gridControlBase = base.ActivePane as GridControlBase;
		inUpdate = true;
		try
		{
			int num = RecordToRowIndex(gridControlBase, e.Record);
			if (gridControlBase != null && base.CurrentRecord != e.Record)
			{
				int rowIndex = gridControlBase.CurrentCell.RowIndex;
				if (rowIndex <= 0 || Math.Abs(rowIndex - num) > 10)
				{
					gridControlBase.CurrentCell.MoveTo(num, Math.Max(gridControlBase.Model.Cols.HeaderCount + 1, gridControlBase.CurrentCell.ColIndex), GridSetCurrentCellOptions.ScrollInView);
				}
				else if (rowIndex < num)
				{
					gridControlBase.CurrentCell.MoveDown(num - rowIndex);
				}
				else if (rowIndex != num)
				{
					gridControlBase.CurrentCell.MoveUp(rowIndex - num);
				}
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		finally
		{
			int num2 = RowIndexToRecord(gridControlBase, gridControlBase.CurrentCell.RowIndex);
			if (num2 > 0)
			{
				e.Record = num2;
			}
			inUpdate = false;
		}
	}

	private void gridControl_Disposed(object sender, EventArgs e)
	{
		_gridControl = null;
	}
}
