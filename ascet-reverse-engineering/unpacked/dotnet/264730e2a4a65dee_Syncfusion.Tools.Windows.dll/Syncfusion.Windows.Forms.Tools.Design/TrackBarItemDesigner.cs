using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TrackBarItemDesigner : IDesigner, IDisposable
{
	public class TrackBarItemSelectionService : IServiceProvider
	{
		private const BindingFlags BF_NONPUBLIC = BindingFlags.Instance | BindingFlags.NonPublic;

		private IServiceProvider m_parentProvider;

		private Hashtable m_designers;

		public Hashtable Designers
		{
			get
			{
				if (m_designers == null && m_parentProvider.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
				{
					FieldInfo field = designerHost.GetType().GetField("_designers", BindingFlags.Instance | BindingFlags.NonPublic);
					if (field != null)
					{
						m_designers = field.GetValue(designerHost) as Hashtable;
					}
				}
				return m_designers;
			}
		}

		protected TrackBarItemSelectionService(IServiceContainer services)
		{
			m_parentProvider = services;
			if (m_parentProvider.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
			{
				selectionService.SelectionChanged += OnSelectionChanged;
			}
		}

		public virtual object GetService(Type serviceType)
		{
			return m_parentProvider.GetService(serviceType);
		}

		public static TrackBarItemSelectionService Get(ISite site)
		{
			TrackBarItemSelectionService trackBarItemSelectionService = null;
			if (site != null && site.GetService(typeof(IServiceContainer)) is IServiceContainer serviceContainer)
			{
				trackBarItemSelectionService = serviceContainer.GetService(typeof(TrackBarItemSelectionService)) as TrackBarItemSelectionService;
				if (trackBarItemSelectionService == null)
				{
					trackBarItemSelectionService = new TrackBarItemSelectionService(serviceContainer);
					serviceContainer.AddService(typeof(TrackBarItemSelectionService), trackBarItemSelectionService);
				}
			}
			return trackBarItemSelectionService;
		}

		public void OnSelectionChanged(object sender, EventArgs e)
		{
			if (!(m_parentProvider.GetService(typeof(BehaviorService)) is BehaviorService behaviorService) || !(m_parentProvider.GetService(typeof(IDesignerHost)) is IDesignerHost { Container: { } container }))
			{
				return;
			}
			_ = container.Components;
			foreach (Component component in container.Components)
			{
				if (component is TrackBarItem)
				{
					TrackBarItem trackBarItem = component as TrackBarItem;
					Point location = behaviorService.MapAdornerWindowPoint(trackBarItem.Control.Handle, Point.Empty);
					behaviorService.Invalidate(new Rectangle(location, trackBarItem.Control.Size));
				}
			}
		}
	}

	protected IComponent m_component;

	IComponent IDesigner.Component => m_component;

	DesignerVerbCollection IDesigner.Verbs => null;

	void IDesigner.Initialize(IComponent component)
	{
		m_component = component;
		if (component == null)
		{
			return;
		}
		TrackBarItemSelectionService trackBarItemSelectionService = TrackBarItemSelectionService.Get(component.Site);
		if (trackBarItemSelectionService != null && trackBarItemSelectionService.Designers != null)
		{
			Type type = Type.GetType("System.Windows.Forms.Design.ToolStripItemDesigner, System.Design");
			if (type != null && Activator.CreateInstance(type) is ComponentDesigner componentDesigner)
			{
				trackBarItemSelectionService.Designers[component] = componentDesigner;
				componentDesigner.Initialize(component);
			}
		}
	}

	void IDesigner.DoDefaultAction()
	{
	}

	void IDisposable.Dispose()
	{
		m_component = null;
	}
}
