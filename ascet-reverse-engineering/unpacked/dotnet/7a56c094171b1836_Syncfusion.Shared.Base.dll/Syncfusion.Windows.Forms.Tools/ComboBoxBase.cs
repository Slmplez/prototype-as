using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents advanced ComboBox control with plugged in ListControl.")]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.ComboBoxBase.bmp")]
public class ComboBoxBase : ComboDropDown
{
	internal class ComboBoxBasePopUpHost : PopupHost
	{
		protected override Point GetAdjustedLocation(Point loc)
		{
			Point point = base.GetAdjustedLocation(loc);
			if (base.PopupControlContainer is PopupControlContainer { ParentControl: { Parent: not null, Bounds: var bounds } parentControl })
			{
				Point point2 = parentControl.Parent.PointToScreen(bounds.Location);
				if (point2.Y + bounds.Height > point.Y)
				{
					point.Y = point2.Y - base.Height;
				}
				if (parentControl is ComboBoxBase comboBoxBase)
				{
					point = comboBoxBase.CorrectPopupLocation(point);
				}
			}
			return point;
		}

		protected override void AttachPopup()
		{
			base.AttachPopup();
			if (base.PopupControl != null)
			{
				base.PopupControl.SizeChanged += PopupControlSizeChanged;
			}
		}

		protected override void DetachPopup()
		{
			base.DetachPopup();
			if (base.PopupControl != null)
			{
				base.PopupControl.SizeChanged -= PopupControlSizeChanged;
			}
		}

