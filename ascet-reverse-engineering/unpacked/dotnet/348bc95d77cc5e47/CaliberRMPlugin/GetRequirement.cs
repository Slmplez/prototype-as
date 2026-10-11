using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace CaliberRMPlugin;

public class GetRequirement : Form
{
	private IContainer components = null;

	private Button btnOK;

	private Button btnCancel;

	private GroupBox groupBox1;

	private Label label1;

	public TextBox txtRQID;

	public GetRequirement()
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
		this.btnOK = new System.Windows.Forms.Button();
		this.btnCancel = new System.Windows.Forms.Button();
		this.groupBox1 = new System.Windows.Forms.GroupBox();
		this.label1 = new System.Windows.Forms.Label();
		this.txtRQID = new System.Windows.Forms.TextBox();
		this.groupBox1.SuspendLayout();
		base.SuspendLayout();
		this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.btnOK.Location = new System.Drawing.Point(61, 94);
		this.btnOK.Name = "btnOK";
		this.btnOK.Size = new System.Drawing.Size(75, 23);
		this.btnOK.TabIndex = 2;
		this.btnOK.Text = "&OK";
		this.btnOK.UseVisualStyleBackColor = true;
		this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.btnCancel.Location = new System.Drawing.Point(157, 94);
		this.btnCancel.Name = "btnCancel";
		this.btnCancel.Size = new System.Drawing.Size(75, 23);
		this.btnCancel.TabIndex = 3;
		this.btnCancel.Text = "&Cancel";
		this.btnCancel.UseVisualStyleBackColor = true;
		this.groupBox1.Controls.Add(this.label1);
		this.groupBox1.Controls.Add(this.txtRQID);
		this.groupBox1.Location = new System.Drawing.Point(12, 12);
		this.groupBox1.Name = "groupBox1";
		this.groupBox1.Size = new System.Drawing.Size(268, 62);
		this.groupBox1.TabIndex = 1;
		this.groupBox1.TabStop = false;
		this.groupBox1.Text = "CaliberRM";
		this.label1.AutoSize = true;
		this.label1.Location = new System.Drawing.Point(9, 26);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(61, 13);
		this.label1.TabIndex = 1;
		this.label1.Text = "ID Number:";
		this.txtRQID.Location = new System.Drawing.Point(76, 23);
		this.txtRQID.Name = "txtRQID";
		this.txtRQID.Size = new System.Drawing.Size(133, 20);
		this.txtRQID.TabIndex = 1;
		base.AcceptButton = this.btnOK;
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.CancelButton = this.btnCancel;
		base.ClientSize = new System.Drawing.Size(292, 140);
		base.Controls.Add(this.groupBox1);
		base.Controls.Add(this.btnCancel);
		base.Controls.Add(this.btnOK);
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.Name = "GetRequirement";
		this.Text = "Get requirement ...";
		this.groupBox1.ResumeLayout(false);
		this.groupBox1.PerformLayout();
		base.ResumeLayout(false);
	}
}
