using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class WizardPage : GradientPanel, IComponent, IDisposable
{
	private Container components;

	private WizardPage nextPage;

	private WizardPage previousPage;

	private string title = "Page Title";

	private string layoutName;

	public WizardPage NextPage
	{
		get
		{
			return nextPage;
		}
		set
		{
			nextPage = value;
			if (value != null && value.PreviousPage != this)
			{
				value.PreviousPage = this;
			}
		}
	}

	public WizardPage PreviousPage
	{
		get
		{
			return previousPage;
		}
		set
		{
			previousPage = value;
			if (value != null && value.NextPage != this)
			{
				value.NextPage = this;
			}
		}
	}

	[Description("The name of the page as seen by the Wizard. Used with the SelectedPage property of the Wizard.")]
	[Category("Page")]
	public string LayoutName
	{
		get
		{
			return layoutName;
		}
		set
		{
			if (value == string.Empty || value == null)
			{
				if (base.DesignMode)
				{
					MessageBox.Show("Cannot set null or empty value to LayoutName.");
				}
			}
			else if (layoutName != value)
			{
				layoutName = value;
				OnSettingsChanged(EventArgs.Empty);
			}
		}
	}

	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Description("The title of the page. Appears in the TitleLabel of the Wizard.")]
	[Category("Page")]
	[Localizable(true)]
	public string Title
	{
		get
		{
			return title;
		}
		set
		{
			if (title != value)
			{
				title = value;
				OnSettingsChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Page")]
	[Description("Fired when the settings (Title or LayoutName) of the page are changed")]
	public event EventHandler SettingsChanged;

	[Category("Wizard Events")]
	[Description("Occurs when this page has been selected.")]
	public event EventHandler PageLoad;

	public void RaisePageLoad()
	{
		OnPageLoad(EventArgs.Empty);
	}

	protected virtual void OnPageLoad(EventArgs e)
	{
		if (this.PageLoad != null)
		{
			try
			{
				this.PageLoad(this, e);
			}
			catch
			{
			}
		}
	}

	protected virtual void OnSettingsChanged(EventArgs e)
	{
		if (this.SettingsChanged != null)
		{
			try
			{
				this.SettingsChanged(this, e);
			}
			catch
			{
			}
		}
	}

	public WizardPage(IContainer container)
	{
		container.Add(this);
		InitializeComponent();
		base.BorderStyle = BorderStyle.None;
	}

	public WizardPage()
	{
		InitializeComponent();
		base.BorderStyle = BorderStyle.None;
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
	}
}
