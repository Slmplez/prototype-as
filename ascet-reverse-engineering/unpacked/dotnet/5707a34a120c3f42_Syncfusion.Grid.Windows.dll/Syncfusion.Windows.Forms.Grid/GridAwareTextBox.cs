using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(true)]
[ToolboxBitmap(typeof(GridAwareTextBox), "ToolboxIcons.GridAwareTextBox.bmp")]
public class GridAwareTextBox : TextBox
{
	private bool ignoreTextChanged;

	private GridControlBase activeGrid;

	private Color disabledColor = SystemColors.Window;

	private Color enabledColor = SystemColors.Window;

	private int selStart;

	private int selLength = -1;

	[Description("Specifies the back color of the control when it is disabled.")]
	[Category("Appearance")]
	public Color DisabledBackColor
	{
		get
		{
			return disabledColor;
		}
		set
		{
			disabledColor = value;
		}
	}

	[Description("Specifies the back color of the control when it is enabled.")]
	[Category("Appearance")]
	public Color EnabledBackColor
	{
		get
		{
			return enabledColor;
		}
		set
		{
			enabledColor = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool CausesValidation
	{
		get
		{
			return false;
		}
		set
		{
			base.CausesValidation = false;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue("")]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	public GridAwareTextBox()
	{
		base.CausesValidation = false;
		base.Text = string.Empty;
	}

	public virtual void WireGrid(GridControlBase grid)
	{
		if (grid != null)
		{
			grid.CurrentCellActivated += GridCurrentCellActivated;
			grid.CurrentCellChanged += GridCurrentCellChanged;
			grid.CurrentCellRejectedChanges += GridCurrentCellRejectedChanges;
			GridCurrentCellActivated(grid, EventArgs.Empty);
		}
	}

	public virtual void UnwireGrid(GridControlBase grid)
	{
		if (grid != null)
		{
			grid.CurrentCellActivated -= GridCurrentCellActivated;
			grid.CurrentCellChanged -= GridCurrentCellChanged;
			grid.CurrentCellRejectedChanges -= GridCurrentCellRejectedChanges;
		}
	}

	protected virtual void GridCurrentCellActivated(object sender, EventArgs e)
	{
		if (sender is GridControlBase gridControlBase)
		{
			activeGrid = gridControlBase;
			GridCurrentCell currentCell = gridControlBase.CurrentCell;
			if (currentCell.Renderer != null)
			{
				SetText(currentCell.Renderer.ControlText);
			}
			BackColor = GetReadOnlyBackColor();
		}
	}

	protected virtual void GridCurrentCellChanged(object sender, EventArgs e)
	{
		GridControlBase gridControlBase = sender as GridControlBase;
		SetText(gridControlBase.CurrentCell.Renderer.ControlText);
	}

	protected virtual void GridCurrentCellRejectedChanges(object sender, EventArgs e)
	{
		GridControlBase gridControlBase = sender as GridControlBase;
		GridCurrentCell currentCell = gridControlBase.CurrentCell;
		SetText(gridControlBase.Model[currentCell.RowIndex, currentCell.ColIndex].Text);
	}

	protected void SetText(string text)
	{
		ignoreTextChanged = true;
		Text = text;
		ignoreTextChanged = false;
	}

	protected GridCurrentCell GetCurrentCell()
	{
		GridCurrentCell gridCurrentCell = null;
		if (activeGrid == null)
		{
			return gridCurrentCell;
		}
		if (activeGrid.Parent is SplitterControl)
		{
			Control activePane = ((SplitterControl)activeGrid.Parent).ActivePane;
			if (activePane is GridControlBase)
			{
				gridCurrentCell = ((GridControlBase)activePane).CurrentCell;
			}
		}
		if (gridCurrentCell == null)
		{
			if (activeGrid.Model.ActiveGridView != null)
			{
				gridCurrentCell = activeGrid.Model.ActiveGridView.CurrentCell;
			}
			if (gridCurrentCell == null)
			{
				gridCurrentCell = activeGrid.CurrentCell;
			}
		}
		return gridCurrentCell;
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		if (ignoreTextChanged || activeGrid == null)
		{
			return;
		}
		GridCurrentCell currentCell = GetCurrentCell();
		if (currentCell == null)
		{
			return;
		}
		if (!currentCell.IsEditing)
		{
			currentCell.BeginEdit(focusRenderer: false);
		}
		GridCellRendererBase renderer = currentCell.Renderer;
		if (renderer != null)
		{
			TextBoxBase textBoxBase = renderer.Control as TextBoxBase;
			if (renderer.ValidateString(Text))
			{
				renderer.ControlText = Text;
				currentCell.IsModified = true;
				textBoxBase?.Select(base.SelectionStart, SelectionLength);
			}
			else
			{
				ignoreTextChanged = true;
				Text = currentCell.Renderer.ControlText;
				Select(selStart, selLength);
				ignoreTextChanged = false;
			}
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		if (e.KeyCode == Keys.Return && activeGrid != null)
		{
			GridCurrentCell currentCell = GetCurrentCell();
			if (currentCell.ConfirmChanges())
			{
				currentCell.Grid.Focus();
				SendKeys.Send("{ENTER}");
			}
			else if (!GridUtil.IsEmpty(currentCell.ErrorMessage))
			{
				currentCell.DisplayWarningText(currentCell.ErrorMessage);
			}
		}
		else if (e.KeyCode == Keys.Escape && activeGrid != null)
		{
			GridCurrentCell currentCell2 = GetCurrentCell();
			currentCell2.RejectChanges();
			currentCell2.Refresh();
			base.SelectionStart = Text.Length;
			SelectionLength = 0;
		}
		else
		{
			base.OnKeyDown(e);
		}
	}

	protected override void OnKeyUp(KeyEventArgs e)
	{
		((Control)this).OnKeyUp(e);
		if (!Focused)
		{
			return;
		}
		GridCurrentCell currentCell = GetCurrentCell();
		if (currentCell != null)
		{
			GridCellRendererBase renderer = currentCell.Renderer;
			if (renderer != null && renderer.Control is TextBoxBase textBoxBase)
			{
				textBoxBase.Select(base.SelectionStart, SelectionLength);
			}
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (!Focused)
		{
			return;
		}
		GridCurrentCell currentCell = GetCurrentCell();
		if (currentCell != null)
		{
			GridCellRendererBase renderer = currentCell.Renderer;
			if (renderer != null && renderer.Control is TextBoxBase textBoxBase)
			{
				textBoxBase.Select(base.SelectionStart, SelectionLength);
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	[DocumentationExclude]
	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (base.Visible)
		{
			BackColor = GetReadOnlyBackColor();
		}
	}

	private Color GetReadOnlyBackColor()
	{
		GridControlBase gridControlBase = activeGrid;
		if (gridControlBase != null)
		{
			GridCurrentCell currentCell = gridControlBase.CurrentCell;
			if (currentCell.Renderer != null)
			{
				GridStyleInfo gridStyleInfo = gridControlBase.Model[currentCell.RowIndex, currentCell.ColIndex];
				if (((gridStyleInfo.ReadOnly || gridControlBase.Model.ReadOnly) && !gridControlBase.Model.IgnoreReadOnly) || !(currentCell.Renderer.Control is TextBoxBase))
				{
					base.ReadOnly = true;
				}
				else
				{
					base.ReadOnly = false;
				}
			}
			else
			{
				base.ReadOnly = true;
			}
		}
		if (!base.ReadOnly)
		{
			return EnabledBackColor;
		}
		return DisabledBackColor;
	}
}
