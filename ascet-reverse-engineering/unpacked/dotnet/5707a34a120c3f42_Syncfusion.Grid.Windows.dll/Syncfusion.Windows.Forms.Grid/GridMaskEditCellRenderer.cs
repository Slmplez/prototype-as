using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

public class GridMaskEditCellRenderer : GridStaticCellRenderer
{
	private GridMaskedEditBox focusControl;

	private bool inTextBoxChanged;

	private bool floated;

	private string invalidText;

	public GridMaskEditCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.SupportsFocusControl = true;
		focusControl = new GridMaskedEditBox(this);
		FixControlParent(focusControl);
		focusControl.ValidationError += FocusControlValidationError;
		focusControl.TextChanged += FocusControlTextChanged;
	}

	private void FixControlParent(Control control)
	{
		if (control.Parent != base.Grid || !control.Visible)
		{
			control.Location = new Point(-1000, -1000);
			control.CausesValidation = false;
			control.Anchor = AnchorStyles.None;
			control.Dock = DockStyle.None;
			control.Parent = base.Grid.GetWindow();
			control.Visible = true;
			SetControl(control);
		}
	}

	private void FocusControlTextChanged(object sender, EventArgs e)
	{
		if (base.InInitialize || inTextBoxChanged)
		{
			return;
		}
		inTextBoxChanged = true;
		try
		{
			if (!NotifyCurrentCellChanging())
			{
				base.CurrentCell.SuspendEvents();
				InitializeControlText(base.StyleInfo.CellValue);
				base.CurrentCell.IsModified = false;
				base.CurrentCell.ResumeEvents();
				return;
			}
			SetControlValue(focusControl.ClipText, initControlText: false);
			ResetControlText();
			NotifyCurrentCellChanged();
			base.Grid.Model.FloatingCellsChanged += Model_FloatingCellsChanged;
			base.Model.SetActiveText(base.RowIndex, base.ColIndex, focusControl.Text);
			base.Grid.Model.FloatingCellsChanged -= Model_FloatingCellsChanged;
			base.CurrentCell.IsModified = true;
			if (floated)
			{
				GridRangeInfo range = GridRangeInfo.Cell(base.RowIndex, base.ColIndex);
				base.Grid.RefreshRange(range);
			}
			else if (base.StyleInfo.AutoSize && base.StyleInfo.WrapText)
			{
				base.Grid.Model.ColWidths.ResizeToFit(GridRangeInfo.Cell(base.RowIndex, base.ColIndex), GridResizeToFitOptions.ResizeCoveredCells | GridResizeToFitOptions.NoShrinkSize);
			}
		}
		finally
		{
			inTextBoxChanged = false;
			floated = false;
		}
	}

	private void Model_FloatingCellsChanged(object sender, GridFloatingCellsChangedEventArgs e)
	{
		floated = true;
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (ShouldDrawFocused(rowIndex, colIndex))
		{
			if (focusControl != null)
			{
				focusControl.Size = clientRectangle.Size;
				focusControl.Location = clientRectangle.Location;
				if (!focusControl.ContainsFocus)
				{
					focusControl.Focus();
				}
			}
		}
		else
		{
			base.OnDraw(g, clientRectangle, rowIndex, colIndex, style);
		}
	}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		return base.OnLayout(rowIndex, colIndex, style, innerBounds, buttonsBounds);
	}

	protected override bool OnValidate()
	{
		invalidText = null;
		focusControl.Validate(bRaiseValidationError: true);
		if (invalidText != null)
		{
			base.CurrentCell.ErrorMessage = "Invalid Text: " + invalidText;
			return false;
		}
		return base.OnValidate();
	}

	private void FocusControlValidationError(object sender, ValidationErrorArgs e)
	{
		invalidText = e.InvalidText;
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		GridStyleInfo viewStyleInfo = base.Grid.GetViewStyleInfo(rowIndex, colIndex, forceQueryCellInfo: false);
		Rectangle cellClientRectangle = GetCellClientRectangle(rowIndex, colIndex, viewStyleInfo, floatedCells: true);
		focusControl.Size = cellClientRectangle.Size;
		focusControl.BorderStyle = BorderStyle.None;
		focusControl.ForeColor = viewStyleInfo.TextColor;
		focusControl.Font = viewStyleInfo.GdipFont;
		focusControl.BackColor = Color.FromArgb(255, base.Grid.GetBackColor(viewStyleInfo.Interior.BackColor));
		switch (viewStyleInfo.HorizontalAlignment)
		{
		case GridHorizontalAlignment.Left:
			focusControl.TextAlign = HorizontalAlignment.Left;
			break;
		case GridHorizontalAlignment.Center:
			focusControl.TextAlign = HorizontalAlignment.Center;
			break;
		case GridHorizontalAlignment.Right:
			focusControl.TextAlign = HorizontalAlignment.Right;
			break;
		}
		GridMaskEditCellModel.InitMaskedEditProperties(focusControl, viewStyleInfo);
		base.OnInitialize(rowIndex, colIndex);
	}

	protected override void OnActivated()
	{
		if ((base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SelectAll) != GridCellActivateAction.None)
		{
			focusControl.SelectAll();
		}
		base.OnActivated();
	}

	protected override void OnHasFocusControlChanged()
	{
		if ((base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SelectAll) != GridCellActivateAction.None)
		{
			focusControl.SelectAll();
		}
		base.OnHasFocusControlChanged();
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		if (!e.Handled)
		{
			switch (e.KeyCode)
			{
			case Keys.Back:
			case Keys.Delete:
				if ((!base.CurrentCell.HasControlFocus || !base.CurrentCell.IsEditing) && Control.ModifierKeys != Keys.Alt && base.Grid.ShouldDeleteKeyClearCurrentCellContentsOnly() && !IsReadOnly() && OnDeleting() && base.Grid.RaiseCurrentCellDeleting())
				{
					focusControl.SelectAll();
					if (base.CurrentCell.BeginEdit())
					{
						ControlText = string.Empty;
						base.CurrentCell.HasControlFocus = true;
						base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
						e.Handled = true;
					}
				}
				break;
			case Keys.Escape:
				return;
			case Keys.End:
				if (Control.ModifierKeys == Keys.None && !base.CurrentCell.HasControlFocus && base.CurrentCell.BeginEdit())
				{
					base.CurrentCell.HasControlFocus = true;
					base.Grid.Update();
					focusControl.SelectionStart = focusControl.FormattedText.Length;
					focusControl.SelectionLength = 0;
					base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
					e.Handled = true;
				}
				break;
			case Keys.Home:
				if (Control.ModifierKeys == Keys.None && !base.CurrentCell.HasControlFocus && base.CurrentCell.BeginEdit())
				{
					base.CurrentCell.HasControlFocus = true;
					base.Grid.Update();
					focusControl.SelectionStart = 0;
					focusControl.SelectionLength = 0;
					base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
					e.Handled = true;
				}
				break;
			}
		}
		base.OnKeyDown(e);
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		bool flag = (Control.ModifierKeys & Keys.Control) != 0;
		bool flag2 = (Control.ModifierKeys & Keys.Alt) != 0;
		if (!e.Handled && !flag && !flag2 && !char.IsControl(e.KeyChar) && !IsReadOnly() && base.SupportsFocusControl && !base.CurrentCell.HasControlFocus)
		{
			if (ValidateString(e.KeyChar.ToString()) && base.CurrentCell.BeginEdit())
			{
				base.CurrentCell.HasControlFocus = true;
				if (NotifyCurrentCellChanging())
				{
					ResetControlText();
					ResetControlValue();
					focusControl.Text = string.Empty;
					base.CurrentCell.IsModified = true;
					base.Grid.Update();
					NativeMethods.SendMessage(focusControl.Handle, 258, e.KeyChar, 0);
				}
			}
			e.Handled = true;
		}
		base.OnKeyPress(e);
	}

	protected override void InitializeControlText(object controlValue)
	{
		string formattedText = base.StyleInfo.GetFormattedText(controlValue, 3);
		GridCurrentCellInitializeControlTextEventArgs e = new GridCurrentCellInitializeControlTextEventArgs(base.RowIndex, base.ColIndex, base.StyleInfo, controlValue, formattedText);
		if (base.Grid.RaiseCurrentCellInitializeControlText(e) && controlValue != null)
		{
			formattedText = base.StyleInfo.GetText(controlValue);
			focusControl.Text = formattedText;
		}
	}

	protected override void OnDoubleClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && (base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.DblClickOnCell) != GridCellActivateAction.None)
		{
			GridCellLayout cellLayout = GetCellLayout(rowIndex, colIndex, base.Grid.Model[rowIndex, colIndex]);
			cellLayout.ClientRectangle.Contains(new Point(e.X, e.Y));
			base.CurrentCell.BeginEdit();
			focusControl.SelectAll();
			Point location = cellLayout.TextRectangle.Location;
			Point point = new Point(e.X - location.X, e.Y - location.Y);
			ControlMouseDown(this, new MouseEventArgs(e.Button, e.Clicks, point.X, point.Y, 0));
		}
		base.OnDoubleClick(rowIndex, colIndex, e);
	}

	protected override void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
		{
			GridCellLayout cellLayout = GetCellLayout(rowIndex, colIndex, base.Grid.Model[rowIndex, colIndex]);
			bool flag = cellLayout.ClientRectangle.Contains(new Point(e.X, e.Y));
			bool flag2 = false;
			if ((flag && (base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.ClickOnCell) != GridCellActivateAction.None) || (base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None)
			{
				flag2 = true;
			}
			if (flag2)
			{
				base.CurrentCell.BeginEdit();
				if ((base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SelectAll) == 0)
				{
					if (base.CurrentCell.HasControlFocus && e.Button == MouseButtons.Left)
					{
						focusControl.Update();
						Point location = cellLayout.ClientRectangle.Location;
						ActiveXSnapshot.FakeLeftMouseClick(point: new Point(e.X - location.X, e.Y - location.Y), c: focusControl);
					}
				}
				else
				{
					focusControl.SelectAll();
					Point location2 = cellLayout.TextRectangle.Location;
					Point point = new Point(e.X - location2.X, e.Y - location2.Y);
					ControlMouseDown(this, new MouseEventArgs(e.Button, e.Clicks, point.X, point.Y, 0));
				}
			}
		}
		base.OnClick(rowIndex, colIndex, e);
	}

	public override bool CanCopy()
	{
		return base.Grid.Model.SelectedRanges.Count == 0;
	}
}
