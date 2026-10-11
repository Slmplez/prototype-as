using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridTextBoxCellRenderer : GridStaticCellRenderer
{
	private const int MK_LBUTTON = 1;

	private const int MK_RBUTTON = 2;

	private const int MK_SHIFT = 4;

	private const int MK_CONTROL = 8;

	private const int MK_MBUTTON = 16;

	private bool wantsAutoSize;

	private int limitTextLength;

	private TextBoxBase textBoxControl;

	private bool inTextBoxChanged;

	private bool disableTextBox;

	private string disabledTextBoxText = string.Empty;

	private bool savedUseRightToLeftCompatibleTextBoxOption;

	private bool ignoreTextBoxChanged;

	private bool inTextBoxChangedRollback;

	private bool inResizeToFit;

	private bool forceControlValueInNotifyCurrentCellChanged = true;

	private bool inNotifyCurrentCellChangedException;

	private bool inModelUpdateActiveText;

	private bool inSetTextBoxTextCore;

	private object savedEditState;

	[DocumentationExclude]
	protected bool WantsAutoSize
	{
		get
		{
			return wantsAutoSize;
		}
		set
		{
			wantsAutoSize = value;
		}
	}

	[DocumentationExclude]
	protected int LimitTextLength
	{
		get
		{
			return limitTextLength;
		}
		set
		{
			limitTextLength = value;
		}
	}

	[DocumentationExclude]
	protected TextBoxBase TextBoxControl
	{
		get
		{
			return textBoxControl;
		}
		set
		{
			textBoxControl = value;
		}
	}

	[DocumentationExclude]
	protected bool InTextBoxChanged
	{
		get
		{
			return inTextBoxChanged;
		}
		set
		{
			inTextBoxChanged = value;
		}
	}

	public TextBoxBase TextBox
	{
		get
		{
			if (textBoxControl == null || savedUseRightToLeftCompatibleTextBoxOption != base.Grid.Model.Options.UseRightToLeftCompatibleTextBox)
			{
				Control window = base.Grid.GetWindow();
				window.SuspendLayout();
				if (textBoxControl != null)
				{
					textBoxControl.Dispose();
				}
				GridQueryCreateCellTextBoxEventArgs e = new GridQueryCreateCellTextBoxEventArgs(this);
				base.Grid.RaiseQueryCreateCellTextBox(e);
				if (e.TextBox != null)
				{
					textBoxControl = e.TextBox;
				}
				else
				{
					textBoxControl = CreateTextBox();
				}
				textBoxControl.TabStop = false;
				textBoxControl.TextChanged += TextBox_Changed;
				textBoxControl.LostFocus += TextBoxLostFocus;
				textBoxControl.GotFocus += TextBoxGotFocus;
				textBoxControl.Visible = false;
				window.Controls.Add(textBoxControl);
				SetControl(textBoxControl);
				window.ResumeLayout(performLayout: false);
				savedUseRightToLeftCompatibleTextBoxOption = base.Grid.Model.Options.UseRightToLeftCompatibleTextBox;
			}
			return textBoxControl;
		}
	}

	public bool IgnoreTextBoxChanged
	{
		get
		{
			return ignoreTextBoxChanged;
		}
		set
		{
			ignoreTextBoxChanged = value;
		}
	}

	private bool ForceControlValueInNotifyCurrentCellChanged
	{
		get
		{
			return forceControlValueInNotifyCurrentCellChanged;
		}
		set
		{
			forceControlValueInNotifyCurrentCellChanged = value;
		}
	}

	[DocumentationExclude]
	public bool InNotifyCurrentCellChangedException => inNotifyCurrentCellChangedException;

	[DocumentationExclude]
	public bool InSetTextBoxTextCore => inSetTextBoxTextCore;

	[DocumentationExclude]
	public string TextBoxTextCore
	{
		get
		{
			if (!disableTextBox)
			{
				return TextBox.Text;
			}
			return disabledTextBoxText;
		}
		set
		{
			inSetTextBoxTextCore = true;
			try
			{
				RichTextBox richTextBox = TextBox as RichTextBox;
				if (!disableTextBox)
				{
					HorizontalAlignment selectionAlignment = HorizontalAlignment.Left;
					if (richTextBox != null)
					{
						bool ignoreUICues = base.Grid.IgnoreUICues;
						base.Grid.IgnoreUICues = true;
						if (!richTextBox.Multiline && value.IndexOfAny(new char[2] { '\r', '\n' }) != -1)
						{
							richTextBox.Multiline = true;
						}
						base.Grid.IgnoreUICues = ignoreUICues;
						selectionAlignment = richTextBox.SelectionAlignment;
					}
					else
					{
						GridStyleInfo styleInfo = base.StyleInfo;
						char passwordChar = styleInfo.PasswordChar;
						if (passwordChar != ' ')
						{
							((TextBox)TextBox).PasswordChar = styleInfo.PasswordChar;
						}
						else
						{
							((TextBox)TextBox).PasswordChar = '\0';
						}
						((TextBox)TextBox).CharacterCasing = styleInfo.CharacterCasing;
					}
					if (base.InInitialize)
					{
						((IGridTextBoxControl)TextBox).SuspendEvents();
						TextBox.Text = value;
						if (richTextBox != null)
						{
							richTextBox.SelectAll();
							richTextBox.SelectionAlignment = selectionAlignment;
						}
						((IGridTextBoxControl)textBoxControl).ResumeEvents();
					}
					else
					{
						if ((TextBoxText == value && !(this is GridDropDownCellRenderer)) || (!base.InInitialize && !inTextBoxChangedRollback && (IsReadOnly() || !NotifyCurrentCellChanging())))
						{
							return;
						}
						((IGridTextBoxControl)TextBox).SuspendEvents();
						TextBox.Text = value;
						if (richTextBox != null)
						{
							richTextBox.SelectAll();
							richTextBox.SelectionAlignment = selectionAlignment;
						}
						((IGridTextBoxControl)textBoxControl).ResumeEvents();
					}
				}
				else
				{
					if (base.InInitialize)
					{
						disabledTextBoxText = value;
					}
					else
					{
						if (TextBoxText == value || IsReadOnly() || !NotifyCurrentCellChanging())
						{
							return;
						}
						disabledTextBoxText = value;
					}
					GridCellLayout cellLayout = GetCellLayout(base.RowIndex, base.ColIndex, base.StyleInfo);
					base.Grid.InternalInvalidate(cellLayout.TextRectangle);
				}
				if (base.Grid.Model.ActiveGridView == base.Grid)
				{
					if (base.CurrentCell.IsEditing)
					{
						SetModelActiveText(value);
					}
					base.Grid.InvalidateRange(GridRangeInfo.Cell(base.RowIndex, base.ColIndex), GridRangeOptions.MergeAllSpannedCells);
				}
				ControlText = value;
				if (!base.InInitialize)
				{
					NotifyCurrentCellChanged();
				}
			}
			finally
			{
				inSetTextBoxTextCore = false;
			}
		}
	}

	protected virtual string TextBoxText
	{
		get
		{
			return TextBoxTextCore;
		}
		set
		{
			if (!InSetTextBoxTextCore)
			{
				TextBoxTextCore = value;
			}
		}
	}

	public bool DisableTextBox
	{
		get
		{
			return disableTextBox;
		}
		set
		{
			if (DisableTextBox == value)
			{
				return;
			}
			if (base.Initalized)
			{
				string textBoxText = TextBoxText;
				base.SupportsFocusControl = !value;
				disableTextBox = value;
				if (!base.HasFocusControl)
				{
					OnHasFocusControlChanged();
					disabledTextBoxText = textBoxText;
					return;
				}
				IGridTextBoxControl gridTextBoxControl = TextBox as IGridTextBoxControl;
				gridTextBoxControl.BeginInit();
				textBoxControl.Text = textBoxText;
				gridTextBoxControl.EndInit();
			}
			else
			{
				base.SupportsFocusControl = !value;
				disableTextBox = value;
			}
		}
	}

	public override object GetEditState()
	{
		if (base.IsEditing)
		{
			return new int[2] { TextBox.SelectionStart, TextBox.SelectionLength };
		}
		return null;
	}

	public override void SetEditState(object state)
	{
		if (base.IsEditing && state is int[])
		{
			int[] array = state as int[];
			if (array.Length == 2)
			{
				TextBox.SelectionStart = array[0];
				TextBox.SelectionLength = array[1];
			}
		}
		base.SetEditState(state);
	}

	public GridTextBoxCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.SupportsFocusControl = true;
	}

	protected override void WireModel(GridCellModelBase cellModel)
	{
		cellModel.ActiveTextChanged += ModelActiveTextChanged;
		base.WireModel(cellModel);
	}

	protected override void UnwireModel(GridCellModelBase cellModel)
	{
		cellModel.ActiveTextChanged -= ModelActiveTextChanged;
		base.UnwireModel(cellModel);
	}

	private void ModelActiveTextChanged(object sender, GridCellEventArgs e)
	{
		if (inModelUpdateActiveText || inTextBoxChanged || base.InBeginEdit)
		{
			return;
		}
		base.Grid.InvalidateRange(GridRangeInfo.Cell(e.RowIndex, e.ColIndex), GridRangeOptions.MergeAllSpannedCells);
		if (base.CurrentCell.HasCurrentCellAt(e.RowIndex, e.ColIndex))
		{
			string activeText = base.Model.GetActiveText(e.RowIndex, e.ColIndex);
			if (activeText != null)
			{
				base.CurrentCell.Renderer.ControlText = activeText;
			}
			else
			{
				base.CurrentCell.Refresh();
			}
			base.CurrentCell.IsModified = false;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && textBoxControl != null)
		{
			textBoxControl.TextChanged -= TextBox_Changed;
			textBoxControl.LostFocus -= TextBoxLostFocus;
			textBoxControl.GotFocus -= TextBoxGotFocus;
			textBoxControl.Dispose();
			textBoxControl = null;
		}
		base.Dispose(disposing);
	}

	protected virtual TextBoxBase CreateTextBox()
	{
		if (base.Grid.Model.Options.UseRightToLeftCompatibleTextBox)
		{
			return new GridOriginalTextBoxControl(this);
		}
		return new GridTextBoxControl(this);
	}

	private void TextBox_Changed(object sender, EventArgs e)
	{
		if (base.InSetControlText || IgnoreTextBoxChanged)
		{
			return;
		}
		inTextBoxChanged = true;
		try
		{
			TextBoxChanged(sender, e);
		}
		finally
		{
			inTextBoxChanged = false;
		}
	}

	protected virtual void TextBoxChanged(object sender, EventArgs e)
	{
		if (base.InInitialize || ((IGridTextBoxControl)textBoxControl).Initializing)
		{
			return;
		}
		if (!NotifyCurrentCellChanging())
		{
			base.CurrentCell.SuspendEvents();
			object cellValue = base.StyleInfo.CellValue;
			inTextBoxChangedRollback = true;
			InitializeControlText(cellValue);
			inTextBoxChangedRollback = false;
			base.CurrentCell.IsModified = false;
			TextBox.ReadOnly = true;
			if (savedEditState != null)
			{
				SetEditState(savedEditState);
			}
			base.CurrentCell.ResumeEvents();
		}
		else
		{
			ResetControlText();
			ResetControlValue();
			NotifyCurrentCellChanged();
			base.CurrentCell.IsModified = true;
			if (base.Grid.AllowTextBoxAutoSize && base.StyleInfo.AutoSize && base.StyleInfo.WrapText)
			{
				inResizeToFit = true;
				base.Grid.Model.RowHeights.ResizeToFit(GridRangeInfo.Cell(base.RowIndex, base.ColIndex), GridResizeToFitOptions.ResizeCoveredCells | GridResizeToFitOptions.NoShrinkSize);
				inResizeToFit = false;
			}
		}
	}

	protected override void OnSetControlText(string text)
	{
		if (!InTextBoxChanged || inTextBoxChangedRollback)
		{
			TextBoxText = text;
		}
	}

	protected sealed override void ControlLostFocus(object sender, EventArgs e)
	{
	}

	protected sealed override void ControlGotFocus(object sender, EventArgs e)
	{
	}

	protected virtual void TextBoxLostFocus(object sender, EventArgs e)
	{
		NotifyCurrentCellControlLostFocus(base.Control);
	}

	protected virtual void TextBoxGotFocus(object sender, EventArgs e)
	{
		if (base.Grid.Model.Options.ActivateCurrentCellBehavior == GridCellActivateAction.SelectAll)
		{
			TextBox.SelectAll();
		}
		NotifyCurrentCellControlGotFocus(base.Control);
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		try
		{
			GridStyleInfo gridStyleInfo = base.Grid.Model[rowIndex, colIndex];
			ControlValue = gridStyleInfo.CellValue;
			bool flag = (gridStyleInfo.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || gridStyleInfo.RightToLeft == RightToLeft.Yes;
			TextBox.RightToLeft = (flag ? RightToLeft.Yes : RightToLeft.No);
			if (!disableTextBox)
			{
				TextBox.Select(0, 0);
				TextBox.ReadOnly = base.Grid.Model[rowIndex, colIndex].ReadOnly;
			}
		}
		finally
		{
			base.OnInitialize(rowIndex, colIndex);
		}
	}

	protected void ModelUpdateActiveText()
	{
		inModelUpdateActiveText = true;
		base.Model.SetActiveText(currentRowIndex, currentColIndex, TextBoxText);
		inModelUpdateActiveText = false;
	}

	protected override void NotifyCurrentCellChanged()
	{
		if (forceControlValueInNotifyCurrentCellChanged && !base.InSetSetControlValue)
		{
			try
			{
				GridStyleInfo styleInfo = base.StyleInfo;
				if (base.HasControlValue)
				{
					styleInfo.CellValue = ControlValue;
				}
				else
				{
					ControlText = TextBoxText;
				}
				ModelUpdateActiveText();
			}
			catch
			{
				inNotifyCurrentCellChangedException = true;
				try
				{
					ControlText = TextBoxText;
				}
				finally
				{
					inNotifyCurrentCellChangedException = true;
				}
			}
		}
		base.NotifyCurrentCellChanged();
	}

	protected void SetModelActiveText(string value)
	{
		bool flag = InTextBoxChanged;
		InTextBoxChanged = true;
		try
		{
			base.Model.SetActiveText(base.RowIndex, base.ColIndex, value);
		}
		finally
		{
			InTextBoxChanged = flag;
		}
	}

	public override bool GetSelectedText(out string strResult)
	{
		if (base.Initalized)
		{
			if (!base.CurrentCell.HasControlFocus)
			{
				strResult = ControlText;
			}
			else
			{
				strResult = TextBox.SelectedText;
			}
			return true;
		}
		strResult = string.Empty;
		return false;
	}

	public override void ReplaceSel(string replacement)
	{
		if (base.Initalized && base.Grid.CurrentCell.HasCurrentCellAt(base.RowIndex, base.ColIndex) && base.CurrentCell.HasControlFocus)
		{
			TextBox.SelectedText = replacement;
		}
		else
		{
			base.ReplaceSel(replacement);
		}
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		bool flag = false;
		if (TextBox is TextBox && ShouldDrawFocused(rowIndex, colIndex))
		{
			TextBox textBox = (TextBox)TextBox;
			char passwordChar = style.PasswordChar;
			if (passwordChar != ' ')
			{
				textBox.PasswordChar = style.PasswordChar;
				flag = true;
			}
			else
			{
				textBox.PasswordChar = '\0';
			}
			textBox.CharacterCasing = style.CharacterCasing;
		}
		if (base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && base.CurrentCell.IsEditing && !base.Grid.PrintingMode)
		{
			if (!base.HasFocusControl)
			{
				Hide();
				style.CellValue = TextBoxText;
				base.OnDraw(g, clientRectangle, rowIndex, colIndex, style);
				return;
			}
			base.RowIndex = rowIndex;
			base.ColIndex = colIndex;
			int imageIndex = style.ImageIndex;
			ImageList imageList = style.ImageList;
			if (imageIndex != -1 && imageList != null && imageIndex < imageList.Images.Count)
			{
				Rectangle cellRectangle = GetCellLayout(rowIndex, colIndex, style).CellRectangle;
				GridStaticCellRenderer.DrawImage(g, imageList, imageIndex, cellRectangle, base.Grid.IsRightToLeft());
			}
			IGridTextBoxControl gridTextBoxControl = TextBox as IGridTextBoxControl;
			TextBoxBase textBox2 = TextBox;
			gridTextBoxControl.BeginInit();
			if (gridTextBoxControl.FloatDone && textBox2.Visible)
			{
				Rectangle bounds = RemoveMargins(clientRectangle, style);
				textBox2.Bounds = bounds;
				gridTextBoxControl.FloatDone = false;
			}
			else
			{
				bool modified = textBox2.Modified;
				Font gdipFont = style.GdipFont;
				if (base.Grid.PrintingMode && base.Grid.Model.Properties.BlackWhite)
				{
					textBox2.ForeColor = Color.Black;
					textBox2.BackColor = Color.White;
				}
				else
				{
					textBox2.ForeColor = Color.FromArgb(255, base.Grid.GetForeColor(style.TextColor));
					textBox2.BackColor = Color.FromArgb(255, base.Grid.GetBackColor(style.Interior.BackColor));
				}
				Rectangle bounds = RemoveMargins(clientRectangle, style);
				GridMargins gridMargins = gridTextBoxControl.TextBoxMargins;
				if (base.Grid.IsRightToLeft())
				{
					gridMargins = gridMargins.SwapRightToLeft();
				}
				bool flag2 = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
				textBox2.RightToLeft = (flag2 ? RightToLeft.Yes : RightToLeft.No);
				Rectangle bounds2 = GridMargins.RemoveMargins(bounds, gridMargins);
				if (inResizeToFit && textBox2.Size == bounds2.Size)
				{
					textBox2.Location = bounds2.Location;
				}
				else
				{
					Size size = WinFormsUtils.MeasureSampleWString(g, gdipFont);
					if (!style.WrapText && !style.AllowEnter)
					{
						switch (style.VerticalAlignment)
						{
						case GridVerticalAlignment.Middle:
							GridUtil.OffsetTop(ref bounds, Math.Max(0, (bounds.Height - size.Height) / 2));
							break;
						case GridVerticalAlignment.Bottom:
							GridUtil.OffsetTop(ref bounds, Math.Max(0, bounds.Bottom - size.Height));
							break;
						}
						bounds.Height = Math.Min(bounds.Height, size.Height);
					}
					textBox2.Font = gdipFont;
					bool wrapText = style.WrapText;
					RichTextBox richTextBox = textBox2 as RichTextBox;
					TextBox textBox3 = textBox2 as TextBox;
					if (richTextBox != null)
					{
						if (style.VerticalScrollbar && wrapText)
						{
							richTextBox.ScrollBars = RichTextBoxScrollBars.Vertical;
						}
						else
						{
							richTextBox.ScrollBars = RichTextBoxScrollBars.None;
						}
					}
					else if (style.VerticalScrollbar && wrapText)
					{
						textBox3.ScrollBars = ScrollBars.Vertical;
					}
					else
					{
						textBox3.ScrollBars = ScrollBars.None;
					}
					textBox2.Bounds = bounds2;
					wantsAutoSize = style.AutoSize && base.Grid.AllowTextBoxAutoSize;
					textBox2.WordWrap = wrapText;
					if (flag)
					{
						textBox2.Multiline = false;
					}
					else
					{
						textBox2.Multiline = (bounds.Height > size.Height * 3 / 2 && wrapText) || style.AllowEnter;
					}
					limitTextLength = style.MaxLength;
					textBox2.MaxLength = limitTextLength;
					textBox2.ReadOnly = IsReadOnly();
					int selectionStart = textBox2.SelectionStart;
					int selectionLength = textBox2.SelectionLength;
					if (richTextBox != null)
					{
						HorizontalAlignment horizontalAlignment = HorizontalAlignment.Left;
						switch (style.HorizontalAlignment)
						{
						case GridHorizontalAlignment.Left:
							horizontalAlignment = (flag2 ? HorizontalAlignment.Right : HorizontalAlignment.Left);
							break;
						case GridHorizontalAlignment.Center:
							horizontalAlignment = HorizontalAlignment.Center;
							break;
						case GridHorizontalAlignment.Right:
							horizontalAlignment = ((!flag2) ? HorizontalAlignment.Right : HorizontalAlignment.Left);
							break;
						}
						if (richTextBox.SelectionAlignment != horizontalAlignment)
						{
							richTextBox.SelectAll();
							richTextBox.SelectionAlignment = horizontalAlignment;
						}
					}
					else
					{
						switch (style.HorizontalAlignment)
						{
						case GridHorizontalAlignment.Left:
							textBox3.TextAlign = (flag2 ? HorizontalAlignment.Right : HorizontalAlignment.Left);
							break;
						case GridHorizontalAlignment.Center:
							textBox3.TextAlign = HorizontalAlignment.Center;
							break;
						case GridHorizontalAlignment.Right:
							textBox3.TextAlign = ((!flag2) ? HorizontalAlignment.Right : HorizontalAlignment.Left);
							break;
						}
					}
					if (selectionStart >= 0)
					{
						textBox2.SelectionStart = selectionStart;
						textBox2.SelectionLength = selectionLength;
					}
					textBox2.Visible = true;
					textBox2.Update();
					if (base.Grid.Focused)
					{
						textBox2.RightToLeft = (flag2 ? RightToLeft.Yes : RightToLeft.No);
						textBox2.Focus();
					}
					textBox2.Modified = modified;
				}
			}
			gridTextBoxControl.EndInit();
		}
		else
		{
			base.OnDraw(g, clientRectangle, rowIndex, colIndex, style);
		}
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
					if (base.CurrentCell.HasControlFocus && e.Button == MouseButtons.Left && (base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.PositionCaret) != GridCellActivateAction.None)
					{
						base.Grid.Update();
						Point location = cellLayout.TextRectangle.Location;
						NativeMethods.FakeLeftMouseClick(point: new Point(e.X - location.X, e.Y - location.Y), c: TextBox);
					}
					else
					{
						Point location2 = cellLayout.TextRectangle.Location;
						Point point = new Point(e.X - location2.X, e.Y - location2.Y);
						ControlMouseDown(this, new MouseEventArgs(e.Button, e.Clicks, point.X, point.Y, 0));
					}
				}
				else
				{
					Point location3 = cellLayout.TextRectangle.Location;
					Point point2 = new Point(e.X - location3.X, e.Y - location3.Y);
					ControlMouseDown(this, new MouseEventArgs(e.Button, e.Clicks, point2.X, point2.Y, 0));
				}
			}
		}
		base.OnClick(rowIndex, colIndex, e);
	}

	protected override void OnDoubleClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		GridCellLayout cellLayout = GetCellLayout(rowIndex, colIndex, base.Grid.Model[rowIndex, colIndex]);
		bool flag = cellLayout.ClientRectangle.Contains(new Point(e.X, e.Y));
		bool flag2 = false;
		if ((flag && (base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.DblClickOnCell) != GridCellActivateAction.None) || (base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None)
		{
			flag2 = true;
		}
		if (flag2)
		{
			base.CurrentCell.BeginEdit();
		}
		base.OnDoubleClick(rowIndex, colIndex, e);
	}

	protected override void OnHasFocusControlChanged()
	{
		if (base.HasFocusControl)
		{
			ignoreWmChar = true;
			bool flag = !DisableTextBox && TextBox.Visible && base.Grid.GridBounds.Contains(TextBox.Location);
			if (!DisableTextBox && TextBox.Visible && base.CurrentCell.IsVisible && base.Grid.Model.Options.ActivateCurrentCellBehavior == GridCellActivateAction.SelectAll)
			{
				TextBox.SelectAll();
			}
			if (base.CurrentCell.IsModified)
			{
				TextBox.Modified = true;
			}
			if (flag && !TextBox.Focused)
			{
				TextBox.Focus();
			}
		}
		base.OnHasFocusControlChanged();
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		bool flag = (Control.ModifierKeys & Keys.Control) != 0;
		bool flag2 = (Control.ModifierKeys & Keys.Alt) != 0;
		if (!e.Handled && !flag && !flag2)
		{
			savedEditState = GetEditState();
			if (!char.IsControl(e.KeyChar) && !IsReadOnly() && base.SupportsFocusControl && !DisableTextBox)
			{
				if (!base.CurrentCell.HasControlFocus)
				{
					if (ValidateString(e.KeyChar.ToString()) && base.CurrentCell.BeginEdit())
					{
						base.CurrentCell.HasControlFocus = true;
						if (NotifyCurrentCellChanging())
						{
							ControlText = e.KeyChar.ToString();
							base.CurrentCell.IsModified = true;
							if (!disableTextBox)
							{
								TextBox.SelectionStart = TextBox.Text.Length;
								TextBox.SelectionLength = 0;
							}
						}
					}
					e.Handled = true;
				}
				else if (base.Grid.inImeComposition)
				{
					string text = TextBoxText + e.KeyChar;
					if (ValidateString(text) && NotifyCurrentCellChanging())
					{
						base.CurrentCell.IsModified = true;
						TextBoxText = text;
					}
					e.Handled = true;
				}
			}
		}
		base.OnKeyPress(e);
	}

	public bool SetTextBoxText(string s, bool validate)
	{
		if (base.InInitialize)
		{
			TextBoxText = s;
			return true;
		}
		if (!IsReadOnly() && (!validate || ValidateString(s)) && base.CurrentCell.BeginEdit() && NotifyCurrentCellChanging())
		{
			base.CurrentCell.IsModified = true;
			TextBoxTextCore = s;
			return true;
		}
		return false;
	}

	public bool SetSelectedText(string text, bool validate)
	{
		string text2 = TextBox.Text;
		int selectionStart = TextBox.SelectionStart;
		int selectionLength = TextBox.SelectionLength;
		TextBox.SuspendLayout();
		IGridTextBoxControl gridTextBoxControl = TextBox as IGridTextBoxControl;
		gridTextBoxControl.SuspendEvents();
		try
		{
			TextBox.SelectedText = text;
			if (validate && !ValidateString(TextBox.Text))
			{
				TextBox.Text = text2;
				TextBox.SelectionStart = selectionStart;
				TextBox.SelectionLength = selectionLength;
				return false;
			}
			TextBox_Changed(TextBox, EventArgs.Empty);
			return true;
		}
		finally
		{
			TextBox.ResumeLayout();
			gridTextBoxControl.ResumeEvents();
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		savedEditState = GetEditState();
		ignoreWmChar = false;
		if (!e.Handled)
		{
			switch (e.KeyCode)
			{
			case Keys.Back:
			case Keys.Delete:
				if (!base.CurrentCell.HasControlFocus || !base.CurrentCell.IsEditing)
				{
					if (Control.ModifierKeys != Keys.Alt && base.Grid.ShouldDeleteKeyClearCurrentCellContentsOnly())
					{
						if (!IsReadOnly() && OnDeleting() && base.Grid.RaiseCurrentCellDeleting())
						{
							SetTextBoxText(string.Empty, validate: true);
							base.CurrentCell.IsModified = true;
							base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
						}
						e.Handled = true;
					}
				}
				else
				{
					if (!base.Grid.IsWindowless && !(TextBox is TextBox))
					{
						break;
					}
					if (TextBox.SelectionLength > 0)
					{
						TextBox.SelectedText = string.Empty;
					}
					else if (TextBox.SelectionStart >= 0)
					{
						if (e.KeyCode == Keys.Back)
						{
							if (TextBox.SelectionStart > 0)
							{
								TextBox.Select(TextBox.SelectionStart - 1, 1);
							}
						}
						else
						{
							TextBox.Select(TextBox.SelectionStart, 1);
						}
						TextBox.SelectedText = string.Empty;
					}
					e.Handled = true;
					ignoreWmChar = TextBox is GridOriginalTextBoxControl && TextBox.SelectionLength == 0;
				}
				break;
			case Keys.Escape:
				if (base.CurrentCell.IsDroppedDown)
				{
					base.CurrentCell.CloseDropDown(PopupCloseType.Canceled);
					e.Handled = true;
				}
				else if (base.CurrentCell.IsModified)
				{
					base.CurrentCell.RejectChanges();
					base.CurrentCell.CancelEdit();
					base.CurrentCell.Refresh();
					base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
					e.Handled = true;
				}
				else
				{
					base.CurrentCell.CancelEdit();
				}
				if ((base.Grid.Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None)
				{
					base.CurrentCell.BeginEdit();
				}
				return;
			case Keys.End:
				if (Control.ModifierKeys == Keys.None && !base.CurrentCell.HasControlFocus && !DisableTextBox && base.CurrentCell.BeginEdit())
				{
					base.CurrentCell.HasControlFocus = true;
					TextBox.SelectionStart = TextBox.Text.Length;
					TextBox.SelectionLength = 0;
					base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
					e.Handled = true;
				}
				break;
			case Keys.Home:
				if (Control.ModifierKeys == Keys.None && !base.CurrentCell.HasControlFocus && !DisableTextBox && base.CurrentCell.BeginEdit())
				{
					base.CurrentCell.HasControlFocus = true;
					TextBox.SelectionStart = 0;
					TextBox.SelectionLength = 0;
					base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
					base.Grid.Update();
					e.Handled = true;
				}
				break;
			case Keys.Return:
				if (Control.ModifierKeys == Keys.None && base.CurrentCell.IsEditing && base.StyleInfo.AllowEnter && NotifyCurrentCellChanging())
				{
					SetSelectedText("\n", validate: true);
					base.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
					e.Handled = true;
				}
				break;
			case Keys.Tab:
				if (base.Grid.WantTabKey)
				{
					ignoreWmChar = true;
				}
				break;
			}
		}
		base.OnKeyDown(e);
	}

	public override bool CanCopy()
	{
		return true;
	}

	public override bool Copy()
	{
		if (base.HasFocusControl && TextBox.SelectionLength == 0)
		{
			return false;
		}
		DataObject dataObject = new DataObject();
		if (base.HasFocusControl && !DisableTextBox && TextBox.SelectionLength > 0)
		{
			dataObject.SetData(DataFormats.UnicodeText, TextBox.SelectedText);
		}
		else
		{
			dataObject.SetData(DataFormats.UnicodeText, TextBoxText);
		}
		Clipboard.SetDataObject(dataObject);
		return true;
	}

	public override bool Paste()
	{
		if (TextBox.ReadOnly)
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
				if (!base.CurrentCell.IsEditing)
				{
					base.CurrentCell.BeginEdit();
					if (TextBox != null)
					{
						TextBox.SelectAll();
					}
				}
				if (base.HasFocusControl && !DisableTextBox && text != null)
				{
					SetSelectedText(text, validate: true);
				}
				else
				{
					SetTextBoxText(text, validate: true);
				}
				return true;
			}
		}
		return false;
	}

	public override bool CanPaste()
	{
		if (TextBox.ReadOnly)
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

	public override bool CanCut()
	{
		if (TextBox.ReadOnly)
		{
			return false;
		}
		return true;
	}

	public override bool Cut()
	{
		if (Copy())
		{
			if (!base.CurrentCell.IsEditing)
			{
				base.CurrentCell.BeginEdit();
				if (TextBox != null)
				{
					TextBox.SelectAll();
				}
			}
			if (base.HasFocusControl && !DisableTextBox)
			{
				SetSelectedText(string.Empty, validate: true);
			}
			else
			{
				SetTextBoxText(string.Empty, validate: true);
			}
			return true;
		}
		return false;
	}
}
