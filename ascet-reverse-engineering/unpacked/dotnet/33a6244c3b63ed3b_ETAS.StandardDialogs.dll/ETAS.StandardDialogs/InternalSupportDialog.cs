using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using ETAS.StandardDialogs.Resources;

namespace ETAS.StandardDialogs;

internal class InternalSupportDialog : Form
{
	private EApplicationDialogType m_ApplicationDialogType;

	private Location m_LocationEurope;

	private Location m_LocationFrBeLux;

	private Location m_LocationGreatBritain;

	private Location m_LocationUSA;

	private Location m_LocationJapan;

	private Location m_LocationKorea;

	private Location m_LocationChina;

	private Location m_LocationIndia;

	private ELanguageType m_Language;

	private string m_Phone = "Phone:";

	private IContainer components;

	private Label m_LabelHeadline;

	private Label m_LabelHotlineContact;

	private Label m_LabelEurope;

	private Label m_LabelGreatBritain;

	private Label m_LabelKorea;

	private Label m_LabelJapan;

	private Label m_LabelChina;

	private Label m_LabelFrBeLux;

	private Label m_LabelIndia;

	private TextBox m_LinkLabelChina;

	private TextBox m_LinkLabelKorea;

	private TextBox m_LinkLabelJapan;

	private TextBox m_LinkLabelUSA;

	private TextBox m_LinkLabelGreatBritain;

	private TextBox m_LinkLabelFrBeLux;

	private TextBox m_LinkLabelEurope;

	private TextBox m_LabelPhoneChina;

	private TextBox m_LabelPhoneEurope;

	private TextBox m_LabelPhoneFrBeLux;

	private TextBox m_LabelPhoneGreatBritain;

	private TextBox m_LabelPhoneUSA;

	private TextBox m_LabelPhoneJapan;

	private TextBox m_LabelPhoneKorea;

	private TextBox m_LabelPhoneIndia;

	private TextBox m_LinkLabelIndia;

	private Label m_LabelUSA;

	private Label m_LabelSupportWebPage;

	private string Phone
	{
		get
		{
			return m_Phone;
		}
		set
		{
			if (!string.IsNullOrEmpty(value))
			{
				value = value.Replace(" ", "");
				if (value.LastIndexOf(':') != value.Length - 1)
				{
					value += ":";
				}
				m_Phone = value;
			}
		}
	}

