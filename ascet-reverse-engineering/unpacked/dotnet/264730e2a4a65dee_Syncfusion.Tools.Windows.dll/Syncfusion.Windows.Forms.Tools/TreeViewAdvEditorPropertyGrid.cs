using System;
using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class TreeViewAdvEditorPropertyGrid : PropertyGrid
{
	private IServiceProvider m_provider;

	public TreeViewAdvEditorPropertyGrid(IServiceProvider provider)
	{
		m_provider = provider;
	}

	protected override object GetService(Type service)
	{
		object service2 = base.GetService(service);
		if (service2 == null && service == typeof(IDesignerHost) && m_provider != null)
		{
			service2 = m_provider.GetService(service);
		}
		return service2;
	}
}
