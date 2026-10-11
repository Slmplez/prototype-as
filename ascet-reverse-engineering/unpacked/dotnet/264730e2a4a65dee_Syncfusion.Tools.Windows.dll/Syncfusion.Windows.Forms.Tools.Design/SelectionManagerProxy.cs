using System;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class SelectionManagerProxy
{
	private static Type m_tBaseSvc;

	private object m_oBaseSvc;

	private GetAdorner m_getBodyAdorner;

	private GetAdorner m_getSelectionAdorner;

	public Adorner BodyGlyphAdorner
	{
		get
		{
			if (m_getBodyAdorner != null)
			{
				return m_getBodyAdorner();
			}
			return null;
		}
	}

	public Adorner SelectionGlyphAdorner
	{
		get
		{
			if (m_getSelectionAdorner != null)
			{
				return m_getSelectionAdorner();
			}
			return null;
		}
	}

	static SelectionManagerProxy()
	{
		m_tBaseSvc = Type.GetType("System.Windows.Forms.Design.Behavior.SelectionManager, System.Design");
	}

	public SelectionManagerProxy(IServiceProvider svcProvider)
	{
		if (svcProvider == null)
		{
			return;
		}
		try
		{
			if (m_tBaseSvc == null)
			{
				m_tBaseSvc = Type.GetType("System.Windows.Forms.Design.Behavior.SelectionManager, System.Design");
			}
			m_oBaseSvc = svcProvider.GetService(m_tBaseSvc);
		}
		catch
		{
		}
		if (m_oBaseSvc != null)
		{
			m_getBodyAdorner = Delegate.CreateDelegate(typeof(GetAdorner), m_oBaseSvc, "get_BodyGlyphAdorner") as GetAdorner;
			m_getSelectionAdorner = Delegate.CreateDelegate(typeof(GetAdorner), m_oBaseSvc, "get_SelectionGlyphAdorner") as GetAdorner;
		}
	}
}
