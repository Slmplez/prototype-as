using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class GenericNewDlg : Form, IDontCallKillFocus, IDontCallSetFocus, IAmACustomizationForm
{
	private Label nameLabel;

	private TextBox textBox1;

	private Button OK;

	private Button cancel;

	private Container components;

	public string NameLabel
	{
		get
		{
			return nameLabel.Text;
		}
		set
		{
			nameLabel.Text = value;
		}
	}

	public string OKButtonLabel
	{
		get
		{
			return OK.Text;
		}
		set
		{
			OK.Text = value;
		}
	}

	public string CancelButtonLabel
	{
		get
		{
			return cancel.Text;
		}
		set
		{
			cancel.Text = value;
		}
	}

	public string NewName
	{
		get
		{
			return textBox1.Text;
		}
		set
		{
			textBox1.Text = value;
		}
	}

	public GenericNewDlg()
	{
		InitializeComponent();
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
		this.textBox1 = new System.Windows.Forms.TextBox();
		this.OK = new System.Windows.Forms.Button();
		this.nameLabel = new System.Windows.Forms.Label();
		this.cancel = new System.Windows.Forms.Button();
		base.SuspendLayout();
		this.textBox1.Location = new System.Drawing.Point(8, 40);
		this.textBox1.Name = "textBox1";
		this.textBox1.Size = new System.Drawing.Size(272, 20);
		this.textBox1.TabIndex = 0;
		this.textBox1.Text = "";
		this.OK.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.OK.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.OK.ImeMode = System.Windows.Forms.ImeMode.NoControl;
		this.OK.Location = new System.Drawing.Point(128, 64);
		this.OK.Name = "OK";
		this.OK.Size = new System.Drawing.Size(72, 24);
		this.OK.TabIndex = 1;
		this.OK.Text = "&OK";
		this.OK.Click += new System.EventHandler(OK_Click);
		this.nameLabel.ImeMode = System.Windows.Forms.ImeMode.NoControl;
		this.nameLabel.Location = new System.Drawing.Point(8, 16);
		this.nameLabel.Name = "nameLabel";
		this.nameLabel.Size = new System.Drawing.Size(272, 16);
		this.nameLabel.TabIndex = 0;
		this.nameLabel.Text = "Name:";
		this.cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.cancel.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.cancel.ImeMode = System.Windows.Forms.ImeMode.NoControl;
		this.cancel.Location = new System.Drawing.Point(208, 64);
		this.cancel.Name = "cancel";
		this.cancel.Size = new System.Drawing.Size(72, 24);
		this.cancel.TabIndex = 2;
		this.cancel.Text = "&Cancel";
		this.cancel.Click += new System.EventHandler(cancel_Click);
		base.AcceptButton = this.OK;
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.CancelButton = this.cancel;
		base.ClientSize = new System.Drawing.Size(292, 101);
		base.Controls.AddRange(new System.Windows.Forms.Control[4] { this.cancel, this.OK, this.textBox1, this.nameLabel });
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "GenericNewDlg";
		base.ShowInTaskbar = false;
		base.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "New Item Name";
		base.ResumeLayout(false);
	}

	private void OK_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.OK;
		Close();
	}

	private void cancel_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.Cancel;
		Close();
	}
}
