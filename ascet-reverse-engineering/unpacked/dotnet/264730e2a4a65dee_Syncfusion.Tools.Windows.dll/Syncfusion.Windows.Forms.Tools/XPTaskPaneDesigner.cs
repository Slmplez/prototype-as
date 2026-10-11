using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class XPTaskPaneDesigner : WizardDesigner
{
	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		XPTaskPaneHeader header = (Control as XPTaskPane).Header;
		foreach (Control control in header.Controls)
		{
			if (control is XPToolBar xPToolBar)
			{
				xPToolBar.InDesignMode = true;
			}
		}
	}

	protected override void OnAddPage(object sender, EventArgs e)
	{
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			XPTaskPage page = designerHost.CreateComponent(typeof(XPTaskPage)) as XPTaskPage;
			if (((XPTaskPane)Control).CardLayout.ContainerControl == null)
			{
				((XPTaskPane)Control).CardLayout.ContainerControl = ((XPTaskPane)Control).PageContainer;
			}
			((XPTaskPane)Control).AddPage(page);
		}
	}

	protected override void OnMouseDragBegin(int x, int y)
	{
		if (!((XPTaskPane)Control).DesignerClick(new Point(x, y)))
		{
			base.OnMouseDragBegin(x, y);
		}
	}

	protected override void InitializeNewComponent()
	{
		base.InitializeNewComponent();
		Wizard wizard = base.Wizard;
		WizardContainer pageContainer = wizard.PageContainer;
		if (((XPTaskPane)Control).CardLayout.ContainerControl == null)
		{
			((XPTaskPane)Control).CardLayout.ContainerControl = pageContainer;
		}
		TypeDescriptor.GetProperties(pageContainer).Find("Locked", ignoreCase: false)?.SetValue(pageContainer, true);
		pageContainer.Dock = DockStyle.Fill;
		pageContainer.BringToFront();
	}
}
