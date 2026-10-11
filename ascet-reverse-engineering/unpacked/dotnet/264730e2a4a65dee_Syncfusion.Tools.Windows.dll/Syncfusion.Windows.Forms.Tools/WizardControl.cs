using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(WizardControlDesigner))]
[ToolboxItem(true)]
[ToolboxBitmap(typeof(WizardControl), "ToolboxIcons.WizardControl.bmp")]
[Description("Enables the creation of wizard applications.")]
public class WizardControl : Wizard
{
	private const int DEF_MIN_BORDER_OFFSET = 6;

	private const int DEF_INSETS = 5;

	private const int DEF_DESCRIPTION_LABEL_OFFSET = 5;

	private IContainer components;

	private GridBagLayout gridBagLayout;

	private WizardButton nextButton;

	private WizardButton backButton;

	private WizardButton finishButton;

	private WizardButton cancelButton;

	private WizardButton helpButton;

	private Panel spacerPanel;

	private GradientPanel bannerPanel;

	private PictureBox banner;

	private Label title;

	private Label description;

	private Panel lineSeparator;

	private Label m_labelStopper;

	private bool m_bButtonsMirrored;

	private bool m_bCausesValidation = true;

	private bool m_bAutoLayoutBanner = true;

	private bool m_bAutoLayoutTitle = true;

	private bool m_bAutoLayoutDescription = true;

	[Description("The Help button of the WizardControl.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Buttons")]
	public ButtonAdv HelpButton => helpButton;

	[Description("Gets the Finish button of the WizardControl.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Buttons")]
	public ButtonAdv FinishButton => finishButton;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Gets the Next button of the WizardControl.")]
	[Category("Buttons")]
	public ButtonAdv NextButton => nextButton;

	[Description("Gets the Back button of the WizardControl.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Buttons")]
	public ButtonAdv BackButton => backButton;

	[Description("Enables/Disables ValidatePage event being fired.")]
	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Buttons")]
	public bool BackButtonCausesValidation
	{
		get
		{
			return m_bCausesValidation;
		}
		set
		{
			m_bCausesValidation = value;
		}
	}

	[Description("Gets the Cancel button of the WizardControl.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Buttons")]
	public ButtonAdv CancelButton => cancelButton;

	[Description("Gets or sets auto layout banner in banner control.")]
	[Category("BannerControls")]
	[DefaultValue(true)]
	public bool AutoLayoutBanner
	{
		get
		{
			return m_bAutoLayoutBanner;
		}
		set
		{
			if (m_bAutoLayoutBanner != value)
			{
				m_bAutoLayoutBanner = value;
				if (value)
				{
					RepositionBannerControls();
				}
			}
		}
	}

	[Category("BannerControls")]
	[DefaultValue(true)]
	[Description("Gets or sets auto layout title in banner control.")]
	public bool AutoLayoutTitle
	{
		get
		{
			return m_bAutoLayoutTitle;
		}
		set
		{
			if (m_bAutoLayoutTitle != value)
			{
				m_bAutoLayoutTitle = value;
				if (value)
				{
					RepositionBannerControls();
				}
			}
		}
	}

	[Description("Gets or sets auto layout title in description control.")]
	[Category("BannerControls")]
	[DefaultValue(true)]
	public bool AutoLayoutDescription
	{
		get
		{
			return m_bAutoLayoutDescription;
		}
		set
		{
			if (m_bAutoLayoutDescription != value)
			{
				m_bAutoLayoutDescription = value;
				if (value)
				{
					RepositionBannerControls();
				}
			}
		}
	}

	[Category("BannerControls")]
	[Description("Gets/Sets label that shows the description of the current page.")]
	public Label Description
	{
		get
		{
			return description;
		}
		set
		{
			if (description != value)
			{
				if (value != null && value.Parent != BannerPanel && BannerPanel != null)
				{
					value.Parent = BannerPanel;
				}
				description = value;
			}
		}
	}

