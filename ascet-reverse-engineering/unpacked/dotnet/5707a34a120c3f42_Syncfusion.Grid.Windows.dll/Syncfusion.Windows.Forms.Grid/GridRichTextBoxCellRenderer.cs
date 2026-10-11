using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRichTextBoxCellRenderer : GridCellRendererBase
{
	private GridRichTextEntryPanel panel;

	private RichTextBox richTextBox = new RichTextBox();

	public new GridDropDownContainer DropDownContainer => (GridDropDownContainer)base.DropDownContainer;

	public GridRichTextBoxCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownPart = new GridDropDownCellImp(this);
		base.DropDownButton = new GridCellComboBoxButton(this);
	}

	protected override void InitializeDropDownContainer()
	{
		base.InitializeDropDownContainer();
		panel = new GridRichTextEntryPanel();
		panel.RightToLeft = base.Grid.RightToLeft;
		panel.KeyDown += PanelKeyDown;
		AssignRtf(panel.RichTextBox);
		DropDownContainer.Controls.Add(panel);
	}

	private void AssignRtf(RichTextBox rtb)
	{
		if (base.HasControlValue)
		{
			string rtf = (string)ValueConvert.ChangeType(ControlValue, typeof(string), base.StyleInfo.GetCulture(useCurrentCultureIfNull: true));
			AssignRtf(panel.RichTextBox, rtf);
		}
		else if (base.HasControlText)
		{
			AssignRtf(panel.RichTextBox, ControlText);
		}
	}

	private void AssignRtf(RichTextBox rtb, string rtf)
	{
		if (RichTextPaint.IsValidRtf(rtf))
		{
			rtb.Rtf = rtf;
		}
		else
		{
			rtb.Text = rtf;
		}
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
		ControlValue = gridStyleInfo.CellValue;
	}

	protected virtual void PanelKeyDown(object sender, KeyEventArgs e)
	{
		if ((e.KeyCode == Keys.Return && Control.ModifierKeys == Keys.None) || (e.KeyCode == Keys.Down && Control.ModifierKeys == Keys.Alt) || (e.KeyCode == Keys.F2 && Control.ModifierKeys == Keys.None) || (e.KeyCode == Keys.F4 && Control.ModifierKeys == Keys.None))
		{
			base.CurrentCell.CloseDropDown(PopupCloseType.Done);
		}
	}

	protected virtual void PanelSave(object sender, EventArgs e)
	{
		base.CurrentCell.CloseDropDown(PopupCloseType.Done);
	}

	protected virtual void PanelCancel(object sender, EventArgs e)
	{
		base.CurrentCell.CloseDropDown(PopupCloseType.Canceled);
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		DropDownContainer.PopupHost.FormBorderStyle = FormBorderStyle.Sizable;
		DropDownContainer.PopupHost.Size = new Size(370, 240);
		DropDownContainer.Dock = DockStyle.Fill;
		GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
		panel.RichTextBox.Font = gridStyleInfo.GdipFont;
		if (base.HasControlValue)
		{
			string rtf = (string)ValueConvert.ChangeType(ControlValue, typeof(string), base.StyleInfo.GetCulture(useCurrentCultureIfNull: true));
			AssignRtf(panel.RichTextBox, rtf);
		}
		else
		{
			AssignRtf(panel.RichTextBox, gridStyleInfo.Text);
		}
		Color backColor = Color.FromArgb(255, gridStyleInfo.Interior.BackColor);
		panel.RichTextBox.BackColor = backColor;
		panel.RichTextBox.ForeColor = gridStyleInfo.TextColor;
		panel.Dock = DockStyle.Fill;
		panel.Save += PanelSave;
		panel.Cancel += PanelCancel;
		base.DropDownContainerShowingDropDown(sender, e);
	}

	public override void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		panel.RichTextBox.Focus();
	}

	public override void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		if (e.PopupCloseType == PopupCloseType.Done && NotifyCurrentCellChanging())
		{
			ControlValue = panel.RichTextBox.Rtf;
			NotifyCurrentCellChanged();
		}
		base.Grid.InvalidateRange(GridRangeInfo.Cell(base.RowIndex, base.ColIndex), GridRangeOptions.MergeCoveredCells);
		base.DropDownContainerCloseDropDown(sender, e);
	}

	protected override bool OnSaveChanges()
	{
		if (base.HasControlValue)
		{
			base.Grid.Model[base.RowIndex, base.ColIndex].CellValue = ControlValue;
		}
		return true;
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		Rectangle targetBounds = RemoveMargins(clientRectangle, style);
		string text;
		if (base.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && base.CurrentCell.IsModified && base.HasControlValue)
		{
			_ = (string)ValueConvert.ChangeType(ControlValue, typeof(string), base.StyleInfo.GetCulture(useCurrentCultureIfNull: true));
			text = ControlValue.ToString();
		}
		else
		{
			text = style.Text;
		}
		text = text.Replace('\f', ' ');
		Rectangle cellBoundsCore = GetCellBoundsCore(rowIndex, colIndex, includeFloated: true);
		Color backColor = Color.FromArgb(255, style.Interior.BackColor);
		RichTextPaint.DrawRichText(g, richTextBox, text, base.Grid.PrintingMode, base.Grid.GridBounds, targetBounds, cellBoundsCore, backColor, style.WrapText, 100, base.Grid.IsRightToLeft());
	}
}
