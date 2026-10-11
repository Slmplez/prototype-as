using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[Designer(typeof(ComboBoxAutoCompleteDesigner), typeof(IDesigner))]
[Description("Represents a combo box control with an embedded AutoComplete.")]
[ToolboxBitmap(typeof(ComboBoxAutoComplete), "ToolboxIcons.ComboBoxAutoComplete.bmp")]
public class ComboBoxAutoComplete : ThemedComboBox
{
	private class ComboBoxAutoCompleteNativeWindow : NativeWindow
	{
		private ComboBoxAutoComplete m_cmb;

		public ComboBoxAutoCompleteNativeWindow(ComboBoxAutoComplete value)
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			m_cmb = value;
			AssignHandle(m_cmb.TextBox);
		}

		protected override void WndProc(ref Message m)
		{
			if ((m.Msg != 258 && m.Msg != 770) || !m_cmb.PerformAllowNewText(m))
			{
				base.WndProc(ref m);
			}
		}
	}

	private AutoComplete autoCompleteControl = new AutoComplete();

	private bool allowNewText = true;

	private bool refreshSelectionProperties;

	private bool m_bReadOnly;

	private ComboBoxAutoCompleteNativeWindow m_nativeWindow;

	private int savedAutoCompleteMatches;

	private bool updateComboSelectionProperties = true;

	internal IntPtr TextBox
	{
		get
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.COMBOBOXINFO cbi = default(Syncfusion.Runtime.InteropServices.NativeMethods.COMBOBOXINFO);
			cbi.cbSize = (uint)Marshal.SizeOf((object)cbi);
			if (Syncfusion.Runtime.InteropServices.NativeMethods.GetComboBoxInfo(base.Handle, ref cbi))
			{
				return cbi.hwndItem;
			}
			return IntPtr.Zero;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public AutoComplete AutoCompleteControl => autoCompleteControl;

	[DefaultValue(true)]
	[Description("Indicates whether user is allowed to enter new text.")]
	public bool AllowNewText
	{
		get
		{
			return allowNewText;
		}
		set
		{
			allowNewText = value;
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets the value indicating whether changes can be done.")]
	public bool ReadOnly
	{
		get
		{
			return m_bReadOnly;
		}
		set
		{
			if (value != m_bReadOnly)
			{
				m_bReadOnly = value;
				Syncfusion.Runtime.InteropServices.NativeMethods.EnumChildWindowsCallBack lpEnumFunc = EnumChildWindowsCallBack;
				Syncfusion.Runtime.InteropServices.NativeMethods.EnumChildWindows(base.Handle, lpEnumFunc, IntPtr.Zero);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public Control ParentForm
	{
		get
		{
			return autoCompleteControl.ParentForm;
		}
		set
		{
			autoCompleteControl.ParentForm = value;
		}
	}

	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			int num = SelectedIndex;
			if (!AllowNewText)
			{
				if (savedAutoCompleteMatches > 0)
				{
					base.Text = value;
				}
				else
				{
					savedAutoCompleteMatches = AutoCompleteControl.GetMatchesCount(value);
					if (savedAutoCompleteMatches > 0)
					{
						base.Text = value;
					}
				}
			}
			else
			{
				base.Text = value;
			}
			if (SelectedIndex != num)
			{
				OnSelectedIndexChanged(EventArgs.Empty);
			}
			autoCompleteControl.PreChangeText = value;
		}
	}

	[Description("Gets or sets value for updating AutoComplete with SelectedValue.")]
	[DefaultValue(true)]
	public bool UpdateComboSelectionProperties
	{
		get
		{
			return updateComboSelectionProperties;
		}
		set
		{
			updateComboSelectionProperties = value;
		}
	}

	public new object SelectedValue
	{
		get
		{
			if (UpdateComboSelectionProperties)
			{
				if (refreshSelectionProperties && (!AutoCompleteControl.ProcessingAutoComplete || savedAutoCompleteMatches == 0))
				{
					AutoCompleteControl.UpdateSelectedItem(Text);
					refreshSelectionProperties = false;
				}
				return AutoCompleteControl.SelectedValue;
			}
			return base.SelectedValue;
		}
		set
		{
			base.SelectedValue = value;
		}
	}

	public new object SelectedItem
	{
		get
		{
			if (UpdateComboSelectionProperties)
			{
				if (Text != string.Empty)
				{
					if (refreshSelectionProperties && (!AutoCompleteControl.ProcessingAutoComplete || savedAutoCompleteMatches == 0))
					{
						AutoCompleteControl.UpdateSelectedItem(Text);
						refreshSelectionProperties = false;
					}
					return AutoCompleteControl.SelectedItem;
				}
				return null;
			}
			return base.SelectedItem;
		}
		set
		{
			base.SelectedItem = value;
		}
	}

	public new int SelectedIndex
	{
		get
		{
			if (UpdateComboSelectionProperties)
			{
				if (refreshSelectionProperties && (!AutoCompleteControl.ProcessingAutoComplete || savedAutoCompleteMatches == 0))
				{
					AutoCompleteControl.UpdateSelectedItem(Text);
					refreshSelectionProperties = false;
				}
				return AutoCompleteControl.SelectedIndex;
			}
			return base.SelectedIndex;
		}
		set
		{
			base.SelectedIndex = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("This property is obsolete.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new int DropDownHeight => 0;

	public ComboBoxAutoComplete()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ComboBoxAutoComplete));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		autoCompleteControl.OverrideCombo = true;
		autoCompleteControl.ChangeDataManagerPosition = true;
		autoCompleteControl.DropDownClosed += HandleAutoCompleteDropDownClosed;
		autoCompleteControl.SetAutoComplete(this, AutoCompleteModes.AutoAppend);
		autoCompleteControl.SetAutoCompleteComboUpDown(this, enableComboUpDown: true);
		autoCompleteControl.ParentForm = base.Parent;
		base.DropDownWidth = base.Width;
	}

	~ComboBoxAutoComplete()
	{
		Dispose(disposing: false);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (base.AutoCompleteSource != AutoCompleteSource.CustomSource)
		{
			m_nativeWindow = new ComboBoxAutoCompleteNativeWindow(this);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (autoCompleteControl != null)
			{
				autoCompleteControl.SetAutoComplete(this, AutoCompleteModes.Disabled);
				autoCompleteControl.DropDownClosed -= HandleAutoCompleteDropDownClosed;
				autoCompleteControl.Dispose();
				autoCompleteControl = null;
			}
			m_nativeWindow = null;
		}
		base.Dispose(disposing);
	}

	private bool EnumChildWindowsCallBack(IntPtr hWnd, IntPtr lParam)
	{
		if (hWnd != IntPtr.Zero)
		{
			IntPtr wParam = (m_bReadOnly ? new IntPtr(1) : IntPtr.Zero);
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(hWnd, 207, wParam, IntPtr.Zero);
			Invalidate();
			return true;
		}
		return false;
	}

	protected override void OnDropDown(EventArgs e)
	{
		if (ReadOnly)
		{
			return;
		}
		if (!autoCompleteControl.IsDropDownShowing())
		{
			autoCompleteControl.SetAutoComplete(this, AutoCompleteModes.AutoSuggest);
			string selectedEntry = Text;
			if (autoCompleteControl.GetMatchesCount(string.Empty) > 0)
			{
				autoCompleteControl.ProcessAutoComplete(string.Empty, selectedEntry);
			}
			else
			{
				autoCompleteControl.SetAutoComplete(this, AutoCompleteModes.AutoAppend);
			}
		}
		else
		{
			autoCompleteControl.CloseDropDown();
		}
		MethodInvoker method = HideNativeDropDown;
		BeginInvoke(method);
		base.OnDropDown(e);
	}

	private string GetUnselectedInitialText()
	{
		string empty = string.Empty;
		if (base.SelectionLength > 0)
		{
			return Text.Substring(0, base.SelectionStart);
		}
		return Text;
	}

	private void HandleAutoCompleteDropDownClosed(object sender, PopupClosedEventArgs args)
	{
		base.DroppedDown = false;
		if (AutoCompleteControl != null && args.PopupCloseType != PopupCloseType.Canceled)
		{
			autoCompleteControl.SetAutoComplete(this, AutoCompleteControl.GetAutoComplete());
		}
		else
		{
			autoCompleteControl.SetAutoComplete(this, AutoCompleteModes.AutoAppend);
		}
	}

	protected override void WndProc(ref Message m)
	{
		bool flag = false;
		if (m.Msg == 513 || m.Msg == 515)
		{
			flag = ReadOnly;
		}
		if (flag)
		{
			return;
		}
		if (m.Msg == 8465)
		{
			int num = (int)m.WParam >> 16;
			if (num != 7)
			{
				base.WndProc(ref m);
			}
			else
			{
				OnDropDown(EventArgs.Empty);
			}
		}
		else if (m.Msg == 513 || m.Msg == 515)
		{
			if (base.DropDownWidth > base.Width)
			{
				base.DropDownWidth = base.Width;
			}
			base.WndProc(ref m);
			if (!autoCompleteControl.IsDropDownShowing() && base.DroppedDown)
			{
				base.DroppedDown = false;
				Focus();
			}
		}
		else if (m.Msg == 327)
		{
			if (FindForm() != null)
			{
				if (!FindForm().Disposing)
				{
					base.WndProc(ref m);
				}
			}
			else
			{
				base.WndProc(ref m);
			}
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		base.DroppedDown = false;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		if (autoCompleteControl != null)
		{
			autoCompleteControl.ParentForm = base.Parent;
		}
	}

	private bool IsNavigationKey(Keys key)
	{
		if (Control.ModifierKeys != Keys.None)
		{
			key &= ~Control.ModifierKeys;
		}
		return key == Keys.Escape || key == Keys.Tab || key == Keys.Left || key == Keys.Right || key == Keys.Home || key == Keys.End || (key >= Keys.F1 && key <= Keys.F24);
	}

	protected override bool ProcessCmdKey(ref Message m, Keys key)
	{
		_ = (int)m.WParam;
		_ = Control.ModifierKeys;
		bool flag = ReadOnly && !IsNavigationKey(key);
		if (!flag)
		{
			flag = base.ProcessCmdKey(ref m, key);
		}
		return flag;
	}

	public override bool PreProcessMessage(ref Message msg)
	{
		if (msg.Msg == 256)
		{
			Keys keys = (Keys)msg.WParam.ToInt32();
			if (keys >= Keys.F1 && keys <= Keys.F12)
			{
				return FindForm().PreProcessMessage(ref msg);
			}
			return base.PreProcessMessage(ref msg);
		}
		return base.PreProcessMessage(ref msg);
	}

	internal bool PerformAllowNewText(Message m)
	{
		if (AllowNewText)
		{
			return false;
		}
		savedAutoCompleteMatches = 0;
		string text = "";
		if (m.Msg == 258)
		{
			char c = (char)(int)m.WParam;
			if (char.IsLetterOrDigit(c) || char.IsSymbol(c) || char.IsSeparator(c) || char.IsPunctuation(c))
			{
				text = c.ToString();
			}
		}
		else if (m.Msg == 770)
		{
			IDataObject dataObject = Clipboard.GetDataObject();
			if (dataObject.GetDataPresent(DataFormats.Text))
			{
				text = (string)dataObject.GetData(DataFormats.Text);
			}
		}
		string text2 = Text.Substring(0, base.SelectionStart) + text + Text.Substring(base.SelectionStart + base.SelectionLength, Text.Length - (base.SelectionStart + base.SelectionLength));
		if (text2 != "" && !AllowNewText)
		{
			savedAutoCompleteMatches = AutoCompleteControl.GetMatchesCount(text2);
			if (savedAutoCompleteMatches == 0)
			{
				AutoCompleteControl.ProcessAutoComplete(text2);
				return true;
			}
			return false;
		}
		return false;
	}

	protected override void OnTextChanged(EventArgs e)
	{
		if (!AutoCompleteControl.ProcessingAutoComplete)
		{
			refreshSelectionProperties = true;
		}
		base.OnTextChanged(e);
		autoCompleteControl.PreChangeText = Text;
	}

	private void HideNativeDropDown()
	{
		base.DropDownWidth = base.Width;
		base.DroppedDown = false;
	}
}