	[Description("Gets/Sets label that shows the title of the current page.")]
	[Category("BannerControls")]
	public Label Title
	{
		get
		{
			return title;
		}
		set
		{
			if (title != value)
			{
				if (value != null && value.Parent != BannerPanel && BannerPanel != null)
				{
					value.Parent = BannerPanel;
				}
				title = value;
			}
		}
	}

	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The array that holds the pages.")]
	public new WizardControlPage[] WizardPages
	{
		get
		{
			if (base.PageContainer == null)
			{
				WizardControlPage[] array = new WizardControlPage[0];
				Array.Copy(wizardPgs, array, wizardPgs.Length);
				return array;
			}
			ArrayList arrayList = new ArrayList();
			for (int i = 0; i < base.PageContainer.Controls.Count; i++)
			{
				if (base.PageContainer.Controls[i] is WizardControlPage)
				{
					arrayList.Add(base.PageContainer.Controls[i]);
				}
			}
			return arrayList.ToArray(typeof(WizardControlPage)) as WizardControlPage[];
		}
		set
		{
			wizardPgs = value;
			if (base.PageContainer != null)
			{
				base.PageContainer.Controls.Clear();
				for (int i = 0; i < value.Length; i++)
				{
					base.PageContainer.Controls.Add(value[i]);
					value[i].SettingsChanged += base.PageSettingsChanged;
				}
			}
		}
	}

	[Description("Gets/Sets PictureBox that shows the Banner Image of the Wizard.")]
	[Category("BannerControls")]
	public PictureBox Banner
	{
		get
		{
			return banner;
		}
		set
		{
			if (banner != value)
			{
				if (value != null && value.Parent != BannerPanel)
				{
					throw new ArgumentException("Specified Banner control should be a child of the BannerPanel on top of the WizardControl");
				}
				banner = value;
			}
		}
	}

	[Description("Gets/Sets the Banner Panel of the WizardControl")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Category("Panels")]
	[Browsable(false)]
	public GradientPanel BannerPanel
	{
		get
		{
			return bannerPanel;
		}
		set
		{
			if (bannerPanel != value)
			{
				if (bannerPanel != null)
				{
					bannerPanel.ControlRemoved -= BannerPanel_ControlRemoved;
				}
				bannerPanel = value;
				bannerPanel.ControlRemoved += BannerPanel_ControlRemoved;
			}
		}
	}

