using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ToolStripExService : IServiceProvider
{
	private class ToolStripPanelItemSite : ISite, IServiceProvider
	{
		private ISite m_parentSite;

		private ToolStripPanelItemHost m_host;

		IComponent ISite.Component => m_parentSite.Component;

		IContainer ISite.Container => m_parentSite.Container;

		bool ISite.DesignMode => m_parentSite.DesignMode;

		string ISite.Name
		{
			get
			{
				return m_parentSite.Name;
			}
			set
			{
				m_parentSite.Name = value;
			}
		}

		public ISite ParentSite => m_parentSite;

		private ToolStripPanelItemSite(ISite parentSite, ToolStripPanelItemHost host)
		{
			m_parentSite = parentSite;
			m_host = host;
		}

		public static void Update(ToolStripItem item, ToolStripPanelItemHost host)
		{
			if (item != null)
			{
				ISite site = item.Site;
				if (site != null)
				{
					item.Site = new ToolStripPanelItemSite(site, host);
				}
			}
		}

		public static void Restore(ToolStripItem item)
		{
			if (item != null && item.Site is ToolStripPanelItemSite toolStripPanelItemSite)
			{
				item.Site = toolStripPanelItemSite.ParentSite;
			}
		}

		object IServiceProvider.GetService(Type serviceType)
		{
			if (serviceType == typeof(IDesignerHost) || serviceType == typeof(ISelectionService))
			{
				return m_host;
			}
			return m_parentSite.GetService(serviceType);
		}
	}

	public class ToolStripPanelItemHost : IDesignerHost, IServiceContainer, IServiceProvider, ISelectionService
	{
		private ToolStripPanelItem m_item;

		private ToolStripDropDown m_dropDownParent;

		private IDesignerHost m_parentHost;

		private ISelectionService m_parentSelectionSvc;

		IContainer IDesignerHost.Container => m_parentHost.Container;

		bool IDesignerHost.InTransaction => m_parentHost.InTransaction;

		bool IDesignerHost.Loading => m_parentHost.Loading;

		IComponent IDesignerHost.RootComponent => m_item.Control;

		string IDesignerHost.RootComponentClassName => m_item.Control.Site.Name;

		string IDesignerHost.TransactionDescription => m_parentHost.TransactionDescription;

		object ISelectionService.PrimarySelection => m_parentSelectionSvc.PrimarySelection;

		int ISelectionService.SelectionCount => m_parentSelectionSvc.SelectionCount;

		private bool IsSelected
		{
			get
			{
				if (m_parentHost.GetService(typeof(ToolStripExService)) is ToolStripExService { PrimarySelection: ToolStripItem primarySelection })
				{
					for (ToolStrip toolStrip = primarySelection.GetCurrentParent(); toolStrip != null; toolStrip = ((!(toolStrip is ToolStripDropDown)) ? (toolStrip.Parent as ToolStrip) : ((ToolStripDropDown)toolStrip).OwnerItem?.GetCurrentParent()))
					{
						if (toolStrip == m_item.Control)
						{
							return true;
						}
					}
				}
				return false;
			}
		}

		event EventHandler IDesignerHost.Activated
		{
			add
			{
				m_parentHost.Activated += value;
			}
			remove
			{
				m_parentHost.Activated -= value;
			}
		}

		event EventHandler IDesignerHost.Deactivated
		{
			add
			{
				m_parentHost.Deactivated += value;
			}
			remove
			{
				m_parentHost.Deactivated -= value;
			}
		}

		event EventHandler IDesignerHost.LoadComplete
		{
			add
			{
				m_parentHost.LoadComplete += value;
			}
			remove
			{
				m_parentHost.LoadComplete -= value;
			}
		}

		event DesignerTransactionCloseEventHandler IDesignerHost.TransactionClosed
		{
			add
			{
				m_parentHost.TransactionClosed += value;
			}
			remove
			{
				m_parentHost.TransactionClosed -= value;
			}
		}

		event DesignerTransactionCloseEventHandler IDesignerHost.TransactionClosing
		{
			add
			{
				m_parentHost.TransactionClosing += value;
			}
			remove
			{
				m_parentHost.TransactionClosing -= value;
			}
		}

		event EventHandler IDesignerHost.TransactionOpened
		{
			add
			{
				m_parentHost.TransactionOpened += value;
			}
			remove
			{
				m_parentHost.TransactionOpened -= value;
			}
		}

		event EventHandler IDesignerHost.TransactionOpening
		{
			add
			{
				m_parentHost.TransactionOpening += value;
			}
			remove
			{
				m_parentHost.TransactionOpening -= value;
			}
		}

		event EventHandler ISelectionService.SelectionChanged
		{
			add
			{
				m_parentSelectionSvc.SelectionChanged += value;
			}
			remove
			{
				m_parentSelectionSvc.SelectionChanged -= value;
			}
		}

		event EventHandler ISelectionService.SelectionChanging
		{
			add
			{
				m_parentSelectionSvc.SelectionChanging += value;
			}
			remove
			{
				m_parentSelectionSvc.SelectionChanging -= value;
			}
		}

		public ToolStripPanelItemHost(ToolStripPanelItem item, IDesignerHost parentHost)
		{
			m_item = item;
			m_parentHost = parentHost;
			m_parentSelectionSvc = parentHost.GetService(typeof(ISelectionService)) as ISelectionService;
		}

		public virtual void OnItemAdded()
		{
			if (m_item.Control is ToolStrip toolStrip)
			{
				toolStrip.ItemAdded += OnToolStripItemAdded;
				toolStrip.ItemRemoved += OnToolStripItemRemoved;
				toolStrip.ParentChanged += OnParentChanged;
			}
		}

		public virtual void OnItemRemoved()
		{
			if (m_item.Control is ToolStrip toolStrip)
			{
				toolStrip.ItemAdded -= OnToolStripItemAdded;
				toolStrip.ItemRemoved -= OnToolStripItemRemoved;
				toolStrip.ParentChanged -= OnParentChanged;
			}
		}

		void IDesignerHost.Activate()
		{
			m_parentHost.Activate();
		}

		IComponent IDesignerHost.CreateComponent(Type componentClass)
		{
			return m_parentHost.CreateComponent(componentClass);
		}

		IComponent IDesignerHost.CreateComponent(Type componentClass, string name)
		{
			return m_parentHost.CreateComponent(componentClass, name);
		}

		DesignerTransaction IDesignerHost.CreateTransaction()
		{
			return m_parentHost.CreateTransaction();
		}

		DesignerTransaction IDesignerHost.CreateTransaction(string description)
		{
			return m_parentHost.CreateTransaction(description);
		}

		void IDesignerHost.DestroyComponent(IComponent component)
		{
			m_parentHost.DestroyComponent(component);
		}

		IDesigner IDesignerHost.GetDesigner(IComponent component)
		{
			return m_parentHost.GetDesigner(component);
		}

		Type IDesignerHost.GetType(string typeName)
		{
			return m_parentHost.GetType(typeName);
		}

		void IServiceContainer.AddService(Type serviceType, object serviceInstance)
		{
			m_parentHost.AddService(serviceType, serviceInstance);
		}

		void IServiceContainer.AddService(Type serviceType, ServiceCreatorCallback callback)
		{
			m_parentHost.AddService(serviceType, callback);
		}

		void IServiceContainer.AddService(Type serviceType, object serviceInstance, bool promote)
		{
			m_parentHost.AddService(serviceType, serviceInstance, promote);
		}

		void IServiceContainer.AddService(Type serviceType, ServiceCreatorCallback callback, bool promote)
		{
			m_parentHost.AddService(serviceType, callback, promote);
		}

		void IServiceContainer.RemoveService(Type serviceType)
		{
			m_parentHost.RemoveService(serviceType);
		}

		void IServiceContainer.RemoveService(Type serviceType, bool promote)
		{
			m_parentHost.RemoveService(serviceType, promote);
		}

		object IServiceProvider.GetService(Type serviceType)
		{
			return m_parentHost.GetService(serviceType);
		}

		bool ISelectionService.GetComponentSelected(object component)
		{
			return m_parentSelectionSvc.GetComponentSelected(component);
		}

		ICollection ISelectionService.GetSelectedComponents()
		{
			return m_parentSelectionSvc.GetSelectedComponents();
		}

		void ISelectionService.SetSelectedComponents(ICollection components)
		{
			m_parentSelectionSvc.SetSelectedComponents(components);
		}

		void ISelectionService.SetSelectedComponents(ICollection components, SelectionTypes selectionType)
		{
			object[] array = null;
			if (components != null && m_item.Control is ToolStrip toolStrip)
			{
				array = new object[components.Count];
				components.CopyTo(array, 0);
				int i = 0;
				for (int num = array.Length; i < num; i++)
				{
					if (array[i] == toolStrip)
					{
						array[i] = m_item;
					}
				}
			}
			m_parentSelectionSvc.SetSelectedComponents(array, selectionType);
		}

		private void SetParent(ToolStripDropDown newParent)
		{
			if (m_dropDownParent != null)
			{
				m_dropDownParent.Closing -= OnParentClosing;
			}
			if (newParent != null)
			{
				newParent.Closing += OnParentClosing;
			}
			m_dropDownParent = newParent;
		}

		private void OnParentChanged(object sender, EventArgs e)
		{
			SetParent(m_item.Control.Parent as ToolStripDropDown);
		}

		private void OnToolStripItemAdded(object sender, ToolStripItemEventArgs e)
		{
			ToolStripPanelItemSite.Update(e.Item, this);
		}

		private void OnToolStripItemRemoved(object sender, ToolStripItemEventArgs e)
		{
			ToolStripPanelItemSite.Restore(e.Item);
		}

		private void OnParentClosing(object sender, ToolStripDropDownClosingEventArgs e)
		{
			if (!e.Cancel && IsSelected)
			{
				e.Cancel = true;
			}
		}
	}

	private class ToolStripExBehavior : Behavior
	{
		private static Type m_tToolStripItemDataObject;

		static ToolStripExBehavior()
		{
			m_tToolStripItemDataObject = Type.GetType("System.Windows.Forms.Design.ToolStripItemDataObject, System.Design");
		}

		public ToolStripExBehavior(BehaviorService behaviorSvc)
			: base(callParentBehavior: true, behaviorSvc)
		{
		}

		public override void OnDragEnter(Glyph g, DragEventArgs e)
		{
			IDataObject data = e.Data;
			if (m_tToolStripItemDataObject != null && m_tToolStripItemDataObject.IsInstanceOfType(data) && g is ComponentGlyph { RelatedComponent: ToolStripEx relatedComponent })
			{
				FieldInfo field = data.GetType().GetField("owner", BindingFlags.Instance | BindingFlags.NonPublic);
				if (field != null)
				{
					field.SetValue(data, relatedComponent);
				}
			}
			base.OnDragEnter(g, e);
		}
	}

	private const BindingFlags BF_NONPUBLIC = BindingFlags.Instance | BindingFlags.NonPublic;

	private IServiceProvider m_parentProvider;

	private BehaviorService m_behaviorSvc;

	private ToolStrip m_Destination;

	private ToolStripKeyboardHandlingServiceProxy m_kbdSvc;

	private SelectionManagerProxy m_selectionManager;

	private ToolStripAdornerWindowServiceProxy m_adornerSvc;

	private ToolStripExBehavior m_toolstripBehavior;

	private Hashtable m_Items;

	private Hashtable m_Designers;

	private static Type m_tGlyphCollection;

	private static FieldInfo m_fiGlyphs;

	public Hashtable Designers
	{
		get
		{
			if (m_Designers == null && m_parentProvider.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				FieldInfo field = designerHost.GetType().GetField("_designers", BindingFlags.Instance | BindingFlags.NonPublic);
				if (field != null)
				{
					m_Designers = field.GetValue(designerHost) as Hashtable;
				}
			}
			return m_Designers;
		}
	}

	public object PrimarySelection
	{
		get
		{
			object obj = null;
			if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
			{
				obj = selectionService.PrimarySelection;
				if (obj == null)
				{
					obj = ToolStripKeyboardHandlingService.SelectedDesignerControl;
				}
			}
			return obj;
		}
	}

	public ToolStrip Destination
	{
		get
		{
			return m_Destination;
		}
		set
		{
			m_Destination = value;
		}
	}

	internal ToolStripKeyboardHandlingServiceProxy ToolStripKeyboardHandlingService
	{
		get
		{
			if (m_kbdSvc == null)
			{
				m_kbdSvc = new ToolStripKeyboardHandlingServiceProxy(m_parentProvider);
			}
			return m_kbdSvc;
		}
	}

	internal SelectionManagerProxy SelectionManager
	{
		get
		{
			if (m_selectionManager == null)
			{
				m_selectionManager = new SelectionManagerProxy(this);
			}
			return m_selectionManager;
		}
	}

	internal ToolStripAdornerWindowServiceProxy AdornerWindowService
	{
		get
		{
			if (m_adornerSvc == null)
			{
				m_adornerSvc = new ToolStripAdornerWindowServiceProxy(this);
			}
			return m_adornerSvc;
		}
	}

	private Hashtable Items
	{
		get
		{
			if (m_Items == null)
			{
				m_Items = new Hashtable();
			}
			return m_Items;
		}
	}

	public event ToolStripItemEventHandler ToolStripItemAdded;

	public event ToolStripItemEventHandler ToolStripItemRemoved;

	static ToolStripExService()
	{
		m_tGlyphCollection = Type.GetType("System.Windows.Forms.Design.Behavior.GlyphCollection, System.Design");
		Type type = Type.GetType("System.Windows.Forms.Design.Behavior.Adorner, System.Design");
		if (type != null)
		{
			m_fiGlyphs = type.GetField("glyphs", BindingFlags.Instance | BindingFlags.NonPublic);
		}
	}

	protected ToolStripExService(IServiceContainer services)
	{
		m_parentProvider = services;
		if (m_parentProvider.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentAdding += OnComponentAdding;
			componentChangeService.ComponentAdded += OnComponentAdded;
			componentChangeService.ComponentRemoving += OnComponentRemoving;
			componentChangeService.ComponentRemoved += OnComponentRemoved;
		}
		m_behaviorSvc = m_parentProvider.GetService(typeof(BehaviorService)) as BehaviorService;
		if (m_behaviorSvc != null && m_parentProvider.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			m_toolstripBehavior = new ToolStripExBehavior(m_behaviorSvc);
			if (designerHost.Loading)
			{
				designerHost.LoadComplete += OnDesignerHostLoadComplete;
			}
			else
			{
				UpdateBehaviors();
			}
		}
	}

	public static ToolStripExService Get(ISite site)
	{
		ToolStripExService toolStripExService = null;
		if (site != null)
		{
			if (site.GetService(typeof(IServiceContainer)) is IServiceContainer serviceContainer)
			{
				toolStripExService = serviceContainer.GetService(typeof(ToolStripExService)) as ToolStripExService;
				if (toolStripExService == null)
				{
					toolStripExService = new ToolStripExService(serviceContainer);
					toolStripExService.UpdateAdornerGlyphs();
					serviceContainer.AddService(typeof(ToolStripExService), toolStripExService);
				}
			}
			RibbonControlDescriptorService.Initialize(site);
		}
		return toolStripExService;
	}

	public virtual void AddItem(ToolStripPanelItem item)
	{
		if (item != null && m_parentProvider.GetService(typeof(IDesignerHost)) is IDesignerHost parentHost)
		{
			ToolStripPanelItemHost toolStripPanelItemHost = new ToolStripPanelItemHost(item, parentHost);
			Items[item] = toolStripPanelItemHost;
			toolStripPanelItemHost.OnItemAdded();
		}
	}

	public virtual void RemoveItem(ToolStripPanelItem item)
	{
		if (item != null && Items[item] is ToolStripPanelItemHost toolStripPanelItemHost)
		{
			Items.Remove(item);
			toolStripPanelItemHost.OnItemRemoved();
		}
	}

	public virtual object GetService(Type serviceType)
	{
		return m_parentProvider.GetService(serviceType);
	}

	private void UpdateAdornerGlyphs()
	{
		SelectionManagerProxy selectionManager = SelectionManager;
		if (selectionManager != null)
		{
			UpdateAdornerGlyphs(selectionManager.BodyGlyphAdorner);
			UpdateAdornerGlyphs(selectionManager.SelectionGlyphAdorner);
		}
		UpdateAdornerGlyphs(AdornerWindowService.DropDownAdorner);
	}

	private void UpdateAdornerGlyphs(Adorner adorner)
	{
		if (m_fiGlyphs != null && adorner != null)
		{
			GlyphCollection glyphs = adorner.Glyphs;
			if (m_tGlyphCollection == glyphs.GetType())
			{
				m_fiGlyphs.SetValue(adorner, new ToolStripExGlyphCollection());
				adorner.Glyphs.AddRange(glyphs);
			}
		}
	}

	private void UpdateBehaviors()
	{
		if (m_behaviorSvc == null)
		{
			return;
		}
		Behavior currentBehavior = m_behaviorSvc.CurrentBehavior;
		if (currentBehavior != m_toolstripBehavior)
		{
			if (currentBehavior != null)
			{
				m_behaviorSvc.PopBehavior(m_toolstripBehavior);
			}
			m_behaviorSvc.PushBehavior(m_toolstripBehavior);
		}
	}

	private void OnComponentAdding(object sender, ComponentEventArgs e)
	{
		if (ToolStripKeyboardHandlingService.CopyInProgress || !(e.Component is ToolStripItem) || !(PrimarySelection is ToolStripItem toolStripItem2))
		{
			return;
		}
		if (!(toolStripItem2 is ToolStripDropDownItem toolStripDropDownItem))
		{
			if (!(toolStripItem2 is ToolStripPanelItem toolStripPanelItem))
			{
				ToolStrip currentParent = toolStripItem2.GetCurrentParent();
				if (currentParent is ToolStripDropDown && !(currentParent is ToolStripOverflow))
				{
					m_Destination = currentParent;
				}
			}
			else
			{
				m_Destination = toolStripPanelItem.ToolStrip;
			}
		}
		else
		{
			m_Destination = toolStripDropDownItem.DropDown;
		}
	}

	private void OnComponentAdded(object sender, ComponentEventArgs e)
	{
		if (!(e.Component is ToolStripItem toolStripItem))
		{
			return;
		}
		if (m_Destination != null)
		{
			if (toolStripItem.Owner == null)
			{
				m_Destination.Items.Add(toolStripItem);
			}
			m_Destination = null;
		}
		if (this.ToolStripItemAdded != null)
		{
			this.ToolStripItemAdded(this, new ToolStripItemEventArgs(toolStripItem));
		}
	}

	private void OnComponentRemoving(object sender, ComponentEventArgs e)
	{
		if (e.Component is ToolStripItem)
		{
			ToolStripPanelItemSite.Restore(e.Component as ToolStripItem);
		}
	}

	private void OnComponentRemoved(object sender, ComponentEventArgs e)
	{
		if (e.Component is ToolStripItem && this.ToolStripItemRemoved != null)
		{
			this.ToolStripItemRemoved(this, new ToolStripItemEventArgs((ToolStripItem)e.Component));
		}
	}

	private void OnDesignerHostLoadComplete(object sender, EventArgs e)
	{
		if (sender is IDesignerHost designerHost)
		{
			designerHost.LoadComplete -= OnDesignerHostLoadComplete;
		}
		UpdateBehaviors();
	}
}
