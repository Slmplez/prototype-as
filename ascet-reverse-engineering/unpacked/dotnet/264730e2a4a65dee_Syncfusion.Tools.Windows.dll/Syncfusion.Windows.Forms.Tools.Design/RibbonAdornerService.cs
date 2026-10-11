using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class RibbonAdornerService : IDisposable
{
	private IDesignerHost m_designerHost;

	private Adorner m_adorner;

	public Adorner Adorner
	{
		get
		{
			if (m_adorner == null)
			{
				m_adorner = new Adorner();
			}
			BehaviorService behaviorService = BehaviorService;
			if (behaviorService != null)
			{
				IList adorners = behaviorService.Adorners;
				if (adorners.Count > 0 && adorners.IndexOf(m_adorner) < 0)
				{
					adorners.Insert(1, m_adorner);
				}
			}
			return m_adorner;
		}
	}

	private BehaviorService BehaviorService
	{
		get
		{
			if (m_designerHost != null)
			{
				return m_designerHost.GetService(typeof(BehaviorService)) as BehaviorService;
			}
			return null;
		}
	}

	public RibbonAdornerService(IDesignerHost designerHost)
	{
		m_designerHost = designerHost;
	}

	public static RibbonAdornerService Get(ISite site)
	{
		if (site != null && site.GetService(typeof(IServiceContainer)) is IServiceContainer serviceContainer)
		{
			RibbonAdornerService ribbonAdornerService = serviceContainer.GetService(typeof(RibbonAdornerService)) as RibbonAdornerService;
			if (ribbonAdornerService == null && serviceContainer.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				ribbonAdornerService = new RibbonAdornerService(designerHost);
				serviceContainer.AddService(typeof(RibbonAdornerService), ribbonAdornerService);
			}
			return ribbonAdornerService;
		}
		return null;
	}

	public void AddGlyphs(GlyphCollection glyphs)
	{
		Adorner.Glyphs.AddRange(glyphs);
	}

	public void RemoveGlyphs(GlyphCollection glyphs)
	{
		GlyphCollection glyphs2 = Adorner.Glyphs;
		foreach (Glyph glyph in glyphs)
		{
			glyphs2.Remove(glyph);
		}
	}

	void IDisposable.Dispose()
	{
		if (m_adorner != null)
		{
			BehaviorService?.Adorners.Remove(m_adorner);
			m_adorner.Glyphs.Clear();
			m_adorner = null;
		}
	}
}
