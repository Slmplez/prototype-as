using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Provides an easy to use class that can be used to display splash screens.")]
[ToolboxBitmap(typeof(SplashControl), "ToolboxIcons.SplashControl.bmp")]
[ToolboxItemFilter("System.Windows.Forms")]
[Designer(typeof(SplashControlDesigner), typeof(IDesigner))]
public class SplashControl : Component, ISplashParent
{
	[ToolboxItem(false)]
	public class DefaultPanel : SplashPanel
	{
		private Container components;

		[Category("Appearance")]
		[Browsable(true)]
		public override Image BackgroundImage
		{
			get
			{
				return base.BackgroundImage;
			}
			set
			{
				base.BackgroundImage = value;
				if (value != null)
				{
					base.Size = value.Size;
				}
			}
		}

		public DefaultPanel()
		{
			base.AnimationSpeed = 25;
			base.ShowAnimation = false;
			InitializeComponent();
		}

		public DefaultPanel(Image backImage)
			: this()
		{
			BackgroundImage = backImage;
		}

		[DocumentationExclude]
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
			base.SuspendLayout();
			this.Cursor = System.Windows.Forms.Cursors.WaitCursor;
			base.Size = new System.Drawing.Size(488, 277);
			base.ResumeLayout(false);
		}
	}

	private Container components;

	private bool autoModeValue;

	private static int maxDisplayTime;

	private Form hostFormObject;

	private bool isShowingValue;

	private DefaultPanel splashControlDefaultPanelObject;

	private Image splashImageValue;

	private bool hideHostForm;

	private Point hostFormLocation = Point.Empty;

	private Size hostFormSize = Size.Empty;

	private FormWindowState hostFormWindowState;

	private bool hostFormShowInTaskBar = true;

	private SplashPanel customPanel;

	private bool useCustomPanel;

	private bool autoModeDisableOwner;

	private bool hostFormSaved;

	private bool closeSplashForm;

	[DefaultValue(false)]
	[Category("Appearance")]
	[Browsable(true)]
	[Description("Indicates whether the splash screen should appear on the screen in an animated manner.")]
	public bool ShowAnimation
	{
		get
		{
			return SplashControlPanel.ShowAnimation;
		}
		set
		{
			SplashControlPanel.ShowAnimation = value;
		}
	}

	[Description("Specifies if the host form should be hidden when the splash screen is displayed.")]
	[Category("Behavior")]
	[Browsable(true)]
	[DefaultValue(false)]
	public bool HideHostForm
	{
		get
		{
			return hideHostForm;
		}
		set
		{
			hideHostForm = value;
		}
	}

	[Description("Specifies if the host form should be hidden when the splash screen is displayed.")]
	[Browsable(true)]
	[DefaultValue(FormWindowState.Normal)]
	[Category("Behavior")]
	public FormWindowState HostFormWindowState
	{
		get
		{
			return hostFormWindowState;
		}
		set
		{
			hostFormWindowState = value;
		}
	}

	[Browsable(false)]
	public bool IsShowing => isShowingValue;

	[Category("Behavior")]
	[Browsable(true)]
	[DefaultValue(true)]
	[Description("Specifies if the SplashControl should automatically launch the splash screen.")]
	public bool AutoMode
	{
		get
		{
			return autoModeValue;
		}
		set
		{
			if (!value)
			{
				if (HostForm != null)
				{
					HostForm.Load -= HandleHostFormLoad;
				}
			}
			else if (HostForm != null)
			{
				HostForm.Load += HandleHostFormLoad;
			}
			autoModeValue = value;
		}
	}

	[Description("Specifies if the SplashControl displays modally when in AutoMode.")]
	[DefaultValue(false)]
	[Browsable(true)]
	[Category("Behavior")]
	public bool AutoModeDisableOwner
	{
		get
		{
			return autoModeDisableOwner;
		}
		set
		{
			autoModeDisableOwner = value;
		}
	}

	[Description("Sets the desktop alignment for the splash control")]
	[Browsable(true)]
	[Category("Appearance")]
	[DefaultValue(SplashAlignment.Center)]
	public SplashAlignment DesktopAlignment
	{
		get
		{
			return SplashControlPanel.DesktopAlignment;
		}
		set
		{
			SplashControlPanel.DesktopAlignment = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(true)]
	[Description("Specifies if the Splashscreen is to be displayed as a TopMost window.")]
	public bool ShowAsTopMost
	{
		get
		{
			return SplashControlPanel.ShowAsTopMost;
		}
		set
		{
			SplashControlPanel.ShowAsTopMost = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(5000)]
	[Category("Behavior")]
	[Description("The time interval for which the splash screen is to be displayed (in milliseconds).")]
	public int TimerInterval
	{
		get
		{
			return SplashControlPanel.TimerInterval;
		}
		set
		{
			if (value < maxDisplayTime)
			{
				SplashControlPanel.TimerInterval = value;
			}
			else
			{
				SplashControlPanel.TimerInterval = maxDisplayTime;
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(false)]
	[Description("Indicates whether the SplashControl's internal form needs to be disposed after displaying once.")]
	public bool CloseSplashForm
	{
		get
		{
			return closeSplashForm;
		}
		set
		{
			closeSplashForm = value;
		}
	}

	[Browsable(false)]
	public DefaultPanel SplashControlPanel
	{
		get
		{
			return splashControlDefaultPanelObject;
		}
		set
		{
			splashControlDefaultPanelObject = value;
		}
	}

	[Browsable(false)]
	public Form HostForm
	{
		get
		{
			return hostFormObject;
		}
		set
		{
			if (value != null && value != hostFormObject)
			{
				hostFormObject = value;
				if (!base.DesignMode && AutoMode)
				{
					hostFormObject.Load += HandleHostFormLoad;
				}
			}
		}
	}

	[Description("Specifies the default splash screen background image.")]
	[Browsable(true)]
	[Category("Appearance")]
	[DefaultValue(null)]
	public Image SplashImage
	{
		get
		{
			return splashImageValue;
		}
		set
		{
			if (value != null && value != splashImageValue)
			{
				splashImageValue = value;
				if (splashControlDefaultPanelObject != null)
				{
					splashControlDefaultPanelObject.BackgroundImage = splashImageValue;
				}
				else
				{
					splashControlDefaultPanelObject = new DefaultPanel(value);
				}
			}
		}
	}

	[Description("The color to be used to make the SplashImage transparent.")]
	public Color TransparentColor
	{
		get
		{
			return SplashControlPanel.TransparentColor;
		}
		set
		{
			SplashControlPanel.TransparentColor = value;
		}
	}

	[Description("Gets or sets custom splash panel to be used.")]
	[DefaultValue(null)]
	public SplashPanel CustomSplashPanel
	{
		get
		{
			return customPanel;
		}
		set
		{
			customPanel = value;
		}
	}

	[DefaultValue(false)]
	[Description("Specifies whether a custom splash panel should be used.")]
	public bool UseCustomSplashPanel
	{
		get
		{
			return useCustomPanel;
		}
		set
		{
			useCustomPanel = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether the SplashPanel is to be shown in the Taskbar.")]
	public bool ShowInTaskbar
	{
		get
		{
			return SplashControlPanel.ShowInTaskbar;
		}
		set
		{
			SplashControlPanel.ShowInTaskbar = value;
		}
	}

	[Description("Gets or sets the icon for the SplashPanel.")]
	[DefaultValue(null)]
	public Icon FormIcon
	{
		get
		{
			return SplashControlPanel.FormIcon;
		}
		set
		{
			SplashControlPanel.FormIcon = value;
		}
	}

	public string Text
	{
		get
		{
			return SplashControlPanel.Text;
		}
		set
		{
			SplashControlPanel.Text = value;
		}
	}

	[Description("The event that is raised before the splash screen displayed.")]
	public event CancelEventHandler BeforeSplash;

	[Description("The event that is raised after the splash screen is displayed.")]
	public event EventHandler SplashDisplayed;

	[Description("This event is raised when the splash window is closed.")]
	public event EventHandler SplashClosed;

	[Description("The event that is raised before the SplashControl is closed.")]
	public event CancelEventHandler SplashClosing;

	static SplashControl()
	{
		maxDisplayTime = 60000;
	}

	public SplashControl()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(SplashControl));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		splashControlDefaultPanelObject = new DefaultPanel();
		splashControlDefaultPanelObject.SplashParent = this;
		autoModeValue = true;
		isShowingValue = false;
	}

	public SplashControl(Image backImage)
		: this()
	{
		if (splashControlDefaultPanelObject != null)
		{
			splashControlDefaultPanelObject.BackgroundImage = backImage;
		}
		else
		{
			splashControlDefaultPanelObject = new DefaultPanel(backImage);
		}
	}

	private void InitializeComponent()
	{
		components = new Container();
	}

	protected virtual void OnSplashClosing(CancelEventArgs e)
	{
		if (this.SplashClosing != null)
		{
			if (HostForm != null && HostForm.InvokeRequired)
			{
				HostForm.BeginInvoke(this.SplashClosing, this, e);
			}
			else
			{
				this.SplashClosing(this, e);
			}
		}
	}

	protected virtual void OnSplashClosed(EventArgs e)
	{
		if (this.SplashClosed != null)
		{
			if (HostForm != null && HostForm.InvokeRequired)
			{
				HostForm.BeginInvoke(this.SplashClosed, this, e);
			}
			else
			{
				this.SplashClosed(this, e);
			}
		}
	}

	protected virtual void OnBeforeSplash(CancelEventArgs e)
	{
		if (this.BeforeSplash != null)
		{
			if (HostForm != null && HostForm.InvokeRequired)
			{
				HostForm.BeginInvoke(this.BeforeSplash, this, e);
			}
			else
			{
				this.BeforeSplash(this, e);
			}
		}
	}

	protected virtual void OnSplashDisplayed(EventArgs e)
	{
		if (this.SplashDisplayed != null)
		{
			if (HostForm != null && HostForm.InvokeRequired)
			{
				HostForm.BeginInvoke(this.SplashDisplayed, this, e);
			}
			else
			{
				this.SplashDisplayed(this, e);
			}
		}
	}

	public void HideSplash()
	{
		if (base.DesignMode)
		{
			if (UseCustomSplashPanel && CustomSplashPanel != null)
			{
				CustomSplashPanel.HideSplash();
			}
			else
			{
				SplashControlPanel.HideSplash();
			}
		}
		else if (isShowingValue)
		{
			HostForm.Activate();
			HostForm.BringToFront();
			if (UseCustomSplashPanel && CustomSplashPanel != null)
			{
				CustomSplashPanel.HideSplash();
			}
			else
			{
				SplashControlPanel.HideSplash();
			}
		}
	}

	private void HandleHostFormLoad(object sender, EventArgs e)
	{
		ShowSplash(AutoModeDisableOwner);
	}

	private void HandleHostFormVisibleChanged(object sender, EventArgs e)
	{
		if (HostForm.Visible)
		{
			SaveHostForm();
		}
		HostForm.VisibleChanged -= HandleHostFormVisibleChanged;
	}

	private void RestoreHostForm()
	{
		if (HideHostForm && !base.DesignMode && hostFormSaved)
		{
			HostForm.WindowState = hostFormWindowState;
			HostForm.ShowInTaskbar = hostFormShowInTaskBar;
			HostForm.Size = hostFormSize;
			HostForm.Location = hostFormLocation;
			hostFormSaved = false;
		}
	}

	private void SaveHostForm()
	{
		if (HostForm == null)
		{
			return;
		}
		if (HostForm.Visible)
		{
			if (HideHostForm && !base.DesignMode && !hostFormSaved)
			{
				hostFormShowInTaskBar = HostForm.ShowInTaskbar;
				hostFormLocation = HostForm.Location;
				hostFormSize = HostForm.Size;
				HostForm.Location = new Point(-2000, -2000);
				HostForm.Size = Size.Empty;
				HostForm.ShowInTaskbar = false;
				hostFormSaved = true;
			}
		}
		else
		{
			HostForm.VisibleChanged += HandleHostFormVisibleChanged;
		}
	}

	public void ShowSplash(bool disableOwner)
	{
		SplashPanel splashPanel = null;
		if (UseCustomSplashPanel && CustomSplashPanel != null)
		{
			splashPanel = CustomSplashPanel;
			CustomSplashPanel.SplashParent = this;
			CustomSplashPanel.TimerInterval = TimerInterval;
			CustomSplashPanel.ShowAsTopMost = ShowAsTopMost;
			CustomSplashPanel.ShowAnimation = ShowAnimation;
			CustomSplashPanel.DesktopAlignment = DesktopAlignment;
			CustomSplashPanel.FormIcon = FormIcon;
			CustomSplashPanel.ShowInTaskbar = ShowInTaskbar;
			CustomSplashPanel.Text = Text;
		}
		else
		{
			splashPanel = splashControlDefaultPanelObject;
		}
		isShowingValue = true;
		SaveHostForm();
		if (disableOwner || HostForm != null)
		{
			splashPanel.ShowSplash(Point.Empty, HostForm, disableOwner);
		}
		else
		{
			splashPanel.ShowSplash(Point.Empty, null, disableOwner);
		}
	}

	public DialogResult ShowDialogSplash(Form ownerForm)
	{
		return ShowDialogSplash(Point.Empty, ownerForm);
	}

	public DialogResult ShowDialogSplash(Point location, Form ownerForm)
	{
		SplashPanel splashPanel = null;
		if (UseCustomSplashPanel && CustomSplashPanel != null)
		{
			splashPanel = CustomSplashPanel;
			CustomSplashPanel.SplashParent = this;
			CustomSplashPanel.TimerInterval = TimerInterval;
			CustomSplashPanel.ShowAsTopMost = ShowAsTopMost;
			CustomSplashPanel.ShowAnimation = ShowAnimation;
			CustomSplashPanel.DesktopAlignment = DesktopAlignment;
			CustomSplashPanel.FormIcon = FormIcon;
			CustomSplashPanel.ShowInTaskbar = ShowInTaskbar;
			CustomSplashPanel.Text = Text;
		}
		else
		{
			splashPanel = splashControlDefaultPanelObject;
		}
		isShowingValue = true;
		return splashPanel.ShowDialogSplash(location, ownerForm);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			splashControlDefaultPanelObject.SplashParent = null;
			splashControlDefaultPanelObject.Dispose();
			if (hostFormObject != null && AutoMode)
			{
				hostFormObject.Load -= HandleHostFormLoad;
			}
		}
		base.Dispose(disposing);
	}

	private bool ShouldSerializeTransparentColor()
	{
		if (TransparentColor == Color.Empty)
		{
			return false;
		}
		return true;
	}

	private void ResetTransparentColor()
	{
		TransparentColor = Color.Empty;
	}

	private bool ShouldSerializeText()
	{
		if (Text == string.Empty)
		{
			return false;
		}
		return true;
	}

	public void SplashClosedNotify(SplashPanel splashPanel, SplashCloseType splashCloseType)
	{
		if (isShowingValue)
		{
			OnSplashClosed(EventArgs.Empty);
			isShowingValue = false;
			RestoreHostForm();
			if (HostForm != null)
			{
				HostForm.BringToFront();
			}
		}
		if (closeSplashForm)
		{
			splashPanel.SplashForm.Dispose();
		}
	}

	public bool BeforeSplashNotify(SplashPanel splashPanel)
	{
		CancelEventArgs e = new CancelEventArgs();
		OnBeforeSplash(e);
		return e.Cancel;
	}

	public bool SplashClosingNotify(SplashPanel splashPanel)
	{
		CancelEventArgs e = new CancelEventArgs();
		OnSplashClosing(e);
		return e.Cancel;
	}

	public void SplashDisplayedNotify(SplashPanel splashPanel)
	{
		EventArgs e = new EventArgs();
		OnSplashDisplayed(e);
	}
}
