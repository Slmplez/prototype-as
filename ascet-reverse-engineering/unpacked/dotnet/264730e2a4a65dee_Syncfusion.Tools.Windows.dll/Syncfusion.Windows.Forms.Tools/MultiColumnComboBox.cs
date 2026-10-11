using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents a combo box that can show multiple columns in the dropdown.")]
[Designer(typeof(MultiColumnComboBoxDesigner), typeof(IDesigner))]
public class MultiColumnComboBox : ComboBoxBaseDataBound
{
	public override int SelectedIndex
	{
		get
		{
			if (ListBox == null || (ListBox.DataSource == null && (ListBox.Items == null || ListBox.Items.Count == 0)))
			{
				return -1;
			}
			return base.SelectedIndex;
		}
		set
		{
			base.SelectedIndex = value;
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Specifies whether multiple columns or a single column should be shown in the dropdown.")]
	public virtual bool MultiColumn
	{
		get
		{
			if (ListBox != null)
			{
				return ListBox.MultiColumn;
			}
			return true;
		}
		set
		{
			if (ListBox != null)
			{
				ListBox.MultiColumn = value;
			}
		}
	}

	[Browsable(false)]
	[Editor("System.Windows.Forms.Design.StringCollectionEditor, System.Design", "System.Drawing.Design.UITypeEditor, System.Drawing")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override ObjectCollection Items => base.Items;

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual GridListBox ListBox
	{
		get
		{
			if (ListControl == null)
			{
				ListControl = CreateListControl();
				InitListControl(ListControl);
			}
			return ListControl as GridListBox;
		}
	}

	[Browsable(false)]
	public override bool IntegralHeight
	{
		get
		{
			return base.IntegralHeight;
		}
		set
		{
			if (IntegralHeight != value)
			{
				base.IntegralHeight = value;
			}
		}
	}

	public new VisualStyle Style
	{
		get
		{
			return base.Style;
		}
		set
		{
			if (base.Style != value)
			{
				base.Style = value;
				OnStyleChanged();
			}
		}
	}

	public new Office2007Theme Office2007ColorTheme
	{
		get
		{
			return base.Office2007ColorTheme;
		}
		set
		{
			if (base.Office2007ColorTheme != value)
			{
				base.Office2007ColorTheme = value;
				OnStyleChanged();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(true)]
	[Description("Indicates if column headers should be displayed in the dropdown.")]
	public bool ShowColumnHeader
	{
		get
		{
			if (ListBox == null)
			{
				return true;
			}
			return ListBox.ShowColumnHeader;
		}
		set
		{
			if (ListBox != null)
			{
				ListBox.ShowColumnHeader = value;
			}
		}
	}

	[Description("Specifies the color for alpha blended selections in the dropdown.")]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public Color AlphaBlendSelectionColor
	{
		get
		{
			if (ListBox == null)
			{
				return Color.Empty;
			}
			return ListBox.AlphaBlendSelectionColor;
		}
		set
		{
			if (ListBox != null)
			{
				ListBox.AlphaBlendSelectionColor = value;
			}
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
			if (base.AllowNewText)
			{
				if (NumberOnly)
				{
					base.Text = GetNumbersOnlyText(value);
				}
				else
				{
					base.Text = value;
				}
			}
		}
	}

	public MultiColumnComboBox()
	{
		base.MouseWheel += MultiColumnComboBox_MouseWheel;
	}

	protected override ListControl CreateListControl()
	{
		return new GridListBox();
	}

	protected override void InitListControl(ListControl listControl)
	{
		ListBox.TabStop = false;
		ListBox.MultiColumn = true;
		base.InitListControl(listControl);
	}

	protected override void UpdateListBoxBorderStyle()
	{
		if (ListBox != null)
		{
			if (base.DropDownStyle == ComboBoxStyle.Simple)
			{
				ListBox.ThemesEnabled = false;
				ListBox.BorderStyle = BorderStyle.None;
			}
			else if (FlatStyle == ComboFlatStyle.System)
			{
				ListBox.ThemesEnabled = true;
				ListBox.BorderStyle = BorderStyle.FixedSingle;
			}
			else
			{
				ListBox.ThemesEnabled = false;
				ListBox.BorderStyle = BorderStyle.FixedSingle;
			}
		}
	}

	private int GetListBoxBorderHeight()
	{
		if (ListBox.BorderStyle == BorderStyle.FixedSingle)
		{
			return 2;
		}
		if (ListBox.BorderStyle == BorderStyle.None)
		{
			return 0;
		}
		if (ListBox.ThemesEnabled)
		{
			return 2;
		}
		return 4;
	}

	protected override void OnDataManagerPositionChanged()
	{
		if (base.DataManager != null && Items.Count > base.DataManager.Position && ListBox.Items != null && ListBox.Items.Count > base.DataManager.Position)
		{
			SelectedIndex = base.DataManager.Position;
		}
	}

	private void ResetAlphaBlendSelectionColor()
	{
		if (ListBox != null)
		{
			ListBox.ResetAlphaBlendSelectionColor();
		}
	}

	private bool ShouldSerializeAlphaBlendSelectionColor()
	{
		if (ListBox == null)
		{
			return false;
		}
		return ListBox.ShouldSerializeAlphaBlendSelectionColor();
	}

	protected override void OnDisplayMemberChanged(EventArgs e)
	{
		base.OnDisplayMemberChanged(e);
		if (ListBox == null)
		{
			ListControl = CreateListControl();
			InitListControl(ListControl);
		}
		ListBox.DisplayMember = base.DisplayMember;
		UpdateText(fireEvent: false);
	}

	protected override void NativeAdd(object item)
	{
	}

	protected override void NativeClear()
	{
		if (ListBox != null)
		{
			ListBox.SelectedIndex = -1;
		}
	}

	protected override void NativeInsert(int index, object item)
	{
	}

	protected override void NativeRemoveAt(int index)
	{
	}

	protected override void SetItemsCore(IList items)
	{
		base.SetItemsCore(items);
		if (ListBox != null)
		{
			ListBox.DataSource = base.DataSource;
		}
	}

	protected override void OnDataSourceChanged(EventArgs e)
	{
		base.OnDataSourceChanged(e);
		if (base.DataSource == null)
		{
			ListBox.DataSource = null;
		}
	}

	public override int FindString(string s)
	{
		return FindString(s, -1);
	}

	public override int FindString(string s, int startIndex)
	{
		if (s == null)
		{
			return -1;
		}
		return ListBox.FindString(s, startIndex);
	}

	public override int FindStringExact(string s)
	{
		return FindStringExact(s, -1);
	}

	public override int FindStringExact(string s, int startIndex)
	{
		if (s == null || ListBox.DataSource == null)
		{
			return -1;
		}
		if (Items.Count == 0)
		{
			return -1;
		}
		if (startIndex < 0)
		{
			startIndex = 0;
		}
		if (startIndex > Items.Count)
		{
			return -1;
		}
		return ListBox.FindStringExact(s, startIndex);
	}

	public override int FindStringExact(string text, bool ignoreCase)
	{
		if (text == null || ListBox.DataSource == null)
		{
			return -1;
		}
		return ListBox.FindItem(text, selectItem: false, -1, ignoreCase);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (base.DropDownStyle == ComboBoxStyle.Simple && IntegralHeight && height > base.EditPortionHeight)
		{
			int num = GetEmbeddedChildBounds(height).Height;
			int listNCHeight = GetListNCHeight();
			int num2 = (num - listNCHeight) / ListBox.ItemHeight;
			int num3 = num2 * ListBox.ItemHeight + listNCHeight;
			int num4 = num3 - num;
			height += num4;
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnBeforePopup()
	{
		int num = 0;
		if (ListBox.Items != null)
		{
			num = ((ListBox.Items.Count > base.MaxDropDownItems) ? base.MaxDropDownItems : ListBox.Items.Count);
		}
		if (num == 0)
		{
			return;
		}
		IList items = ListBox.Items;
		bool flag = items != null && num < ListBox.Items.Count;
		int num2 = 0;
		if (ListBox.ShowColumnHeader)
		{
			num2 = ListBox.Grid.RowHeights[0];
		}
		int num3 = base.DropDownWidth;
		if (!ShouldSerializeDropDownWidth())
		{
			int num4 = ListBox.Grid.ColWidths.GetTotal(0, ListBox.Grid.Model.ColCount);
			if (flag)
			{
				num4 += SystemInformation.VerticalScrollBarWidth + 2;
			}
			if (num4 > num3)
			{
				num3 = num4;
			}
		}
		_ = ListBox.Handle;
		bool flag2 = ListBox.Grid.HScrollBar != null && ListBox.Grid.HScrollBar.InnerScrollBar != null && ListBox.Grid.HScrollBar.InnerScrollBar.Visible;
		num = (flag2 ? (num + 1) : num);
		int num5 = num * ListBox.ItemHeight + num2 + GetListBoxBorderHeight();
		num3 += GetListBoxBorderHeight();
		ListBox.ClientSize = new Size(num3, num5);
		if (flag2 && ListBox.Grid.HScrollBar.InnerScrollBar == null)
		{
			num--;
			num5 = num * ListBox.ItemHeight + num2 + GetListBoxBorderHeight();
			ListBox.ClientSize = new Size(num3, num5);
		}
		if (base.PopupContainer.Width != num3)
		{
			base.PopupContainer.Width = num3;
		}
		base.OnBeforePopup();
	}

	protected override void OnPopupClosed(PopupClosedEventArgs e)
	{
		if ((e.PopupCloseType == PopupCloseType.Canceled || e.PopupCloseType == PopupCloseType.Deactivated) && Text != ListControl.Text)
		{
			ListControl.SelectedIndex = FindStringExact(Text, -1);
		}
		base.OnPopupClosed(e);
	}

	protected override void OnReadOnlyChanged(EventArgs e)
	{
		base.OnReadOnlyChanged(e);
		base.DropDownButton.Enabled = base.Enabled;
		if (PopupControl != null)
		{
			PopupControl.Enabled = base.Enabled;
		}
	}

	protected override void OnEnabledChanged(EventArgs e)
	{
		base.OnEnabledChanged(e);
		base.DropDownButton.Enabled = base.Enabled;
		if (PopupControl != null)
		{
			PopupControl.Enabled = base.Enabled;
		}
	}

	protected override void ProcessDDMouseDown()
	{
		if (!base.ContainsFocus)
		{
			if (base.TextBox.Visible)
			{
				base.TextBox.Focus();
			}
			else
			{
				Focus();
			}
		}
		if (base.PopupContainer.IsShowing())
		{
			HidePopup();
		}
		else if (base.ContainsFocus)
		{
			ShowPopup();
		}
	}

	public override bool UpdateText(bool fireEvent)
	{
		bool result = false;
		if (!ReadOnly)
		{
			result = base.UpdateText(fireEvent);
		}
		return result;
	}

	protected override void InitPopupContainer()
	{
		base.InitPopupContainer();
		base.PopupContainer.HandleCreated += PopupContainer_HandleCreated;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (base.PopupContainer != null)
			{
				base.PopupContainer.HandleCreated -= PopupContainer_HandleCreated;
			}
			base.MouseWheel -= MultiColumnComboBox_MouseWheel;
		}
		base.Dispose(disposing);
	}

	private void PopupContainer_HandleCreated(object sender, EventArgs e)
	{
		if (Style == VisualStyle.Office2007)
		{
			AttachScrollersFrame(ListBox.Grid);
			InitScrollersFrame();
		}
	}

	private string GetNumbersOnlyText(string text)
	{
		string text2 = string.Empty;
		for (int i = 0; i < text.Length; i++)
		{
			if (text[i] >= '0' && text[i] <= '9')
			{
				text2 += text[i];
			}
		}
		return text2;
	}

	private void OnStyleChanged()
	{
		if (base.Style == VisualStyle.Office2007)
		{
			if (ListBox.Grid.IsHandleCreated && base.PopupContainer.IsHandleCreated)
			{
				AttachScrollersFrame(ListBox.Grid);
				InitScrollersFrame();
			}
			switch (Office2007ColorTheme)
			{
			case Office2007Theme.Blue:
				ListBox.GridVisualStyles = GridVisualStyles.Office2007Blue;
				break;
			case Office2007Theme.Silver:
				ListBox.GridVisualStyles = GridVisualStyles.Office2007Silver;
				break;
			case Office2007Theme.Black:
				ListBox.GridVisualStyles = GridVisualStyles.Office2007Black;
				break;
			}
		}
		else
		{
			ListBox.GridVisualStyles = GridVisualStyles.SystemTheme;
		}
	}

	private void MultiColumnComboBox_MouseWheel(object sender, MouseEventArgs e)
	{
		if (ListBox.Grid.IsHandleCreated && Style == VisualStyle.Office2007)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(ListBox.Grid.Handle, 522, IntPtr.Zero, IntPtr.Zero);
		}
	}
}
