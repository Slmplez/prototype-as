using System;
using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ToolStripExDesigner : IDesigner, IDisposable
{
	protected IComponent m_component;

	private static Type m_tToolStripDesigner;

	IComponent IDesigner.Component => m_component;

	DesignerVerbCollection IDesigner.Verbs => null;

	static ToolStripExDesigner()
	{
		m_tToolStripDesigner = Type.GetType("System.Windows.Forms.Design.ToolStripDesigner, System.Design");
	}

	void IDesigner.DoDefaultAction()
	{
	}

	void IDesigner.Initialize(IComponent component)
	{
		m_component = component;
		UpdateActionService();
		ToolStripPanelItemDesigner.UpdateSerializationService(component);
		if (component == null)
		{
			return;
		}
		ToolStripExService toolStripExService = ToolStripExService.Get(component.Site);
		if (toolStripExService != null && toolStripExService.Designers != null)
		{
			if (m_tToolStripDesigner == null)
			{
				m_tToolStripDesigner = Type.GetType("System.Windows.Forms.Design.ToolStripDesigner, System.Design", throwOnError: true);
			}
			if (Activator.CreateInstance(m_tToolStripDesigner) is IDesigner designer)
			{
				toolStripExService.Designers[component] = designer;
				designer.Initialize(component);
			}
		}
	}

	void IDisposable.Dispose()
	{
		m_component = null;
	}

	private void UpdateActionService()
	{
		DesignerUtils.GetDesignerActionService(m_component)?.Add(m_component, new ToolStripExActionList(m_component));
	}
}
