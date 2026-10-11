using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class WizardDesigner : ParentControlDesigner, IAllowMakeDirty
{
	private IComponentChangeService m_ccs;

	protected override bool DrawGrid => false;

	protected Wizard Wizard => (Wizard)Control;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			DesignerVerb designerVerb = new DesignerVerb("Add Page", OnAddPage);
			DesignerVerb designerVerb2 = new DesignerVerb("Remove Page", OnRemovePage);
			DesignerVerb designerVerb3 = new DesignerVerb("Next Page", OnNextPage);
			DesignerVerb designerVerb4 = new DesignerVerb("Previous Page", OnPreviousPage);
			return new DesignerVerbCollection(new DesignerVerb[4] { designerVerb, designerVerb2, designerVerb4, designerVerb3 });
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		if (Wizard != null)
		{
			Wizard.CardLayout.ComponentDesigner = this;
		}
		m_ccs = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		if (m_ccs != null)
		{
			m_ccs.ComponentRemoving += ComponentRemoving;
		}
	}

	void IAllowMakeDirty.SetDirty()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost != null)
		{
			RaiseComponentChanged(null, null, null);
		}
	}

	protected virtual void OnAddPage(object sender, EventArgs e)
	{
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			WizardPage page = designerHost.CreateComponent(typeof(WizardPage)) as WizardPage;
			Wizard.AddPage(page);
		}
	}

	protected virtual void OnRemovePage(object sender, EventArgs e)
	{
		if (Wizard.SelectedPage == null)
		{
			MessageBox.Show("There is no selected wizard page in the wizard control to remove.");
			return;
		}
		DialogResult dialogResult = MessageBox.Show("Are you sure you want to remove the selected WizardPage and all of it's child controls?", "WizardPage delete confirmation message", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
		if (dialogResult == DialogResult.Yes)
		{
			Wizard.RemovePage();
		}
	}

	protected virtual void OnNextPage(object sender, EventArgs e)
	{
		Wizard.NextPage();
	}

	protected virtual void OnPreviousPage(object sender, EventArgs e)
	{
		Wizard.PreviousPage();
	}

	protected virtual void ComponentRemoving(object sender, ComponentEventArgs e)
	{
		if (Control != null && e.Component == Wizard.PageContainer)
		{
			throw new NotSupportedException("You can`t delete this component");
		}
	}

	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		base.InitializeNewComponent(defaultValues);
		InitializeNewComponent();
	}

	protected virtual void InitializeNewComponent()
	{
		Wizard wizard = Wizard;
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		WizardContainer wizardContainer = (WizardContainer)designerHost.CreateComponent(typeof(WizardContainer));
		wizard.Controls.Add(wizardContainer);
		wizard.SetPageContainer(wizardContainer);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_ccs = null;
		}
		base.Dispose(disposing);
	}
}
