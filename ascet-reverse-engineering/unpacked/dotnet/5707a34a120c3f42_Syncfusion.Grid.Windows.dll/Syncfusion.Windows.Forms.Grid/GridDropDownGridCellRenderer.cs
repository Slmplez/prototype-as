using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDropDownGridCellRenderer : GridDropDownCellRenderer
{
	private GridControlBase grid;

	private Control innerControl;

	public GridDropDownGridCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DisableTextBox = false;
		base.DropDownButton = new GridCellComboBoxButton(this);
	}

	protected override void InitializeDropDownContainer()
	{
		base.InitializeDropDownContainer();
		base.DropDownContainer.IgnoreDialogKey = true;
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		base.DropDownContainer.PopupHost.FormBorderStyle = FormBorderStyle.Sizable;
		base.DropDownContainer.Dock = DockStyle.Fill;
		Size size = new Size(350, 200);
		GridCurrentCellShowingDropDownEventArgs e2 = new GridCurrentCellShowingDropDownEventArgs(size);
		base.Grid.RaiseCurrentCellShowingDropDown(e2);
		if (e2.Cancel)
		{
			e.Cancel = true;
			return;
		}
		base.DropDownContainer.PopupHost.Size = e2.Size;
		base.DropDownContainer.IgnoreDialogKey = true;
		if (innerControl == null)
		{
			innerControl = CreateInnerControl(out grid);
		}
		grid.DropDownContainerParent = base.DropDownContainer;
		base.DropDownContainer.Controls.Add(innerControl);
		innerControl.Visible = true;
	}

	protected virtual Control CreateInnerControl(out GridControlBase grid)
	{
		grid = base.Grid.CreateNewControl(base.DropDownContainer, 0, 0) as GridControlBase;
		grid.Dock = DockStyle.Fill;
		grid.CausesValidation = false;
		grid.ForceCurrentCellMoveTo = true;
		if (grid.Model.RowCount > grid.Model.Rows.HeaderCount && grid.Model.ColCount > grid.Model.Cols.HeaderCount)
		{
			grid.CurrentCell.MoveTo(grid.Model.Rows.HeaderCount + 1, grid.Model.Cols.HeaderCount + 1, GridSetCurrentCellOptions.NoSetFocus);
		}
		grid.DropDownContainerParent = base.DropDownContainer;
		GridRecordNavigationControl gridRecordNavigationControl = null;
		gridRecordNavigationControl = new GridRecordNavigationControl(grid);
		gridRecordNavigationControl.Dock = DockStyle.Fill;
		gridRecordNavigationControl.TabIndex = 0;
		gridRecordNavigationControl.CausesValidation = false;
		gridRecordNavigationControl.ThemesEnabled = base.Grid.ThemesEnabled;
		return gridRecordNavigationControl;
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		base.OnInitialize(rowIndex, colIndex);
		if (base.DisableTextBox)
		{
			base.DropDownContainer.ParentControl = base.Grid;
		}
		else
		{
			base.DropDownContainer.ParentControl = base.TextBox;
		}
	}

	protected override void TextBoxGotFocus(object sender, EventArgs e)
	{
		if (IsDroppedDown && grid != null)
		{
			grid.CurrentCell.CloseDropDown(PopupCloseType.Canceled);
		}
		base.TextBoxGotFocus(sender, e);
	}

	protected override void OnGridGotFocus(EventArgs e)
	{
		if (IsDroppedDown && grid != null)
		{
			grid.CurrentCell.CloseDropDown(PopupCloseType.Canceled);
		}
		base.OnGridGotFocus(e);
	}

	protected override void OnCloseDropDown(PopupCloseType reason)
	{
		if (grid != null)
		{
			grid.CurrentCell.CloseDropDown(reason);
		}
		base.OnCloseDropDown(reason);
	}

	public override void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		base.DropDownContainer.FocusParent();
		NotifyShowedDropDown();
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (grid != null)
		{
			grid.CurrentCell.CloseDropDown(popupCloseType);
		}
		base.DropDownContainer.Dock = DockStyle.None;
		base.DropDownContainer.IgnoreDialogKey = false;
		base.ChildClosing(childUI, popupCloseType);
	}
}
