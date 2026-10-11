using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(WizardDesigner))]
[ToolboxItem(false)]
public class Wizard : UserControl, ISupportInitialize
{
	public delegate void WizardPageSelectEventHandler(object sender, WizardPageSelectEventArgs e);

	private CardLayout cardLayout;

	private WizardContainer pageContainer;

	private IDesignerHost dh;

	[DocumentationExclude]
	protected WizardPage[] wizardPgs = new WizardPage[0];

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The Panel based class that holds the pages.")]
	[Category("Appearance")]
	public WizardContainer PageContainer => pageContainer;

	protected IDesignerHost DesignerHost => dh;

	[Category("Appearance")]
	[Description("The CardLayout component used to switch between the pages.")]
	public CardLayout CardLayout => cardLayout;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The array that holds the pages.")]
	[Category("Appearance")]
	public virtual WizardPage[] WizardPages
	{
		get
		{
			if (pageContainer == null)
			{
				return wizardPgs;
			}
			ArrayList arrayList = new ArrayList();
			for (int i = 0; i < pageContainer.Controls.Count; i++)
			{
				if (pageContainer.Controls[i] is WizardPage)
				{
					arrayList.Add(pageContainer.Controls[i]);
				}
			}
			return arrayList.ToArray(typeof(WizardPage)) as WizardPage[];
		}
		set
		{
			wizardPgs = value;
			if (pageContainer != null)
			{
				pageContainer.Controls.Clear();
				for (int i = 0; i < value.Length; i++)
				{
					pageContainer.Controls.Add(value[i]);
					value[i].SettingsChanged += PageSettingsChanged;
				}
			}
		}
	}

