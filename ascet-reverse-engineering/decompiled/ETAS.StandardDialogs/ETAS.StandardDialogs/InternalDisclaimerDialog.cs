using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using ETAS.StandardDialogs.Dialogs;
using ETAS.StandardDialogs.Helper_Classes;
using ETAS.StandardDialogs.Resources;

namespace ETAS.StandardDialogs;

internal sealed class InternalDisclaimerDialog : Form
{
	private EApplicationDialogType _dialogType;

	private IContainer components;

	private Button m_ButtonAccept;

	private ExtendedRichTextBox m_TextDisclaimer;

	private ComboBoxEx _comboLanguageSelection;

	public ELanguageType Language { get; set; }

	public EApplicationDialogType DialogType
	{
		get
		{
			return _dialogType;
		}
		set
		{
			_dialogType = value;
			switch (_dialogType)
			{
			case EApplicationDialogType.INCA:
			case EApplicationDialogType.LABCAR:
			case EApplicationDialogType.ASCET:
			case EApplicationDialogType.INTECRIO:
			case EApplicationDialogType.MDA:
			case EApplicationDialogType.RTA:
				DialogTitle = StringResource.ETAS + " " + _dialogType;
				break;
			case EApplicationDialogType.DTB:
				DialogTitle = StringResource.ETAS + " Diagnostic Tree Builder";
				break;
			case EApplicationDialogType.EHOOKS_SE:
			case EApplicationDialogType.EHOOKS_MCD:
				DialogTitle = StringResource.ETAS + " EHOOKS";
				break;
			case EApplicationDialogType.EE:
				DialogTitle = StringResource.ETAS + " Experiment Environment";
				break;
			default:
				throw new ArgumentOutOfRangeException();
			}
		}
	}

	public string DialogTitle
	{
		set
		{
			Text = value + StringResource.SafetyAdvice;
		}
	}

