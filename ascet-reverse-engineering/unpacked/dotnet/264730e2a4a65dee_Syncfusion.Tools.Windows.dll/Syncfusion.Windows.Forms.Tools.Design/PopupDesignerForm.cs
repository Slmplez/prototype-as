using System;
using System.ComponentModel;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class PopupDesignerForm : Form
{
	internal PopupMenu popup;

	private Button toggle;

	private ImageList imageList1;

	private IContainer components;

	public PopupDesignerForm()
	{
		InitializeComponent();
		SetTopLevel(value: true);
	}

	protected override void OnClosing(CancelEventArgs e)
	{
		popup.DesignTimeForm = null;
		if (popup != null && popup.IsShowing())
		{
			if (popup.ParentBarItem.Manager != null)
			{
				popup.ParentBarItem.Manager.CustomizationDone -= Customization_Done;
			}
			popup.Hide();
		}
		e.Cancel = true;
		Hide();
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(base.GetType());
		this.toggle = new System.Windows.Forms.Button();
		this.imageList1 = new System.Windows.Forms.ImageList(this.components);
		base.SuspendLayout();
		this.toggle.AllowDrop = true;
		this.toggle.Dock = System.Windows.Forms.DockStyle.Top;
		this.toggle.ImageList = this.imageList1;
		this.toggle.Name = "toggle";
		this.toggle.Size = new System.Drawing.Size(192, 17);
		this.toggle.TabIndex = 0;
		this.toggle.Click += new System.EventHandler(toggle_Click);
		this.toggle.DragOver += new System.Windows.Forms.DragEventHandler(PopupDesigner_DragOver);
		this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
		this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
		this.imageList1.ImageStream = (System.Windows.Forms.ImageListStreamer)resourceManager.GetObject("imageList1.ImageStream");
		this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
		this.AllowDrop = true;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.CausesValidation = false;
		base.ClientSize = new System.Drawing.Size(192, 16);
		base.Controls.AddRange(new System.Windows.Forms.Control[1] { this.toggle });
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
		base.MaximizeBox = false;
		this.MaximumSize = new System.Drawing.Size(198, 38);
		base.MinimizeBox = false;
		this.MinimumSize = new System.Drawing.Size(198, 38);
		base.Name = "PopupDesignerForm";
		base.ShowInTaskbar = false;
		base.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "Popup Designer: Click Here";
		base.TopMost = true;
		base.DragOver += new System.Windows.Forms.DragEventHandler(PopupDesigner_DragOver);
		base.VisibleChanged += new System.EventHandler(PopupDesignerForm_VisibleChanged);
		base.ResumeLayout(false);
	}

	private void Customization_Done(object sender, EventArgs e)
	{
		OnClosing(new CancelEventArgs());
	}

	internal void Customize(PopupMenu popup)
	{
		popup.DesignTimeForm = this;
		this.popup = popup;
		if (this.popup.ParentBarItem.Manager != null)
		{
			this.popup.ParentBarItem.Manager.CustomizationDone += Customization_Done;
		}
		base.Location = new Point(100, 100);
		base.Visible = true;
		Show();
		TogglePopupVisibility();
	}

	private void TogglePopupVisibility()
	{
		if (popup.IsShowing())
		{
			popup.Hide();
			return;
		}
		popup.ParentBarItem.PopupClosed += PopupClosed_Event;
		SetToggleButtonImage(dropDown: false);
		popup.Show(toggle, new Point(1, toggle.Height + 1));
	}

	private void PopupClosed_Event(object sender, EventArgs e)
	{
		popup.ParentBarItem.PopupClosed -= PopupClosed_Event;
		UpdateToggleButtonImage();
	}

	private void UpdateToggleButtonImage()
	{
		if (popup.IsShowing())
		{
			SetToggleButtonImage(dropDown: false);
		}
		else
		{
			SetToggleButtonImage(dropDown: true);
		}
	}

	private void SetToggleButtonImage(bool dropDown)
	{
		if (dropDown)
		{
			toggle.ImageIndex = 1;
		}
		else
		{
			toggle.ImageIndex = 0;
		}
	}

	private void toggle_Click(object sender, EventArgs e)
	{
		TogglePopupVisibility();
	}

	private void PopupDesigner_DragOver(object sender, DragEventArgs e)
	{
		ShowPopup();
	}

	public void ShowPopup()
	{
		if (popup != null && !popup.IsShowing())
		{
			TogglePopupVisibility();
		}
	}

	public void ClosePopup()
	{
		if (popup != null && popup.IsShowing())
		{
			TogglePopupVisibility();
		}
	}

	private void PopupDesignerForm_VisibleChanged(object sender, EventArgs e)
	{
		UpdateToggleButtonImage();
	}
}
