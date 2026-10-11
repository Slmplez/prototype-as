using System;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripAdornerWindowServiceProxy
{
	private static Type m_tBaseSvc;

	private object m_oBaseSvc;

	private GetAdorner m_getDropDownAdorner;

	private GetGraphics m_getToolStripAdornerWindowGraphics;

	private GetControl m_getToolStripAdornerWindowControl;

	public Adorner DropDownAdorner
	{
		get
		{
			if (m_getDropDownAdorner != null)
			{
				return m_getDropDownAdorner();
			}
			return null;
		}
	}

	public Graphics ToolStripAdornerWindowGraphics
	{
		get
		{
			if (m_getToolStripAdornerWindowGraphics != null)
			{
				return m_getToolStripAdornerWindowGraphics();
			}
			return null;
		}
	}

	public Control ToolStripAdornerWindowControl
	{
		get
		{
			if (m_getToolStripAdornerWindowControl != null)
			{
				return m_getToolStripAdornerWindowControl();
			}
			return null;
		}
	}

	static ToolStripAdornerWindowServiceProxy()
	{
		m_tBaseSvc = Type.GetType("System.Windows.Forms.Design.ToolStripAdornerWindowService, System.Design");
	}

	public ToolStripAdornerWindowServiceProxy(IServiceProvider svcProvider)
	{
		if (svcProvider != null && m_tBaseSvc != null)
		{
			m_oBaseSvc = svcProvider.GetService(m_tBaseSvc);
			if (m_oBaseSvc != null)
			{
				m_getDropDownAdorner = Delegate.CreateDelegate(typeof(GetAdorner), m_oBaseSvc, "get_DropDownAdorner") as GetAdorner;
				m_getToolStripAdornerWindowGraphics = Delegate.CreateDelegate(typeof(GetGraphics), m_oBaseSvc, "get_ToolStripAdornerWindowGraphics") as GetGraphics;
				m_getToolStripAdornerWindowControl = Delegate.CreateDelegate(typeof(GetControl), m_oBaseSvc, "get_ToolStripAdornerWindowControl") as GetControl;
			}
		}
	}
}
