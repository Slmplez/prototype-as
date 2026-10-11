using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridComboBoxCellRenderer : GridDropDownCellRenderer
{
	private ListBox listBoxPart;

	private string findString;

	private bool setupEditPartListeners;

	private bool allowNewEntries = true;

	private bool validateStringOnKeyPress = true;

	private bool inSetTextBoxText;

	private bool inTextBoxChanged;

	private int selStart;

	private int selLength = -1;

	private string savedText = string.Empty;

	private object savedValue;

	private bool currentCellChangedCalled;

	public bool AllowValidateStringOnKeyPress
	{
		get
		{
			return validateStringOnKeyPress;
		}
		set
		{
			validateStringOnKeyPress = value;
		}
	}

	public new GridComboBoxCellModel Model => (GridComboBoxCellModel)base.Model;

	public override string ControlText
	{
		get
		{
			return base.ControlText;
		}
		set
		{
			base.ControlText = value;
			savedText = value;
		}
	}

	public ListBox ListBoxPart
	{
		get
		{
			EnsureListBoxPart();
			return listBoxPart;
		}
		set
		{
			if (listBoxPart != value)
			{
				if (listBoxPart != null)
				{
					DetachListBoxPart();
				}
				listBoxPart = value;
				if (listBoxPart != null)
				{
					AttachListBoxPart();
					SetupEditPartListeners();
				}
			}
		}
	}

	public GridComboBoxCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownImp.InitFocusEditPart = true;
		base.DropDownButton = new GridCellComboBoxButton(this);
	}

	protected virtual ListBox CreateListBoxPart()
	{
		return new GridComboBoxListBoxPart();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (base.EditPart != null)
			{
				base.EditPart.MouseDown -= OnEditPartMouseDown;
			}
			DetachListBoxPart();
		}
		base.Dispose(disposing);
	}

	protected virtual void DetachListBoxPart()
	{
		if (listBoxPart != null)
		{
			if (base.DropDownImp != null)
			{
				base.PopupControlContainer.Controls.Remove(listBoxPart);
			}
			listBoxPart.MouseUp -= ListBoxMouseUp;
			listBoxPart.Click -= ListBoxClick;
			listBoxPart.DataSource = null;
			listBoxPart = null;
		}
	}

	protected virtual void AttachListBoxPart()
	{
		if (listBoxPart != null)
		{
			InitializeDropDownContainer();
			listBoxPart.BorderStyle = BorderStyle.FixedSingle;
			listBoxPart.MouseUp += ListBoxMouseUp;
			listBoxPart.Click += ListBoxClick;
		}
	}

	private void EnsureListBoxPart()
	{
		if (listBoxPart == null)
		{
			listBoxPart = CreateListBoxPart();
			AttachListBoxPart();
		}
		SetupEditPartListeners();
	}

	private void SetupEditPartListeners()
	{
		if (!setupEditPartListeners && base.EditPart != null)
		{
			base.EditPart.MouseDown += OnEditPartMouseDown;
			setupEditPartListeners = true;
		}
	}

	protected override void OnRejectChanges()
	{
		base.OnRejectChanges();
		GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
		listBoxPart.Text = gridStyleInfo.GetFormattedText(gridStyleInfo.CellValue, 3);
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		if (e.Style.CellValueType == typeof(byte[]))
		{
			e.Style.DropDownStyle = GridDropDownStyle.Exclusive;
			e.Style.DisplayMember = e.Style.ValueMember;
		}
		base.OnPrepareViewStyleInfo(e);
	}

	public override bool ProcessMouseWheel(MouseEventArgs e)
	{
		if (IsDroppedDown)
		{
			if (e.Delta < 0)
			{
				ListBoxPart.TopIndex++;
			}
			else
			{
				ListBoxPart.TopIndex--;
			}
			return true;
		}
		return false;
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		savedText = string.Empty;
		GridStyleInfo gridStyleInfo = base.CurrentStyle;
		if (Model.SupportsChoiceList)
		{
			EnsureListBoxPart();
			listBoxPart.BeginUpdate();
			Model.FillWithChoices(ListBoxPart, gridStyleInfo, out var exclusive);
			base.DisableTextBox = exclusive && !gridStyleInfo.IsAutoComplete();
			allowNewEntries = !exclusive;
			listBoxPart.EndUpdate();
			if (base.DisableTextBox)
			{
				base.DropDownContainer.ParentControl = base.Grid;
			}
			else
			{
				base.DropDownContainer.ParentControl = base.TextBox;
			}
		}
		ControlValue = gridStyleInfo.CellValue;
		if (!base.DisableTextBox)
		{
			base.TextBox.Select(0, 0);
			base.TextBox.ReadOnly = base.Grid.Model[rowIndex, colIndex].ReadOnly;
		}
	}

	protected override void OnSetControlText(string text)
	{
		try
		{
			if (!base.InNotifyCurrentCellChangedException && !inTextBoxChanged && listBoxPart != null)
			{
				if (base.InSetControlValue)
				{
					if (listBoxPart.SelectedValue == null || !listBoxPart.SelectedValue.Equals(ControlValue))
					{
						listBoxPart.SelectedIndex = Model.FindValue(base.StyleInfo, ControlValue);
					}
				}
				else
				{
					if (listBoxPart.Text != text)
					{
						FindItemExact(text, selectItem: true, -1, ignoreCase: false);
					}
					listBoxPart.Text = text;
				}
			}
			base.OnSetControlText(text);
			if (TextBoxText != text)
			{
				base.LastOnSetControlTextFailed = true;
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		GridComboBoxCellModel model = Model;
		if (e.Handled)
		{
			return;
		}
		if (!base.HasFocusControl)
		{
			if (char.IsControl(e.KeyChar) || IsReadOnly())
			{
				return;
			}
			if (listBoxPart.Items == null)
			{
				object dataSource = model.GetDataSource(base.StyleInfo);
				if (dataSource == null)
				{
					base.OnKeyPress(e);
					return;
				}
				listBoxPart.DataSource = dataSource;
			}
			if (base.DisableTextBox)
			{
				int start = FindItemExact(ControlText, selectItem: false, -1, ignoreCase: false);
				start = FindItem(e.KeyChar.ToString(), selectItem: true, start, ignoreCase: true);
				if (start != -1 && NotifyCurrentCellChanging())
				{
					SynchronizeDisplayText(start);
					NotifyCurrentCellChanged();
				}
			}
			else
			{
				int start = FindItem(e.KeyChar.ToString(), selectItem: false, Math.Max(0, ListBoxPart.SelectedIndex) - 1, ignoreCase: true);
				if (start == -1)
				{
					start = FindItem(e.KeyChar.ToString(), selectItem: false, -1, ignoreCase: true);
				}
				if (start == -1)
				{
					if (!allowNewEntries || (validateStringOnKeyPress && !ValidateString(e.KeyChar.ToString())))
					{
						e.Handled = true;
						return;
					}
					base.CurrentCell.BeginEdit();
					SetTextBoxText(e.KeyChar.ToString(), validate: true);
				}
				else
				{
					base.CurrentCell.BeginEdit();
					if (listBoxPart.SelectedIndex != start)
					{
						SynchronizeDisplayText(start);
					}
				}
				if (base.IsEditing)
				{
					base.TextBoxControl.Select(1, Math.Max(0, base.TextBoxControl.Text.Length - 1));
				}
			}
			e.Handled = true;
			return;
		}
		char c = (char)(e.KeyChar & 0xFF);
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		num2 = base.TextBox.SelectionStart;
		num3 = base.TextBox.SelectionLength;
		if ((char.IsControl(e.KeyChar) && c != '\b') || IsReadOnly())
		{
			return;
		}
		if (listBoxPart.Items == null)
		{
			object dataSource2 = model.GetDataSource(base.StyleInfo);
			if (dataSource2 == null)
			{
				base.OnKeyPress(e);
				return;
			}
			listBoxPart.DataSource = dataSource2;
		}
		if (num2 + num3 == base.TextBox.Text.Length)
		{
			num3 = 0;
			findString = base.TextBox.Text.Substring(0, num2);
			if (c == '\b')
			{
				if (!ValidateString(findString))
				{
					if (findString.Length > 0)
					{
						findString = findString.Substring(0, findString.Length - 1);
					}
					if (savedValue != null)
					{
						SetControlValue(savedValue, initControlText: false);
					}
					TextBoxText = savedText;
					num2 = findString.Length;
					num3 = Math.Max(0, TextBoxText.Length - findString.Length);
					e.Handled = true;
				}
				else if (base.Grid.IsWindowless)
				{
					return;
				}
			}
			else
			{
				findString += e.KeyChar;
				string text = string.Empty;
				if (TextBoxText.ToLower().StartsWith(findString.ToLower()))
				{
					text = TextBoxText;
					num3 = Math.Max(0, text.Length - findString.Length);
				}
				else
				{
					int start2 = -1;
					if (TextBoxText.Length > 0)
					{
						start2 = FindItem(TextBoxText, selectItem: true, -1, ignoreCase: false);
					}
					num = FindItem(findString, selectItem: true, start2, ignoreCase: false);
					if (num == -1)
					{
						num = FindItem(findString, selectItem: true, start2, ignoreCase: true);
					}
					if (num > -1)
					{
						text = ListBoxPart.GetItemText(ListBoxPart.Items[num]);
						num3 = Math.Max(0, text.Length - findString.Length);
					}
					else if (!base.DisableTextBox)
					{
						if (!allowNewEntries)
						{
							e.Handled = true;
							return;
						}
						text = findString;
					}
					if (num >= 0)
					{
						object itemValue = Model.GetItemValue(ListBoxPart.DataSource, ListBoxPart.ValueMember, ListBoxPart.Items[num]);
						SetControlValue(itemValue, initControlText: false);
					}
					else
					{
						ResetControlValue();
					}
				}
				if (base.DisableTextBox)
				{
					throw new InvalidOperationException();
				}
				num2 = findString.Length;
				if (text == savedText)
				{
					if (base.HasControlText && ControlText != text)
					{
						ResetControlText();
					}
					num2 = findString.Length;
				}
				else if (!validateStringOnKeyPress || ValidateString(text))
				{
					if (NotifyCurrentCellChanging())
					{
						base.IgnoreTextBoxChanged = true;
						base.TextBox.SelectedText = text.Substring(findString.Length - 1);
						if (!base.HasControlValue)
						{
							ControlText = text;
						}
						if (base.HasControlText && ControlText != text)
						{
							ResetControlText();
						}
						num2 = findString.Length;
						base.IgnoreTextBoxChanged = false;
						NotifyCurrentCellChanged();
					}
					else
					{
						ResetControlValue();
					}
				}
			}
			e.Handled = true;
			base.TextBox.SelectionStart = num2;
			base.TextBox.SelectionLength = num3;
		}
		else
		{
			if (c != '\b')
			{
				SetSelectedText(e.KeyChar.ToString(), validate: true);
			}
			else
			{
				base.TextBox.SelectedText = string.Empty;
			}
			e.Handled = true;
		}
	}

	protected override void TextBoxChanged(object sender, EventArgs e)
	{
		if (inTextBoxChanged)
		{
			return;
		}
		inTextBoxChanged = true;
		try
		{
			if (!ValidateString(base.TextBox.Text))
			{
				if (savedValue != null)
				{
					SetControlValue(savedValue, initControlText: false);
				}
				base.TextBox.Text = savedText;
				base.TextBox.Select(selStart, selLength);
			}
			else if (!inSetTextBoxText)
			{
				FindItemExact(base.TextBox.Text, selectItem: true, 0, ignoreCase: false);
			}
			base.TextBoxChanged(sender, e);
		}
		finally
		{
			inTextBoxChanged = false;
		}
	}

	public override bool ValidateString(string text)
	{
		if (!validateStringOnKeyPress && text == string.Empty)
		{
			return true;
		}
		if (text != string.Empty && !allowNewEntries && ListBoxPart.FindStringExact(text) == -1)
		{
			return false;
		}
		return base.ValidateString(text);
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		ListBox listBox = ListBoxPart;
		if (!base.DisableTextBox && IsControlVisible())
		{
			listBox.BackColor = base.TextBoxControl.BackColor;
			listBox.ForeColor = base.TextBoxControl.ForeColor;
			listBox.Font = base.TextBoxControl.Font;
			listBox.RightToLeft = base.Grid.RightToLeft;
		}
		else
		{
			listBox.BackColor = Color.FromArgb(255, base.StyleInfo.Interior.BackColor);
			listBox.ForeColor = base.StyleInfo.TextColor;
			listBox.Font = base.StyleInfo.GdipFont;
			listBox.RightToLeft = base.Grid.RightToLeft;
		}
		Size size = new Size(base.Grid.GetColWidth(base.ColIndex), 75);
		GridCurrentCellShowingDropDownEventArgs e2 = new GridCurrentCellShowingDropDownEventArgs(size);
		base.Grid.RaiseCurrentCellShowingDropDown(e2);
		if (e2.Cancel)
		{
			e.Cancel = true;
			return;
		}
		if (ListBoxPart.Items.Count == 0)
		{
			e.Cancel = true;
			return;
		}
		listBox.Size = e2.Size;
		listBox.Text = TextBoxText;
		base.DropDownContainer.Size = listBox.Size;
	}

	public override void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		base.DropDownContainer.FocusParent();
		NotifyShowedDropDown();
	}

	protected override void InitializeDropDownContainer()
	{
		if (base.DropDownContainer != null)
		{
			base.DropDownContainer.Controls.Add(ListBoxPart);
			ListBoxPart.Location = new Point(0, 0);
		}
	}

	protected virtual void ListBoxMouseUp(object sender, MouseEventArgs e)
	{
		if (listBoxPart.SelectedIndex != -1)
		{
			currentCellChangedCalled = false;
			base.CurrentCell.notifyChangingCalled = false;
			SynchronizeDisplayText(listBoxPart.SelectedIndex);
			if (base.CurrentCell.notifyChangingCalled && !currentCellChangedCalled && !base.LastOnSetControlTextFailed)
			{
				NotifyCurrentCellChanged();
			}
		}
		base.CurrentCell.CloseDropDown(PopupCloseType.Done);
	}

	protected override void NotifyCurrentCellChanged()
	{
		currentCellChangedCalled = true;
		base.NotifyCurrentCellChanged();
	}

	protected virtual void ListBoxClick(object sender, EventArgs e)
	{
		base.DropDownContainer.FocusParent();
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		DropDownContainerCloseDropDown(childUI, new PopupClosedEventArgs(popupCloseType));
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		selStart = base.TextBox.SelectionStart;
		selLength = base.TextBox.SelectionLength;
		savedText = base.TextBox.Text;
		if (base.HasControlValue)
		{
			savedValue = ControlValue;
		}
		else
		{
			savedValue = null;
		}
		base.OnKeyDown(e);
		if (e.Handled || !IsDroppedDown || Control.ModifierKeys != Keys.None || IsReadOnly())
		{
			return;
		}
		int num = ListBoxPart.SelectedIndex;
		int num2 = ListBoxPart.Height / ListBoxPart.GetItemHeight(0) - 1;
		switch (e.KeyCode)
		{
		case Keys.Down:
			num++;
			e.Handled = true;
			break;
		case Keys.Up:
			num--;
			e.Handled = true;
			break;
		case Keys.Next:
			num += num2;
			e.Handled = true;
			break;
		case Keys.Prior:
			num -= num2;
			e.Handled = true;
			break;
		case Keys.End:
			num = ListBoxPart.Items.Count - 1;
			e.Handled = true;
			break;
		case Keys.Home:
			num = 0;
			e.Handled = true;
			break;
		}
		if (num != ListBoxPart.SelectedIndex)
		{
			if (num > ListBoxPart.Items.Count - 1)
			{
				num = ListBoxPart.Items.Count - 1;
			}
			if (num < 0)
			{
				num = 0;
			}
			if (num < ListBoxPart.Items.Count)
			{
				ListBoxPart.SetSelected(num, value: true);
				SynchronizeDisplayText(num);
			}
		}
	}

	protected virtual void SynchronizeDisplayText(int index)
	{
		object item = ListBoxPart.Items[index];
		if (validateStringOnKeyPress)
		{
			object itemValue = Model.GetItemValue(ListBoxPart.DataSource, ListBoxPart.DisplayMember, item);
			string text = ((itemValue != null) ? itemValue.ToString() : string.Empty);
			if (!ValidateString(text))
			{
				return;
			}
		}
		ControlValue = Model.GetItemValue(ListBoxPart.DataSource, ListBoxPart.ValueMember, item);
	}

	public virtual int FindItem(string prefix, bool selectItem, int start, bool ignoreCase)
	{
		if (ListBoxPart.Items == null)
		{
			return -1;
		}
		CultureInfo culture = base.StyleInfo.GetCulture(useCurrentCultureIfNull: true);
		if (ignoreCase)
		{
			prefix = prefix.ToUpper(culture);
		}
		int count = ListBoxPart.Items.Count;
		for (int i = 0; i < count; i++)
		{
			int num = (i + start + 1) % count;
			string itemText = ListBoxPart.GetItemText(ListBoxPart.Items[num]);
			if (itemText.Length < prefix.Length)
			{
				continue;
			}
			itemText = itemText.Substring(0, prefix.Length);
			if (ignoreCase)
			{
				itemText = itemText.ToUpper(culture);
			}
			if (prefix == itemText)
			{
				if (selectItem && num != ListBoxPart.SelectedIndex)
				{
					ListBoxPart.SetSelected(num, value: true);
				}
				return num;
			}
		}
		if (selectItem && ListBoxPart.SelectedIndex > 0)
		{
			ListBoxPart.SetSelected(ListBoxPart.SelectedIndex, value: false);
		}
		return -1;
	}

	private string GetItemText(object item)
	{
		return ListBoxPart.GetItemText(item);
	}

	public virtual int FindItemExact(string text, bool selectItem, int start, bool ignoreCase)
	{
		if (ListBoxPart.Items == null)
		{
			return -1;
		}
		CultureInfo culture = base.StyleInfo.GetCulture(useCurrentCultureIfNull: true);
		if (ignoreCase)
		{
			text = text.ToUpper(culture);
		}
		if (text == string.Empty)
		{
			if (selectItem && -1 != ListBoxPart.SelectedIndex)
			{
				ListBoxPart.SelectedIndex = -1;
			}
			return -1;
		}
		int count = ListBoxPart.Items.Count;
		for (int i = -1; i < count; i++)
		{
			int num = ((i == -1) ? ListBoxPart.SelectedIndex : ((i + start + 1) % count));
			if (num == -1)
			{
				continue;
			}
			object item = ListBoxPart.Items[num];
			string text2 = GetItemText(item);
			if (text2.Length != text.Length)
			{
				continue;
			}
			if (ignoreCase)
			{
				text2 = text2.ToUpper(culture);
			}
			if (text == text2)
			{
				if (selectItem && num != ListBoxPart.SelectedIndex)
				{
					ListBoxPart.SetSelected(num, value: true);
				}
				return num;
			}
		}
		return -1;
	}

	protected virtual void OnEditPartMouseDown(object sender, MouseEventArgs e)
	{
		if (e.Clicks == 2 && Model.AllowDoubleClickChangeSelectedIndex && ListBoxPart.Items.Count > 0)
		{
			int index = (ListBoxPart.SelectedIndex + 1) % ListBoxPart.Items.Count;
			ListBoxPart.SetSelected(index, value: true);
			ControlText = ListBoxPart.GetItemText(ListBoxPart.Items[index]);
		}
	}

	protected override void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		base.OnClick(rowIndex, colIndex, e);
		if (Environment.TickCount > base.DropDownImp.IgnoreDoubleClickTicks && base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && !base.SupportsFocusControl)
		{
			base.CurrentCell.ShowDropDown();
		}
	}

	protected override void OnDoubleClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (!Model.AllowDoubleClickChangeSelectedIndex)
		{
			base.OnDoubleClick(rowIndex, colIndex, e);
		}
		else if (base.DisableTextBox && ListBoxPart.Items != null && ListBoxPart.Items.Count > 0)
		{
			int index = (ListBoxPart.SelectedIndex + 1) % ListBoxPart.Items.Count;
			ListBoxPart.SetSelected(index, value: true);
			ControlText = ListBoxPart.GetItemText(ListBoxPart.Items[index]);
			base.CurrentCell.BeginEdit();
		}
	}
}
