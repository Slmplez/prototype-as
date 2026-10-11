using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridRangeInfoCellRenderer : GridTextBoxCellRenderer
{
	internal GridRangeInfoDropDownUserControl ddUser;

	public new GridDropDownContainer DropDownContainer => (GridDropDownContainer)base.DropDownContainer;

	public GridRangeInfoCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		ddUser = ((GridRangeInfoCellModel)base.Model).ddUser;
		ddUser.Visible = false;
		base.DropDownPart = new GridDropDownCellImp(this);
		base.DropDownButton = new GridCellComboBoxButton(this);
		ddUser.UserControlSave += user_Save;
		ddUser.UserControlCancel += user_Cancel;
	}

	protected override void InitializeDropDownContainer()
	{
		base.InitializeDropDownContainer();
		if (DropDownContainer != null)
		{
			DropDownContainer.Controls.Add(ddUser);
		}
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		_ = base.Grid.CurrentCell;
		DropDownContainer.Size = ddUser.Size;
		ddUser.SetValuesFromString(ControlText);
		ddUser.Visible = true;
	}

	public override void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		if (e.PopupCloseType == PopupCloseType.Done && NotifyCurrentCellChanging())
		{
			ControlValue = ddUser.GetValuesToString();
			NotifyCurrentCellChanged();
		}
		base.Grid.InvalidateRange(GridRangeInfo.Cell(base.RowIndex, base.ColIndex), GridRangeOptions.MergeCoveredCells);
		base.DropDownContainerCloseDropDown(sender, e);
	}

	public override bool IsRelatedControl(Control control, bool askPopupParent)
	{
		if (control != null && control.GetType().Name.IndexOf("GridViewListBox") != -1)
		{
			return true;
		}
		return base.IsRelatedControl(control, askPopupParent);
	}

	private void user_Save(object sender, EventArgs e)
	{
		base.Grid.CurrentCell.CloseDropDown(PopupCloseType.Done);
		base.Grid.CurrentCell.MoveDown();
	}

	private void user_Cancel(object sender, EventArgs e)
	{
		base.Grid.CurrentCell.CloseDropDown(PopupCloseType.Canceled);
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		base.OnInitialize(rowIndex, colIndex);
		ddUser.SetValuesFromString(base.Grid.Model[rowIndex, colIndex].Text);
	}
}
