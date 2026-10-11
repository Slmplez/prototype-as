using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents a ListBox control with item editing functionality.")]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.EditableList.bmp")]
public class EditableList : UserControl
{
	private CustomListBox listBox;

	private TextBox textBox;

	private Button button;

	private bool selIndexChanged;

	private int lastKnownSelIndex = -1;

	private bool editing;

	private bool wantButton = true;

	private static int EditorStripHeight = 20;

	private int m_nEditedItem = -1;

	private bool bIgnoreIndexChanging;

	private Container components;

	[Category("Child Components")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ListBox ListBox => listBox;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Child Components")]
	public TextBox TextBox => textBox;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Child Components")]
	public Button Button => button;

	[Description("Indicates whether you want the button to be shown to the right while editing.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool WantButton
	{
		get
		{
			return wantButton;
		}
		set
		{
			if (wantButton != value)
			{
				wantButton = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Editing
	{
		get
		{
			return editing;
		}
		set
		{
			if (editing != value)
			{
				if (!value)
				{
					EndEditing(value);
				}
				else
				{
					StartEditing();
				}
			}
		}
	}

	[DefaultValue(TextAlignment.Left)]
	[Description("Gets or sets the list box text alignment.")]
	public TextAlignment ListBoxTextAlignment
	{
		get
		{
			return listBox.TextAlignment;
		}
		set
		{
			if (listBox.TextAlignment != value)
			{
				listBox.TextAlignment = value;
				listBox.Invalidate();
			}
		}
	}

	[Description("Fired when the user clicks on the button")]
	public event EventHandler ButtonClick;

	[Description("Fired when the user completes editing a row")]
	public event ListBoxTextChangingEventHandler ItemChanging;

	[Description("Raised before a list item is edited.")]
	public event CancelEventHandler BeforeListItemEdit;

	[Description("Raised when a list item is to be drawn.")]
	public event ListItemDrawEventHandler ListItemDraw;

	public EditableList()
	{
		InitializeComponent();
	}

	[Description("Indicates, whether ListBoxTextAlignment property value should be serialized.")]
	public bool ShouldSerializeListBoxTextAlignment()
	{
		return ListBoxTextAlignment != TextAlignment.Left;
	}

	[Description("Resets the TextAlignment property to the default value.")]
	public void ResetTextAlignment()
	{
		ListBoxTextAlignment = TextAlignment.Left;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			listBox.MouseUp -= ListBox_MouseUp;
			listBox.MouseDown -= ListBox_MouseDown;
			listBox.SelectedIndexChanged -= ListBox_SelectedIndexChanged;
			CustomListBox customListBox = listBox;
			customListBox.ItemDraw = (ListItemDrawEventHandler)Delegate.Remove(customListBox.ItemDraw, new ListItemDrawEventHandler(HandleListItemDraw));
			button.Click -= Button_Click;
			button.LostFocus -= Button_LostFocus;
			textBox.LostFocus -= TextBox_LostFocus;
			if (components != null)
			{
				components.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.listBox = new Syncfusion.Windows.Forms.Tools.CustomListBox();
		this.textBox = new System.Windows.Forms.TextBox();
		this.button = new System.Windows.Forms.Button();
		base.SuspendLayout();
		this.listBox.Dock = System.Windows.Forms.DockStyle.Fill;
		this.listBox.Name = "listBox";
		this.listBox.Size = new System.Drawing.Size(150, 147);
		this.listBox.TabIndex = 0;
		this.listBox.MouseUp += new System.Windows.Forms.MouseEventHandler(ListBox_MouseUp);
		this.listBox.MouseDown += new System.Windows.Forms.MouseEventHandler(ListBox_MouseDown);
		this.listBox.SelectedIndexChanged += new System.EventHandler(ListBox_SelectedIndexChanged);
		Syncfusion.Windows.Forms.Tools.CustomListBox customListBox = this.listBox;
		customListBox.ItemDraw = (Syncfusion.Windows.Forms.Tools.ListItemDrawEventHandler)System.Delegate.Combine(customListBox.ItemDraw, new Syncfusion.Windows.Forms.Tools.ListItemDrawEventHandler(HandleListItemDraw));
		this.textBox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.textBox.Location = new System.Drawing.Point(8, 120);
		this.textBox.Name = "textBox";
		this.textBox.TabIndex = 2;
		this.textBox.Text = "";
		this.textBox.Visible = false;
		this.textBox.Size = new System.Drawing.Size(100, Syncfusion.Windows.Forms.Tools.EditableList.EditorStripHeight);
		this.textBox.LostFocus += new System.EventHandler(TextBox_LostFocus);
		this.button.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
		this.button.Location = new System.Drawing.Point(112, 120);
		this.button.Name = "button";
		this.button.Size = new System.Drawing.Size(30, Syncfusion.Windows.Forms.Tools.EditableList.EditorStripHeight);
		this.button.TabIndex = 2;
		this.button.Text = "...";
		this.button.Visible = false;
		this.button.Click += new System.EventHandler(Button_Click);
		this.button.LostFocus += new System.EventHandler(Button_LostFocus);
		base.Controls.AddRange(new System.Windows.Forms.Control[3] { this.button, this.textBox, this.listBox });
		base.Name = "EditableList";
		base.ResumeLayout(false);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (Control.FromHandle(msg.HWnd) == textBox)
		{
			switch (keyData)
			{
			case Keys.Return:
				EndEditing(save: true);
				return true;
			case Keys.Escape:
				EndEditing(save: false);
				return true;
			}
		}
		if (keyData == Keys.F2)
		{
			StartEditing();
		}
		return base.ProcessCmdKey(ref msg, keyData);
	}

	private void ListBox_MouseDown(object sender, MouseEventArgs e)
	{
		selIndexChanged = false;
	}

	private void ListBox_MouseUp(object sender, MouseEventArgs e)
	{
		if (!selIndexChanged && listBox.IndexFromPoint(e.X, e.Y) == listBox.SelectedIndex)
		{
			StartEditing();
		}
	}

	protected virtual void StartEditing()
	{
		if (Editing || listBox.SelectedIndex == -1 || RaiseBeforeListItemEdit())
		{
			return;
		}
		m_nEditedItem = listBox.SelectedIndex;
		bool isMirrored = GetIsMirrored();
		Rectangle itemRectangle = listBox.GetItemRectangle(m_nEditedItem);
		itemRectangle = listBox.RectangleToScreen(itemRectangle);
		itemRectangle = listBox.Parent.RectangleToClient(itemRectangle);
		if (itemRectangle.Height < 20)
		{
			itemRectangle.Y -= (20 - itemRectangle.Height) / 2;
			if (itemRectangle.Y < 0)
			{
				itemRectangle.Y = base.ClientRectangle.Top;
			}
		}
		if (WantButton)
		{
			int num = button.Width;
			itemRectangle.Width -= num;
			if (isMirrored)
			{
				itemRectangle.X += num;
			}
		}
		textBox.Modified = false;
		textBox.Bounds = itemRectangle;
		textBox.Visible = true;
		textBox.Text = listBox.GetItemText(listBox.SelectedItem);
		textBox.Focus();
		textBox.SelectionStart = 0;
		textBox.SelectionLength = 0;
		if (WantButton)
		{
			button.Visible = true;
			int num2 = (isMirrored ? (textBox.Left - button.Width) : textBox.Right);
			button.Location = new Point(num2, textBox.Top);
		}
		editing = true;
	}

	protected virtual void EndEditing(bool save)
	{
		if (!Editing)
		{
			return;
		}
		if (save && (textBox.Modified || TextBox.Text != listBox.Items[m_nEditedItem].ToString()))
		{
			ListBoxTextChangingEventArgs e = new ListBoxTextChangingEventArgs(textBox.Text, m_nEditedItem);
			OnItemChanging(e);
			if (!e.Cancel)
			{
				bIgnoreIndexChanging = true;
				listBox.Items[m_nEditedItem] = textBox.Text;
				bIgnoreIndexChanging = false;
			}
		}
		m_nEditedItem = -1;
		editing = false;
		textBox.Visible = false;
		button.Visible = false;
	}

	private void TextBox_LostFocus(object sender, EventArgs e)
	{
		PopupControlContainer popupControlContainer = PopupManager.ActivePopupClient as PopupControlContainer;
		if (!button.Focused && (popupControlContainer == null || !popupControlContainer.ContainsFocus))
		{
			EndEditing(save: true);
		}
	}

	private void Button_LostFocus(object sender, EventArgs e)
	{
		if (!textBox.Focused)
		{
			EndEditing(save: true);
		}
	}

	private void ListBox_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (!bIgnoreIndexChanging)
		{
			selIndexChanged = lastKnownSelIndex != ListBox.SelectedIndex;
			lastKnownSelIndex = ListBox.SelectedIndex;
			EndEditing(save: true);
		}
	}

	private void Button_Click(object sender, EventArgs e)
	{
		OnButtonClick(EventArgs.Empty);
	}

	private void HandleListItemDraw(object sender, ListItemDrawEventArgs e)
	{
		OnListItemDraw(e);
	}

	protected virtual void OnListItemDraw(ListItemDrawEventArgs e)
	{
		if (this.ListItemDraw != null)
		{
			this.ListItemDraw(this, e);
		}
	}

	protected virtual void OnItemChanging(ListBoxTextChangingEventArgs e)
	{
		if (this.ItemChanging != null)
		{
			this.ItemChanging(this, e);
		}
	}

	[DocumentationExclude]
	protected bool RaiseBeforeListItemEdit()
	{
		return OnBeforeListItemEdit(new CancelEventArgs());
	}

	protected virtual bool OnBeforeListItemEdit(CancelEventArgs e)
	{
		if (this.BeforeListItemEdit != null)
		{
			this.BeforeListItemEdit(this, e);
		}
		return e.Cancel;
	}

	protected virtual void OnButtonClick(EventArgs e)
	{
		EndEditing(save: true);
		if (this.ButtonClick != null)
		{
			this.ButtonClick(this, e);
		}
	}

	private bool GetIsMirrored()
	{
		return RightToLeft.Yes == base.RightToLeft;
	}
}
