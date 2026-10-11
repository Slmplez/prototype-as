using System;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrencyTextBoxCellRenderer : GridStaticCellRenderer
{
	private GridCurrencyTextBox focusControl;

	private GridCurrencyTextBoxCellModel currencyModel;

	private bool floated;

	private string invalidText;

	public GridCurrencyTextBoxCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.SupportsFocusControl = true;
		focusControl = new GridCurrencyTextBox(this);
		focusControl.DefaultValue = DBNull.Value;
		currencyModel = (GridCurrencyTextBoxCellModel)cellModel;
		FixControlParent(focusControl);
		focusControl.TextChanged += FocusControlTextChanged;
		focusControl.GotFocus += focusControl_GotFocus;
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (disposing && focusControl != null)
		{
			focusControl.TextChanged -= FocusControlTextChanged;
			focusControl.GotFocus -= focusControl_GotFocus;
			focusControl.Dispose();
			focusControl = null;
		}
	}

	public override bool CanCopy()
	{
		return base.Grid.Model.SelectedRanges.Count == 0;
	}

	public override bool CanPaste()
	{
		if (focusControl.ReadOnly)
		{
			return false;
		}
		IDataObject dataObject = Clipboard.GetDataObject();
		if (dataObject != null)
		{
			string text = null;
			if (dataObject.GetDataPresent(DataFormats.UnicodeText))
			{
				text = dataObject.GetData(DataFormats.UnicodeText) as string;
			}
			else if (dataObject.GetDataPresent(DataFormats.Text))
			{
				text = dataObject.GetData(DataFormats.Text) as string;
			}
			if (text != null)
			{
				if (text.IndexOf("\t") == -1)
				{
					return text.IndexOf("\r") == -1;
				}
				return false;
			}
		}
		return false;
	}

	public override bool Paste()
	{
		if (focusControl.ReadOnly)
		{
			return false;
		}
		if (!base.CurrentCell.IsEditing)
		{
			return base.CurrentCell.BeginEdit();
		}
		return base.Paste();
	}

	private void FocusControlTextChanged(object sender, EventArgs e)
	{
		if (base.InInitialize)
		{
			return;
		}
		try
		{
			if (!NotifyCurrentCellChanging())
			{
				base.CurrentCell.SuspendEvents();
				focusControl.BeginInit();
				focusControl.TextChanged -= FocusControlTextChanged;
				InitializeControlText(base.StyleInfo.CellValue);
				focusControl.TextChanged += FocusControlTextChanged;
				focusControl.EndInit();
				base.CurrentCell.IsModified = false;
				base.CurrentCell.ResumeEvents();
				return;
			}
			ResetControlText();
			SetControlValue(focusControl.DecimalValue, initControlText: false);
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
			floated = false;
		}
	}

	private void Model_FloatingCellsChanged(object sender, GridFloatingCellsChangedEventArgs e)
	{
		floated = true;
	}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		Rectangle result = base.OnLayout(rowIndex, colIndex, style, innerBounds, buttonsBounds);
		result.Inflate(-1, -1);
		return result;
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		base.OnPrepareViewStyleInfo(e);
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
			return;
		}
		Color textColor = style.TextColor;
		string text = ((!ShouldDrawEditing(rowIndex, colIndex)) ? currencyModel.GetActiveText(rowIndex, colIndex) : ControlText);
		if (text == null)
		{
			text = currencyModel.GetDisplayTextAndColor(style, style.CellValue, out textColor);
		}
		if (base.Grid.PrintingMode && base.Grid.Model.Properties.BlackWhite)
		{
			textColor = Color.Black;
		}
		DrawCurrencyText(g, clientRectangle, rowIndex, colIndex, style, text, textColor);
	}

	private void DrawCurrencyText(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style, string displayText, Color textColor)
	{
		bool drawDisabled = false;
		if (clientRectangle.IsEmpty)
		{
			return;
		}
		int imageIndex = style.ImageIndex;
		if (imageIndex != -1)
		{
			ImageList imageList = style.ImageList;
			if (imageList != null && imageIndex < imageList.Images.Count)
			{
				Rectangle cellRectangle = GetCellLayout(rowIndex, colIndex, style).CellRectangle;
				GridStaticCellRenderer.DrawImage(g, imageList, imageIndex, cellRectangle, base.Grid.IsRightToLeft());
			}
		}
		Rectangle textRectangle = RemoveMargins(clientRectangle, style);
		if (textRectangle.IsEmpty)
		{
			return;
		}
		if (style.HasError)
		{
			displayText = style.Error;
			drawDisabled = true;
		}
		if (displayText.Length > 0)
		{
			GridDrawCellDisplayTextEventArgs e = new GridDrawCellDisplayTextEventArgs(g, displayText, textRectangle, style);
			base.Grid.RaiseDrawCellDisplayText(e);
			if (!e.Cancel)
			{
				textRectangle = e.TextRectangle;
				displayText = e.DisplayText;
				Font gdipFont = style.GdipFont;
				bool isRightToLeft = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
				GridStaticCellRenderer.DrawText(g, displayText, gdipFont, textRectangle, style, textColor, drawDisabled, isRightToLeft);
			}
		}
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

	protected override void OnBeginEdit()
	{
		if (ControlValue != null && ControlText != focusControl.NullString && focusControl.DecimalValue.Equals(0m))
		{
			focusControl.AllowNull = false;
		}
		else
		{
			focusControl.AllowNull = true;
			if (ControlText.Equals(focusControl.NullString) || ControlValue == null)
			{
				focusControl.Delete();
			}
		}
		base.OnBeginEdit();
	}

	protected override bool OnSaveChanges()
	{
		GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
		if (gridStyleInfo.CellValueType != null)
		{
			if (focusControl.Text.Equals(gridStyleInfo.CurrencyEdit.NullString))
			{
				object cellValue = null;
				try
				{
					cellValue = NullableHelper.ChangeType(focusControl.Text, gridStyleInfo.CellValueType, gridStyleInfo.CultureInfo);
				}
				catch (FormatException)
				{
					cellValue = focusControl.DefaultValue;
				}
				finally
				{
					gridStyleInfo.CellValue = cellValue;
				}
			}
			else
			{
				gridStyleInfo.CellValue = ValueConvert.ChangeType(focusControl.DecimalValue, gridStyleInfo.CellValueType, null);
			}
		}
		else
		{
			gridStyleInfo.CellValue = focusControl.Text;
		}
		return true;
	}

	protected override bool OnValidate()
	{
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
		GridCurrencyTextBoxCellModel.InitCurrencyEditProperties(focusControl, viewStyleInfo);
		focusControl.BeginInit();
		focusControl.BorderStyle = BorderStyle.None;
		focusControl.BackColor = Color.FromArgb(255, base.Grid.GetBackColor(viewStyleInfo.Interior.BackColor));
		focusControl.ForeColor = viewStyleInfo.TextColor;
		focusControl.Font = viewStyleInfo.GdipFont;
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
		focusControl.EndInit();
		base.OnInitialize(rowIndex, colIndex);
	}

	protected override void InitializeControlText(object controlValue)
	{
		NumberFormatInfo numberFormatInfo = ((base.StyleInfo != null) ? base.StyleInfo.CurrencyEdit.NumberFormatInfoObject : CultureInfo.CurrentCulture.NumberFormat);
		string text = string.Empty;
		if (controlValue != null)
		{
			text = ((!double.TryParse(controlValue.ToString(), out var result)) ? Convert.ToString(controlValue, numberFormatInfo) : result.ToString("c", numberFormatInfo));
		}
		focusControl.Text = text;
		text = focusControl.FormattedText;
		GridCurrentCellInitializeControlTextEventArgs e = new GridCurrentCellInitializeControlTextEventArgs(base.RowIndex, base.ColIndex, base.StyleInfo, controlValue, text);
		if (base.Grid.RaiseCurrentCellInitializeControlText(e) && e.ControlText != text)
		{
			ControlText = e.ControlText;
		}
	}

	protected override void OnActivated()
	{
		if ((base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SelectAll) != GridCellActivateAction.None)
		{
			focusControl.SelectAll();
		}
		base.OnActivated();
	}

	public override bool CanCut()
	{
		if (focusControl != null && focusControl.ReadOnly)
		{
			return false;
		}
		return true;
	}

	protected override void OnHasFocusControlChanged()
	{
		if (base.HasFocusControl && (base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SelectAll) != GridCellActivateAction.None)
		{
			focusControl.SelectAll();
		}
		base.OnHasFocusControlChanged();
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		bool flag = (Control.ModifierKeys & Keys.Control) != 0;
		bool flag2 = (Control.ModifierKeys & Keys.Alt) != 0;
		if (!e.Handled && !flag && !flag2)
		{
			if (!char.IsControl(e.KeyChar) && !IsReadOnly() && base.SupportsFocusControl)
			{
				if (e.KeyChar.Equals('0') && base.CurrentCell.HasControlFocus)
				{
					if (base.Control.Text.Equals(focusControl.NullString))
					{
						focusControl.AllowNull = false;
					}
				}
				else if (!base.CurrentCell.HasControlFocus)
				{
					if (ValidateString(e.KeyChar.ToString()) && base.CurrentCell.BeginEdit())
					{
						base.CurrentCell.HasControlFocus = true;
						char result;
						if ((char.IsDigit(e.KeyChar) || e.KeyChar == '.') && NotifyCurrentCellChanging())
						{
							focusControl.AllowNull = false;
							base.CurrentCell.IsModified = true;
							ControlValue = ((e.KeyChar == '.') ? "0" : e.KeyChar.ToString());
							focusControl.SelectAllOnFocus = false;
							base.Grid.Update();
							int num = ((GridCurrencyTextBox)base.Control).FormattedText.IndexOf(e.KeyChar);
							num = ((num > -1) ? (num + 1) : 0);
							((GridCurrencyTextBox)base.Control).SelectionStart = num;
							((GridCurrencyTextBox)base.Control).SelectionLength = 0;
						}
						else if (char.TryParse(focusControl.NegativeSign, out result))
						{
							SendKeys.Send(new string(e.KeyChar, 1));
						}
						else
						{
							base.CurrentCell.CancelEdit();
						}
					}
					e.Handled = true;
				}
			}
			else if (e.KeyChar == '\b' && focusControl.DecimalValue.Equals(0m))
			{
				focusControl.AllowNull = true;
				focusControl.Delete();
			}
		}
		base.OnKeyPress(e);
	}

	protected override void OnSetControlText(string text)
	{
		focusControl.Text = text;
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
						base.CurrentCell.HasControlFocus = true;
						focusControl.AllowNull = true;
						focusControl.Delete();
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
					focusControl.SelectionStart = focusControl.Text.Length;
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
					focusControl.Update();
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

	private void focusControl_GotFocus(object sender, EventArgs e)
	{
		if ((base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SelectAll) != GridCellActivateAction.None)
		{
			focusControl.SelectAll();
		}
		NotifyCurrentCellControlGotFocus(base.Control);
	}
}
