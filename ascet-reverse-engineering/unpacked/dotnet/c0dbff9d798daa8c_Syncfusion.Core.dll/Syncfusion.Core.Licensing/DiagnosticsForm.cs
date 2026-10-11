using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Core.Licensing;

public class DiagnosticsForm : Form
{
	private TextBox txtView;

	private Button btnOk;

	private Button btnCopy;

	private Container components;

	public DiagnosticsForm(string displayText, Form parent)
	{
		InitializeComponent();
		base.Icon = parent.Icon;
		Text = parent.Text;
		txtView.Text = displayText;
		base.AcceptButton = btnOk;
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
		this.txtView = new System.Windows.Forms.TextBox();
		this.btnOk = new System.Windows.Forms.Button();
		this.btnCopy = new System.Windows.Forms.Button();
		base.SuspendLayout();
		this.txtView.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.txtView.BackColor = System.Drawing.SystemColors.Info;
		this.txtView.Location = new System.Drawing.Point(16, 8);
		this.txtView.Multiline = true;
		this.txtView.Name = "txtView";
		this.txtView.ReadOnly = true;
		this.txtView.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
		this.txtView.Size = new System.Drawing.Size(464, 168);
		this.txtView.TabIndex = 2;
		this.txtView.Text = "";
		this.btnOk.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnOk.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
		this.btnOk.Location = new System.Drawing.Point(352, 184);
		this.btnOk.Name = "btnOk";
		this.btnOk.Size = new System.Drawing.Size(128, 32);
		this.btnOk.TabIndex = 0;
		this.btnOk.Text = "&OK";
		this.btnOk.Click += new System.EventHandler(btnOk_Click);
		this.btnCopy.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.btnCopy.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
		this.btnCopy.Location = new System.Drawing.Point(216, 184);
		this.btnCopy.Name = "btnCopy";
		this.btnCopy.Size = new System.Drawing.Size(128, 32);
		this.btnCopy.TabIndex = 1;
		this.btnCopy.Text = "&Copy to Clipboard";
		this.btnCopy.Click += new System.EventHandler(btnCopy_Click);
		this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
		base.ClientSize = new System.Drawing.Size(488, 222);
		base.Controls.Add(this.btnCopy);
		base.Controls.Add(this.btnOk);
		base.Controls.Add(this.txtView);
		base.Name = "Diagnostics";
		base.ResumeLayout(false);
	}

	private void btnCopy_Click(object sender, EventArgs e)
	{
		string dataObject = txtView.Text;
		Clipboard.SetDataObject(dataObject);
	}

	private void btnOk_Click(object sender, EventArgs e)
	{
		Close();
	}
}
