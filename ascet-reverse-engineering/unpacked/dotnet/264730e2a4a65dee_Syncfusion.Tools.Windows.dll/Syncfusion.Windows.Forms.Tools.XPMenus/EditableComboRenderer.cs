using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class EditableComboRenderer : ComboBoxItemRenderer
{
	private delegate void DefferedTextBoxAssignmentDelegate(ComboTextBox textBox);

	private ComboTextBox m_textBox;

	private AutoAppend autoAppend;

	private bool forceHotTrack;

	private bool needLayout = true;

	public override BarItem BarItem
	{
		get
		{
			return base.BarItem;
		}
		set
		{
			if (base.BarItem == value)
			{
				return;
			}
			if (BarItem != null && BarItem.Manager != null && BarItem.Manager.MainFrameBarManager != null)
			{
				BarItem.Manager.MainFrameBarManager.CustomizationBegin -= CustomizationStart;
				BarItem.Manager.MainFrameBarManager.CustomizationDone -= CustomizationDone;
			}
			if (BarItem is ComboBoxBarItem comboBoxBarItem)
			{
				comboBoxBarItem.TextBoxBound -= ComboBoxBarItemTextBoxBound;
			}
			base.BarItem = value;
			ComboBoxBarItem comboBoxBarItem2 = value as ComboBoxBarItem;
			comboBoxBarItem2.TextBoxBound += ComboBoxBarItemTextBoxBound;
			if (TextBox != null)
			{
				TextBox.Text = comboBoxBarItem2.TextBoxValue;
				if (BarItem != null)
				{
					TextBox.Visible = BarItem.Visible && BarItem.Enabled;
					comboBoxBarItem2.OnTextBoxBound(new TextBoxBoundEventArgs(TextBox));
				}
			}
			if (BarItem != null && BarItem.Manager != null && BarItem.Manager.MainFrameBarManager != null)
			{
				BarItem.Manager.MainFrameBarManager.CustomizationBegin += CustomizationStart;
				BarItem.Manager.MainFrameBarManager.CustomizationDone += CustomizationDone;
			}
		}
	}

	public override bool HotTrack
	{
		get
		{
			return base.HotTrack | forceHotTrack;
		}
		set
		{
			base.HotTrack = value;
		}
	}

	protected override Rectangle TextAreaBounds
	{
		get
		{
			Rectangle textAreaBounds = base.TextAreaBounds;
			if (TextBox != null)
			{
				if (textAreaBounds.Width > 0 && textAreaBounds.Height > TextBox.PreferredHeight)
				{
					textAreaBounds.Y += (textAreaBounds.Height - TextBox.PreferredHeight) / 2;
					textAreaBounds.Height = TextBox.PreferredHeight;
				}
				textAreaBounds.Width -= 3;
			}
			return textAreaBounds;
		}
	}

	public override RectangleF Bounds
	{
		get
		{
			return base.Bounds;
		}
		set
		{
			if (!(Bounds != value))
			{
				return;
			}
			base.Bounds = value;
			if (TextBox != null)
			{
				if (!TextBox.Visible)
				{
					TextBox.Bounds = TextAreaBounds;
				}
				else
				{
					needLayout = true;
				}
			}
		}
	}

	public override bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			base.Visible = value;
			if (TextBox != null)
			{
				TextBox.Visible = Visible && !parent.Customizing && (BarItem == null || BarItem.Enabled);
			}
		}
	}

	protected internal ComboTextBox TextBox
	{
		get
		{
			return m_textBox;
		}
		set
		{
			if (value != TextBox)
			{
				m_textBox = value;
				m_textBox.Font = parent.GetBarControl().GetControl().Font;
				if (m_textBox != null && BarItem is ComboBoxBarItem comboBoxBarItem)
				{
					comboBoxBarItem.OnTextBoxBound(new TextBoxBoundEventArgs(TextBox));
				}
			}
		}
	}

	protected internal bool HitTestInternal()
	{
		bool result = false;
		if (TextBox != null && TextBox.Parent != null)
		{
			Point mousePosition = Control.MousePosition;
			result = TextBox.Bounds.Contains(TextBox.Parent.PointToClient(mousePosition));
		}
		return result;
	}

	protected override void ListBox_LostFocus(object sender, EventArgs e)
	{
		int selectedIndex = listBoxContainer.ListBox.SelectedIndex;
		if (selectedIndex >= 0 && selectedIndex < listBoxContainer.ListBox.Items.Count)
		{
			TextBox.Text = GetItemText(listBoxContainer.ListBox.Items[selectedIndex]);
		}
		base.ListBox_LostFocus(sender, e);
	}

	protected override void OnEditPartKeyDown(object sender, KeyEventArgs e)
	{
		base.OnEditPartKeyDown(sender, e);
		string text = TextBox.Text;
		if (e.KeyCode == Keys.Return)
		{
			if (listBoxContainer.ListBox.Items.IndexOf(text) >= 0)
			{
				listBoxContainer.ListBox.SelectedItem = TextBox.Text;
			}
			else
			{
				listBoxContainer.ListBox.SelectedIndex = -1;
			}
		}
		if (parent != null)
		{
			parent.SetHotTrack(this, hotTrack: true);
		}
	}

	public EditableComboRenderer(IBarRenderer parent)
		: base(parent)
	{
		base.IgnoreExternalMouseMessages = false;
		CreateTextBox();
		listBoxContainer.ParentControl = TextBox;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			ComboBoxBarItem comboBoxBarItem = BarItem as ComboBoxBarItem;
			if (comboBoxBarItem.AutoAppend && !comboBoxBarItem.PersistAutoAppendList && autoAppend != null)
			{
				autoAppend.SetAutoAppend(TextBox, new AutoAppendInfo(autoAppend: true, string.Empty, null, 30));
			}
			if (comboBoxBarItem != null)
			{
				comboBoxBarItem.TextBoxBound -= ComboBoxBarItemTextBoxBound;
			}
			DisposeTextBox(TextBox);
			if (autoAppend != null)
			{
				autoAppend.Dispose();
				autoAppend = null;
			}
		}
		base.Dispose(disposing);
	}

	private void ComboBoxBarItemTextBoxBound(object sender, TextBoxBoundEventArgs args)
	{
		ApplyAutoAppendSettings();
	}

	private void CustomizationStart(object sender, EventArgs e)
	{
		if (TextBox != null)
		{
			TextBox.Visible = false;
		}
	}

	private void CustomizationDone(object sender, EventArgs e)
	{
		if (TextBox != null)
		{
			TextBox.Visible = BarItem == null || (BarItem.Visible && BarItem.Enabled);
		}
	}

	public override void BarItemPropertyChanged(SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "TextBoxValue")
		{
			if (TextBox != null)
			{
				TextBox.Text = base.ComboBoxBarItem.TextBoxValue;
			}
		}
		else if (e.PropertyName == "AutoAppend")
		{
			ApplyAutoAppendSettings();
		}
		else if (e.PropertyName == "Enabled")
		{
			if (TextBox != null)
			{
				TextBox.Visible = base.ComboBoxBarItem.Visible && base.ComboBoxBarItem.Enabled;
			}
		}
		else if (e.PropertyName == "CustomTextFont" && TextBox != null)
		{
			TextBox.Font = BarItem.CustomTextFont;
		}
		base.BarItemPropertyChanged(e);
	}

	public override Control GetPopupParentControl()
	{
		return TextBox;
	}

	public override void AddTextPreferredSize(IGraphicsProvider gp, ref SizeF preferredSize)
	{
		base.AddTextPreferredSize(gp, ref preferredSize);
		if (TextBox != null && preferredSize.Height < (float)TextBox.PreferredHeight)
		{
			preferredSize.Height = TextBox.PreferredHeight;
		}
	}

	public override bool IsRelatedControl(Control ctl)
	{
		bool flag = base.IsRelatedControl(ctl);
		if (!flag)
		{
			flag = ctl == listBoxContainer;
		}
		return flag;
	}

	internal override void OnActiveChanged()
	{
		if (base.Active)
		{
			Activated();
		}
		else
		{
			Deactivated();
		}
	}

	public void MouseDownWithAlt(MouseEventArgs e)
	{
		Point p = new Point(e.X, e.Y);
		p = TextBox.PointToScreen(p);
		p = parent.GetBarControl().GetControl().PointToClient(p);
		parent.OnMouseDown(new MouseEventArgs(e.Button, e.Clicks, p.X, p.Y, e.Delta));
	}

	public void HitReturn()
	{
		base.ComboBoxBarItem.TextBoxValue = TextBox.Text;
		if (base.ComboBoxBarItem.TextBoxValue != string.Empty)
		{
			if (autoAppend != null)
			{
				autoAppend.InsertOrMoveToTop(TextBox, TextBox.Text);
			}
			base.ComboBoxBarItem.PerformClick();
			if (listBoxContainer.IsShowing())
			{
				if (listBoxContainer.ListBox.SelectedIndex != -1)
				{
					TextBox.Text = listBoxContainer.ListBox.SelectedItem.ToString();
					TextBox.SelectAll();
				}
				listBoxContainer.HidePopup(PopupCloseType.Canceled);
			}
		}
		else
		{
			HitEscape();
		}
	}

	public void HitEscape()
	{
		if (listBoxContainer.IsShowing())
		{
			listBoxContainer.HidePopup(PopupCloseType.Canceled);
		}
		RemoveFocus();
	}

	public virtual void OnDoubleClick()
	{
	}

	internal void UpdateTextBoxValue()
	{
		base.ComboBoxBarItem.TextBoxValue = TextBox.Text;
	}

	internal void TextBoxValueChanged()
	{
		if (listBoxContainer.IsShowing())
		{
			if (listBoxContainer.ListBox.Items.IndexOf(TextBox.Text) != -1)
			{
				listBoxContainer.ListBox.SelectedItem = TextBox.Text;
			}
			else
			{
				listBoxContainer.ListBox.SelectedIndex = -1;
			}
		}
	}

	private void RemoveFocus()
	{
		if (TextBox == null)
		{
			return;
		}
		Control prevControlWithFocus = TextBox.prevControlWithFocus;
		if (prevControlWithFocus != null && prevControlWithFocus.IsHandleCreated)
		{
			Form activeForm = Form.ActiveForm;
			Control control = prevControlWithFocus.FindForm();
			if (activeForm == null || control == activeForm || activeForm.ActiveMdiChild == control)
			{
				prevControlWithFocus.Focus();
				TextBox.prevControlWithFocus = null;
			}
		}
	}

	protected virtual void CreateTextBox()
	{
		if (TextBox == null && !base.DesignMode)
		{
			ComboTextBox comboTextBox = new ComboTextBox(this);
			Control control = parent.GetBarControl().GetControl();
			control.Controls.Add(comboTextBox);
			comboTextBox.Visible = false;
			comboTextBox.KeyDown += OnEditPartKeyDown;
			m_textBox = comboTextBox;
			m_textBox.Font = control.Font;
			if (control.IsHandleCreated)
			{
				DefferedTextBoxBinding(control);
			}
			control.HandleCreated += textBox_HandleCreated;
		}
	}

	private void textBox_HandleCreated(object sender, EventArgs e)
	{
		DefferedTextBoxBinding(sender);
	}

	private void DefferedTextBoxBinding(object sender)
	{
		ComboTextBox textBox = m_textBox;
		textBox.Parent.HandleCreated -= textBox_HandleCreated;
		m_textBox = null;
		DefferedTextBoxAssignmentDelegate method = DefferedTextBoxAssignment;
		Control control = sender as Control;
		control.BeginInvoke(method, textBox);
	}

	private void DefferedTextBoxAssignment(ComboTextBox textBox)
	{
		if (base.IsDisposed)
		{
			DisposeTextBox(textBox);
			return;
		}
		if (BarItem is IRequiresControl requiresControl)
		{
			textBox.Text = requiresControl.Value.ToString();
		}
		TextBox = textBox;
		if (textBox != null)
		{
			TextBox.Bounds = TextAreaBounds;
		}
	}

	private void DisposeTextBox(ComboTextBox textBox)
	{
		if (textBox != null)
		{
			textBox.Parent.HandleCreated -= textBox_HandleCreated;
			textBox.KeyDown -= OnEditPartKeyDown;
			Control control = textBox.Parent;
			if (control != null && control.IsHandleCreated)
			{
				control.SuspendLayout();
				control.Controls.Remove(textBox);
				control.ResumeLayout(performLayout: false);
			}
			textBox.Dispose();
			textBox = null;
		}
	}

	protected virtual void ApplyAutoAppendSettings()
	{
		if (base.DesignMode)
		{
			return;
		}
		if (base.ComboBoxBarItem.AutoAppend)
		{
			if (autoAppend == null)
			{
				autoAppend = new AutoAppend();
			}
			BarItemID barItemID = new BarItemID(base.ComboBoxBarItem.ID, (base.ComboBoxBarItem.Manager != null) ? BarManager.GetFormTypeName(base.ComboBoxBarItem.Manager) : string.Empty);
			object obj;
			if (!base.IsCustomListBox)
			{
				IList choiceList = base.ComboBoxBarItem.ChoiceList;
				obj = choiceList;
			}
			else
			{
				obj = base.ComboBoxBarItem.ListBox.Items;
			}
			IList items = (IList)obj;
			autoAppend.SetAutoAppend(TextBox, new AutoAppendInfo(autoAppend: true, barItemID.ToString(), items, 30));
			base.ComboBoxBarItem.TextBoxValue = TextBox.Text;
		}
		else if (autoAppend != null)
		{
			autoAppend.SetAutoAppend(TextBox, new AutoAppendInfo(autoAppend: false, string.Empty, null, 30));
		}
	}

	public override void OnPaint(Graphics g, Rectangle clippingRect)
	{
		if (needLayout)
		{
			if (TextBox != null)
			{
				TextBox.Bounds = TextAreaBounds;
			}
			needLayout = false;
		}
		base.OnPaint(g, clippingRect);
	}

	protected internal void TextBoxGotFocus()
	{
		forceHotTrack = false;
		parent.SetHotTrack(this, Active);
		Active = true;
	}

	protected internal void TextBoxLostFocus(string sText)
	{
		base.ComboBoxBarItem.TextBoxValue = sText;
		forceHotTrack = false;
		if (listBoxContainer.TopLevelControl == null || !listBoxContainer.TopLevelControl.ContainsFocus)
		{
			Active = false;
			parent.SetHotTrack(this, hotTrack: false);
		}
		Repaint();
	}

	protected internal void TextBoxMouseEnter()
	{
		parent.SetHotTrack(this, hotTrack: true);
	}

	protected internal void TextBoxMouseLeave()
	{
		if (!TextBox.Focused && !listBoxContainer.IsShowing())
		{
			parent.SetHotTrack(this, hotTrack: false);
		}
	}

	public override void OnMouseDown(Point pointMouseDown)
	{
		if (!BarItem.Enabled && !parent.Customizing)
		{
			return;
		}
		if (!ShowingDropDown)
		{
			Active = true;
			if (!parent.Customizing)
			{
				pointMouseDown = OffsetPointByDropDownArea(pointMouseDown);
				if (!Bounds.Contains(pointMouseDown))
				{
					ShowingDropDown = true;
				}
			}
		}
		else
		{
			ShowingDropDown = false;
		}
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		forceHotTrack = true;
		popupChild = null;
		if (popupCloseType == PopupCloseType.Done)
		{
			base.ComboBoxBarItem.TextBoxValue = GetListBoxText();
			TextBox.SelectAll();
			if (autoAppend != null)
			{
				autoAppend.InsertOrMoveToTop(TextBox, TextBox.Text);
			}
			base.ComboBoxBarItem.PerformClick();
		}
		ShowingDropDown = false;
	}

	public override void AfterChildClosing()
	{
		if (!base.IsDisposed && !parent.IsShowingDropdown())
		{
			parent.StopKeyboardNavigation();
			Form activeForm = Form.ActiveForm;
			Control control = TextBox.FindForm();
			if (activeForm != null || control == activeForm || (activeForm != null && activeForm.ActiveMdiChild == control))
			{
				TextBox.Focus();
			}
		}
	}

	protected virtual void Activated()
	{
		if (TextBox == null || parent.Customizing)
		{
			return;
		}
		if (!TextBox.Focused)
		{
			TextBox.StorePrevFocus();
			if (!(TextBox.FindForm() is CommandBarForm))
			{
				TextBox.Focus();
			}
		}
		TextBox.SelectAll();
	}

	protected virtual void Deactivated()
	{
		if (!parent.Customizing && !IsShowing())
		{
			RemoveFocus();
		}
	}
}