		private void PopupControlSizeChanged(object sender, EventArgs e)
		{
			if (base.PopupControl != null)
			{
				ComputeMySize();
			}
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing && base.PopupControl != null)
			{
				base.PopupControl.SizeChanged -= PopupControlSizeChanged;
			}
			base.Dispose(disposing);
		}
	}

	internal class ComboBoxPopupContainer : PopupControlContainer
	{
		public override bool IsRelatedControl(Control control, bool askPopupParent)
		{
			if (!IsShowing())
			{
				return false;
			}
			if (control == this || Contains(control) || control == base.Parent || (control is VScrollBarCustomDraw && base.Bounds.Contains(control.Bounds)))
			{
				return true;
			}
			if (askPopupParent)
			{
				if (base.PopupParent != null)
				{
					return base.PopupParent.IsRelatedControl(control, askPopupParent);
				}
				if (control != null && base.ParentControl != null && (control == base.ParentControl || base.ParentControl.Contains(control)))
				{
					return true;
				}
			}
			return false;
		}
	}

	private object cachedSelectedValue;

	private int indexOnListMouseDown = -1;

	private bool updateSelectionOnCommit = true;

	private bool m_bAutoComplete = true;

	[DefaultValue(null)]
	[Category("Behavior")]
	[Description("The ListControl that will be used in the drop-down portion.")]
	public virtual ListControl ListControl
	{
		get
		{
			return base.PopupControl as ListControl;
		}
		set
		{
			base.PopupControl = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override Control PopupControl
	{
		get
		{
			return base.PopupControl;
		}
		set
		{
			base.PopupControl = value;
		}
	}

	[Description("Updates list selection with new text on Leave.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	public virtual bool UpdateSelectionBeforeValidate
	{
		get
		{
			return updateSelectionOnCommit;
		}
		set
		{
			updateSelectionOnCommit = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Indicating whether the control uses AutoComplete.")]
	public bool AutoComplete
	{
		get
		{
			return m_bAutoComplete;
		}
		set
		{
			if (value != m_bAutoComplete)
			{
				m_bAutoComplete = value;
				OnAutoCompleteChanged();
			}
		}
	}

	[Description("Occurs when the user clicks in the list box in the drop-down to let you cancel the subsequent drop-down close.")]
	public event MouseClickCancelEventHandler DropDownCloseOnClick;

	[Description("Occurs when the selected Index of list is about to be changed.")]
	public event SelectedIndexChangingHandler SelectedIndexChanging;

	[Description("Risen by OnAutoCompleteChanged method.")]
	public event EventHandler AutoCompleteChanged;

	private void Init()
	{
		if (base.PopupContainer.PopupHost == null)
		{
			base.PopupContainer.PopupHost = new ComboBoxBasePopUpHost();
		}
	}

	protected override void OnEndInit()
	{
		if (base.DropDownStyle == ComboBoxStyle.DropDownList)
		{
			IList listControlList = GetListControlList();
			if (listControlList != null && listControlList.Count > 0 && ListControl.SelectedIndex == -1)
			{
				ListControl.SelectedIndex = 0;
			}
		}
		base.OnEndInit();
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		Init();
	}

	protected virtual void OnDropDownCloseOnClick(MouseClickCancelEventArgs args)
	{
		if (this.DropDownCloseOnClick != null)
		{
			this.DropDownCloseOnClick(this, args);
		}
	}

	protected virtual void OnSelectedIndexChanging(SelectedIndexChangingArgs e)
	{
		if (this.SelectedIndexChanging != null)
		{
			this.SelectedIndexChanging(this, e);
		}
	}

	protected override string GetPopupControlItemText(int index)
	{
		return ListControl.GetItemText(GetListControlList()[index]);
	}

	protected virtual ListControl GetPopupControlListControl()
	{
		return ListControl;
	}

	protected override PopupControlContainer CreatePopupContainer()
	{
		return new ComboBoxPopupContainer();
	}

	protected override bool IsValidIndex(int index)
	{
		if (index < 0 || index > GetListControlList().Count - 1)
		{
			return false;
		}
		return true;
	}

	protected override int FindItem(string prefix, bool select, int start, bool ignoreCase)
	{
		if (ignoreCase)
		{
			prefix = prefix.ToUpper();
		}
		IList listControlList = GetListControlList();
		if (listControlList == null)
		{
			return -1;
		}
		int count = listControlList.Count;
		for (int i = 0; i < count; i++)
		{
			int num = (i + start + 1) % count;
			string text = ListControl.GetItemText(listControlList[num]);
			if (text.Length < prefix.Length)
			{
				continue;
			}
			if (prefix != string.Empty)
			{
				text = text.Substring(0, prefix.Length);
			}
			if (ignoreCase)
			{
				text = text.ToUpper();
			}
			if (prefix == text)
			{
				if (select && num != ListControl.SelectedIndex)
				{
					ListControl.SelectedIndex = num;
				}
				return num;
			}
		}
		if (select && ListControl.SelectedIndex >= 0)
		{
			ListControl.SelectedIndex = -1;
		}
		return -1;
	}

	protected virtual IList GetListControlList()
	{
		IList result = null;
		if (ListControl != null)
		{
			Type type = ListControl.GetType();
			PropertyInfo propertyInfo = null;
			PropertyInfo[] properties = type.GetProperties();
			PropertyInfo[] array = properties;
			foreach (PropertyInfo propertyInfo2 in array)
			{
				if (propertyInfo2.Name == "Items")
				{
					propertyInfo = propertyInfo2;
					break;
				}
			}
			if (propertyInfo != null)
			{
				result = propertyInfo.GetValue(ListControl, new object[0]) as IList;
			}
		}
		return result;
	}

	protected override void MoveSelelctionInPopupControl(bool up)
	{
		base.MoveSelelctionInPopupControl(up);
		if (ListControl == null)
		{
			return;
		}
		string text = Text;
		int selectedIndex = ListControl.SelectedIndex;
		selectedIndex = ((!up) ? (selectedIndex + 1) : ((selectedIndex >= 0) ? (selectedIndex - 1) : 0));
		IList listControlList = GetListControlList();
		if (selectedIndex > -1 && listControlList != null && selectedIndex < listControlList.Count)
		{
			SelectedIndexChangingArgs selectedIndexChangingArgs = new SelectedIndexChangingArgs(selectedIndex, ListControl.SelectedIndex);
			OnSelectedIndexChanging(selectedIndexChangingArgs);
			if (!selectedIndexChangingArgs.Cancel)
			{
				ignorePopupValueChange = true;
				ListControl.SelectedIndex = selectedIndex;
				ignoreNextPopupControlMouseMove = true;
				ignorePopupValueChange = false;
				OnSelectionChangedByKey();
				if (text == Text && !base.PopupContainer.IsShowing())
				{
					OnSelectionChangeCommitted(EventArgs.Empty);
				}
			}
		}
		else
		{
			text = string.Empty;
		}
	}

	protected virtual void OnSelectionChangedByKey()
	{
		UpdateText(!base.PopupContainer.IsShowing());
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		if (UpdateSelectionBeforeValidate)
		{
			OnUpdateSelectionBeforeValidate();
		}
		base.OnValidating(e);
	}

	protected virtual void OnUpdateSelectionBeforeValidate()
	{
		if (PopupControl != null && PopupControl.Visible)
		{
			UpdatePopupControl();
		}
	}

	protected override void PerformTextAutoComplete(KeyPressEventArgs e)
	{
		if (AutoComplete)
		{
			base.PerformTextAutoComplete(e);
		}
	}

	private void RaiseAutoCompleteChanged()
	{
		if (this.AutoCompleteChanged != null)
		{
			this.AutoCompleteChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnAutoCompleteChanged()
	{
		RaiseAutoCompleteChanged();
	}

	[DocumentationExclude]
	protected override bool HasListInterface()
	{
		return true;
	}

	protected override void OnBeforePopup()
	{
		if (ListControl != null)
		{
			SetPopupText(Text);
			cachedSelectedValue = ListControl.SelectedValue;
		}
		base.OnBeforePopup();
	}

	protected override void SetPopupText(string value)
	{
		base.SetPopupText(value);
		if (GetPopupText().CompareTo(value) != 0)
		{
			ListControl.SelectedIndex = -1;
		}
	}

	[DocumentationExclude]
	protected override void OnNoChangeDetectedOnPopupClosed()
	{
		if (ListControl != null && cachedSelectedValue != ListControl.SelectedValue)
		{
			OnSelectionChangeCommitted(EventArgs.Empty);
		}
		base.OnNoChangeDetectedOnPopupClosed();
	}

	protected override void OnMouseUpOnQuickSelect()
	{
		if (ListControl.SelectedIndex != -1)
		{
			base.PopupContainer.HidePopup(PopupCloseType.Done);
		}
		else
		{
			base.PopupContainer.HidePopup(PopupCloseType.Canceled);
		}
		base.OnMouseUpOnQuickSelect();
	}

	protected virtual bool IsIndexFromPointAvaillable()
	{
		if (ListControl == null)
		{
			return false;
		}
		Type type = ListControl.GetType();
		MethodInfo method = type.GetMethod("IndexFromPoint", new Type[1] { typeof(Point) });
		if (method != null)
		{
			return true;
		}
		return false;
	}

	protected virtual int GetIndexFromPoint(Point pointScreen)
	{
		if (ListControl == null)
		{
			return -1;
		}
		Point point = ListControl.PointToClient(pointScreen);
		if (!ListControl.ClientRectangle.Contains(point))
		{
			return -1;
		}
		Type type = ListControl.GetType();
		MethodInfo method = type.GetMethod("IndexFromPoint", new Type[1] { typeof(Point) });
		if (method != null)
		{
			return (int)method.Invoke(ListControl, new object[1] { point });
		}
		return -1;
	}

	protected override void AttachPopupControl()
	{
		base.AttachPopupControl();
		if (!base.DesignMode)
		{
			ListControl.SelectedValueChanged += List_SelectedValueChanged;
			ListControl.MouseUp += List_MouseUp;
			ListControl.MouseMove += List_MouseMove;
			ListControl.MouseDown += List_MouseDown;
			ListControl.Click += ListControl_Click;
			ListControl.GotFocus += ListControl_GotFocus;
		}
	}

	protected override void DetachPopupControl(bool disposing)
	{
		if (!base.DesignMode && ListControl != null)
		{
			ListControl.SelectedValueChanged -= List_SelectedValueChanged;
			ListControl.MouseUp -= List_MouseUp;
			ListControl.MouseMove -= List_MouseMove;
			ListControl.MouseDown -= List_MouseDown;
			ListControl.Click -= ListControl_Click;
			ListControl.GotFocus -= ListControl_GotFocus;
		}
		base.DetachPopupControl(disposing);
	}

	protected virtual void OnListMouseUp(MouseEventArgs e)
	{
		if (base.PopupContainer.IsShowing())
		{
			Point ptScreen = ListControl.PointToScreen(new Point(e.X, e.Y));
			MouseClickCancelEventArgs e2 = new MouseClickCancelEventArgs(ptScreen, cancel: false);
			OnDropDownCloseOnClick(e2);
			if (!e2.Cancel)
			{
				SelectedIndexChangingArgs selectedIndexChangingArgs = new SelectedIndexChangingArgs(m_lastFoundIndex, ListControl.SelectedIndex);
				OnSelectedIndexChanging(selectedIndexChangingArgs);
				if (!selectedIndexChangingArgs.Cancel)
				{
					m_lastFoundIndex = ListControl.SelectedIndex;
					if (ListControl.SelectedIndex != -1)
					{
						base.PopupContainer.HidePopup(PopupCloseType.Done);
					}
					else
					{
						base.PopupContainer.HidePopup(PopupCloseType.Canceled);
					}
				}
			}
		}
		if (base.DropDownStyle != ComboBoxStyle.Simple || !IsIndexFromPointAvaillable())
		{
			return;
		}
		ignorePopupValueChange = false;
		Point pointScreen = ListControl.PointToScreen(new Point(e.X, e.Y));
		int indexFromPoint = GetIndexFromPoint(pointScreen);
		if (indexFromPoint == -1 || indexFromPoint == indexOnListMouseDown)
		{
			return;
		}
		if (indexFromPoint == -1)
		{
			UpdatePopupControl();
			return;
		}
		SelectedIndexChangingArgs selectedIndexChangingArgs2 = new SelectedIndexChangingArgs(indexFromPoint, ListControl.SelectedIndex);
		OnSelectedIndexChanging(selectedIndexChangingArgs2);
		if (!selectedIndexChangingArgs2.Cancel)
		{
			OnListSelectedValueChangedWhileNotShowingPopup(indexFromPoint);
			if (base.TextBox.Visible)
			{
				base.TextBox.SelectAll();
			}
		}
	}

	private void List_MouseUp(object sender, MouseEventArgs e)
	{
		OnListMouseUp(e);
	}

	private void ListControl_GotFocus(object sender, EventArgs e)
	{
		if (base.DropDownStyle == ComboBoxStyle.Simple)
		{
			if (base.TextBox.Visible)
			{
				base.TextBox.Focus();
				base.TextBox.SelectAll();
			}
			else
			{
				Focus();
			}
		}
	}

	private void ListControl_Click(object sender, EventArgs e)
	{
		if (base.DropDownStyle == ComboBoxStyle.Simple)
		{
			OnClick(e);
		}
	}

	private void List_MouseDown(object sender, MouseEventArgs e)
	{
		if (base.DropDownStyle == ComboBoxStyle.Simple && IsIndexFromPointAvaillable())
		{
			Point pointScreen = ListControl.PointToScreen(new Point(e.X, e.Y));
			int indexFromPoint = GetIndexFromPoint(pointScreen);
			if (indexFromPoint != -1)
			{
				ignorePopupValueChange = true;
				indexOnListMouseDown = ListControl.SelectedIndex;
				ListControl.SelectedIndex = indexFromPoint;
			}
		}
	}

	private void List_MouseMove(object sender, MouseEventArgs e)
	{
		if (!ignoreNextPopupControlMouseMove)
		{
			ProcessListMouseMove(sender, e);
		}
		else
		{
			ignoreNextPopupControlMouseMove = false;
		}
	}

	protected override void ProcessPopupControlMouseMove(object sender, MouseEventArgs e)
	{
		ProcessListMouseMove(sender, e);
	}

	protected virtual void ProcessListMouseMove(object sender, MouseEventArgs e)
	{
		IList listControlList = GetListControlList();
		if (!base.ContainsFocus || base.DropDownStyle == ComboBoxStyle.Simple || listControlList == null)
		{
			return;
		}
		Control control = sender as Control;
		Point p = new Point(e.X, e.Y);
		p = control.PointToScreen(p);
		Point pt = ListControl.PointToClient(p);
		if (ListControl.ClientRectangle.Contains(pt) && Control.MouseButtons == MouseButtons.Left)
		{
			base.QuickSelectOn = true;
		}
		if (IsIndexFromPointAvaillable())
		{
			int indexFromPoint = GetIndexFromPoint(p);
			if ((base.QuickSelectOn || indexFromPoint > -1) && indexFromPoint < listControlList.Count)
			{
				ListControl.SelectedIndex = indexFromPoint;
				if (indexFromPoint == -1 && ListControl.SelectedIndex != -1)
				{
					indexFromPoint++;
				}
			}
		}
		if (!base.QuickSelectOn || ListControl.ClientRectangle.Contains(pt))
		{
			return;
		}
		bool flag = ListControl.ClientRectangle.Bottom < pt.Y;
		bool flag2 = ListControl.ClientRectangle.Top > pt.Y;
		Type type = ListControl.GetType();
		if (!flag && !flag2)
		{
			return;
		}
		PropertyInfo property = type.GetProperty("TopIndex", typeof(int));
		if (property != null)
		{
			int num = (int)property.GetValue(ListControl, new object[0]);
			if (flag)
			{
				num++;
			}
			else if (flag2)
			{
				num--;
			}
			if (num > -1 || num >= listControlList.Count)
			{
				property.SetValue(ListControl, num, new object[0]);
			}
		}
	}

	private void List_SelectedValueChanged(object sender, EventArgs e)
	{
		if (base.DropDownStyle == ComboBoxStyle.Simple && Control.MouseButtons == MouseButtons.Left && base.ContainsFocus && IsIndexFromPointAvaillable())
		{
			ignorePopupValueChange = true;
		}
		if (!disposing && base.PopupContainer != null && !ignorePopupValueChange && (base.DropDownStyle == ComboBoxStyle.Simple || !base.PopupContainer.IsShowing()))
		{
			UpdateText(fireEvent: false);
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	protected virtual void OnListSelectedValueChangedWhileNotShowingPopup(int newIndex)
	{
		UpdateText(fireEvent: true);
	}

	protected override bool IsTextValid(string text)
	{
		int num = -1;
		IList listControlList = GetListControlList();
		if (listControlList != null)
		{
			for (int i = 0; i < listControlList.Count; i++)
			{
				object item = listControlList[i];
				if (ListControl.GetItemText(item) == text)
				{
					num = i;
					break;
				}
			}
		}
		return num != -1;
	}

	protected virtual Point CorrectPopupLocation(Point location)
	{
		return location;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && base.PopupContainer.PopupHost != null)
		{
			base.PopupContainer.PopupHost.Dispose();
			base.PopupContainer.PopupHost = null;
		}
		base.Dispose(disposing);
	}
}
