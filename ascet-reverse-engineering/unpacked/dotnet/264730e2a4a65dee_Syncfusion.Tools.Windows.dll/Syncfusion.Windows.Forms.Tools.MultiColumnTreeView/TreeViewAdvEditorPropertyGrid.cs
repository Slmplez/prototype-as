using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[ToolboxItem(false)]
internal class TreeViewAdvEditorPropertyGrid : PropertyGrid
{
	private IServiceProvider m_provider;

	[Browsable(false)]
	[DefaultValue(null)]
	public IServiceProvider Provider
	{
		get
		{
			return m_provider;
		}
		set
		{
			m_provider = value;
		}
	}

	public TreeViewAdvEditorPropertyGrid()
	{
	}

	public TreeViewAdvEditorPropertyGrid(IServiceProvider provider)
		: this()
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
