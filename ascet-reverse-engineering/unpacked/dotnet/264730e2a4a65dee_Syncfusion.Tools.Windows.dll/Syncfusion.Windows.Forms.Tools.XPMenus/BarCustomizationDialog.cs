using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class BarCustomizationDialog : Form, IDontCallKillFocus, IDontCallSetFocus, IAmACustomizationForm
{
	private CustomizationPanel custPanel;

	private BarManager customizingBarManager;

	private IDesignerHost designerHost;

	private IContainer components;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			_ = Environment.OSVersion.Version;
			createParams.ExStyle |= 128;
			if (Environment.OSVersion.Platform != PlatformID.Win32NT || Environment.OSVersion.Version.Major > 5)
			{
				createParams.ExStyle |= 134217728;
			}
			return createParams;
		}
	}

	public IDesignerHost DesignerHost
	{
		set
		{
			designerHost = value;
			custPanel.DesignerHost = value;
		}
	}

	public BarCustomizationDialog(BarManager manager)
	{
		customizingBarManager = manager;
		AllowDrop = true;
		InitializeComponent();
		custPanel.InitCustomizationPanel(this, customizingBarManager);
	}

	public void SetCustomizationPanel(CustomizationPanel customizationPanel)
	{
		if (customizationPanel != null)
		{
			SuspendLayout();
			if (custPanel != null)
			{
				base.Controls.Remove(custPanel);
				custPanel.Dispose();
			}
			custPanel = customizationPanel;
			InitCustPanelProperties();
			base.Controls.Add(custPanel);
			ResumeLayout(performLayout: false);
			custPanel.InitCustomizationPanel(this, customizingBarManager);
		}
	}

	private void InitCustPanelProperties()
	{
		custPanel.SuspendLayout();
		custPanel.Name = "custPanel";
		custPanel.TabIndex = 0;
		custPanel.ResumeLayout(performLayout: true);
	}

	protected override void OnClosing(CancelEventArgs e)
	{
		custPanel.OnDialogClosing();
		e.Cancel = true;
		Hide();
		customizingBarManager.OnCustomizationDone(EventArgs.Empty);
		if (!customizingBarManager.DesignMode)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetActiveWindow(customizingBarManager.Form.Handle);
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.GetActiveWindow();
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
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.Tools.XPMenus.BarCustomizationDialog));
		this.custPanel = new Syncfusion.Windows.Forms.Tools.XPMenus.CustomizationPanel();
		base.SuspendLayout();
		this.custPanel.AccessibleDescription = resourceManager.GetString("custPanel.AccessibleDescription");
		this.custPanel.AccessibleName = resourceManager.GetString("custPanel.AccessibleName");
		this.custPanel.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("custPanel.Anchor");
		this.custPanel.AutoScroll = (bool)resourceManager.GetObject("custPanel.AutoScroll");
		this.custPanel.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("custPanel.AutoScrollMargin");
		this.custPanel.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("custPanel.AutoScrollMinSize");
		this.custPanel.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("custPanel.BackgroundImage");
		this.custPanel.Dock = (System.Windows.Forms.DockStyle)resourceManager.GetObject("custPanel.Dock");
		this.custPanel.Enabled = (bool)resourceManager.GetObject("custPanel.Enabled");
		this.custPanel.Font = (System.Drawing.Font)resourceManager.GetObject("custPanel.Font");
		this.custPanel.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("custPanel.ImeMode");
		this.custPanel.Location = (System.Drawing.Point)resourceManager.GetObject("custPanel.Location");
		this.custPanel.Name = "custPanel";
		this.custPanel.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("custPanel.RightToLeft");
		this.custPanel.Size = (System.Drawing.Size)resourceManager.GetObject("custPanel.Size");
		this.custPanel.TabIndex = (int)resourceManager.GetObject("custPanel.TabIndex");
		this.custPanel.Visible = (bool)resourceManager.GetObject("custPanel.Visible");
		base.AccessibleDescription = resourceManager.GetString("$this.AccessibleDescription");
		base.AccessibleName = resourceManager.GetString("$this.AccessibleName");
		this.AutoScaleBaseSize = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScaleBaseSize");
		this.AutoScroll = (bool)resourceManager.GetObject("$this.AutoScroll");
		base.AutoScrollMargin = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScrollMargin");
		base.AutoScrollMinSize = (System.Drawing.Size)resourceManager.GetObject("$this.AutoScrollMinSize");
		this.BackgroundImage = (System.Drawing.Image)resourceManager.GetObject("$this.BackgroundImage");
		base.ClientSize = (System.Drawing.Size)resourceManager.GetObject("$this.ClientSize");
		base.Controls.Add(this.custPanel);
		base.Enabled = (bool)resourceManager.GetObject("$this.Enabled");
		this.Font = (System.Drawing.Font)resourceManager.GetObject("$this.Font");
		base.Icon = (System.Drawing.Icon)resourceManager.GetObject("$this.Icon");
		base.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("$this.ImeMode");
		base.Location = (System.Drawing.Point)resourceManager.GetObject("$this.Location");
		base.MaximizeBox = false;
		this.MaximumSize = (System.Drawing.Size)resourceManager.GetObject("$this.MaximumSize");
		base.MinimizeBox = false;
		this.MinimumSize = (System.Drawing.Size)resourceManager.GetObject("$this.MinimumSize");
		base.Name = "BarCustomizationDialog";
		this.RightToLeft = (System.Windows.Forms.RightToLeft)resourceManager.GetObject("$this.RightToLeft");
		base.ShowInTaskbar = false;
		base.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
		base.StartPosition = (System.Windows.Forms.FormStartPosition)resourceManager.GetObject("$this.StartPosition");
		this.Text = resourceManager.GetString("$this.Text");
		base.Load += new System.EventHandler(BarCustomizationForm_Load);
		base.Activated += new System.EventHandler(BarCustomizationDialog_Activated);
		base.Deactivate += new System.EventHandler(BarCustomizationDialog_Deactivate);
		base.ResumeLayout(false);
	}

	private void BarCustomizationForm_Load(object sender, EventArgs e)
	{
		custPanel.OnDialogLoad();
	}

	protected override void OnDragLeave(EventArgs e)
	{
		if (customizingBarManager != null)
		{
			customizingBarManager.CustomDrag = customizingBarManager.CustomizingItem != null;
		}
		base.OnDragLeave(e);
	}

	protected override void OnDragEnter(DragEventArgs drgevent)
	{
		if (customizingBarManager != null)
		{
			customizingBarManager.CustomDrag = false;
		}
		base.OnDragEnter(drgevent);
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		custPanel.OnDialogVisibiltyChanged();
	}

	private void BarCustomizationDialog_Activated(object sender, EventArgs e)
	{
		custPanel.OnDialogActivated();
	}

	private void BarCustomizationDialog_Deactivate(object sender, EventArgs e)
	{
		custPanel.OnDialogDeactivated();
	}

	public void RemoveReferencesToItem(BarItem item)
	{
		custPanel.RemoveReferencesToItem(item);
	}

	public void RemoveReferencesToItem(Bar bar)
	{
		custPanel.RemoveReferencesToItem(bar);
	}
}
