using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using ETAS.StandardDialogs.Resources;

namespace ETAS.StandardDialogs;

internal class InternalAboutDialog : Form
{
	private EApplicationDialogType m_ApplicationDialog;

	private IContainer components;

	private Label m_LabelHeader;

	private Label m_LabelSubHeader;

	private TextBox m_TextBoxContent;

	public EApplicationDialogType DialogType
	{
		get
		{
			return m_ApplicationDialog;
		}
		set
		{
			m_ApplicationDialog = value;
		}
	}

	public string Headline
	{
		get
		{
			return m_LabelHeader.Text;
		}
		set
		{
			m_LabelHeader.Text = value;
		}
	}

	public string Subheadline
	{
		get
		{
			return m_LabelSubHeader.Text;
		}
		set
		{
			m_LabelSubHeader.Text = value;
		}
	}

	public string Content
	{
		get
		{
			return m_TextBoxContent.Text;
		}
		set
		{
			m_TextBoxContent.Lines = value.Split(new string[2]
			{
				Environment.NewLine,
				"\n"
			}, StringSplitOptions.None);
			if (m_TextBoxContent.Lines.Length > 10)
			{
				m_TextBoxContent.ScrollBars = ScrollBars.Vertical;
				int verticalScrollBarWidth = SystemInformation.VerticalScrollBarWidth;
				m_TextBoxContent.Location = new Point(verticalScrollBarWidth, m_TextBoxContent.Location.Y);
				m_TextBoxContent.Size = new Size(m_TextBoxContent.Size.Width - verticalScrollBarWidth, m_TextBoxContent.Size.Height);
			}
			else
			{
				m_TextBoxContent.ScrollBars = ScrollBars.None;
			}
		}
	}

	public string DialogTitle
	{
		get
		{
			return Text;
		}
		set
		{
			Text = value;
		}
	}

	public InternalAboutDialog(EApplicationDialogType applicationDialog)
	{
		InitializeComponent();
		m_ApplicationDialog = applicationDialog;
		Application.EnableVisualStyles();
	}

	private void InternalAboutDialog_KeyDown(object sender, KeyEventArgs e)
	{
		if (e.KeyCode == Keys.Escape)
		{
			Close();
		}
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		switch (DialogType)
		{
		case EApplicationDialogType.ASCET:
			BackgroundImage = ScreenResource.ASCET_About;
			break;
		case EApplicationDialogType.EHOOKS_SE:
			BackgroundImage = ScreenResource.EHOOKS_About;
			break;
		case EApplicationDialogType.EHOOKS_MCD:
			BackgroundImage = ScreenResource.EHOOKS_About;
			break;
		case EApplicationDialogType.INCA:
			BackgroundImage = ScreenResource.INCA_About;
			break;
		case EApplicationDialogType.LABCAR:
			BackgroundImage = ScreenResource.LABCAR_About;
			break;
		case EApplicationDialogType.MDA:
			BackgroundImage = ScreenResource.INCA_About;
			break;
		case EApplicationDialogType.RTA:
			BackgroundImage = ScreenResource.RTA_About;
			break;
		case EApplicationDialogType.INTECRIO:
			BackgroundImage = ScreenResource.INTECRIO_About;
			break;
		case EApplicationDialogType.DTB:
			BackgroundImage = ScreenResource.DTB_About;
			break;
		case EApplicationDialogType.EE:
			BackgroundImage = ScreenResource.EE_About;
			break;
		default:
			throw new ArgumentException(string.Format(CultureInfo.InvariantCulture, "Application dialog type '{0}' is unknown.", new object[1] { DialogType }));
		}
		m_LabelHeader.ForeColor = ETASColorProvider.Blue;
		m_LabelSubHeader.ForeColor = ETASColorProvider.Blue;
		float num = 96f / CreateGraphics().DpiX;
		foreach (Control control in base.Controls)
		{
			control.Font = new Font(control.Font.FontFamily, num * control.Font.Size);
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
		this.m_LabelSubHeader = new System.Windows.Forms.Label();
		this.m_LabelHeader = new System.Windows.Forms.Label();
		this.m_TextBoxContent = new System.Windows.Forms.TextBox();
		base.SuspendLayout();
		this.m_LabelSubHeader.AutoSize = true;
		this.m_LabelSubHeader.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelSubHeader.Font = new System.Drawing.Font("Tahoma", 12f);
		this.m_LabelSubHeader.Location = new System.Drawing.Point(8, 71);
		this.m_LabelSubHeader.Name = "m_LabelSubHeader";
		this.m_LabelSubHeader.Size = new System.Drawing.Size(84, 19);
		this.m_LabelSubHeader.TabIndex = 2;
		this.m_LabelSubHeader.Text = "Subheader";
		this.m_LabelHeader.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left;
		this.m_LabelHeader.AutoSize = true;
		this.m_LabelHeader.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelHeader.Font = new System.Drawing.Font("Tahoma", 17f);
		this.m_LabelHeader.Location = new System.Drawing.Point(6, 41);
		this.m_LabelHeader.Margin = new System.Windows.Forms.Padding(0);
		this.m_LabelHeader.Name = "m_LabelHeader";
		this.m_LabelHeader.Size = new System.Drawing.Size(85, 28);
		this.m_LabelHeader.TabIndex = 1;
		this.m_LabelHeader.Text = "Header";
		this.m_TextBoxContent.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.m_TextBoxContent.BackColor = System.Drawing.Color.White;
		this.m_TextBoxContent.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_TextBoxContent.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_TextBoxContent.Font = new System.Drawing.Font("Tahoma", 9f);
		this.m_TextBoxContent.Location = new System.Drawing.Point(0, 250);
		this.m_TextBoxContent.Multiline = true;
		this.m_TextBoxContent.Name = "m_TextBoxContent";
		this.m_TextBoxContent.ReadOnly = true;
		this.m_TextBoxContent.ShortcutsEnabled = false;
		this.m_TextBoxContent.Size = new System.Drawing.Size(410, 112);
		this.m_TextBoxContent.TabIndex = 2;
		this.m_TextBoxContent.TabStop = false;
		this.m_TextBoxContent.Text = "Content";
		this.m_TextBoxContent.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
		base.ClientSize = new System.Drawing.Size(410, 377);
		base.Controls.Add(this.m_LabelSubHeader);
		base.Controls.Add(this.m_LabelHeader);
		base.Controls.Add(this.m_TextBoxContent);
		this.DoubleBuffered = true;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.KeyPreview = true;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "InternalAboutDialog";
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "About";
		base.KeyDown += new System.Windows.Forms.KeyEventHandler(InternalAboutDialog_KeyDown);
		base.ResumeLayout(false);
		base.PerformLayout();
	}
}
