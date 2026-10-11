using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDropDownGridListControlCellRenderer : GridDropDownCellRenderer
{
	private GridListControl listBoxPart;

	private string findString;

	private bool setupEditPartListeners;

	private bool inShowDropDown;

	internal bool allowNewEntries = true;

	private string lastSetControlText;

	private bool inSetTextBoxText;

	private bool inTextBoxChanged;

	private int selStart;

	private int selLength = -1;

	private string savedText = string.Empty;

	private object savedValue;

	private bool currentCellChangedCalled;

	public new GridDropDownGridListControlCellModel Model => (GridDropDownGridListControlCellModel)base.Model;

	public GridListControl ListControlPart
	{
		get
		{
			EnsureListControlPart();
			return listBoxPart;
		}
	}

	public GridDropDownGridListControlCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownImp.InitFocusEditPart = true;
		base.DropDownButton = new GridCellComboBoxButton(this);
	}

	protected virtual GridListControl CreateListControlPart()
	{
		return new GridDropDownGridListControlPart();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (base.EditPart != null)
			{
				base.EditPart.MouseDown -= OnEditPartMouseDown;
				base.EditPart.KeyDown -= EditPart_KeyDown;
			}
			ResetListControlPart();
		}
		base.Dispose(disposing);
	}

	protected virtual void OnEnsureListControlPart()
	{
	}

	protected virtual void ResetListControlPart()
	{
		if (listBoxPart != null)
		{
			listBoxPart.grid.MouseUp -= ListControlMouseUp;
			listBoxPart.grid.CurrentCellMoving -= ListControlCurrentCellMoving;
			listBoxPart.grid.PrepareViewStyleInfo -= ListControlGridPrepareViewStyleInfo;
			listBoxPart.grid.CellDrawn -= ListControlGridCellDrawn;
			listBoxPart.GotFocus -= ListControlGotFocus;
			listBoxPart.grid.GotFocus -= ListControlGotFocus;
			listBoxPart.grid.VScrollBar.Scroll -= ListControlScroll;
			listBoxPart.Dispose();
			listBoxPart = null;
		}
	}

	private void EnsureListControlPart()
	{
		if (listBoxPart == null)
		{
			listBoxPart = CreateListControlPart();
			listBoxPart.BindingContext = new BindingContext();
			listBoxPart.grid.BorderStyle = BorderStyle.FixedSingle;
			listBoxPart.grid.MouseUp += ListControlMouseUp;
			listBoxPart.grid.CurrentCellMoving += ListControlCurrentCellMoving;
			listBoxPart.GotFocus += ListControlGotFocus;
			listBoxPart.grid.GotFocus += ListControlGotFocus;
			listBoxPart.grid.VScrollBar.Scroll += ListControlScroll;
			listBoxPart.grid.PrepareViewStyleInfo += ListControlGridPrepareViewStyleInfo;
			listBoxPart.grid.CellDrawn += ListControlGridCellDrawn;
		}
		if (!setupEditPartListeners && base.EditPart != null)
		{
			base.EditPart.MouseDown += OnEditPartMouseDown;
			base.EditPart.KeyDown += EditPart_KeyDown;
			setupEditPartListeners = true;
		}
		OnEnsureListControlPart();
	}

	protected virtual void ListControlGridPrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
	{
	}

	protected virtual void ListControlGridCellDrawn(object sender, GridDrawCellEventArgs e)
	{
	}

	protected override void OnRejectChanges()
	{
		base.OnRejectChanges();
		GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
		listBoxPart.Text = gridStyleInfo.GetFormattedText(gridStyleInfo.CellValue, 3);
	}

	private void ListControlCurrentCellMoving(object sender, GridCurrentCellMovingEventArgs e)
	{
		if (Control.MouseButtons == MouseButtons.Left)
		{
			e.Options |= GridSetCurrentCellOptions.NoSetFocus;
		}
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

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		lastSetControlText = null;
		savedText = string.Empty;
		if (Model.SupportsChoiceList)
		{
			GridStyleInfo styleInfo = base.StyleInfo;
			bool exclusiveChoiceList = styleInfo.ExclusiveChoiceList;
			base.DisableTextBox = exclusiveChoiceList && !styleInfo.IsAutoComplete();
			allowNewEntries = !exclusiveChoiceList;
			EnsureListControlPart();
			if (base.DisableTextBox)
			{
				base.DropDownContainer.ParentControl = base.Grid;
			}
			else
			{
				base.DropDownContainer.ParentControl = base.TextBox;
			}
			object dataSource = Model.GetDataSource(styleInfo);
			if (listBoxPart.DataSource != null && listBoxPart.DataSource != dataSource)
			{
				listBoxPart.DataBindings.Clear();
				listBoxPart.DataSource = null;
			}
			listBoxPart.grid.BeginUpdate();
			listBoxPart.grid.TableStyle.Font = styleInfo.Font;
			listBoxPart.grid.RightToLeft = base.Grid.RightToLeft;
			listBoxPart.grid.TableStyle.Interior = styleInfo.Interior;
			listBoxPart.grid.TableStyle.TextColor = styleInfo.TextColor;
			listBoxPart.ImageList = styleInfo.ImageList;
			listBoxPart.AllowResizeColumns = false;
			listBoxPart.grid.WantKeys = false;
			listBoxPart.grid.ThemesEnabled = base.Grid.ThemesEnabled && styleInfo.Themed;
			listBoxPart.MultiColumn = true;
			listBoxPart.grid.Model.Options.GridVisualStylesDrawing = base.Grid.GetGridWindow().GetGridVisualStylesDrawing();
			listBoxPart.grid.Model.Options.GridVisualStyles = base.Grid.GetGridWindow().GetGridVisualStyles();
			listBoxPart.SetDataBinding(listBoxPart.BindingContext, dataSource, styleInfo.DisplayMember, styleInfo.ValueMember);
			ControlValue = styleInfo.CellValue;
			listBoxPart.grid.EndUpdate();
		}
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
				else if (lastSetControlText != text)
				{
					if (listBoxPart.Text != text)
					{
						FindItemExact(text, selectItem: true, -1, ignoreCase: false);
					}
					listBoxPart.Text = text;
				}
			}
			base.OnSetControlText(text);
			lastSetControlText = text;
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
		GridDropDownGridListControlCellModel model = Model;
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
			if (ListControlPart.Items == null)
			{
				object dataSource = model.GetDataSource(base.StyleInfo);
				if (dataSource == null)
				{
					base.OnKeyPress(e);
					return;
				}
				ListControlPart.DataSource = dataSource;
			}
			if (base.DisableTextBox)
			{
				if (ListControlPart.Items == null)
				{
					if (Model.GetDataSource(base.StyleInfo) is IList items)
					{
						string itemText;
						int start = ListControlPart.FindItemInternal(items, TextBoxText, -1, ignoreCase: true, out itemText);
						int num = ListControlPart.FindItemInternal(items, e.KeyChar.ToString(), start, ignoreCase: true, out itemText);
						if (num > -1 && NotifyCurrentCellChanging())
						{
							SynchronizeDisplayText(num);
							NotifyCurrentCellChanged();
						}
					}
				}
				else
				{
					int num = FindItem(e.KeyChar.ToString(), selectItem: true, ListControlPart.SelectedIndex, ignoreCase: true);
					if (num != -1 && NotifyCurrentCellChanging())
					{
						SynchronizeDisplayText(num);
						NotifyCurrentCellChanged();
					}
				}
			}
			else
			{
				base.CurrentCell.BeginEdit();
				if (ListControlPart.Items == null)
				{
					if (Model.GetDataSource(base.StyleInfo) is IList items2)
					{
						string itemText2;
						int num = ListControlPart.FindItemInternal(items2, e.KeyChar.ToString(), ListControlPart.SelectedIndex, ignoreCase: true, out itemText2);
						if (num != -1)
						{
							SynchronizeDisplayText(num);
						}
						else
						{
							if (!allowNewEntries)
							{
								e.Handled = true;
								return;
							}
							SetTextBoxText(e.KeyChar.ToString(), validate: true);
						}
					}
				}
				else
				{
					int num = FindItem(e.KeyChar.ToString(), selectItem: false, Math.Max(0, ListControlPart.SelectedIndex) - 1, ignoreCase: true);
					if (num == -1)
					{
						num = FindItem(e.KeyChar.ToString(), selectItem: false, -1, ignoreCase: true);
					}
					if (num != -1 && base.StyleInfo.DropDownStyle != GridDropDownStyle.Editable)
					{
						if (ListControlPart.SelectedIndex != num)
						{
							SynchronizeDisplayText(num);
						}
					}
					else
					{
						if (!allowNewEntries)
						{
							e.Handled = true;
							return;
						}
						SetTextBoxText(e.KeyChar.ToString(), validate: true);
					}
				}
				base.TextBoxControl.Select(1, Math.Max(0, base.TextBoxControl.Text.Length - 1));
			}
			e.Handled = true;
			return;
		}
		char c = (char)(e.KeyChar & 0xFF);
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		if ((char.IsControl(e.KeyChar) && c != '\b') || IsReadOnly())
		{
			return;
		}
		if (ListControlPart.Items == null)
		{
			object dataSource2 = model.GetDataSource(base.StyleInfo);
			if (dataSource2 == null)
			{
				base.OnKeyPress(e);
				return;
			}
			ListControlPart.DataSource = dataSource2;
		}
		num3 = base.TextBox.SelectionStart;
		num4 = base.TextBox.SelectionLength;
		if (num3 + num4 == base.TextBox.Text.Length)
		{
			num4 = 0;
			findString = base.TextBox.Text.Substring(0, num3);
			if (c == '\b')
			{
				savedText = base.TextBox.Text;
				if (base.HasControlValue)
				{
					savedValue = ControlValue;
				}
				else
				{
					savedValue = null;
				}
				bool flag = true;
				if (base.TextBox.SelectionLength == 0 && num3 > 0 && !allowNewEntries)
				{
					flag = false;
					num3--;
					num4++;
					findString = base.TextBox.Text.Substring(0, num3);
				}
				if (findString == string.Empty)
				{
					TextBoxText = string.Empty;
					e.Handled = true;
				}
				else if (!ValidateString(findString))
				{
					if (flag && findString.Length > 0)
					{
						findString = findString.Substring(0, findString.Length - 1);
					}
					if (savedValue != null)
					{
						SetControlValue(savedValue, initControlText: false);
					}
					TextBoxText = savedText;
					num3 = findString.Length;
					num4 = Math.Max(0, TextBoxText.Length - findString.Length);
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
				int start2 = -1;
				string text = string.Empty;
				if (ListControlPart.Items == null)
				{
					if (Model.GetDataSource(base.StyleInfo) is IList list)
					{
						if (TextBoxText.ToLower().StartsWith(findString.ToLower()))
						{
							text = TextBoxText;
							num4 = Math.Max(0, text.Length - findString.Length);
						}
						else
						{
							start2 = ListControlPart.FindItemInternal(list, TextBoxText, -1, ignoreCase: true, out var itemText3);
							num2 = ListControlPart.FindItemInternal(list, findString, Math.Max(start2 - 1, -1), ignoreCase: false, out itemText3);
							if (num2 == -1)
							{
								num2 = ListControlPart.FindItemInternal(list, findString, Math.Max(start2 - 1, -1), ignoreCase: true, out itemText3);
							}
							if (num2 > -1)
							{
								text = GetItemText(list[num2]);
								num4 = Math.Max(0, text.Length - findString.Length);
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
							if (num2 >= 0)
							{
								object itemValue = model.GetInternalListBox().GetItemValue(list[num2]);
								SetControlValue(itemValue, initControlText: false);
							}
							else
							{
								ResetControlValue();
							}
						}
					}
				}
				else if (TextBoxText.ToLower().StartsWith(findString.ToLower()))
				{
					text = TextBoxText;
					num4 = Math.Max(0, text.Length - findString.Length);
				}
				else
				{
					if (TextBoxText.Length > 0)
					{
						start2 = FindItem(TextBoxText, selectItem: true, -1, ignoreCase: false);
					}
					num2 = FindItem(findString, selectItem: true, start2, ignoreCase: false);
					if (num2 == -1 && base.StyleInfo.DropDownStyle != GridDropDownStyle.Editable)
					{
						num2 = FindItem(findString, selectItem: true, start2, ignoreCase: true);
					}
					if (num2 > -1 && base.StyleInfo.DropDownStyle != GridDropDownStyle.Editable)
					{
						text = GetItemText(ListControlPart.Items[num2]);
						num4 = Math.Max(0, text.Length - findString.Length);
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
					if (num2 >= 0 && base.StyleInfo.DropDownStyle != GridDropDownStyle.Editable)
					{
						object itemValue2 = ListControlPart.GetItemValue(ListControlPart.Items[num2]);
						SetControlValue(itemValue2, initControlText: false);
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
				if (text == savedText)
				{
					if (base.HasControlText && ControlText != text)
					{
						ResetControlText();
					}
					num3 = findString.Length;
				}
				else if (NotifyCurrentCellChanging())
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
					num3 = findString.Length;
					base.IgnoreTextBoxChanged = false;
					NotifyCurrentCellChanged();
				}
				else
				{
					ResetControlValue();
				}
			}
			e.Handled = true;
			base.TextBox.SelectionStart = num3;
			base.TextBox.SelectionLength = num4;
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
		if (inTextBoxChanged || base.TextBox.Text == savedText)
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
			else
			{
				if (!inSetTextBoxText)
				{
					FindItemExact(base.TextBox.Text, selectItem: true, 0, ignoreCase: false);
				}
				base.TextBoxChanged(sender, e);
			}
		}
		finally
		{
			inTextBoxChanged = false;
		}
	}

	public override bool ValidateString(string text)
	{
		if (text == string.Empty)
		{
			return true;
		}
		if (!allowNewEntries && ListControlPart.FindStringExact(text) == -1)
		{
			return false;
		}
		return base.ValidateString(text);
	}

	public override bool ProcessMouseWheel(MouseEventArgs e)
	{
		listBoxPart.Grid.MouseControllerDispatcher.ProcessCancelMode();
		listBoxPart.Grid.RaiseMouseWheel(e);
		return IsDroppedDown;
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		inShowDropDown = true;
		GridListControl listControlPart = ListControlPart;
		if (!base.DisableTextBox)
		{
			listControlPart.BackColor = base.TextBoxControl.BackColor;
			listControlPart.ForeColor = base.TextBoxControl.ForeColor;
			listControlPart.Font = base.TextBoxControl.Font;
			listControlPart.RightToLeft = base.Grid.RightToLeft;
		}
		else
		{
			listControlPart.BackColor = Color.FromArgb(255, base.StyleInfo.Interior.BackColor);
			listControlPart.ForeColor = base.StyleInfo.TextColor;
			listControlPart.Font = base.StyleInfo.GdipFont;
			listControlPart.RightToLeft = base.Grid.RightToLeft;
		}
		Size size = new Size(base.Grid.GetColWidth(base.ColIndex), 75);
		if (listControlPart.DataSource == null)
		{
			GridStyleInfo styleInfo = base.StyleInfo;
			object dataSource = Model.GetDataSource(styleInfo);
			if (dataSource != null)
			{
				listBoxPart.SetDataBinding(listBoxPart.BindingContext, dataSource, styleInfo.DisplayMember, styleInfo.ValueMember);
			}
		}
		if (listControlPart.DataSource != null)
		{
			if (listControlPart.Dock != DockStyle.Fill)
			{
				listControlPart.FillLastColumn = false;
				listControlPart.Grid.VScroll = false;
				listControlPart.Grid.HScroll = false;
				listControlPart.Grid.VScrollPixel = listControlPart.Grid.RowCount < 26;
				listControlPart.Grid.HScrollPixel = true;
				listControlPart.SetBounds(0, 0, size.Width, size.Height);
				size = listControlPart.Size;
				listControlPart.SetBounds(0, 0, size.Width + SystemInformation.VerticalScrollBarWidth, size.Height + SystemInformation.HorizontalScrollBarHeight);
				if (!listControlPart.Grid.VScroll)
				{
					listControlPart.SetBounds(0, 0, size.Width, size.Height + SystemInformation.HorizontalScrollBarHeight);
				}
				listControlPart.FillLastColumn = true;
				size = listControlPart.Size;
			}
			else
			{
				size = listControlPart.Size;
			}
		}
		else
		{
			size = listControlPart.Size;
		}
		GridCurrentCellShowingDropDownEventArgs e2 = new GridCurrentCellShowingDropDownEventArgs(size);
		base.Grid.RaiseCurrentCellShowingDropDown(e2);
		if (e2.Cancel || listControlPart.DataSource == null)
		{
			e.Cancel = true;
			return;
		}
		if (e2.Size != listControlPart.Size)
		{
			if (listControlPart is GridDropDownGridListControlPart { AllowModifySetBoundsCore: var allowModifySetBoundsCore } gridDropDownGridListControlPart)
			{
				gridDropDownGridListControlPart.AllowModifySetBoundsCore = false;
				listControlPart.Size = e2.Size;
				gridDropDownGridListControlPart.AllowModifySetBoundsCore = allowModifySetBoundsCore;
			}
			else
			{
				listControlPart.Size = e2.Size;
			}
		}
		listControlPart.Text = TextBoxText;
		listControlPart.Name = "GridListControl";
		listControlPart.Grid.UpdateStyles();
		base.DropDownContainer.Size = listControlPart.Size;
		_ = base.TextBox;
		if (base.DisableTextBox)
		{
			Hide();
		}
	}

	public override void DropDownContainerShowedDropDown(object sender, EventArgs e)
	{
		base.DropDownContainer.FocusParent();
		GridControl gridControl = ListControlPart.grid;
		gridControl.CurrentCell.Deactivate(discardChanges: true);
		gridControl.MouseControllerDispatcher.TrackMouse = gridControl.RangeInfoToRectangle(GridRangeInfo.Rows(gridControl.TopRowIndex, gridControl.RowCount));
		if (listBoxPart.Dock != DockStyle.Fill)
		{
			int num = (gridControl.VScroll ? SystemInformation.VerticalScrollBarWidth : 0);
			int num2 = gridControl.ColWidths.GetTotal(0, gridControl.ColCount) + 2;
			if (num2 < gridControl.Width - num)
			{
				gridControl.ColWidths[gridControl.ColCount] += gridControl.Width - num - num2;
			}
		}
		inShowDropDown = false;
		NotifyShowedDropDown();
	}

	protected override void InitializeDropDownContainer()
	{
		if (base.DropDownContainer != null)
		{
			base.DropDownContainer.Controls.Add(ListControlPart);
		}
	}

	public virtual void ListControlMouseUp(object sender, MouseEventArgs e)
	{
		if (listBoxPart.SelectedIndex != -1)
		{
			currentCellChangedCalled = false;
			base.CurrentCell.notifyChangingCalled = false;
			SynchronizeDisplayText(listBoxPart.SelectedIndex);
			if (base.CurrentCell.notifyChangingCalled && !currentCellChangedCalled)
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

	public virtual void ListControlScroll(object sender, ScrollEventArgs e)
	{
		base.DropDownContainer.FocusParent();
	}

	public virtual void ListControlGotFocus(object sender, EventArgs e)
	{
		if (!inShowDropDown)
		{
			listBoxPart.grid.MouseControllerDispatcher.ResetTrackMouse();
		}
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
		if (e.Handled || !IsDroppedDown || Control.ModifierKeys != Keys.None)
		{
			return;
		}
		int num = ListControlPart.SelectedIndex;
		int num2 = ((ListControlPart.Items != null && ListControlPart.Items.Count > 0) ? (ListControlPart.Height / ListControlPart.GetItemHeight(0) - 1) : 0);
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
			num = ListControlPart.Items.Count - 1;
			e.Handled = true;
			break;
		case Keys.Home:
			num = 0;
			e.Handled = true;
			break;
		}
		if (num != ListControlPart.SelectedIndex)
		{
			if (num > ListControlPart.Items.Count - 1)
			{
				num = ListControlPart.Items.Count - 1;
			}
			if (num < 0)
			{
				num = 0;
			}
			ListControlPart.SetSelected(num, value: true);
			SynchronizeDisplayText(num);
		}
	}

	protected virtual void SynchronizeDisplayText(int index)
	{
		object item = ListControlPart.Items[index];
		ControlValue = listBoxPart.GetItemValue(item);
	}

	public virtual int FindItem(string prefix, bool selectItem, int start, bool ignoreCase)
	{
		if (ListControlPart.Items == null)
		{
			return -1;
		}
		CultureInfo culture = base.StyleInfo.GetCulture(useCurrentCultureIfNull: true);
		if (ignoreCase)
		{
			prefix = prefix.ToUpper(culture);
		}
		int count = ListControlPart.Items.Count;
		for (int i = 0; i < count; i++)
		{
			int num = (i + start + 1) % count;
			string itemText = GetItemText(ListControlPart.Items[num]);
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
				if (selectItem && num != ListControlPart.SelectedIndex)
				{
					ListControlPart.SetSelected(num, value: true);
				}
				return num;
			}
		}
		if (selectItem && ListControlPart.SelectedIndex > 0)
		{
			ListControlPart.SetSelected(ListControlPart.SelectedIndex, value: false);
		}
		return -1;
	}

	private string GetItemText(object item)
	{
		return ListControlPart.GetItemText(item);
	}

	public virtual int FindItemExact(string text, bool selectItem, int start, bool ignoreCase)
	{
		if (ListControlPart.Items == null)
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
			if (selectItem && -1 != ListControlPart.SelectedIndex)
			{
				ListControlPart.SelectedIndex = -1;
			}
			return -1;
		}
		int count = ListControlPart.Items.Count;
		for (int i = -1; i < count; i++)
		{
			int num = ((i == -1) ? ListControlPart.SelectedIndex : ((i + start + 1) % count));
			if (num == -1)
			{
				continue;
			}
			object item = ListControlPart.Items[num];
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
				if (selectItem && num != ListControlPart.SelectedIndex)
				{
					ListControlPart.SetSelected(num, value: true);
				}
				return num;
			}
		}
		return -1;
	}

	protected virtual void OnEditPartMouseDown(object sender, MouseEventArgs e)
	{
	}

	protected override void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		base.OnClick(rowIndex, colIndex, e);
		if (Environment.TickCount > base.DropDownImp.IgnoreDoubleClickTicks && base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && !base.SupportsFocusControl)
		{
			base.CurrentCell.ShowDropDown();
		}
	}

	protected override void OnControlDoubleClick(Control control)
	{
		if (!Model.AllowDoubleClickChangeSelectedIndex)
		{
			base.OnControlDoubleClick(control);
			return;
		}
		if (!base.DisableTextBox && ListControlPart.Items != null)
		{
			int index = (ListControlPart.SelectedIndex + 1) % ListControlPart.Items.Count;
			ListControlPart.SetSelected(index, value: true);
			SynchronizeDisplayText(index);
			base.CurrentCell.BeginEdit();
		}
		base.OnControlDoubleClick(control);
	}

	protected override void OnDoubleClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (!Model.AllowDoubleClickChangeSelectedIndex)
		{
			base.OnDoubleClick(rowIndex, colIndex, e);
		}
		else if (base.DisableTextBox && ListControlPart.Items != null && ListControlPart.Items.Count > 0)
		{
			int index = (ListControlPart.SelectedIndex + 1) % ListControlPart.Items.Count;
			ListControlPart.SetSelected(index, value: true);
			SynchronizeDisplayText(index);
			base.CurrentCell.BeginEdit();
		}
	}

	private void EditPart_KeyDown(object sender, KeyEventArgs e)
	{
		savedText = base.TextBox.Text;
	}
}
