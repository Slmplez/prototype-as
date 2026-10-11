using System;
using System.ComponentModel;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class MdiWindowDialog : Form
{
	public ListBox ItemList;

	private Form active;

	public Button CancelBtn;

	public Button OkBtn;

	private Container components;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Form ActiveChildForm => active;

	public MdiWindowDialog()
	{
		InitializeComponent();
		InitLocalizedResources();
	}

	protected virtual void InitLocalizedResources()
	{
		OkBtn.Text = SR.GetString("MdiListActivateButton");
		CancelBtn.Text = SR.GetString("MdiListCancelButton");
	}

	public void SetItems(Form active, Form[] allChildForms)
	{
		int selectedIndex = -1;
		foreach (Form form in allChildForms)
		{
			int num = ItemList.Items.Add(new ListItem(form));
			if (form == active)
			{
				selectedIndex = num;
			}
		}
		this.active = active;
		ItemList.SelectedIndex = selectedIndex;
	}

	private void ItemList_doubleClick(object source, EventArgs e)
	{
		OkBtn.PerformClick();
	}

	private void ItemList_selectedIndexChanged(object source, EventArgs e)
	{
		ListItem listItem = (ListItem)ItemList.SelectedItem;
		if (listItem != null)
		{
			active = listItem.Form;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.MdiWindowDialog));
		this.ItemList = new System.Windows.Forms.ListBox();
		this.CancelBtn = new System.Windows.Forms.Button();
		this.OkBtn = new System.Windows.Forms.Button();
		base.SuspendLayout();
		this.ItemList.AccessibleDescription = (string)resourceManager.GetObject("itemList.AccessibleDescription");
		this.ItemList.AccessibleName = (string)resourceManager.GetObject("itemList.AccessibleName");
		this.ItemList.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("itemList.Anchor");
		this.ItemList.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("itemList.BackgroundImage");
		this.ItemList.ColumnWidth = (int)resourceManager.GetObject("itemList.ColumnWidth");
		this.ItemList.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("itemList.Dock");
		this.ItemList.Enabled = (bool)resourceManager.GetObject("itemList.Enabled");
		this.ItemList.Font = (System.Drawing.Font)resourceManager.GetObject("itemList.Font");
		this.ItemList.HorizontalExtent = (int)resourceManager.GetObject("itemList.HorizontalExtent");
		this.ItemList.HorizontalScrollbar = (bool)resourceManager.GetObject("itemList.HorizontalScrollbar");
		this.ItemList.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("itemList.ImeMode");
		this.ItemList.IntegralHeight = (bool)resourceManager.GetObject("itemList.IntegralHeight");
		this.ItemList.ItemHeight = (int)resourceManager.GetObject("itemList.ItemHeight");
		this.ItemList.Location = (System.Drawing.Point)resourceManager.GetObject("itemList.Location");
		this.ItemList.Name = "itemList";
		this.ItemList.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("itemList.RightToLeft");
		this.ItemList.ScrollAlwaysVisible = (bool)resourceManager.GetObject("itemList.ScrollAlwaysVisible");
		this.ItemList.Size = (System.Drawing.Size)resourceManager.GetObject("itemList.Size");
		this.ItemList.TabIndex = (int)resourceManager.GetObject("itemList.TabIndex");
		this.ItemList.Visible = (bool)resourceManager.GetObject("itemList.Visible");
		this.ItemList.DoubleClick += new System.EventHandler(ItemList_doubleClick);
		this.ItemList.SelectedIndexChanged += new System.EventHandler(ItemList_selectedIndexChanged);
		this.CancelBtn.AccessibleDescription = (string)resourceManager.GetObject("CancelBtn.AccessibleDescription");
		this.CancelBtn.AccessibleName = (string)resourceManager.GetObject("CancelBtn.AccessibleName");
		this.CancelBtn.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("CancelBtn.Anchor");
		this.CancelBtn.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("CancelBtn.BackgroundImage");
		this.CancelBtn.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.CancelBtn.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("CancelBtn.Dock");
		this.CancelBtn.Enabled = (bool)resourceManager.GetObject("CancelBtn.Enabled");
		this.CancelBtn.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("CancelBtn.FlatStyle");
		this.CancelBtn.Font = (System.Drawing.Font)resourceManager.GetObject("CancelBtn.Font");
		this.CancelBtn.Image = (System.Drawing.Image)resourceManager.GetObject("CancelBtn.Image");
		this.CancelBtn.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("CancelBtn.ImageAlign");
		this.CancelBtn.ImageIndex = (int)resourceManager.GetObject("CancelBtn.ImageIndex");
		this.CancelBtn.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("CancelBtn.ImeMode");
		this.CancelBtn.Location = (System.Drawing.Point)resourceManager.GetObject("CancelBtn.Location");
		this.CancelBtn.Name = "CancelBtn";
		this.CancelBtn.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("CancelBtn.RightToLeft");
		this.CancelBtn.Size = (System.Drawing.Size)resourceManager.GetObject("CancelBtn.Size");
		this.CancelBtn.TabIndex = (int)resourceManager.GetObject("CancelBtn.TabIndex");
		this.CancelBtn.Text = resourceManager.GetString("CancelBtn.Text");
		this.CancelBtn.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("CancelBtn.TextAlign");
		this.CancelBtn.Visible = (bool)resourceManager.GetObject("CancelBtn.Visible");
		this.OkBtn.AccessibleDescription = (string)resourceManager.GetObject("OkBtn.AccessibleDescription");
		this.OkBtn.AccessibleName = (string)resourceManager.GetObject("OkBtn.AccessibleName");
		this.OkBtn.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("OkBtn.Anchor");
		this.OkBtn.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("OkBtn.BackgroundImage");
		this.OkBtn.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.OkBtn.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("OkBtn.Dock");
		this.OkBtn.Enabled = (bool)resourceManager.GetObject("OkBtn.Enabled");
		this.OkBtn.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("OkBtn.FlatStyle");
		this.OkBtn.Font = (System.Drawing.Font)resourceManager.GetObject("OkBtn.Font");
		this.OkBtn.Image = (System.Drawing.Image)resourceManager.GetObject("OkBtn.Image");
		this.OkBtn.ImageAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("OkBtn.ImageAlign");
		this.OkBtn.ImageIndex = (int)resourceManager.GetObject("OkBtn.ImageIndex");
		this.OkBtn.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("OkBtn.ImeMode");
		this.OkBtn.Location = (System.Drawing.Point)resourceManager.GetObject("OkBtn.Location");
		this.OkBtn.Name = "OkBtn";
		this.OkBtn.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("OkBtn.RightToLeft");
		this.OkBtn.Size = (System.Drawing.Size)resourceManager.GetObject("OkBtn.Size");
		this.OkBtn.TabIndex = (int)resourceManager.GetObject("OkBtn.TabIndex");
		this.OkBtn.Text = resourceManager.GetString("OkBtn.Text");
		this.OkBtn.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("OkBtn.TextAlign");
		this.OkBtn.Visible = (bool)resourceManager.GetObject("OkBtn.Visible");
		base.AcceptButton = this.OkBtn;
		base.AccessibleDescription = (string)resourceManager.GetObject("$this.AccessibleDescription");
		base.AccessibleName = (string)resourceManager.GetObject("$this.AccessibleName");
		this.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("$this.Anchor");
		this.AutoScaleBaseSize = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScaleBaseSize");
		this.AutoScroll = (bool)resourceManager.GetObject("$this.AutoScroll");
		base.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScrollMargin");
		base.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScrollMinSize");
		this.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("$this.BackgroundImage");
		base.CancelButton = this.CancelBtn;
		base.ClientSize = (System.Drawing.Size)resourceManager.GetObject("$this.ClientSize");
		base.Controls.AddRange(new System.Windows.Forms.Control[3] { this.OkBtn, this.CancelBtn, this.ItemList });
		this.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("$this.Dock");
		base.Enabled = (bool)resourceManager.GetObject("$this.Enabled");
		this.Font = (System.Drawing.Font)resourceManager.GetObject("$this.Font");
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
		base.Icon = (System.Drawing.Icon)resourceManager.GetObject("$this.Icon");
		base.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("$this.ImeMode");
		base.Location = (System.Drawing.Point)resourceManager.GetObject("$this.Location");
		this.MaximumSize = (System.Drawing.Size)resourceManager.GetObject("$this.MaximumSize");
		this.MinimumSize = (System.Drawing.Size)resourceManager.GetObject("$this.MinimumSize");
		base.Name = "MdiWindowDialog";
		this.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("$this.RightToLeft");
		base.StartPosition = (System.Windows.Forms.FormStartPosition)resourceManager.GetObject("$this.StartPosition");
		this.Text = resourceManager.GetString("$this.Text");
		base.Visible = (bool)resourceManager.GetObject("$this.Visible");
		base.ResumeLayout(false);
	}
}