	[Description("Gets/Sets the PageContainer of the WizardControl.")]
	[Browsable(false)]
	[Category("Panels")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public WizardContainer WizardPageContainer
	{
		get
		{
			return base.PageContainer;
		}
		set
		{
			SetPageContainer(value);
			if (value != null)
			{
				SetPageContainerConstraints();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The GridBagLayout used to layout the different regions of the wizard.")]
	public GridBagLayout GridBagLayout => gridBagLayout;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override WizardPage SelectedPage
	{
		get
		{
			return base.SelectedPage;
		}
		set
		{
			base.SelectedPage = value;
		}
	}

	[Category("Appearance")]
	[Description("Specifies the selected wizard control page.")]
	public WizardControlPage SelectedWizardPage
	{
		get
		{
			return (WizardControlPage)base.SelectedPage;
		}
		set
		{
			base.SelectedPage = value;
		}
	}

	[Description("This event is fired when the Help button is pressed.")]
	[Category("Wizard Events")]
	public event EventHandler Help;

	[Category("Wizard Events")]
	[Description("This event is fired when the Finish button is pressed.")]
	public event EventHandler Finish;

	[Description("This event is fired when the Cancel button is pressed.")]
	[Category("Wizard Events")]
	public event EventHandler Cancel;

	[Description("Occurs before the Next button is clicked.")]
	[Category("Wizard Events")]
	public event CancelEventHandler BeforeNext;

	[Description("Occurs before the Back button is clicked.")]
	[Category("Wizard Events")]
	public event CancelEventHandler BeforeBack;

	[Description("Occurs before the Finish button is clicked.")]
	[Category("Wizard Events")]
	public event CancelEventHandler BeforeFinish;

	[Category("BannerControls")]
	[Description("This event is fired when a banner control is about to be relocated by wizard control.")]
	public event CancelEventHandler BannerControlLocationChanging;

	protected void OnHelp(EventArgs e)
	{
		if (this.Help != null)
		{
			try
			{
				this.Help(this, e);
			}
			catch
			{
			}
		}
	}

	protected void OnFinish(EventArgs e)
	{
		if (this.Finish != null)
		{
			this.Finish(this, e);
		}
	}

	protected void OnCancel(EventArgs e)
	{
		if (this.Cancel != null)
		{
			try
			{
				this.Cancel(this, e);
			}
			catch
			{
			}
		}
	}

	protected override void OnEndInit()
	{
		Initialize();
		if (!base.DesignMode)
		{
			if (base.PageContainer != null)
			{
				for (int i = 0; i < base.PageContainer.Controls.Count; i++)
				{
					if (base.PageContainer.Controls[i] is WizardControlPage wizardControlPage)
					{
						base.CardLayout.SetCardName(wizardControlPage, wizardControlPage.LayoutName);
					}
				}
			}
			base.CardLayout.First();
			base.CardLayout.Next();
			base.CardLayout.Previous();
		}
		if (GetIsMirrored())
		{
			RepositionNavigationButtons(bIsMirrored: true);
		}
	}

	public WizardControl()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(WizardControl));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		WizardButton wizardButton = null;
		foreach (Control control in base.Controls)
		{
			if (control is WizardButton wizardButton2)
			{
				wizardButton2.VisibleChanged += Button_VisibleChanged;
			}
		}
		CancelButton.TabIndex = 1;
		BackButton.TabIndex = 2;
		NextButton.TabIndex = 3;
		FinishButton.TabIndex = 4;
		HelpButton.TabIndex = 5;
		cancelButton.m_Parent = (backButton.m_Parent = (nextButton.m_Parent = (finishButton.m_Parent = (helpButton.m_Parent = this))));
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
		this.components = new System.ComponentModel.Container();
		this.nextButton = new Syncfusion.Windows.Forms.Tools.WizardButton();
		this.backButton = new Syncfusion.Windows.Forms.Tools.WizardButton();
		this.finishButton = new Syncfusion.Windows.Forms.Tools.WizardButton();
		this.cancelButton = new Syncfusion.Windows.Forms.Tools.WizardButton();
		this.gridBagLayout = new Syncfusion.Windows.Forms.Tools.GridBagLayout(this.components);
		this.helpButton = new Syncfusion.Windows.Forms.Tools.WizardButton();
		this.spacerPanel = new System.Windows.Forms.Panel();
		this.lineSeparator = new System.Windows.Forms.Panel();
		((System.ComponentModel.ISupportInitialize)this.gridBagLayout).BeginInit();
		base.SuspendLayout();
		this.nextButton.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.gridBagLayout.SetConstraints(this.nextButton, new Syncfusion.Windows.Forms.Tools.GridBagConstraints(3, 5, 1, 1, 0.0, 0.0, Syncfusion.Windows.Forms.Tools.AnchorTypes.East, Syncfusion.Windows.Forms.Tools.FillType.None, new Syncfusion.Windows.Forms.Tools.Insets(0, 5, 0, 5), 0, 0, false));
		this.nextButton.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.nextButton.Location = new System.Drawing.Point(408, 238);
		this.nextButton.Name = "nextButton";
		this.gridBagLayout.SetPreferredSize(this.nextButton, new System.Drawing.Size(75, 23));
		this.nextButton.Text = "Next >>";
		this.nextButton.Click += new System.EventHandler(NextButton_Click);
		this.nextButton.SizeChanged += new System.EventHandler(Button_SizeChanged);
		this.backButton.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.gridBagLayout.SetConstraints(this.backButton, new Syncfusion.Windows.Forms.Tools.GridBagConstraints(2, 5, 1, 1, 0.0, 0.0, Syncfusion.Windows.Forms.Tools.AnchorTypes.East, Syncfusion.Windows.Forms.Tools.FillType.None, new Syncfusion.Windows.Forms.Tools.Insets(5, 5, 0, 5), 0, 0, false));
		this.backButton.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.backButton.Location = new System.Drawing.Point(333, 238);
		this.backButton.Name = "backButton";
		this.gridBagLayout.SetPreferredSize(this.backButton, new System.Drawing.Size(75, 23));
		this.backButton.Text = "<< Back";
		this.backButton.Click += new System.EventHandler(BackButton_Click);
		this.backButton.SizeChanged += new System.EventHandler(Button_SizeChanged);
		this.finishButton.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.gridBagLayout.SetConstraints(this.finishButton, new Syncfusion.Windows.Forms.Tools.GridBagConstraints(4, 5, 1, 1, 0.0, 0.0, Syncfusion.Windows.Forms.Tools.AnchorTypes.East, Syncfusion.Windows.Forms.Tools.FillType.None, new Syncfusion.Windows.Forms.Tools.Insets(5, 5, 0, 5), 0, 0, false));
		this.finishButton.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.finishButton.Location = new System.Drawing.Point(488, 238);
		this.finishButton.Name = "finishButton";
		this.gridBagLayout.SetPreferredSize(this.finishButton, new System.Drawing.Size(75, 23));
		this.finishButton.Text = "Finish";
		this.finishButton.Click += new System.EventHandler(FinishButton_Click);
		this.finishButton.SizeChanged += new System.EventHandler(Button_SizeChanged);
		this.cancelButton.Anchor = System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right;
		this.gridBagLayout.SetConstraints(this.cancelButton, new Syncfusion.Windows.Forms.Tools.GridBagConstraints(1, 5, 1, 1, 0.0, 0.0, Syncfusion.Windows.Forms.Tools.AnchorTypes.East, Syncfusion.Windows.Forms.Tools.FillType.None, new Syncfusion.Windows.Forms.Tools.Insets(5, 5, 0, 5), 0, 0, false));
		this.cancelButton.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.cancelButton.Location = new System.Drawing.Point(253, 238);
		this.cancelButton.Name = "cancelButton";
		this.gridBagLayout.SetPreferredSize(this.cancelButton, new System.Drawing.Size(75, 23));
		this.cancelButton.Text = "Cancel";
		this.cancelButton.Click += new System.EventHandler(CancelButton_Click);
		this.cancelButton.SizeChanged += new System.EventHandler(Button_SizeChanged);
		this.gridBagLayout.ContainerControl = this;
		this.gridBagLayout.SetConstraints(this.helpButton, new Syncfusion.Windows.Forms.Tools.GridBagConstraints(5, 5, 1, 1, 0.0, 0.0, Syncfusion.Windows.Forms.Tools.AnchorTypes.Center, Syncfusion.Windows.Forms.Tools.FillType.None, new Syncfusion.Windows.Forms.Tools.Insets(5, 0, 5, 0), 0, 0, false));
		this.helpButton.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.helpButton.Location = new System.Drawing.Point(568, 238);
		this.helpButton.Name = "helpButton";
		this.helpButton.Text = "Help";
		this.helpButton.Click += new System.EventHandler(HelpButton_Click);
		this.helpButton.SizeChanged += new System.EventHandler(Button_SizeChanged);
		this.gridBagLayout.SetConstraints(this.spacerPanel, new Syncfusion.Windows.Forms.Tools.GridBagConstraints(0, 4, 1, 1, 20.0, 0.0, Syncfusion.Windows.Forms.Tools.AnchorTypes.Center, Syncfusion.Windows.Forms.Tools.FillType.None, new Syncfusion.Windows.Forms.Tools.Insets(0, 0, 0, 0), 0, 0, false));
		this.spacerPanel.Name = "spacerPanel";
		this.gridBagLayout.SetPreferredSize(this.spacerPanel, new System.Drawing.Size(0, 0));
		this.spacerPanel.Size = new System.Drawing.Size(0, 0);
		this.spacerPanel.TabIndex = 0;
		this.gridBagLayout.SetConstraints(this.lineSeparator, new Syncfusion.Windows.Forms.Tools.GridBagConstraints(0, 4, 10, 1, 1.0, 0.0, Syncfusion.Windows.Forms.Tools.AnchorTypes.Center, Syncfusion.Windows.Forms.Tools.FillType.Horizontal, new Syncfusion.Windows.Forms.Tools.Insets(0, 0, 0, 0), 0, 0, false));
		this.lineSeparator.Location = new System.Drawing.Point(0, 230);
		this.gridBagLayout.SetMinimumSize(this.lineSeparator, new System.Drawing.Size(269, 3));
		this.lineSeparator.Name = "lineSeparator";
		this.gridBagLayout.SetPreferredSize(this.lineSeparator, new System.Drawing.Size(269, 3));
		this.lineSeparator.Size = new System.Drawing.Size(648, 3);
		this.lineSeparator.TabIndex = 10;
		this.lineSeparator.Paint += new System.Windows.Forms.PaintEventHandler(LineSeparator_Paint);
		base.Controls.AddRange(new System.Windows.Forms.Control[7] { this.lineSeparator, this.helpButton, this.cancelButton, this.finishButton, this.backButton, this.nextButton, this.spacerPanel });
		base.Name = "WizardControl";
		base.Size = new System.Drawing.Size(648, 496);
		((System.ComponentModel.ISupportInitialize)this.gridBagLayout).EndInit();
		base.ResumeLayout(false);
	}

	internal void Initialize()
	{
		base.PageContainer.BringToFront();
		base.PageContainer.Size = new Size(688, 482);
		base.PageContainer.TabIndex = 1;
		base.PageContainer.Controls.AddRange(WizardPages);
		base.CardLayout.ContainerControl = base.PageContainer;
		SetPageContainerConstraints();
		bannerPanel.Height = 70;
		bannerPanel.Dock = DockStyle.Top;
		GridBagConstraints constraintsRef = GridBagLayout.GetConstraintsRef(bannerPanel);
		constraintsRef.GridPosX = 0;
		constraintsRef.GridPosY = 0;
		constraintsRef.WeightX = 10.0;
		constraintsRef.CellSpanX = 10;
		constraintsRef.Fill = FillType.Both;
		if (banner != null)
		{
			banner.BorderStyle = BorderStyle.FixedSingle;
			banner.Size = new Size(61, 61);
		}
		if (title != null)
		{
			title.Text = "This is the title of the Wizard Page.";
			title.Font = FontUtil.CreateFont(title.Font, FontStyle.Bold);
			title.Size = new Size(200, 15);
		}
		if (description != null)
		{
			description.Text = "This is the description of the Wizard Page.";
			description.Size = new Size(210, 15);
		}
	}

	private void BannerPanel_ControlRemoved(object sender, ControlEventArgs e)
	{
		if (e.Control == Title)
		{
			Title = null;
		}
		else if (e.Control == Banner)
		{
			Banner = null;
		}
		else if (e.Control == Description)
		{
			Description = null;
		}
	}

	private void NextButton_Click(object sender, EventArgs e)
	{
		if (SelectedWizardPage != null)
		{
			SelectedWizardPage.RaiseNextClick();
		}
		NextPage();
	}

	private void BackButton_Click(object sender, EventArgs e)
	{
		if (SelectedWizardPage != null)
		{
			SelectedWizardPage.RaiseBackClick();
		}
		PreviousPage();
	}

	private void FinishButton_Click(object sender, EventArgs e)
	{
		if (SelectedWizardPage != null)
		{
			SelectedWizardPage.RaiseFinishClick();
		}
		OnFinish(EventArgs.Empty);
	}

	private void CancelButton_Click(object sender, EventArgs e)
	{
		if (SelectedWizardPage != null)
		{
			SelectedWizardPage.RaiseCancelClick();
		}
		OnCancel(EventArgs.Empty);
	}

	private void HelpButton_Click(object sender, EventArgs e)
	{
		if (SelectedWizardPage != null)
		{
			SelectedWizardPage.RaiseHelpClick();
		}
		OnHelp(EventArgs.Empty);
	}

	private void CalculateDescriptionSize()
	{
		if (description != null)
		{
			description.AutoSize = true;
			int num = base.Width - description.Location.X - 5;
			int num2 = description.Height;
			Size size = description.Size;
			description.AutoSize = false;
			description.Width = ((size.Width > num) ? num : size.Width);
			description.Height = ((size.Height > num2) ? num2 : size.Height);
		}
	}

	protected override void RefreshAppearance()
	{
		if (!(base.CardLayout.GetComponentFromName(base.CardLayout.SelectedCard) is WizardControlPage wizardControlPage))
		{
			return;
		}
		helpButton.Visible = wizardControlPage.HelpVisible;
		helpButton.Enabled = wizardControlPage.HelpEnabled;
		finishButton.Visible = wizardControlPage.FinishVisible;
		finishButton.Enabled = wizardControlPage.FinishEnabled;
		nextButton.Visible = wizardControlPage.NextVisible;
		nextButton.Enabled = wizardControlPage.NextEnabled;
		backButton.Visible = wizardControlPage.BackVisible;
		backButton.Enabled = wizardControlPage.BackEnabled;
		cancelButton.Visible = wizardControlPage.CancelVisible;
		cancelButton.Enabled = wizardControlPage.CancelEnabled;
		bannerPanel.Visible = !wizardControlPage.FullPage;
		if (title != null)
		{
			title.Text = wizardControlPage.Title;
			if (!title.AutoSize)
			{
				using Graphics graphics = title.CreateGraphics();
				title.Width = graphics.MeasureString(title.Text, title.Font).ToSize().Width + 5;
			}
		}
		if (description != null)
		{
			description.Text = wizardControlPage.Description;
			CalculateDescriptionSize();
		}
		RepositionBannerControls();
		bool isMirrored = GetIsMirrored();
		GridBagConstraints constraints = gridBagLayout.GetConstraints(cancelButton);
		if (wizardControlPage.CancelOverFinish)
		{
			constraints.GridPosX = (isMirrored ? 1 : 4);
			finishButton.Visible = false;
			((Control)cancelButton).TabIndex = 4;
		}
		else
		{
			constraints.GridPosX = ((!isMirrored) ? 1 : 4);
			finishButton.Visible = true;
			((Control)cancelButton).TabIndex = 1;
		}
		gridBagLayout.SetConstraints(cancelButton, constraints);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		CalculateDescriptionSize();
	}

	private void LineSeparator_Paint(object sender, PaintEventArgs e)
	{
		e.Graphics.DrawLine(new Pen(SystemColors.ControlDark), new Point(0, 0), new Point(lineSeparator.Width, 0));
		e.Graphics.DrawLine(new Pen(SystemColors.ControlLight), new Point(0, 1), new Point(lineSeparator.Width, 1));
		e.Graphics.DrawLine(new Pen(SystemColors.ControlLight), new Point(0, 2), new Point(lineSeparator.Width, 2));
	}

	private void Button_SizeChanged(object sender, EventArgs e)
	{
		if (sender is Control)
		{
			gridBagLayout.SetPreferredSize(sender as Control, ((Control)sender).Size);
		}
	}

	internal bool CanPerformClick(Button btn)
	{
		CancelEventArgs e = new CancelEventArgs(cancel: false);
		if (btn == nextButton || btn == finishButton || btn == backButton)
		{
			if (SelectedPage != null)
			{
				if (btn == nextButton || btn == finishButton || (btn == backButton && BackButtonCausesValidation))
				{
					SelectedWizardPage.RaiseValidatePage(e);
				}
				if (e.Cancel)
				{
					return !e.Cancel;
				}
			}
			if (btn == nextButton)
			{
				OnBeforeNext(e);
			}
			else if (btn == backButton)
			{
				OnBeforeBack(e);
			}
			else if (btn == finishButton)
			{
				OnBeforeFinish(e);
			}
		}
		return !e.Cancel;
	}

	protected virtual void OnBeforeNext(CancelEventArgs e)
	{
		if (this.BeforeNext != null)
		{
			this.BeforeNext(this, e);
		}
	}

	protected virtual void OnBeforeBack(CancelEventArgs e)
	{
		if (this.BeforeBack != null)
		{
			this.BeforeBack(this, e);
		}
	}

	protected virtual void OnBeforeFinish(CancelEventArgs e)
	{
		if (this.BeforeFinish != null)
		{
			this.BeforeFinish(this, e);
		}
	}

	[DocumentationExclude]
	protected void SetPageContainerConstraints()
	{
		gridBagLayout.SetConstraints(base.PageContainer, new GridBagConstraints(0, 2, 10, 1, 1.0, 1.0, AnchorTypes.Center, FillType.Both, new Insets(0, 0, 0, 5), 0, 0, isEmpty: false));
		gridBagLayout.SetMinimumSize(base.PageContainer, new Size(560, 248));
		gridBagLayout.SetPreferredSize(base.PageContainer, new Size(560, 400));
	}

	protected void RepositionNavigationButtons(bool bIsMirrored)
	{
		if (m_bButtonsMirrored == bIsMirrored)
		{
			return;
		}
		WizardButton[] array = new WizardButton[5] { nextButton, backButton, finishButton, cancelButton, helpButton };
		int num = -1;
		foreach (WizardButton control in array)
		{
			GridBagConstraints constraintsRef = gridBagLayout.GetConstraintsRef(control);
			constraintsRef.GridPosX = 5 - constraintsRef.GridPosX;
			if (constraintsRef.GridPosX > num)
			{
				num = constraintsRef.GridPosX;
			}
			Insets insets = constraintsRef.Insets;
			insets.Left = constraintsRef.Insets.Right;
			insets.Right = constraintsRef.Insets.Left;
			constraintsRef.Insets = insets;
			AnchorTypes anchorTypes = constraintsRef.Anchor;
			switch (anchorTypes)
			{
			case AnchorTypes.East:
				anchorTypes = AnchorTypes.West;
				break;
			case AnchorTypes.West:
				anchorTypes = AnchorTypes.East;
				break;
			}
			constraintsRef.Anchor = anchorTypes;
		}
		if (bIsMirrored)
		{
			if (m_labelStopper == null)
			{
				m_labelStopper = new Label();
				m_labelStopper.BackColor = Color.Transparent;
				m_labelStopper.Visible = true;
				base.Controls.Add(m_labelStopper);
			}
			if (num > 0)
			{
				gridBagLayout.SetConstraints(m_labelStopper, new GridBagConstraints(num, 5, 5, 1, 10000.0, 0.0, AnchorTypes.West, FillType.Horizontal, new Insets(0, 0, 0, 0), 0, 0, isEmpty: false));
			}
		}
		else if (m_labelStopper != null)
		{
			base.Controls.Remove(m_labelStopper);
			m_labelStopper = null;
		}
		m_bButtonsMirrored = bIsMirrored;
	}

	protected void RepositionBannerControls()
	{
		RepositionBannerControls(GetIsMirrored());
	}

	protected virtual void OnBannerControlLocationChanging(Control banerControl, CancelEventArgs e)
	{
		if (banerControl == null)
		{
			throw new ArgumentNullException("banerControl");
		}
		if (e == null)
		{
			throw new ArgumentNullException("e");
		}
		if (this.BannerControlLocationChanging != null)
		{
			this.BannerControlLocationChanging(banerControl, e);
		}
	}

	protected void RepositionBannerControls(bool bIsMirrored)
	{
		CancelEventArgs e = new CancelEventArgs();
		if (banner != null && AutoLayoutBanner)
		{
			OnBannerControlLocationChanging(banner, e);
			if (!e.Cancel)
			{
				int num = 10;
				int num2 = (bIsMirrored ? num : (bannerPanel.Width - banner.Width - num));
				banner.Location = new Point(num2, (bannerPanel.Height - banner.Height) / 2);
				banner.Anchor = (AnchorStyles)(2 | (bIsMirrored ? 4 : 8));
			}
		}
		e.Cancel = false;
		if (title != null && AutoLayoutTitle)
		{
			OnBannerControlLocationChanging(title, e);
			if (!e.Cancel)
			{
				int num3 = 10;
				int num4 = (bIsMirrored ? (bannerPanel.Width - title.Width - num3) : num3);
				title.Location = new Point(num4, 10);
				title.Anchor = (bIsMirrored ? AnchorStyles.Right : AnchorStyles.Left);
			}
		}
		e.Cancel = false;
		if (description != null && AutoLayoutDescription)
		{
			OnBannerControlLocationChanging(description, e);
			if (!e.Cancel)
			{
				int num5 = 20;
				int num6 = (bIsMirrored ? (bannerPanel.Width - description.Width - num5) : num5);
				description.Location = new Point(num6, 30);
				description.Anchor = (bIsMirrored ? AnchorStyles.Right : AnchorStyles.Left);
			}
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		bool isMirrored = GetIsMirrored();
		RepositionNavigationButtons(isMirrored);
		RepositionBannerControls(isMirrored);
	}

	private void Button_VisibleChanged(object sender, EventArgs e)
	{
		if (!(sender is WizardButton wizardButton))
		{
			return;
		}
		GridBagConstraints constraints = GridBagLayout.GetConstraints(wizardButton);
		if (constraints != null)
		{
			Insets insets = constraints.Insets;
			if (base.Width - wizardButton.Right < 6)
			{
				insets.Right = 5;
			}
			if (wizardButton.Left < 6)
			{
				insets.Left = 5;
			}
			constraints.Insets = insets;
			GridBagLayout.SetConstraints(wizardButton, constraints);
		}
	}
}
