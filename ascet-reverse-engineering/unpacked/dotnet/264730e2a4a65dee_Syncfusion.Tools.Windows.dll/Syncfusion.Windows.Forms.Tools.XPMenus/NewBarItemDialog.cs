using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class NewBarItemDialog : Form
{
	private Label label1;

	private Label label3;

	public ComboBox typeBox;

	private TextBox nameBox;

	private Button button1;

	private Button button2;

	private Container components;

	public string NewName
	{
		get
		{
			return nameBox.Text;
		}
		set
		{
			nameBox.Text = value;
		}
	}

	public int Type
	{
		get
		{
			TypeBoxItem typeBoxItem = (TypeBoxItem)typeBox.SelectedItem;
			return (int)typeBoxItem.Type;
		}
	}

	public NewBarItemDialog()
	{
		InitializeComponent();
		InitializeTypeBoxItems();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeTypeBoxItems()
	{
		typeBox.Items.Add(new TypeBoxItem("BarItem", ItemType.BarItem));
		typeBox.Items.Add(new TypeBoxItem("ParentBarItem", ItemType.ParentBarItem));
		typeBox.Items.Add(new TypeBoxItem("DropDownBarItem", ItemType.DropDownBarItem));
		typeBox.Items.Add(new TypeBoxItem("ComboBoxBarItem", ItemType.ComboBoxBarItem));
		typeBox.Items.Add(new TypeBoxItem("ListBarItem", ItemType.ListBarItem));
		typeBox.Items.Add(new TypeBoxItem("StaticBarItem", ItemType.StaticBarItem));
	}

	private void InitializeComponent()
	{
		this.label1 = new System.Windows.Forms.Label();
		this.typeBox = new System.Windows.Forms.ComboBox();
		this.label3 = new System.Windows.Forms.Label();
		this.button1 = new System.Windows.Forms.Button();
		this.button2 = new System.Windows.Forms.Button();
		this.nameBox = new System.Windows.Forms.TextBox();
		base.SuspendLayout();
		this.label1.Location = new System.Drawing.Point(8, 8);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(48, 16);
		this.label1.TabIndex = 0;
		this.label1.Text = "Type:";
		this.typeBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this.typeBox.DropDownWidth = 136;
		this.typeBox.Location = new System.Drawing.Point(88, 8);
		this.typeBox.Name = "typeBox";
		this.typeBox.Size = new System.Drawing.Size(136, 21);
		this.typeBox.TabIndex = 1;
		this.label3.Location = new System.Drawing.Point(8, 40);
		this.label3.Name = "label3";
		this.label3.Size = new System.Drawing.Size(72, 16);
		this.label3.TabIndex = 0;
		this.label3.Text = "Name:";
		this.button1.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.button1.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.button1.Location = new System.Drawing.Point(56, 80);
		this.button1.Name = "button1";
		this.button1.Size = new System.Drawing.Size(80, 24);
		this.button1.TabIndex = 3;
		this.button1.Text = "&OK";
		this.button2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.button2.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.button2.Location = new System.Drawing.Point(152, 80);
		this.button2.Name = "button2";
		this.button2.Size = new System.Drawing.Size(72, 24);
		this.button2.TabIndex = 4;
		this.button2.Text = "&Cancel";
		this.nameBox.Location = new System.Drawing.Point(88, 40);
		this.nameBox.Name = "nameBox";
		this.nameBox.Size = new System.Drawing.Size(136, 20);
		this.nameBox.TabIndex = 2;
		this.nameBox.Text = "";
		this.nameBox.Validating += new System.ComponentModel.CancelEventHandler(nameBox_Validating);
		base.AcceptButton = this.button1;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.CancelButton = this.button2;
		base.ClientSize = new System.Drawing.Size(244, 113);
		base.Controls.AddRange(new System.Windows.Forms.Control[6] { this.button2, this.button1, this.nameBox, this.label3, this.typeBox, this.label1 });
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "NewBarItemDialog";
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "Add New BarItem";
		base.Load += new System.EventHandler(NewBarItemDialog_Load);
		base.ResumeLayout(false);
	}

	private void NewBarItemDialog_Load(object sender, EventArgs e)
	{
		typeBox.SelectedIndex = 0;
	}

	private void nameBox_Validating(object sender, CancelEventArgs e)
	{
		if (nameBox.Text == "-")
		{
			MessageBox.Show("- is not a valid Text. To create separators, right click on the BarItem in a toolbar or submenu in design time and select \"Begin Group At\" menu item in the context menu.", "XPMenus design time warning", MessageBoxButtons.OKCancel, MessageBoxIcon.Hand);
			e.Cancel = true;
			nameBox.Text = "";
		}
	}
}
