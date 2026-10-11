using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Design;

internal class AdvancedBindingPicker : Form
{
	private ITypeDescriptorContext context;

	private AdvancedBindingObject value;

	private Container components;

	private Label label1;

	private PropertyGrid propertyGrid1;

	private CheckBox checkBox1;

	private Button button1;

	private static readonly string HELP_KEYWORD;

	public AdvancedBindingObject Value
	{
		get
		{
			return value;
		}
		set
		{
			this.value = value;
			Text = "DataGridAdvancedBindingString";
			value.ShowAll = checkBox1.CheckState == CheckState.Checked;
			propertyGrid1.SelectedObject = value;
		}
	}

	public AdvancedBindingPicker(ITypeDescriptorContext context)
	{
		this.context = context;
		base.ShowInTaskbar = false;
		InitializeComponent();
	}

	static AdvancedBindingPicker()
	{
		HELP_KEYWORD = "VS.PropertyBrowser.DataBindings.Advanced";
	}

	public void End()
	{
		propertyGrid1.SelectedObjects = null;
	}

	private void CheckBox1_CheckedChanged(object sender, EventArgs e)
	{
		Value = value;
	}

	private void OnHelpRequested(object sender, HelpEventArgs e)
	{
		IServiceProvider serviceProvider = context;
		if (serviceProvider != null)
		{
			((IHelpService)serviceProvider.GetService(typeof(IHelpService)))?.ShowHelpFromKeyword(HELP_KEYWORD);
		}
	}

	private void InitializeComponent()
	{
		System.Resources.ResourceManager resourceManager = new System.Resources.ResourceManager(typeof(Syncfusion.Windows.Forms.Design.AdvancedBindingPicker));
		this.components = new System.ComponentModel.Container();
		this.checkBox1 = new System.Windows.Forms.CheckBox();
		this.label1 = new System.Windows.Forms.Label();
		this.button1 = new System.Windows.Forms.Button();
		this.propertyGrid1 = new System.Windows.Forms.PropertyGrid();
		this.checkBox1.CheckState = System.Windows.Forms.CheckState.Checked;
		this.checkBox1.CheckedChanged += new System.EventHandler(CheckBox1_CheckedChanged);
		this.checkBox1.AccessibleDescription = (string)resourceManager.GetObject("checkBox1.AccessibleDescription");
		this.checkBox1.AccessibleName = (string)resourceManager.GetObject("checkBox1.AccessibleName");
		this.checkBox1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("checkBox1.Anchor");
		this.checkBox1.CheckAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("checkBox1.CheckAlign");
		this.checkBox1.Cursor = (System.Windows.Forms.Cursor)resourceManager.GetObject("checkBox1.Cursor");
		this.checkBox1.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("checkBox1.FlatStyle");
		this.checkBox1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("checkBox1.ImeMode");
		this.checkBox1.Location = (System.Drawing.Point)resourceManager.GetObject("checkBox1.Location");
		this.checkBox1.Size = (System.Drawing.Size)resourceManager.GetObject("checkBox1.Size");
		this.checkBox1.TabIndex = (int)resourceManager.GetObject("checkBox1.TabIndex");
		this.checkBox1.Text = "DataGridShowAllString";
		this.checkBox1.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("checkBox1.TextAlign");
		this.label1.AccessibleDescription = (string)resourceManager.GetObject("label1.AccessibleDescription");
		this.label1.AccessibleName = (string)resourceManager.GetObject("label1.AccessibleName");
		this.label1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("label1.Anchor");
		this.label1.Cursor = (System.Windows.Forms.Cursor)resourceManager.GetObject("label1.Cursor");
		this.label1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("label1.ImeMode");
		this.label1.Location = (System.Drawing.Point)resourceManager.GetObject("label1.Location");
		this.label1.Size = (System.Drawing.Size)resourceManager.GetObject("label1.Size");
		this.label1.Text = resourceManager.GetString("label1.Text");
		this.label1.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("label1.TextAlign");
		this.button1.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.button1.AccessibleDescription = (string)resourceManager.GetObject("button1.AccessibleDescription");
		this.button1.AccessibleName = (string)resourceManager.GetObject("button1.AccessibleName");
		this.button1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("button1.Anchor");
		this.button1.Cursor = (System.Windows.Forms.Cursor)resourceManager.GetObject("button1.Cursor");
		this.button1.FlatStyle = (System.Windows.Forms.FlatStyle)resourceManager.GetObject("button1.FlatStyle");
		this.button1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("button1.ImeMode");
		this.button1.Location = (System.Drawing.Point)resourceManager.GetObject("button1.Location");
		this.button1.Size = (System.Drawing.Size)resourceManager.GetObject("button1.Size");
		this.button1.TabIndex = (int)resourceManager.GetObject("button1.TabIndex");
		this.button1.Text = resourceManager.GetString("button1.Text");
		this.button1.TextAlign = (System.Drawing.ContentAlignment)resourceManager.GetObject("button1.TextAlign");
		this.propertyGrid1.PropertySort = System.Windows.Forms.PropertySort.Alphabetical;
		this.propertyGrid1.CommandsVisibleIfAvailable = false;
		this.propertyGrid1.HelpVisible = false;
		this.propertyGrid1.ToolbarVisible = false;
		this.propertyGrid1.AccessibleDescription = (string)resourceManager.GetObject("propertyGrid1.AccessibleDescription");
		this.propertyGrid1.AccessibleName = (string)resourceManager.GetObject("propertyGrid1.AccessibleName");
		this.propertyGrid1.Anchor = (System.Windows.Forms.AnchorStyles)resourceManager.GetObject("propertyGrid1.Anchor");
		this.propertyGrid1.Cursor = (System.Windows.Forms.Cursor)resourceManager.GetObject("propertyGrid1.Cursor");
		this.propertyGrid1.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("propertyGrid1.ImeMode");
		this.propertyGrid1.Location = (System.Drawing.Point)resourceManager.GetObject("propertyGrid1.Location");
		this.propertyGrid1.Size = (System.Drawing.Size)resourceManager.GetObject("propertyGrid1.Size");
		this.propertyGrid1.TabIndex = (int)resourceManager.GetObject("propertyGrid1.TabIndex");
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.AcceptButton = this.button1;
		base.CancelButton = this.button1;
		base.HelpRequested += new System.Windows.Forms.HelpEventHandler(OnHelpRequested);
		base.AccessibleDescription = (string)resourceManager.GetObject("$this.AccessibleDescription");
		base.AccessibleName = (string)resourceManager.GetObject("$this.AccessibleName");
		base.ClientSize = (System.Drawing.Size)resourceManager.GetObject("$this.ClientSize");
		base.ControlBox = false;
		this.Cursor = (System.Windows.Forms.Cursor)resourceManager.GetObject("$this.Cursor");
		base.Icon = (System.Drawing.Icon)resourceManager.GetObject("$this.Icon");
		base.ImeMode = (System.Windows.Forms.ImeMode)resourceManager.GetObject("$this.ImeMode");
		this.MinimumSize = (System.Drawing.Size)resourceManager.GetObject("$this.MinimumSize");
		base.StartPosition = (System.Windows.Forms.FormStartPosition)resourceManager.GetObject("$this.StartPosition");
		this.Text = resourceManager.GetString("$this.Text");
		System.Windows.Forms.Control[] controls = new System.Windows.Forms.Control[4] { this.label1, this.propertyGrid1, this.checkBox1, this.button1 };
		base.Controls.AddRange(controls);
	}
}
