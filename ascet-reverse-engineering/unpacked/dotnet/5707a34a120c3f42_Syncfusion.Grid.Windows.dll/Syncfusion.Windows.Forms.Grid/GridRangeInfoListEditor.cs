using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridRangeInfoListEditor : Form
{
	private RangesList ranges;

	private GridDataBoundGrid gridDataBoundGrid1;

	private Button okButton;

	private Button cancelButton;

	internal Label label1;

	private IContainer components;

	public GridRangeInfoListEditor(RangesList ranges)
	{
		InitializeComponent();
		this.ranges = ranges;
		gridDataBoundGrid1.DataSource = ranges;
		gridDataBoundGrid1.AllowResizeToFit = false;
		gridDataBoundGrid1.GridVisualStyles = GridVisualStyles.SystemTheme;
		gridDataBoundGrid1.ThemesEnabled = true;
		gridDataBoundGrid1.Model.ColWidths[0] = 15;
		gridDataBoundGrid1.Model.ColWidths[1] = gridDataBoundGrid1.Width - gridDataBoundGrid1.Model.ColWidths[0];
		gridDataBoundGrid1.KeyDown += gridDataBoundGrid1_KeyDown;
		gridDataBoundGrid1.Model.HideRows[0] = true;
		gridDataBoundGrid1.TableStyle.Font = new GridFontInfo(Font);
		gridDataBoundGrid1.CurrentCellKeyDown += gridDataBoundGrid1_CurrentCellKeyDown;
		gridDataBoundGrid1.CurrentCell.MoveTo(1, 1);
		gridDataBoundGrid1.Model.Options.ActivateCurrentCellBehavior = GridCellActivateAction.None;
		gridDataBoundGrid1.Model.Options.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.GrayWhenLostFocus;
		gridDataBoundGrid1.Model.Rows.DefaultSize += 2;
		gridDataBoundGrid1.Model.CellModels.Add("RangeDropDown", new GridRangeInfoCellModel(gridDataBoundGrid1.Model, new GridRangeInfoDropDownUserControl(GridRangeInfo.Empty)));
		gridDataBoundGrid1.Model.ColStyles[1].CellType = "RangeDropDown";
		gridDataBoundGrid1.Model.ColStyles[1].ShowButtons = GridShowButtons.ShowCurrentCell;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.gridDataBoundGrid1 = new Syncfusion.Windows.Forms.Grid.GridDataBoundGrid();
		this.okButton = new System.Windows.Forms.Button();
		this.cancelButton = new System.Windows.Forms.Button();
		this.label1 = new System.Windows.Forms.Label();
		((System.ComponentModel.ISupportInitialize)this.gridDataBoundGrid1).BeginInit();
		base.SuspendLayout();
		this.gridDataBoundGrid1.AllowDragSelectedCols = true;
		this.gridDataBoundGrid1.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.gridDataBoundGrid1.Location = new System.Drawing.Point(12, 46);
		this.gridDataBoundGrid1.Name = "gridDataBoundGrid1";
		this.gridDataBoundGrid1.OptimizeInsertRemoveCells = true;
		this.gridDataBoundGrid1.ShowCurrentCellBorderBehavior = Syncfusion.Windows.Forms.Grid.GridShowCurrentCellBorder.GrayWhenLostFocus;
		this.gridDataBoundGrid1.Size = new System.Drawing.Size(130, 273);
		this.gridDataBoundGrid1.SmartSizeBox = false;
		this.gridDataBoundGrid1.SortBehavior = Syncfusion.Windows.Forms.Grid.GridSortBehavior.None;
		this.gridDataBoundGrid1.TabIndex = 0;
		this.gridDataBoundGrid1.Text = "gridDataBoundGrid1";
		this.gridDataBoundGrid1.UseListChangedEvent = true;
		this.okButton.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.okButton.Location = new System.Drawing.Point(12, 325);
		this.okButton.Name = "okButton";
		this.okButton.Size = new System.Drawing.Size(75, 23);
		this.okButton.TabIndex = 1;
		this.okButton.Text = "&Ok";
		this.okButton.UseVisualStyleBackColor = true;
		this.cancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.cancelButton.Location = new System.Drawing.Point(107, 325);
		this.cancelButton.Name = "cancelButton";
		this.cancelButton.Size = new System.Drawing.Size(75, 23);
		this.cancelButton.TabIndex = 1;
		this.cancelButton.Text = "&Cancel";
		this.cancelButton.UseVisualStyleBackColor = true;
		this.label1.AutoSize = true;
		this.label1.Location = new System.Drawing.Point(12, 18);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(66, 13);
		this.label1.TabIndex = 2;
		this.label1.Text = "Ranges";
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.ClientSize = new System.Drawing.Size(208, 358);
		base.Controls.Add(this.label1);
		base.Controls.Add(this.cancelButton);
		base.Controls.Add(this.okButton);
		base.Controls.Add(this.gridDataBoundGrid1);
		base.Name = "GridRangeInfoListEditor";
		this.Text = "RangeListEditor";
		((System.ComponentModel.ISupportInitialize)this.gridDataBoundGrid1).EndInit();
		base.ResumeLayout(false);
		base.PerformLayout();
	}

	protected override void OnEnter(EventArgs e)
	{
		base.ActiveControl = gridDataBoundGrid1;
		base.OnEnter(e);
	}

	private void gridDataBoundGrid1_CurrentCellKeyDown(object sender, KeyEventArgs e)
	{
		if (e.KeyCode == Keys.Delete && !gridDataBoundGrid1.CurrentCell.IsEditing && gridDataBoundGrid1.Selections.Ranges.FilterRangeType(GridRangeInfoType.Rows).Count == 0)
		{
			int rowIndex = gridDataBoundGrid1.CurrentCell.RowIndex;
			gridDataBoundGrid1.CurrentCell.MoveDown();
			gridDataBoundGrid1.DeleteRecordsAtRowIndex(rowIndex, rowIndex);
			e.Handled = true;
		}
	}

	private void gridDataBoundGrid1_KeyDown(object sender, KeyEventArgs e)
	{
		if (e.KeyCode == Keys.Return)
		{
			gridDataBoundGrid1.CurrentCell.ConfirmChanges();
			gridDataBoundGrid1.CurrentCell.MoveDown();
			e.Handled = true;
		}
		else if (e.KeyCode == Keys.Delete && !gridDataBoundGrid1.CurrentCell.IsEditing && gridDataBoundGrid1.Selections.Ranges.FilterRangeType(GridRangeInfoType.Rows).Count == 0)
		{
			int rowIndex = gridDataBoundGrid1.CurrentCell.RowIndex;
			gridDataBoundGrid1.CurrentCell.MoveDown();
			gridDataBoundGrid1.DeleteRecordsAtRowIndex(rowIndex, rowIndex);
			e.Handled = true;
		}
	}
}
