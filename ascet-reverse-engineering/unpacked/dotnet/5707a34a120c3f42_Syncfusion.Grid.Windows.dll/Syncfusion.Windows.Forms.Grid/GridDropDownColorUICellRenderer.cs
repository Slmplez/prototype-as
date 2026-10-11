using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDropDownColorUICellRenderer : GridDropDownCellRenderer
{
	private ColorUIControl colorUI;

	public GridDropDownColorUICellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownButton = new GridCellButton(this);
		base.DropDownButton.Text = "@";
	}

	protected override void InitializeDropDownContainer()
	{
		base.InitializeDropDownContainer();
		colorUI = new ColorUIControl();
		colorUI.Dock = DockStyle.Fill;
		colorUI.Visible = true;
		colorUI.ColorSelected += ColorUIColorSelected;
		base.DropDownContainer.Controls.Add(colorUI);
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		base.DropDownContainer.Size = new Size(500, 500);
		Color clrselected = base.Grid.GetBackColor(base.Grid.Model[base.RowIndex, base.ColIndex].Interior.BackColor);
		try
		{
			clrselected = ColorConvert.ColorFromString(base.TextBox.Text);
		}
		catch
		{
		}
		colorUI.Start(clrselected);
		Size size = new Size(208, 230);
		GridCurrentCellShowingDropDownEventArgs e2 = new GridCurrentCellShowingDropDownEventArgs(size);
		base.Grid.RaiseCurrentCellShowingDropDown(e2);
		if (e2.Cancel)
		{
			e.Cancel = true;
		}
		else
		{
			base.DropDownContainer.Size = e2.Size;
		}
	}

	public override void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		base.DropDownContainer.FocusParent();
		NotifyShowedDropDown();
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		try
		{
			string formattedOrActiveTextAt = base.Model.GetFormattedOrActiveTextAt(e.RowIndex, e.ColIndex, e.Style);
			if (formattedOrActiveTextAt.Length > 0)
			{
				Color color = ColorConvert.ColorFromString(formattedOrActiveTextAt);
				e.Style.Interior = new BrushInfo(color);
			}
		}
		catch
		{
		}
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (popupCloseType == PopupCloseType.Done && !IsReadOnly())
		{
			if (!NotifyCurrentCellChanging())
			{
				return;
			}
			base.TextBox.Text = ColorConvert.ColorToString(colorUI.SelectedColor, writeName: true);
			base.TextBox.SelectionStart = 0;
			base.TextBox.SelectionLength = 0;
			base.TextBox.Modified = true;
			base.TextBox.BackColor = colorUI.SelectedColor;
			base.TextBox.Focus();
			base.Grid.InvalidateRange(GridRangeInfo.Cell(base.RowIndex, base.ColIndex));
			NotifyCurrentCellChanged();
		}
		DropDownContainerCloseDropDown(childUI, new PopupClosedEventArgs(popupCloseType));
	}

	protected override void TextBoxChanged(object sender, EventArgs e)
	{
		base.TextBoxChanged(sender, e);
		try
		{
			Color c = ColorConvert.ColorFromString(TextBoxText);
			base.TextBox.BackColor = base.Grid.GetBackColor(c);
		}
		catch
		{
		}
	}

	private void ColorUIColorSelected(object sender, EventArgs e)
	{
		base.CurrentCell.CloseDropDown(PopupCloseType.Done);
	}
}
