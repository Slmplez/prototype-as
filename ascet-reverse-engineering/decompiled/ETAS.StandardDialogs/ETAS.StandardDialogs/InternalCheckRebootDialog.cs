using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using ETAS.StandardDialogs.Resources;

namespace ETAS.StandardDialogs;

internal class InternalCheckRebootDialog : Form
{
	private EApplicationDialogType m_ApplicationDialogType;

	private ELanguageType m_Language;

	private string m_AppTitle;

	private string m_msgboxText;

	private IContainer components;

	private Label m_RebootText;

	private Button m_quitButton;

	private PictureBox pictureBox1;

	public ELanguageType Language
	{
		get
		{
			return m_Language;
		}
		set
		{
			m_Language = value;
		}
	}

	public EApplicationDialogType DialogType
	{
		get
		{
			return m_ApplicationDialogType;
		}
		set
		{
			m_ApplicationDialogType = value;
			switch (m_ApplicationDialogType)
			{
			case EApplicationDialogType.INCA:
			case EApplicationDialogType.LABCAR:
			case EApplicationDialogType.ASCET:
			case EApplicationDialogType.INTECRIO:
			case EApplicationDialogType.MDA:
			case EApplicationDialogType.RTA:
				m_AppTitle = m_ApplicationDialogType.ToString();
				break;
			case EApplicationDialogType.DTB:
				m_AppTitle = "Diagnostic Tree Builder";
				break;
			case EApplicationDialogType.EHOOKS_SE:
			case EApplicationDialogType.EHOOKS_MCD:
				m_AppTitle = "EHOOKS";
				break;
			case EApplicationDialogType.EE:
				m_AppTitle = "Experiment Environment";
				break;
			default:
				throw new ArgumentOutOfRangeException();
			}
		}
	}

	public string AppTitle
	{
		get
		{
			return m_AppTitle;
		}
		set
		{
			m_AppTitle = value;
		}
	}

	public InternalCheckRebootDialog(EApplicationDialogType applicationDialogType)
	{
		InitializeComponent();
		m_ApplicationDialogType = applicationDialogType;
		float num = 96f / CreateGraphics().DpiX;
		foreach (Control control in base.Controls)
		{
			control.Font = new Font(control.Font.FontFamily, num * control.Font.Size);
		}
		Application.EnableVisualStyles();
	}

	private void LoadDialogScreen()
	{
		InitLanguages(Language);
		m_RebootText.Text = string.Format(CultureInfo.InvariantCulture, m_msgboxText, new object[1] { m_AppTitle });
	}

	private void InitLanguages(ELanguageType SelectedLanguage)
	{
		switch (m_Language)
		{
		case ELanguageType.Chinese:
			m_msgboxText = StringResource.RebootMessage_China;
			Text = StringResource.RebootTitle_China;
			m_quitButton.Text = StringResource.CancelButton_China;
			break;
		case ELanguageType.French:
			m_msgboxText = StringResource.RebootMessage_France;
			Text = StringResource.RebootTitle_France;
			m_quitButton.Text = StringResource.CancelButton_France;
			break;
		case ELanguageType.German:
			m_msgboxText = StringResource.RebootMessage_German;
			Text = StringResource.RebootTitle_German;
			m_quitButton.Text = StringResource.CancelButton_German;
			break;
		case ELanguageType.Japanese:
			m_msgboxText = StringResource.RebootMessage_Japan;
			Text = StringResource.RebootTitle_Japan;
			m_quitButton.Text = StringResource.CancelButton_Japan;
			break;
		case ELanguageType.English:
			m_msgboxText = StringResource.RebootMessage_English;
			Text = StringResource.RebootTitle_English;
			m_quitButton.Text = StringResource.CancelButton_English;
			break;
		default:
			m_msgboxText = StringResource.RebootMessage_English;
			Text = StringResource.RebootTitle_English;
			m_quitButton.Text = StringResource.CancelButton_English;
			break;
		}
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		LoadDialogScreen();
	}

	private void m_quitButton_Click(object sender, EventArgs e)
	{
		Close();
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
		System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ETAS.StandardDialogs.InternalCheckRebootDialog));
		this.m_RebootText = new System.Windows.Forms.Label();
		this.m_quitButton = new System.Windows.Forms.Button();
		this.pictureBox1 = new System.Windows.Forms.PictureBox();
		((System.ComponentModel.ISupportInitialize)this.pictureBox1).BeginInit();
		base.SuspendLayout();
		this.m_RebootText.AutoSize = true;
		this.m_RebootText.Location = new System.Drawing.Point(62, 13);
		this.m_RebootText.Margin = new System.Windows.Forms.Padding(0);
		this.m_RebootText.MaximumSize = new System.Drawing.Size(320, 80);
		this.m_RebootText.MinimumSize = new System.Drawing.Size(320, 80);
		this.m_RebootText.Name = "m_RebootText";
		this.m_RebootText.Size = new System.Drawing.Size(320, 80);
		this.m_RebootText.TabIndex = 0;
		this.m_RebootText.Text = "{0} has detected that its previous installation was not finished since a reboot was needed and not performed yet. You must reboot your computer before using {0}.";
		this.m_quitButton.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.m_quitButton.Location = new System.Drawing.Point(139, 106);
		this.m_quitButton.Name = "m_quitButton";
		this.m_quitButton.Size = new System.Drawing.Size(116, 23);
		this.m_quitButton.TabIndex = 1;
		this.m_quitButton.Text = "Cancel";
		this.m_quitButton.UseVisualStyleBackColor = true;
		this.m_quitButton.Click += new System.EventHandler(m_quitButton_Click);
		this.pictureBox1.Image = (System.Drawing.Image)resources.GetObject("pictureBox1.Image");
		this.pictureBox1.Location = new System.Drawing.Point(4, 10);
		this.pictureBox1.Name = "pictureBox1";
		this.pictureBox1.Size = new System.Drawing.Size(48, 48);
		this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
		this.pictureBox1.TabIndex = 2;
		this.pictureBox1.TabStop = false;
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
		base.ClientSize = new System.Drawing.Size(394, 138);
		base.ControlBox = false;
		base.Controls.Add(this.pictureBox1);
		base.Controls.Add(this.m_quitButton);
		base.Controls.Add(this.m_RebootText);
		this.DoubleBuffered = true;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.KeyPreview = true;
		base.Margin = new System.Windows.Forms.Padding(5);
		base.MaximizeBox = false;
		this.MaximumSize = new System.Drawing.Size(400, 166);
		base.MinimizeBox = false;
		this.MinimumSize = new System.Drawing.Size(400, 166);
		base.Name = "InternalCheckRebootDialog";
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "Reboot needed";
		((System.ComponentModel.ISupportInitialize)this.pictureBox1).EndInit();
		base.ResumeLayout(false);
		base.PerformLayout();
	}
}
