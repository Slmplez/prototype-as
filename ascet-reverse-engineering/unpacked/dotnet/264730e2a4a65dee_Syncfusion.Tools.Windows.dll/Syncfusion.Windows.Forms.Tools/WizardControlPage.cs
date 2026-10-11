using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[Designer(typeof(WizardPageDesigner))]
public class WizardControlPage : WizardPage
{
	private Container components;

	private bool helpVisible = true;

	private bool helpEnabled = true;

	private bool finishVisible = true;

	private bool finishEnabled = true;

	private bool nextVisible = true;

	private bool nextEnabled = true;

	private bool backVisible = true;

	private bool backEnabled = true;

	private bool cancelVisible = true;

	private bool cancelEnabled = true;

	private bool fullPage;

	private bool cancelOverFinish = true;

	private string description = "This is the description of the Wizard Page";

	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Localizable(true)]
	[Description("The description of the page. Appears in the Description Label of the BannerPanel of the WizardControl.")]
	[Category("Page")]
	public string Description
	{
		get
		{
			return description;
		}
		set
		{
			if (description != value)
			{
				description = value;
				OnSettingsChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Determines if the BannerPanel of the WizardControl is hidden when this page is selected.")]
	[Category("Page")]
	public bool FullPage
	{
		get
		{
			return fullPage;
		}
		set
		{
			fullPage = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[Category("Buttons")]
	[DefaultValue(true)]
	[Description("Determines if the Cancel button is positioned over the Finish button. Will override the FinishVisible setting if true.")]
	public bool CancelOverFinish
	{
		get
		{
			return cancelOverFinish;
		}
		set
		{
			cancelOverFinish = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	[Description("Determines if the Help button is visible.")]
	[Category("Buttons")]
	public bool HelpVisible
	{
		get
		{
			return helpVisible;
		}
		set
		{
			helpVisible = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	[Description("Determines if the Help button is enabled.")]
	[Category("Buttons")]
	public bool HelpEnabled
	{
		get
		{
			return helpEnabled;
		}
		set
		{
			helpEnabled = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	[Description("Determines if the Finish button is visible. This will be overridden by the CancelOverFinish property.")]
	[Category("Buttons")]
	public bool FinishVisible
	{
		get
		{
			return finishVisible;
		}
		set
		{
			finishVisible = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[Category("Buttons")]
	[DefaultValue(true)]
	[Description("Determines if the Finish button is enabled.")]
	public bool FinishEnabled
	{
		get
		{
			return finishEnabled;
		}
		set
		{
			finishEnabled = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[Category("Buttons")]
	[DefaultValue(true)]
	[Description("Determines if the Next button is visible.")]
	public bool NextVisible
	{
		get
		{
			return nextVisible;
		}
		set
		{
			nextVisible = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[Category("Buttons")]
	[Description("Determines if the Next button is enabled.")]
	[DefaultValue(true)]
	public bool NextEnabled
	{
		get
		{
			return nextEnabled;
		}
		set
		{
			nextEnabled = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	[Description("Determines if the Back button is visible.")]
	[Category("Buttons")]
	public bool BackVisible
	{
		get
		{
			return backVisible;
		}
		set
		{
			backVisible = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	[Category("Buttons")]
	[Description("Determines if the Back button is enabled.")]
	public bool BackEnabled
	{
		get
		{
			return backEnabled;
		}
		set
		{
			backEnabled = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[Category("Buttons")]
	[DefaultValue(true)]
	[Description("Determines if the Cancel button is visible.")]
	public bool CancelVisible
	{
		get
		{
			return cancelVisible;
		}
		set
		{
			cancelVisible = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[DefaultValue(true)]
	[Category("Buttons")]
	[Description("Determines if the Cancel button is enabled.")]
	public bool CancelEnabled
	{
		get
		{
			return cancelEnabled;
		}
		set
		{
			cancelEnabled = value;
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[Category("Wizard Events")]
	[Description("Occurs to notify that the cancel button was clicked.")]
	public event EventHandler CancelClick;

	[Description("Occurs to notify that the back button was clicked.")]
	[Category("Wizard Events")]
	public event EventHandler BackClick;

	[Description("Occurs to notify that the next button was clicked.")]
	[Category("Wizard Events")]
	public event EventHandler NextClick;

	[Description("Occurs to notify that the finish button was clicked.")]
	[Category("Wizard Events")]
	public event EventHandler FinishClick;

	[Description("Occurs to notify that the help button was clicked.")]
	[Category("Wizard Events")]
	public event EventHandler HelpClick;

	[Category("Wizard Events")]
	[Description("Occurs to validate a page before a new page is selected.")]
	public event CancelEventHandler ValidatePage;

	private void OnCancelClick(EventArgs e)
	{
		if (this.CancelClick != null)
		{
			this.CancelClick(this, e);
		}
	}

	public void RaiseCancelClick()
	{
		OnCancelClick(EventArgs.Empty);
	}

	private void OnBackClick(EventArgs e)
	{
		if (this.BackClick != null)
		{
			this.BackClick(this, e);
		}
	}

	public void RaiseBackClick()
	{
		OnBackClick(EventArgs.Empty);
	}

	private void OnNextClick(EventArgs e)
	{
		if (this.NextClick != null)
		{
			this.NextClick(this, e);
		}
	}

	public void RaiseNextClick()
	{
		OnNextClick(EventArgs.Empty);
	}

	private void OnFinishClick(EventArgs e)
	{
		if (this.FinishClick != null)
		{
			this.FinishClick(this, e);
		}
	}

	public void RaiseFinishClick()
	{
		OnFinishClick(EventArgs.Empty);
	}

	private void OnValidatePage(CancelEventArgs e)
	{
		if (this.ValidatePage != null)
		{
			this.ValidatePage(this, e);
		}
	}

	public void RaiseValidatePage(CancelEventArgs e)
	{
		OnValidatePage(e);
	}

	private void OnHelpClick(EventArgs e)
	{
		if (this.HelpClick != null)
		{
			this.HelpClick(this, e);
		}
	}

	public void RaiseHelpClick()
	{
		OnHelpClick(EventArgs.Empty);
	}

	public WizardControlPage(IContainer container)
	{
		container.Add(this);
		InitializeComponent();
	}

	public WizardControlPage()
	{
		InitializeComponent();
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
	}
}
