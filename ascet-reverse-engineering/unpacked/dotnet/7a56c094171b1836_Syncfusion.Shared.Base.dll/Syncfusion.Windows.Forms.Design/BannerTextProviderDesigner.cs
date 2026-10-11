using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Design;

internal class BannerTextProviderDesigner : ComponentDesigner
{
	private delegate void DestroyComponentAsyncHandler(IComponent component);

	private IComponentChangeService m_changeSvc;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_changeSvc = (IComponentChangeService)GetService(typeof(IComponentChangeService));
		m_changeSvc.ComponentAdded += ComponentAdded;
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (disposing)
		{
			m_changeSvc.ComponentAdded -= ComponentAdded;
			m_changeSvc = null;
		}
	}

	private void ComponentAdded(object sender, ComponentEventArgs e)
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		IComponent component = e.Component;
		if (designerHost != null && component is BannerTextProvider && component != base.Component)
		{
			MessageBox.Show("Multiple instances of BannerTextProvider are not allowed.\nThe new instance will be removed.", "Multiple BannerTextProvider instances warning", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			DestroyComponentAsyncHandler destroyComponentAsyncHandler = designerHost.DestroyComponent;
			destroyComponentAsyncHandler.BeginInvoke(component, null, null);
			ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
			selectionService.SetSelectedComponents(new object[1] { base.Component });
		}
	}
}