	[Description("The selected page.")]
	[Category("Apearance")]
	public virtual WizardPage SelectedPage
	{
		get
		{
			if (cardLayout.SelectedCard != null)
			{
				return cardLayout.GetComponentFromName(cardLayout.SelectedCard) as WizardPage;
			}
			return null;
		}
		set
		{
			if (value != null)
			{
				SetRedraw(redrawValue: false);
				if (Validate())
				{
					WizardPageSelectEventArgs e = new WizardPageSelectEventArgs(value);
					OnBeforePageSelect(e);
					cardLayout.SelectedCard = cardLayout.GetCardName(e.Page);
					OnAfterPageSelect(new WizardPageSelectEventArgs(SelectedPage));
				}
				RefreshAppearance();
				SetRedraw(redrawValue: true);
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[Category("Wizard Events")]
	[Description("This event is fired when the Next button is pressed or the NextPage method of the Wizard is called.")]
	public event EventHandler Next;

	[Description("This event is fired when the Back button is pressed or the PreviousPage method of the Wizard is called.")]
	[Category("Wizard Events")]
	public event EventHandler Back;

	[Category("Wizard Events")]
	[Description("This event is fired when the selected page is about to change.")]
	public event WizardPageSelectEventHandler BeforePageSelect;

	[Description("This event is fired when the selected page has changed.")]
	[Category("Wizard Events")]
	public event WizardPageSelectEventHandler AfterPageSelect;

	protected void OnAfterPageSelect(WizardPageSelectEventArgs e)
	{
		if (this.AfterPageSelect != null)
		{
			try
			{
				this.AfterPageSelect(this, e);
			}
			catch
			{
			}
		}
		if (SelectedPage != null)
		{
			SelectedPage.RaisePageLoad();
		}
	}

	protected void OnBeforePageSelect(WizardPageSelectEventArgs e)
	{
		if (this.BeforePageSelect != null)
		{
			try
			{
				this.BeforePageSelect(this, e);
			}
			catch
			{
			}
		}
	}

	protected void OnNext(EventArgs e)
	{
		if (this.Next != null)
		{
			try
			{
				this.Next(this, e);
			}
			catch
			{
			}
		}
	}

	protected void OnBack(EventArgs e)
	{
		if (this.Back != null)
		{
			try
			{
				this.Back(this, e);
			}
			catch
			{
			}
		}
	}

	public virtual void SetPageContainer(WizardContainer container)
	{
		if (pageContainer != container)
		{
			if (pageContainer != null)
			{
				pageContainer.ControlAdded -= PageContainer_ControlAdded;
				pageContainer.ControlRemoved -= PageContainer_ControlRemoved;
			}
			pageContainer = container;
			if (pageContainer != null)
			{
				pageContainer.ControlAdded += PageContainer_ControlAdded;
				pageContainer.ControlRemoved += PageContainer_ControlRemoved;
			}
		}
	}

	void ISupportInitialize.BeginInit()
	{
	}

	void ISupportInitialize.EndInit()
	{
		EndInit();
	}

	public void EndInit()
	{
		InitDesignerHostRef();
		OnEndInit();
		if (!base.DesignMode)
		{
			RefreshAppearance();
		}
	}

	[DocumentationExclude]
	protected virtual void OnEndInit()
	{
	}

	[DocumentationExclude]
	protected void InitDesignerHostRef()
	{
		dh = GetService(typeof(IDesignerHost)) as IDesignerHost;
	}

	public Wizard()
	{
		cardLayout = new CardLayout();
		cardLayout.BeginInit();
		cardLayout.LayoutMode = CardLayoutMode.Fill;
		InitializeComponent();
		cardLayout.EndInit();
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		base.SuspendLayout();
		base.Size = new System.Drawing.Size(208, 416);
		base.ResumeLayout(false);
	}

	public void AddPage(WizardPage page)
	{
		pageContainer.Controls.Add(page);
	}

	private void PageContainer_ControlRemoved(object sender, ControlEventArgs e)
	{
		if (e.Control is WizardPage wizardPage)
		{
			wizardPage.SettingsChanged -= PageSettingsChanged;
		}
	}

	private void PageContainer_ControlAdded(object sender, ControlEventArgs e)
	{
		if (e.Control is WizardPage wizardPage)
		{
			TypeDescriptor.GetProperties(wizardPage).Find("DrawGrid", ignoreCase: false)?.SetValue(wizardPage, true);
			wizardPage.SettingsChanged += PageSettingsChanged;
			if (cardLayout.GetCardName(wizardPage) == string.Empty)
			{
				cardLayout.SetCardName(wizardPage, cardLayout.GetNewCardName());
			}
			cardLayout.Last();
			wizardPage.LayoutName = cardLayout.GetCardName(wizardPage);
			RefreshAppearance();
		}
	}

	protected void PageSettingsChanged(object sender, EventArgs e)
	{
		PageSettingsChanged();
	}

	protected virtual void PageSettingsChanged()
	{
		RefreshAppearance();
	}

	public void RemovePage()
	{
		if (SelectedPage == null)
		{
			return;
		}
		try
		{
			WizardPage selectedPage = SelectedPage;
			pageContainer.Controls.Remove(selectedPage);
			if (dh != null)
			{
				dh.DestroyComponent(selectedPage);
			}
		}
		catch
		{
		}
	}

	public void RemovePage(WizardPage page)
	{
		try
		{
			pageContainer.Controls.Remove(page);
			if (dh != null)
			{
				dh.DestroyComponent(page);
			}
		}
		catch
		{
		}
	}

	public void NextPage()
	{
		if (SelectedPage != null)
		{
			if (base.DesignMode || SelectedPage.NextPage == null)
			{
				int nextCardIndex = cardLayout.NextCardIndex;
				WizardPage selectedPage = null;
				if (nextCardIndex != -1)
				{
					IList controls = cardLayout.GetControls();
					selectedPage = controls[nextCardIndex] as WizardPage;
				}
				SelectedPage = selectedPage;
			}
			else
			{
				SelectedPage = SelectedPage.NextPage;
			}
		}
		OnNext(EventArgs.Empty);
	}

	public void PreviousPage()
	{
		if (SelectedPage != null)
		{
			if (base.DesignMode || SelectedPage.PreviousPage == null)
			{
				int previousCardIndex = cardLayout.PreviousCardIndex;
				WizardPage selectedPage = null;
				if (previousCardIndex != -1)
				{
					IList controls = cardLayout.GetControls();
					selectedPage = controls[previousCardIndex] as WizardPage;
				}
				SelectedPage = selectedPage;
			}
			else
			{
				SelectedPage = SelectedPage.PreviousPage;
			}
		}
		OnBack(EventArgs.Empty);
	}

	[DocumentationExclude]
	protected virtual void RefreshAppearance()
	{
	}

	[DocumentationExclude]
	protected bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	private void SetRedraw(bool redrawValue)
	{
		if (base.IsHandleCreated)
		{
			NativeMethodsHelper.SetRedrawWindow(base.Handle, redrawValue, bForceRedraw: false);
		}
	}
}
