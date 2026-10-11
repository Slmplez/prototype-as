using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MenuComboBoxCellRenderer : GridComboBoxCellRenderer, IPopupChild, IPopupItem, INeedKeyboardMessages, INeedMouseMoveMessages, IFocusableRenderer, IMouseHookHLProcClient, IKeyboardProcHookClient
{
	internal AutoAppend autoAppend;

	private ListBox cached;

	private ComboBoxBarItem m_comboBarItem;

	private bool m_bDrawSelectedBackground;

	private ComboBoxBarItem BarItem => m_comboBarItem;

	IPopupParent IPopupChild.PopupParent => base.Grid as IPopupParent;

	public MenuComboBoxCellRenderer(GridControlBase grid, GridCellModelBase model, bool supportsTextBox)
		: base(grid, model)
	{
		base.DisableTextBox = !supportsTextBox;
		base.SupportsFocusControl = supportsTextBox;
		base.DropDownButton = new MenuComboButton(this);
	}

	public override void DropDownContainerCloseDropDown(object sender, PopupClosedEventArgs e)
	{
		base.DropDownContainerCloseDropDown(sender, e);
		if (base.DropDownButton is MenuComboButton menuComboButton)
		{
			menuComboButton.m_bDroppedDown = false;
		}
		BarItem?.OnDropDownClosed();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_comboBarItem = null;
		}
		base.Dispose(disposing);
	}

	bool IFocusableRenderer.IsRelatedControl(Control control)
	{
		if (control == base.EditPart || control == base.PopupControlContainer || (base.PopupControlContainer != null && base.PopupControlContainer.Contains(control)))
		{
			return true;
		}
		return false;
	}

	void IPopupChild.HidePopup(PopupCloseType popupCloseType)
	{
	}

	bool IPopupChild.IsShowing()
	{
		return true;
	}

	bool INeedKeyboardMessages.KeyboardMessage(ref Message m)
	{
		return false;
	}

	bool INeedMouseMoveMessages.MouseMessage(ref Message m)
	{
		return false;
	}

	bool IMouseHookHLProcClient.MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
	{
		return false;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		return false;
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		bool flag = false;
		switch (e.KeyCode)
		{
		case Keys.End:
		case Keys.Home:
			flag = true;
			break;
		case Keys.Return:
			base.Grid.CurrentCell.ConfirmChanges();
			break;
		case Keys.Escape:
			base.Grid.CurrentCell.Deactivate(discardChanges: true);
			break;
		}
		if (!flag)
		{
			bool isDroppedDown = IsDroppedDown;
			base.OnKeyDown(e);
			if (isDroppedDown && e.KeyCode == Keys.Return)
			{
				e.Handled = true;
			}
		}
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		base.ChildClosing(childUI, popupCloseType);
		PopupCloseType popupCloseType2 = popupCloseType;
		if (popupCloseType == PopupCloseType.Done)
		{
			popupCloseType = PopupCloseType.Canceled;
		}
		((MenuGrid)base.Grid).OnChildClosed(popupCloseType, fromChildControl: true);
		base.Grid.CurrentCell.ConfirmChanges();
		if (popupCloseType2 == PopupCloseType.Done)
		{
			((MenuGrid)base.Grid).ProcessItemClick(BarItem);
		}
	}

	public override bool IsRelatedControl(Control control, bool askPopupParent)
	{
		if (control == base.Grid || control == base.EditPart || control.Parent == base.Grid)
		{
			return true;
		}
		if (askPopupParent)
		{
			return ((MenuGrid)base.Grid).IsRelatedControl(control, askPopupParent);
		}
		return false;
	}

	protected override void ListBoxClick(object sender, EventArgs e)
	{
	}

	public override void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		bool Selected = false;
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		if (menuGridControlBase != null)
		{
			Selected = (m_bDrawSelectedBackground = menuGridControlBase.HighlightRange.Top == rowIndex);
		}
		ComboBoxBarItem comboBoxBarItem = (ComboBoxBarItem)menuGridControlBase.parentItem.Items[rowIndex - 1];
		if (!comboBoxBarItem.ReiseBeforePopupItemPaint(g, cellRectangle, ref Selected, DrawElement.ComboBox, style))
		{
			base.Draw(g, cellRectangle, rowIndex, colIndex, style);
		}
		comboBoxBarItem.ReiseAfterPopupItemPaint(g, cellRectangle, Selected, DrawElement.ComboBox, style, this);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, GridStyleInfo style, bool fillBackground)
	{
		base.DrawBackground(g, rect, style, fillBackground);
		if (base.Grid is MenuGridControlBase { Style: VisualStyle.Office2007 } menuGridControlBase && (!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS))
		{
			Office2007MenuPainter.DrawMenuTextBoxItem(g, rect, m_bDrawSelectedBackground);
		}
	}

	protected override void OnInitialize(int rowIndex, int colIndex)
	{
		if (base.Grid is MenuGrid { Customizing: false } menuGrid)
		{
			if (rowIndex > 0 && menuGrid.parentItem.Items.Count > rowIndex - 1 && BarItem != null)
			{
				if (BarItem.ListBox != null)
				{
					cached = base.ListBoxPart;
					base.ListBoxPart = BarItem.ListBox;
				}
				PropagateRTL(menuGrid.IsRTL ? RightToLeft.Yes : RightToLeft.No);
			}
			m_comboBarItem = menuGrid.parentItem.Items[rowIndex - 1] as ComboBoxBarItem;
			ApplyAutoAppendSettings();
		}
		base.OnInitialize(rowIndex, colIndex);
	}

	protected void PropagateRTL(RightToLeft eRTL)
	{
		if (base.ListBoxPart != null)
		{
			base.ListBoxPart.RightToLeft = eRTL;
		}
		if (base.EditPart != null)
		{
			base.EditPart.RightToLeft = eRTL;
		}
	}

	protected void PropagateRTL()
	{
		MenuGrid menuGrid = (MenuGrid)base.Grid;
		if (menuGrid != null)
		{
			RightToLeft eRTL = (menuGrid.IsRTL ? RightToLeft.Yes : RightToLeft.No);
			PropagateRTL(eRTL);
		}
	}

	protected override void OnDeactived(int rowIndex, int colIndex)
	{
		if (cached != null)
		{
			base.ListBoxPart = cached;
			cached = null;
		}
		base.OnDeactived(rowIndex, colIndex);
	}

	protected override bool OnSaveChanges()
	{
		bool flag = base.OnSaveChanges();
		if (flag && BarItem != null && BarItem.AutoAppend)
		{
			autoAppend.InsertOrMoveToTop(base.TextBox, base.TextBox.Text);
		}
		if (autoAppend != null)
		{
			autoAppend.Dispose();
			autoAppend = null;
		}
		return flag;
	}

	protected virtual void ApplyAutoAppendSettings()
	{
		if (!(base.Grid is MenuGrid { Customizing: false }))
		{
			return;
		}
		if (BarItem.AutoAppend)
		{
			if (autoAppend == null)
			{
				autoAppend = new AutoAppend();
			}
			BarItemID barItemID = new BarItemID(BarItem.ID, (BarItem.Manager != null) ? BarManager.GetFormTypeName(BarItem.Manager) : string.Empty);
			autoAppend.SetAutoAppend(base.TextBox, new AutoAppendInfo(autoAppend: true, barItemID.ToString(), BarItem.ChoiceList, 30));
		}
		else if (autoAppend != null)
		{
			autoAppend.SetAutoAppend(base.TextBox, new AutoAppendInfo(autoAppend: false, string.Empty, null, 30));
		}
	}

	protected override void TextBoxLostFocus(object sender, EventArgs e)
	{
		if (!base.DropDownContainer.ContainsFocus)
		{
			base.TextBoxLostFocus(sender, e);
		}
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		if (!(base.Grid is MenuGrid { Customizing: false }))
		{
			return;
		}
		BarItem.OnInitListBox(new ComboBoxBarItemInitListBoxEventArgs(base.ListBoxPart));
		base.DropDownContainerShowingDropDown(sender, e);
		GridComboBoxListBoxPart gridComboBoxListBoxPart = base.ListBoxPart as GridComboBoxListBoxPart;
		IIgnoreWorkingArea barItem = BarItem;
		if (barItem != null && base.DropDownContainer != null && base.DropDownContainer.PopupHost != null)
		{
			base.DropDownContainer.PopupHost.IgnoreWorkingArea = true;
		}
		else
		{
			base.DropDownContainer.PopupHost.IgnoreWorkingArea = false;
		}
		if (gridComboBoxListBoxPart != null)
		{
			gridComboBoxListBoxPart.DropDownRows = BarItem.MaxDropDownItems;
		}
		base.ListBoxPart.SelectedItem = BarItem.TextBoxValue;
		int num = GetCellBoundsCore(base.CurrentCell.RowIndex, base.CurrentCell.ColIndex).Width;
		if (num < BarItem.MinDropDownWidth)
		{
			num = BarItem.MinDropDownWidth;
		}
		base.ListBoxPart.Width = num;
		if (BarItem.MaxDropDownItems <= base.ListBoxPart.Items.Count)
		{
			int num2 = 0;
			if (base.ListBoxPart.DrawMode != DrawMode.OwnerDrawVariable)
			{
				if (BarItem.MaxDropDownItems > 0)
				{
					num2 = base.ListBoxPart.GetItemHeight(0);
				}
				num2 = BarItem.MaxDropDownItems * num2;
			}
			else
			{
				for (int i = 0; i < BarItem.MaxDropDownItems; i++)
				{
					num2 += base.ListBoxPart.GetItemHeight(i);
				}
			}
			base.ListBoxPart.Height = num2;
		}
		else
		{
			base.ListBoxPart.Height = base.ListBoxPart.PreferredHeight;
		}
		Size size = base.ListBoxPart.Size;
		base.DropDownContainer.Size = size;
		base.ListBoxPart.Visible = true;
		BarItem?.OnDropDownOpened();
	}

	protected override void OnButtonClicked(int rowIndex, int colIndex, int button)
	{
		if (base.Grid is MenuGrid { Customizing: false })
		{
			base.OnButtonClicked(rowIndex, colIndex, button);
		}
	}

	protected override void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (base.Grid is MenuGrid { Customizing: false })
		{
			base.OnClick(rowIndex, colIndex, e);
		}
	}

	protected override TextBoxBase CreateTextBox()
	{
		TextBoxBase textBoxBase = base.CreateTextBox();
		textBoxBase.HandleCreated += TextBoxHandleCreated;
		return textBoxBase;
	}

	private void TextBoxHandleCreated(object sender, EventArgs e)
	{
		TextBoxBase textBox = (TextBoxBase)sender;
		if (BarItem != null)
		{
			BarItem.OnTextBoxBound(new TextBoxBoundEventArgs(textBox));
		}
	}
}