	private string LinkSupportWebPage
	{
		get
		{
			return m_LabelSupportWebPage.Text;
		}
		set
		{
			m_LabelSupportWebPage.Text = value;
		}
	}

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
		}
	}

	public string Headline
	{
		get
		{
			return m_LabelHeadline.Text;
		}
		set
		{
			m_LabelHeadline.Text = value;
		}
	}

	public Location LocationEurope
	{
		get
		{
			return m_LocationEurope;
		}
		set
		{
			m_LocationEurope = value;
			m_LinkLabelEurope.Text = m_LocationEurope.Email;
			SetPhoneTextBoxText(m_LabelPhoneEurope, value);
		}
	}

	public Location LocationFrBeLux
	{
		get
		{
			return m_LocationFrBeLux;
		}
		set
		{
			m_LocationFrBeLux = value;
			m_LinkLabelFrBeLux.Text = m_LocationFrBeLux.Email;
			SetPhoneTextBoxText(m_LabelPhoneFrBeLux, value);
		}
	}

	public Location LocationGreatBritain
	{
		get
		{
			return m_LocationGreatBritain;
		}
		set
		{
			m_LocationGreatBritain = value;
			m_LinkLabelGreatBritain.Text = m_LocationGreatBritain.Email;
			SetPhoneTextBoxText(m_LabelPhoneGreatBritain, value);
		}
	}

	public Location LocationUSA
	{
		get
		{
			return m_LocationUSA;
		}
		set
		{
			m_LocationUSA = value;
			m_LinkLabelUSA.Text = m_LocationUSA.Email;
			SetPhoneTextBoxText(m_LabelPhoneUSA, value);
		}
	}

	public Location LocationJapan
	{
		get
		{
			return m_LocationJapan;
		}
		set
		{
			m_LocationJapan = value;
			m_LinkLabelJapan.Text = m_LocationJapan.Email;
			SetPhoneTextBoxText(m_LabelPhoneJapan, value);
		}
	}

	public Location LocationKorea
	{
		get
		{
			return m_LocationKorea;
		}
		set
		{
			m_LocationKorea = value;
			m_LinkLabelKorea.Text = m_LocationKorea.Email;
			SetPhoneTextBoxText(m_LabelPhoneKorea, value);
		}
	}

	public Location LocationChina
	{
		get
		{
			return m_LocationChina;
		}
		set
		{
			m_LocationChina = value;
			m_LinkLabelChina.Text = m_LocationChina.Email;
			SetPhoneTextBoxText(m_LabelPhoneChina, value);
		}
	}

	public Location LocationIndia
	{
		get
		{
			return m_LocationIndia;
		}
		set
		{
			m_LocationIndia = value;
			m_LinkLabelIndia.Text = m_LocationIndia.Email;
			SetPhoneTextBoxText(m_LabelPhoneIndia, value);
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

	public InternalSupportDialog(EApplicationDialogType applicationDialogType)
	{
		InitializeComponent();
		m_ApplicationDialogType = applicationDialogType;
		Text = "Support";
		float num = 96f / CreateGraphics().DpiX;
		foreach (Control control in base.Controls)
		{
			control.Font = new Font(control.Font.FontFamily, num * control.Font.Size);
		}
		Application.EnableVisualStyles();
	}

	private void InternalSupportDialog_KeyDown(object sender, KeyEventArgs e)
	{
		if (e.KeyCode == Keys.Escape)
		{
			Close();
		}
	}

	private void LoadDialogScreen()
	{
		BackgroundImage = ScreenResource.Support;
	}

	private void LabelSetup()
	{
		m_LabelHeadline.ForeColor = ETASColorProvider.Blue;
		m_LabelHotlineContact.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelGreatBritain.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelUSA.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelJapan.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelKorea.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelChina.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelFrBeLux.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelEurope.ForeColor = ETASColorProvider.Blue;
		m_LinkLabelIndia.ForeColor = ETASColorProvider.Blue;
		m_LabelSupportWebPage.ForeColor = ETASColorProvider.Blue;
	}

	private void LanguageSetup()
	{
		string text = m_Language switch
		{
			ELanguageType.Chinese => "China", 
			ELanguageType.French => "France", 
			ELanguageType.German => "German", 
			ELanguageType.Japanese => "Japan", 
			_ => "English", 
		};
		Phone = StringResource.ResourceManager.GetString("Phone_" + text);
		m_LabelEurope.Text = StringResource.ResourceManager.GetString("Europe_" + text);
		m_LabelFrBeLux.Text = StringResource.ResourceManager.GetString("FrBeLux_" + text);
		m_LabelJapan.Text = StringResource.ResourceManager.GetString("Japan_" + text);
		m_LabelKorea.Text = StringResource.ResourceManager.GetString("Korea_" + text);
		m_LabelGreatBritain.Text = StringResource.ResourceManager.GetString("GreatBritain_" + text);
		m_LabelChina.Text = StringResource.ResourceManager.GetString("China_" + text);
		m_LabelUSA.Text = StringResource.ResourceManager.GetString("USA_" + text);
		m_LabelIndia.Text = StringResource.ResourceManager.GetString("India_" + text);
		m_LabelHotlineContact.Text = StringResource.ResourceManager.GetString("HotlineContact_" + text);
	}

	private string ReturnLanguageString(ELanguageType SelectedLanguage)
	{
		return m_Language switch
		{
			ELanguageType.Chinese => "China", 
			ELanguageType.French => "France", 
			ELanguageType.German => "German", 
			ELanguageType.Japanese => "Japan", 
			_ => "English", 
		};
	}

	private void SetPhoneAndEmail()
	{
		SupportInformation.Language = m_Language;
		SupportInformation.ApplicationType = m_ApplicationDialogType;
		if (LocationChina == null)
		{
			LocationChina = SupportInformation.Location_China;
		}
		if (LocationEurope == null)
		{
			LocationEurope = SupportInformation.Location_Europe;
		}
		if (LocationFrBeLux == null)
		{
			LocationFrBeLux = SupportInformation.Location_FrBeLux;
		}
		if (LocationGreatBritain == null)
		{
			LocationGreatBritain = SupportInformation.Location_GreatBritain;
		}
		if (LocationIndia == null)
		{
			LocationIndia = SupportInformation.Location_India;
		}
		if (LocationJapan == null)
		{
			LocationJapan = SupportInformation.Location_Japan;
		}
		if (LocationKorea == null)
		{
			LocationKorea = SupportInformation.Location_Korea;
		}
		if (LocationUSA == null)
		{
			LocationUSA = SupportInformation.Location_USA;
		}
	}

	private void SetSupportInformation()
	{
		SupportInformation.Language = m_Language;
	}

	private void SetSupportWebPage()
	{
		m_LabelSupportWebPage.Text = "www.etas.com/hotlines";
	}

	private void SetPhoneTextBoxText(Control textBox, ILocation location)
	{
		textBox.Text = location.Email;
		if (!string.IsNullOrEmpty(location.Phone))
		{
			Phone = StringResource.ResourceManager.GetString("Phone_" + ReturnLanguageString(m_Language));
			textBox.Text = Phone + " " + location.Phone;
		}
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		LoadDialogScreen();
		LabelSetup();
		LanguageSetup();
		SetPhoneAndEmail();
		SetSupportWebPage();
	}

	private void EMailLinkLabelClicked(object sender, MouseEventArgs e)
	{
		try
		{
			TextBox textBox = (TextBox)sender;
			if (textBox.SelectionLength == 0 && !string.IsNullOrEmpty(textBox.Text))
			{
				using (Process process = new Process())
				{
					process.StartInfo.FileName = "mailto:" + textBox.Text;
					process.StartInfo.UseShellExecute = true;
					process.StartInfo.RedirectStandardOutput = false;
					process.Start();
					return;
				}
			}
		}
		catch (Win32Exception)
		{
		}
		catch (FileNotFoundException)
		{
		}
	}

	private void EMailMouseEnter(object sender, EventArgs e)
	{
		TextBox textBox = (TextBox)sender;
		if (string.IsNullOrEmpty(textBox.Text))
		{
			textBox.Cursor = Cursors.Default;
		}
		else
		{
			textBox.Cursor = Cursors.Hand;
		}
	}

	private void EMailMouseLeave(object sender, EventArgs e)
	{
		((TextBox)sender).Cursor = Cursors.Default;
	}

	private void m_LabelSupportWebPage_MouseEnter(object sender, EventArgs e)
	{
		_ = (Label)sender;
		((Label)sender).Cursor = Cursors.Hand;
	}

	private void m_LabelSupportWebPage_MouseLeave(object sender, EventArgs e)
	{
		((Label)sender).Cursor = Cursors.Default;
	}

	private void SupportLinkLabelClicked(object sender, MouseEventArgs e)
	{
		try
		{
			Label label = (Label)sender;
			using Process process = new Process();
			process.StartInfo.FileName = "http://" + label.Text;
			process.StartInfo.UseShellExecute = true;
			process.StartInfo.RedirectStandardOutput = false;
			process.Start();
		}
		catch (Win32Exception)
		{
		}
		catch (FileNotFoundException)
		{
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
		this.m_LabelHeadline = new System.Windows.Forms.Label();
		this.m_LabelHotlineContact = new System.Windows.Forms.Label();
		this.m_LabelEurope = new System.Windows.Forms.Label();
		this.m_LabelGreatBritain = new System.Windows.Forms.Label();
		this.m_LabelKorea = new System.Windows.Forms.Label();
		this.m_LabelJapan = new System.Windows.Forms.Label();
		this.m_LabelChina = new System.Windows.Forms.Label();
		this.m_LabelFrBeLux = new System.Windows.Forms.Label();
		this.m_LabelIndia = new System.Windows.Forms.Label();
		this.m_LabelUSA = new System.Windows.Forms.Label();
		this.m_LabelPhoneIndia = new System.Windows.Forms.TextBox();
		this.m_LinkLabelIndia = new System.Windows.Forms.TextBox();
		this.m_LabelPhoneKorea = new System.Windows.Forms.TextBox();
		this.m_LabelPhoneJapan = new System.Windows.Forms.TextBox();
		this.m_LabelPhoneUSA = new System.Windows.Forms.TextBox();
		this.m_LabelPhoneGreatBritain = new System.Windows.Forms.TextBox();
		this.m_LabelPhoneFrBeLux = new System.Windows.Forms.TextBox();
		this.m_LabelPhoneEurope = new System.Windows.Forms.TextBox();
		this.m_LabelPhoneChina = new System.Windows.Forms.TextBox();
		this.m_LinkLabelEurope = new System.Windows.Forms.TextBox();
		this.m_LinkLabelFrBeLux = new System.Windows.Forms.TextBox();
		this.m_LinkLabelGreatBritain = new System.Windows.Forms.TextBox();
		this.m_LinkLabelUSA = new System.Windows.Forms.TextBox();
		this.m_LinkLabelJapan = new System.Windows.Forms.TextBox();
		this.m_LinkLabelKorea = new System.Windows.Forms.TextBox();
		this.m_LinkLabelChina = new System.Windows.Forms.TextBox();
		this.m_LabelSupportWebPage = new System.Windows.Forms.Label();
		base.SuspendLayout();
		this.m_LabelHeadline.AutoSize = true;
		this.m_LabelHeadline.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelHeadline.Font = new System.Drawing.Font("Tahoma", 17f);
		this.m_LabelHeadline.Location = new System.Drawing.Point(14, 71);
		this.m_LabelHeadline.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelHeadline.Name = "m_LabelHeadline";
		this.m_LabelHeadline.Size = new System.Drawing.Size(100, 28);
		this.m_LabelHeadline.TabIndex = 1;
		this.m_LabelHeadline.Text = "Headline";
		this.m_LabelHotlineContact.AutoSize = true;
		this.m_LabelHotlineContact.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelHotlineContact.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelHotlineContact.Location = new System.Drawing.Point(16, 101);
		this.m_LabelHotlineContact.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelHotlineContact.Name = "m_LabelHotlineContact";
		this.m_LabelHotlineContact.Size = new System.Drawing.Size(107, 13);
		this.m_LabelHotlineContact.TabIndex = 2;
		this.m_LabelHotlineContact.Text = "Your hotline contact:";
		this.m_LabelEurope.AutoSize = true;
		this.m_LabelEurope.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelEurope.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelEurope.Location = new System.Drawing.Point(16, 148);
		this.m_LabelEurope.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelEurope.Name = "m_LabelEurope";
		this.m_LabelEurope.Size = new System.Drawing.Size(197, 26);
		this.m_LabelEurope.TabIndex = 3;
		this.m_LabelEurope.Text = "Europe\r\n(except France, Belgium, Luxembourg):";
		this.m_LabelGreatBritain.AutoSize = true;
		this.m_LabelGreatBritain.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelGreatBritain.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelGreatBritain.Location = new System.Drawing.Point(16, 14);
		this.m_LabelGreatBritain.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelGreatBritain.Name = "m_LabelGreatBritain";
		this.m_LabelGreatBritain.Size = new System.Drawing.Size(71, 13);
		this.m_LabelGreatBritain.TabIndex = 5;
		this.m_LabelGreatBritain.Text = "Great Britain:";
		this.m_LabelGreatBritain.Visible = false;
		this.m_LabelKorea.AutoSize = true;
		this.m_LabelKorea.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelKorea.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelKorea.Location = new System.Drawing.Point(16, 329);
		this.m_LabelKorea.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelKorea.Name = "m_LabelKorea";
		this.m_LabelKorea.Size = new System.Drawing.Size(39, 13);
		this.m_LabelKorea.TabIndex = 6;
		this.m_LabelKorea.Text = "Korea:";
		this.m_LabelJapan.AutoSize = true;
		this.m_LabelJapan.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelJapan.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelJapan.Location = new System.Drawing.Point(16, 290);
		this.m_LabelJapan.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelJapan.Name = "m_LabelJapan";
		this.m_LabelJapan.Size = new System.Drawing.Size(40, 13);
		this.m_LabelJapan.TabIndex = 7;
		this.m_LabelJapan.Text = "Japan:";
		this.m_LabelChina.AutoSize = true;
		this.m_LabelChina.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelChina.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelChina.Location = new System.Drawing.Point(16, 368);
		this.m_LabelChina.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelChina.Name = "m_LabelChina";
		this.m_LabelChina.Size = new System.Drawing.Size(38, 13);
		this.m_LabelChina.TabIndex = 10;
		this.m_LabelChina.Text = "China:";
		this.m_LabelFrBeLux.AutoSize = true;
		this.m_LabelFrBeLux.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelFrBeLux.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelFrBeLux.Location = new System.Drawing.Point(16, 212);
		this.m_LabelFrBeLux.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelFrBeLux.Name = "m_LabelFrBeLux";
		this.m_LabelFrBeLux.Size = new System.Drawing.Size(153, 13);
		this.m_LabelFrBeLux.TabIndex = 11;
		this.m_LabelFrBeLux.Text = "France, Belgium, Luxembourg:";
		this.m_LabelIndia.AutoSize = true;
		this.m_LabelIndia.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelIndia.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelIndia.Location = new System.Drawing.Point(16, 407);
		this.m_LabelIndia.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelIndia.Name = "m_LabelIndia";
		this.m_LabelIndia.Size = new System.Drawing.Size(35, 13);
		this.m_LabelIndia.TabIndex = 46;
		this.m_LabelIndia.Text = "India:";
		this.m_LabelUSA.AutoSize = true;
		this.m_LabelUSA.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelUSA.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelUSA.Location = new System.Drawing.Point(16, 251);
		this.m_LabelUSA.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
		this.m_LabelUSA.Name = "m_LabelUSA";
		this.m_LabelUSA.Size = new System.Drawing.Size(31, 13);
		this.m_LabelUSA.TabIndex = 50;
		this.m_LabelUSA.Text = "USA:";
		this.m_LabelPhoneIndia.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneIndia.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneIndia.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneIndia.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneIndia.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneIndia.Location = new System.Drawing.Point(231, 407);
		this.m_LabelPhoneIndia.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneIndia.Name = "m_LabelPhoneIndia";
		this.m_LabelPhoneIndia.ReadOnly = true;
		this.m_LabelPhoneIndia.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneIndia.TabIndex = 48;
		this.m_LabelPhoneIndia.TabStop = false;
		this.m_LabelPhoneIndia.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelIndia.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelIndia.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelIndia.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelIndia.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelIndia.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelIndia.Location = new System.Drawing.Point(231, 423);
		this.m_LinkLabelIndia.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelIndia.Name = "m_LinkLabelIndia";
		this.m_LinkLabelIndia.ReadOnly = true;
		this.m_LinkLabelIndia.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelIndia.TabIndex = 47;
		this.m_LinkLabelIndia.TabStop = false;
		this.m_LinkLabelIndia.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelIndia.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelIndia.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LabelPhoneKorea.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneKorea.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneKorea.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneKorea.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneKorea.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneKorea.Location = new System.Drawing.Point(231, 329);
		this.m_LabelPhoneKorea.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneKorea.Name = "m_LabelPhoneKorea";
		this.m_LabelPhoneKorea.ReadOnly = true;
		this.m_LabelPhoneKorea.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneKorea.TabIndex = 43;
		this.m_LabelPhoneKorea.TabStop = false;
		this.m_LabelPhoneKorea.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LabelPhoneJapan.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneJapan.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneJapan.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneJapan.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneJapan.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneJapan.Location = new System.Drawing.Point(231, 290);
		this.m_LabelPhoneJapan.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneJapan.Name = "m_LabelPhoneJapan";
		this.m_LabelPhoneJapan.ReadOnly = true;
		this.m_LabelPhoneJapan.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneJapan.TabIndex = 42;
		this.m_LabelPhoneJapan.TabStop = false;
		this.m_LabelPhoneJapan.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LabelPhoneUSA.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneUSA.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneUSA.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneUSA.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneUSA.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneUSA.Location = new System.Drawing.Point(231, 251);
		this.m_LabelPhoneUSA.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneUSA.Name = "m_LabelPhoneUSA";
		this.m_LabelPhoneUSA.ReadOnly = true;
		this.m_LabelPhoneUSA.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneUSA.TabIndex = 41;
		this.m_LabelPhoneUSA.TabStop = false;
		this.m_LabelPhoneUSA.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LabelPhoneGreatBritain.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneGreatBritain.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneGreatBritain.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneGreatBritain.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneGreatBritain.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneGreatBritain.Location = new System.Drawing.Point(231, 14);
		this.m_LabelPhoneGreatBritain.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneGreatBritain.Name = "m_LabelPhoneGreatBritain";
		this.m_LabelPhoneGreatBritain.ReadOnly = true;
		this.m_LabelPhoneGreatBritain.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneGreatBritain.TabIndex = 40;
		this.m_LabelPhoneGreatBritain.TabStop = false;
		this.m_LabelPhoneGreatBritain.Visible = false;
		this.m_LabelPhoneGreatBritain.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LabelPhoneFrBeLux.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneFrBeLux.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneFrBeLux.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneFrBeLux.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneFrBeLux.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneFrBeLux.Location = new System.Drawing.Point(231, 212);
		this.m_LabelPhoneFrBeLux.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneFrBeLux.Name = "m_LabelPhoneFrBeLux";
		this.m_LabelPhoneFrBeLux.ReadOnly = true;
		this.m_LabelPhoneFrBeLux.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneFrBeLux.TabIndex = 39;
		this.m_LabelPhoneFrBeLux.TabStop = false;
		this.m_LabelPhoneFrBeLux.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LabelPhoneEurope.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneEurope.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneEurope.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneEurope.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneEurope.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneEurope.Location = new System.Drawing.Point(231, 148);
		this.m_LabelPhoneEurope.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneEurope.Name = "m_LabelPhoneEurope";
		this.m_LabelPhoneEurope.ReadOnly = true;
		this.m_LabelPhoneEurope.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneEurope.TabIndex = 38;
		this.m_LabelPhoneEurope.TabStop = false;
		this.m_LabelPhoneEurope.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LabelPhoneChina.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LabelPhoneChina.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LabelPhoneChina.Cursor = System.Windows.Forms.Cursors.Default;
		this.m_LabelPhoneChina.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LabelPhoneChina.ForeColor = System.Drawing.Color.Black;
		this.m_LabelPhoneChina.Location = new System.Drawing.Point(231, 368);
		this.m_LabelPhoneChina.Margin = new System.Windows.Forms.Padding(5);
		this.m_LabelPhoneChina.Name = "m_LabelPhoneChina";
		this.m_LabelPhoneChina.ReadOnly = true;
		this.m_LabelPhoneChina.Size = new System.Drawing.Size(172, 13);
		this.m_LabelPhoneChina.TabIndex = 37;
		this.m_LabelPhoneChina.TabStop = false;
		this.m_LabelPhoneChina.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelEurope.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelEurope.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelEurope.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelEurope.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelEurope.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelEurope.Location = new System.Drawing.Point(231, 164);
		this.m_LinkLabelEurope.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelEurope.Name = "m_LinkLabelEurope";
		this.m_LinkLabelEurope.ReadOnly = true;
		this.m_LinkLabelEurope.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelEurope.TabIndex = 36;
		this.m_LinkLabelEurope.TabStop = false;
		this.m_LinkLabelEurope.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelEurope.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelEurope.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LinkLabelFrBeLux.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelFrBeLux.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelFrBeLux.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelFrBeLux.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelFrBeLux.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelFrBeLux.Location = new System.Drawing.Point(231, 228);
		this.m_LinkLabelFrBeLux.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelFrBeLux.Name = "m_LinkLabelFrBeLux";
		this.m_LinkLabelFrBeLux.ReadOnly = true;
		this.m_LinkLabelFrBeLux.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelFrBeLux.TabIndex = 35;
		this.m_LinkLabelFrBeLux.TabStop = false;
		this.m_LinkLabelFrBeLux.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelFrBeLux.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelFrBeLux.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LinkLabelGreatBritain.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelGreatBritain.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelGreatBritain.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelGreatBritain.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelGreatBritain.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelGreatBritain.Location = new System.Drawing.Point(231, 30);
		this.m_LinkLabelGreatBritain.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelGreatBritain.Name = "m_LinkLabelGreatBritain";
		this.m_LinkLabelGreatBritain.ReadOnly = true;
		this.m_LinkLabelGreatBritain.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelGreatBritain.TabIndex = 34;
		this.m_LinkLabelGreatBritain.TabStop = false;
		this.m_LinkLabelGreatBritain.Visible = false;
		this.m_LinkLabelGreatBritain.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelGreatBritain.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelGreatBritain.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LinkLabelUSA.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelUSA.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelUSA.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelUSA.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelUSA.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelUSA.Location = new System.Drawing.Point(231, 267);
		this.m_LinkLabelUSA.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelUSA.Name = "m_LinkLabelUSA";
		this.m_LinkLabelUSA.ReadOnly = true;
		this.m_LinkLabelUSA.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelUSA.TabIndex = 33;
		this.m_LinkLabelUSA.TabStop = false;
		this.m_LinkLabelUSA.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelUSA.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelUSA.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LinkLabelJapan.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelJapan.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelJapan.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelJapan.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelJapan.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelJapan.Location = new System.Drawing.Point(231, 306);
		this.m_LinkLabelJapan.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelJapan.Name = "m_LinkLabelJapan";
		this.m_LinkLabelJapan.ReadOnly = true;
		this.m_LinkLabelJapan.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelJapan.TabIndex = 32;
		this.m_LinkLabelJapan.TabStop = false;
		this.m_LinkLabelJapan.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelJapan.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelJapan.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LinkLabelKorea.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelKorea.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelKorea.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelKorea.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelKorea.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelKorea.Location = new System.Drawing.Point(231, 345);
		this.m_LinkLabelKorea.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelKorea.Name = "m_LinkLabelKorea";
		this.m_LinkLabelKorea.ReadOnly = true;
		this.m_LinkLabelKorea.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelKorea.TabIndex = 31;
		this.m_LinkLabelKorea.TabStop = false;
		this.m_LinkLabelKorea.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelKorea.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelKorea.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LinkLabelChina.BackColor = System.Drawing.Color.FromArgb(146, 166, 185);
		this.m_LinkLabelChina.BorderStyle = System.Windows.Forms.BorderStyle.None;
		this.m_LinkLabelChina.Cursor = System.Windows.Forms.Cursors.Hand;
		this.m_LinkLabelChina.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25f, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, 0);
		this.m_LinkLabelChina.ForeColor = System.Drawing.Color.Blue;
		this.m_LinkLabelChina.Location = new System.Drawing.Point(231, 384);
		this.m_LinkLabelChina.Margin = new System.Windows.Forms.Padding(5);
		this.m_LinkLabelChina.Name = "m_LinkLabelChina";
		this.m_LinkLabelChina.ReadOnly = true;
		this.m_LinkLabelChina.Size = new System.Drawing.Size(172, 13);
		this.m_LinkLabelChina.TabIndex = 30;
		this.m_LinkLabelChina.TabStop = false;
		this.m_LinkLabelChina.MouseEnter += new System.EventHandler(EMailMouseEnter);
		this.m_LinkLabelChina.MouseLeave += new System.EventHandler(EMailMouseLeave);
		this.m_LinkLabelChina.MouseUp += new System.Windows.Forms.MouseEventHandler(EMailLinkLabelClicked);
		this.m_LabelSupportWebPage.AutoSize = true;
		this.m_LabelSupportWebPage.BackColor = System.Drawing.Color.Transparent;
		this.m_LabelSupportWebPage.Font = new System.Drawing.Font("Tahoma", 8f);
		this.m_LabelSupportWebPage.ForeColor = System.Drawing.SystemColors.Highlight;
		this.m_LabelSupportWebPage.Location = new System.Drawing.Point(228, 495);
		this.m_LabelSupportWebPage.Name = "m_LabelSupportWebPage";
		this.m_LabelSupportWebPage.Size = new System.Drawing.Size(35, 13);
		this.m_LabelSupportWebPage.TabIndex = 51;
		this.m_LabelSupportWebPage.Text = "label1";
		this.m_LabelSupportWebPage.MouseEnter += new System.EventHandler(m_LabelSupportWebPage_MouseEnter);
		this.m_LabelSupportWebPage.MouseLeave += new System.EventHandler(m_LabelSupportWebPage_MouseLeave);
		this.m_LabelSupportWebPage.MouseUp += new System.Windows.Forms.MouseEventHandler(SupportLinkLabelClicked);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
		base.ClientSize = new System.Drawing.Size(408, 585);
		base.Controls.Add(this.m_LabelSupportWebPage);
		base.Controls.Add(this.m_LabelUSA);
		base.Controls.Add(this.m_LabelJapan);
		base.Controls.Add(this.m_LabelIndia);
		base.Controls.Add(this.m_LabelFrBeLux);
		base.Controls.Add(this.m_LabelChina);
		base.Controls.Add(this.m_LabelKorea);
		base.Controls.Add(this.m_LabelEurope);
		base.Controls.Add(this.m_LabelHotlineContact);
		base.Controls.Add(this.m_LabelHeadline);
		base.Controls.Add(this.m_LabelPhoneIndia);
		base.Controls.Add(this.m_LinkLabelIndia);
		base.Controls.Add(this.m_LabelPhoneKorea);
		base.Controls.Add(this.m_LabelPhoneJapan);
		base.Controls.Add(this.m_LabelPhoneUSA);
		base.Controls.Add(this.m_LabelPhoneFrBeLux);
		base.Controls.Add(this.m_LabelPhoneEurope);
		base.Controls.Add(this.m_LabelPhoneChina);
		base.Controls.Add(this.m_LinkLabelEurope);
		base.Controls.Add(this.m_LinkLabelFrBeLux);
		base.Controls.Add(this.m_LinkLabelUSA);
		base.Controls.Add(this.m_LinkLabelJapan);
		base.Controls.Add(this.m_LinkLabelKorea);
		base.Controls.Add(this.m_LinkLabelChina);
		base.Controls.Add(this.m_LabelGreatBritain);
		base.Controls.Add(this.m_LabelPhoneGreatBritain);
		base.Controls.Add(this.m_LinkLabelGreatBritain);
		this.DoubleBuffered = true;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		base.KeyPreview = true;
		base.Margin = new System.Windows.Forms.Padding(5);
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "InternalSupportDialog";
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "Support";
		base.KeyDown += new System.Windows.Forms.KeyEventHandler(InternalSupportDialog_KeyDown);
		base.ResumeLayout(false);
		base.PerformLayout();
	}
}