	public InternalDisclaimerDialog()
	{
		InitializeComponent();
		m_TextDisclaimer.BackColor = ETASColorProvider.Grey;
		BackgroundImage = ScreenResource.Disclaimer;
		DialogTitle = string.Empty;
		float num = 96f / CreateGraphics().DpiX;
		foreach (Control control in base.Controls)
		{
			control.Font = new Font(control.Font.FontFamily, num * control.Font.Size);
		}
		Application.EnableVisualStyles();
		_comboLanguageSelection.Items.Clear();
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_Ch, ScreenResource.flag_Ch, "Ch"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_De, ScreenResource.flag_De, "De"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_EnUs, ScreenResource.flag_EnUs, "EnUs"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_Es, ScreenResource.flag_Es, "Es"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_Fr, ScreenResource.flag_Fr, "Fr"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_It, ScreenResource.flag_It, "It"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_Jp, ScreenResource.flag_Jp, "Jp"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_Ko, ScreenResource.flag_Ko, "Ko"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_Pt, ScreenResource.flag_Pt, "Pt"));
		_comboLanguageSelection.Items.Add(new DropDownItem(StringResource.Lang_Ro, ScreenResource.flag_Ro, "Ro"));
	}

	private void LoadResources()
	{
		switch (Language)
		{
		case ELanguageType.Chinese:
			LoadTextResource("Ch");
			_comboLanguageSelection.Text = StringResource.Lang_Ch;
			break;
		case ELanguageType.French:
			LoadTextResource("Fr");
			_comboLanguageSelection.Text = StringResource.Lang_Fr;
			break;
		case ELanguageType.German:
			LoadTextResource("De");
			_comboLanguageSelection.Text = StringResource.Lang_De;
			break;
		case ELanguageType.Japanese:
			LoadTextResource("Jp");
			_comboLanguageSelection.Text = StringResource.Lang_Jp;
			break;
		case ELanguageType.Spanish:
			LoadTextResource("Es");
			_comboLanguageSelection.Text = StringResource.Lang_Es;
			break;
		case ELanguageType.Portuguese:
			LoadTextResource("Pt");
			_comboLanguageSelection.Text = StringResource.Lang_Pt;
			break;
		case ELanguageType.Romanian:
			LoadTextResource("Ro");
			_comboLanguageSelection.Text = StringResource.Lang_Ro;
			break;
		case ELanguageType.Korean:
			LoadTextResource("Ko");
			_comboLanguageSelection.Text = StringResource.Lang_Ko;
			break;
		default:
			LoadTextResource("EnUs");
			_comboLanguageSelection.Text = StringResource.Lang_EnUs;
			break;
		}
		m_ButtonAccept.Text = ((Language == ELanguageType.German) ? StringResource.AcceptButton_German : StringResource.AcceptButton_English);
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		LoadResources();
	}

	private void richTextBox1_LinkClicked(object sender, LinkClickedEventArgs e)
	{
		try
		{
			Process.Start(e.LinkText);
		}
		catch (Win32Exception)
		{
		}
		catch (FileNotFoundException)
		{
		}
	}

	private void LoadTextResource(string language)
	{
		string text = "Disclaimer_" + language;
		m_TextDisclaimer.LoadFile(Assembly.GetExecutingAssembly().GetManifestResourceStream(string.Format(CultureInfo.InvariantCulture, "ETAS.StandardDialogs.Resources.Disclaimer.{0}.rtf", new object[1] { text })), RichTextBoxStreamType.RichText);
		m_TextDisclaimer.Select(0, 1);
		m_TextDisclaimer.ScrollToCaret();
	}

	private void m_ButtonAccept_Click(object sender, EventArgs e)
	{
		base.DialogResult = DialogResult.OK;
		Close();
	}

	private void _comboLanguageSelection_SelectionChangeCommitted(object sender, EventArgs e)
	{
		if (_comboLanguageSelection.SelectedItem is DropDownItem dropDownItem)
		{
			LoadTextResource(dropDownItem.Language);
			m_ButtonAccept.Text = ((dropDownItem.Language == "De") ? StringResource.AcceptButton_German : StringResource.AcceptButton_English);
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
		System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ETAS.StandardDialogs.InternalDisclaimerDialog));
		this.m_ButtonAccept = new System.Windows.Forms.Button();
		this._comboLanguageSelection = new ETAS.StandardDialogs.Helper_Classes.ComboBoxEx();
		this.m_TextDisclaimer = new ETAS.StandardDialogs.Dialogs.ExtendedRichTextBox();
		base.SuspendLayout();
		this.m_ButtonAccept.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.m_ButtonAccept.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
		this.m_ButtonAccept.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.m_ButtonAccept.FlatAppearance.BorderSize = 0;
		this.m_ButtonAccept.Location = new System.Drawing.Point(343, 585);
		this.m_ButtonAccept.Margin = new System.Windows.Forms.Padding(0);
		this.m_ButtonAccept.Name = "m_ButtonAccept";
		this.m_ButtonAccept.Size = new System.Drawing.Size(138, 26);
		this.m_ButtonAccept.TabIndex = 0;
		this.m_ButtonAccept.Text = "Accept";
		this.m_ButtonAccept.UseVisualStyleBackColor = true;
		this.m_ButtonAccept.Click += new System.EventHandler(m_ButtonAccept_Click);
		this._comboLanguageSelection.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
		this._comboLanguageSelection.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		this._comboLanguageSelection.FormattingEnabled = true;
		this._comboLanguageSelection.ItemHeight = 18;
		this._comboLanguageSelection.Location = new System.Drawing.Point(11, 587);
		this._comboLanguageSelection.Name = "_comboLanguageSelection";
		this._comboLanguageSelection.Size = new System.Drawing.Size(155, 24);
		this._comboLanguageSelection.TabIndex = 1;
		this._comboLanguageSelection.SelectionChangeCommitted += new System.EventHandler(_comboLanguageSelection_SelectionChangeCommitted);
		this.m_TextDisclaimer.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
		this.m_TextDisclaimer.BackColor = System.Drawing.Color.White;
		this.m_TextDisclaimer.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_TextDisclaimer.Location = new System.Drawing.Point(11, 111);
		this.m_TextDisclaimer.Name = "m_TextDisclaimer";
		this.m_TextDisclaimer.ReadOnly = true;
		this.m_TextDisclaimer.RightMargin = 450;
		this.m_TextDisclaimer.Size = new System.Drawing.Size(481, 412);
		this.m_TextDisclaimer.TabIndex = 2;
		this.m_TextDisclaimer.Text = "";
		this.m_TextDisclaimer.LinkClicked += new System.Windows.Forms.LinkClickedEventHandler(richTextBox1_LinkClicked);
		base.AcceptButton = this.m_ButtonAccept;
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
		this.BackColor = System.Drawing.Color.White;
		base.ClientSize = new System.Drawing.Size(490, 620);
		base.Controls.Add(this._comboLanguageSelection);
		base.Controls.Add(this.m_TextDisclaimer);
		base.Controls.Add(this.m_ButtonAccept);
		this.DoubleBuffered = true;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.Icon = (System.Drawing.Icon)resources.GetObject("$this.Icon");
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "InternalDisclaimerDialog";
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		base.ResumeLayout(false);
	}
}
