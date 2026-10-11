using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using CaliberRMPlugin.Properties;

namespace CaliberRMPlugin;

public class LogonDialog : Form
{
	private static Settings mSettings;

	private IContainer components = null;

	private Button btOK;

	private Button btCancel;

	private Label label1;

	private Label label2;

	private Label label3;

	private TextBox tbPassword;

	public ComboBox cbServer;

	public TextBox tbUser;

	public string Server => cbServer.Text;

	public string User => tbUser.Text;

	public string Password => tbPassword.Text;

	public LogonDialog()
	{
		InitializeComponent();
		if (mSettings == null)
		{
			mSettings = new Settings();
		}
		if (mSettings.CaliberRMServer == null)
		{
			mSettings.CaliberRMServer = new AutoCompleteStringCollection();
		}
		if (mSettings.CaliberRMUser == null)
		{
			mSettings.CaliberRMUser = new AutoCompleteStringCollection();
		}
	}

	~LogonDialog()
	{
		mSettings.Save();
	}

	private void btOK_Click(object sender, EventArgs e)
	{
		if (!mSettings.CaliberRMServer.Contains(cbServer.Text))
		{
			mSettings.CaliberRMServer.Add(cbServer.Text);
		}
		if (!mSettings.CaliberRMUser.Contains(tbUser.Text))
		{
			mSettings.CaliberRMUser.Add(tbUser.Text);
		}
		mSettings.LastUser = tbUser.Text;
		mSettings.LastServer = cbServer.Text;
	}

	private void LogonDialog_Load(object sender, EventArgs e)
	{
		cbServer.AutoCompleteSource = AutoCompleteSource.CustomSource;
		cbServer.AutoCompleteCustomSource = mSettings.CaliberRMServer;
		foreach (string item in cbServer.AutoCompleteCustomSource)
		{
			cbServer.Items.Add(item);
		}
		tbUser.AutoCompleteSource = AutoCompleteSource.CustomSource;
		tbUser.AutoCompleteCustomSource = mSettings.CaliberRMUser;
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
		System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CaliberRMPlugin.LogonDialog));
		this.btOK = new System.Windows.Forms.Button();
		this.btCancel = new System.Windows.Forms.Button();
		this.label1 = new System.Windows.Forms.Label();
		this.label2 = new System.Windows.Forms.Label();
		this.label3 = new System.Windows.Forms.Label();
		this.tbPassword = new System.Windows.Forms.TextBox();
		this.tbUser = new System.Windows.Forms.TextBox();
		this.cbServer = new System.Windows.Forms.ComboBox();
		base.SuspendLayout();
		this.btOK.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.btOK.Location = new System.Drawing.Point(88, 163);
		this.btOK.Name = "btOK";
		this.btOK.Size = new System.Drawing.Size(76, 30);
		this.btOK.TabIndex = 4;
		this.btOK.Text = "&OK";
		this.btOK.UseVisualStyleBackColor = true;
		this.btOK.Click += new System.EventHandler(btOK_Click);
		this.btCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.btCancel.Location = new System.Drawing.Point(197, 163);
		this.btCancel.Name = "btCancel";
		this.btCancel.Size = new System.Drawing.Size(76, 30);
		this.btCancel.TabIndex = 5;
		this.btCancel.Text = "&Cancel";
		this.btCancel.UseVisualStyleBackColor = true;
		this.label1.AutoSize = true;
		this.label1.Location = new System.Drawing.Point(80, 37);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(38, 13);
		this.label1.TabIndex = 3;
		this.label1.Text = "Server";
		this.label2.AutoSize = true;
		this.label2.Location = new System.Drawing.Point(89, 75);
		this.label2.Name = "label2";
		this.label2.Size = new System.Drawing.Size(29, 13);
		this.label2.TabIndex = 3;
		this.label2.Text = "User";
		this.label3.AutoSize = true;
		this.label3.Location = new System.Drawing.Point(65, 112);
		this.label3.Name = "label3";
		this.label3.Size = new System.Drawing.Size(53, 13);
		this.label3.TabIndex = 3;
		this.label3.Text = "Password";
		this.tbPassword.Location = new System.Drawing.Point(144, 109);
		this.tbPassword.Name = "tbPassword";
		this.tbPassword.PasswordChar = '*';
		this.tbPassword.Size = new System.Drawing.Size(154, 20);
		this.tbPassword.TabIndex = 3;
		this.tbPassword.WordWrap = false;
		this.tbUser.AutoCompleteCustomSource.AddRange(new string[1] { "adminstrator" });
		this.tbUser.CausesValidation = false;
		this.tbUser.Location = new System.Drawing.Point(144, 72);
		this.tbUser.Name = "tbUser";
		this.tbUser.Size = new System.Drawing.Size(154, 20);
		this.tbUser.TabIndex = 2;
		this.cbServer.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
		this.cbServer.CausesValidation = false;
		this.cbServer.FormattingEnabled = true;
		this.cbServer.Location = new System.Drawing.Point(144, 34);
		this.cbServer.Name = "cbServer";
		this.cbServer.Size = new System.Drawing.Size(154, 21);
		this.cbServer.TabIndex = 1;
		base.AcceptButton = this.btOK;
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.CancelButton = this.btCancel;
		base.ClientSize = new System.Drawing.Size(363, 226);
		base.Controls.Add(this.tbPassword);
		base.Controls.Add(this.tbUser);
		base.Controls.Add(this.label3);
		base.Controls.Add(this.label2);
		base.Controls.Add(this.label1);
		base.Controls.Add(this.cbServer);
		base.Controls.Add(this.btCancel);
		base.Controls.Add(this.btOK);
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
		base.Icon = (System.Drawing.Icon)resources.GetObject("$this.Icon");
		this.MaximumSize = new System.Drawing.Size(369, 250);
		this.MinimumSize = new System.Drawing.Size(369, 250);
		base.Name = "LogonDialog";
		base.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
		this.Text = "Logon Dialog";
		base.Load += new System.EventHandler(LogonDialog_Load);
		base.ResumeLayout(false);
		base.PerformLayout();
	}
}
