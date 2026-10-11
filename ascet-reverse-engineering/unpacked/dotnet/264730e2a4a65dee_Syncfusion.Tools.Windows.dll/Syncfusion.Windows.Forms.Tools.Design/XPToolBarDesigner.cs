using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class XPToolBarDesigner : ControlDesigner, IToolbarDesigners
{
	private const string DEF_PROP_NAME_ITEMS = "Items";

	private ToolTip tooltip;

	private XPToolBarSerializationProvider bcSerProvider;

	private ISelectionService m_selectionService;

	private IDesignerSerializationManager m_designSerMan;

	private IComponentChangeService m_componentChangeService;

	private bool m_bSelecting;

	private XPToolBar m_xpToolBar;

	private Bar m_bar;

	private BarRenderer m_barRenderer;

	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new XPToolBarActionList(base.Component));
			}
			return actionLists;
		}
	}

	protected int CustomizingItemIndex
	{
		get
		{
			return m_barRenderer.CustomizingItemIndex;
		}
		set
		{
			m_barRenderer.CustomizingItemIndex = value;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		tooltip = new ToolTip();
		tooltip.AutomaticDelay = 0;
		tooltip.InitialDelay = 0;
		tooltip.ReshowDelay = 0;
		tooltip.Active = true;
		tooltip.ShowAlways = true;
		tooltip.SetToolTip(Control, "Add Bar Items into this XPToolBar through the Items Collection or from the BarManager list via simple drag and drop.");
		EnableDragDrop(value: true);
		InitBarControl();
		if (m_xpToolBar != null && m_xpToolBar.Bar != null && m_xpToolBar.Bar.Items != null)
		{
			m_xpToolBar.Bar.Items.CollectionChanged += Items_CollectionChanged;
		}
		bcSerProvider = new XPToolBarSerializationProvider();
		if (GetService(typeof(IDesignerSerializationManager)) is IDesignerSerializationManager designerSerializationManager)
		{
			designerSerializationManager.AddSerializationProvider(bcSerProvider);
			OnControlLoad();
		}
		m_componentChangeService = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		if (m_componentChangeService != null)
		{
			m_componentChangeService.ComponentAdded += ComponentAdded;
			m_componentChangeService.ComponentRemoved += ComponentRemoved;
		}
	}

	private void Items_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (m_xpToolBar != null && e.Element != null && GetService(typeof(IDesignerHost)) is IDesignerHost { Loading: false })
		{
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(m_xpToolBar);
			MemberDescriptor member = properties["Items"];
			RaiseComponentChanged(member, null, null);
		}
	}

	protected virtual void InitBarControl()
	{
		BarManager manager = FindBarManager();
		InitBarControl(manager);
	}

	protected virtual void InitBarControl(BarManager manager)
	{
		m_xpToolBar = Control as XPToolBar;
		if (m_xpToolBar != null)
		{
			m_xpToolBar.InitBarFromDesigner(manager);
		}
	}

	protected BarManager FindBarManager()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		ComponentCollection components = designerHost.Container.Components;
		BarManager result = null;
		foreach (IComponent item in components)
		{
			if (item is BarManager)
			{
				result = item as BarManager;
				break;
			}
		}
		return result;
	}

	protected override bool GetHitTest(Point point)
	{
		Point ptClient = m_xpToolBar.PointToClient(point);
		return m_xpToolBar.IsItemHit(ptClient);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && m_designSerMan != null)
		{
			m_designSerMan.RemoveSerializationProvider(bcSerProvider);
			bcSerProvider.Dispose();
			bcSerProvider = null;
			m_designSerMan.SerializationComplete -= SerializationComplete;
		}
		base.Dispose(disposing);
	}

	void IToolbarDesigners.SetDirty()
	{
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Bar"];
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost != null)
		{
			RaiseComponentChanged(member, null, null);
		}
	}

	private void SelectionChanged(object sender, EventArgs e)
	{
		if (m_selectionService != null && !m_bSelecting && (!(m_selectionService.PrimarySelection is BarItem value) || m_bar.Items.IndexOf(value) < 0))
		{
			CustomizingItemIndex = -1;
		}
	}

	private void SerializationComplete(object sender, EventArgs e)
	{
		OnControlLoad();
	}

	protected virtual void OnControlLoad()
	{
		m_selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (m_selectionService != null)
		{
			m_selectionService.SelectionChanged += SelectionChanged;
			m_barRenderer = m_xpToolBar.Renderer as BarRenderer;
			m_bar = m_xpToolBar.Bar;
			m_barRenderer.CustomizingItemIndexChanged += CustomizingItemIndexChanged;
		}
	}

	private void CustomizingItemIndexChanged(object sender, EventArgs e)
	{
		int customizingItemIndex = CustomizingItemIndex;
		if (customizingItemIndex >= 0)
		{
			BarItems items = m_bar.Items;
			if (customizingItemIndex < items.Count)
			{
				BarItem barItem = items[customizingItemIndex];
				m_bSelecting = true;
				m_selectionService.SetSelectedComponents(null, SelectionTypes.Replace);
				m_bSelecting = false;
				m_selectionService.SetSelectedComponents(new object[1] { barItem }, SelectionTypes.Replace);
			}
		}
	}

	private void ComponentAdded(object sender, ComponentEventArgs e)
	{
		IComponent component = e.Component;
		if (component != null && component is BarManager manager)
		{
			InitBarControl(manager);
		}
		if (e.Component is XPToolBar xPToolBar && xPToolBar == m_xpToolBar)
		{
			xPToolBar.SubscribeDragDrop();
		}
	}

	private void ComponentRemoved(object sender, ComponentEventArgs e)
	{
		IComponent component = e.Component;
		if (component != null && component is BarManager)
		{
			InitBarControl(null);
		}
		if (e.Component is XPToolBar xPToolBar && xPToolBar == m_xpToolBar)
		{
			xPToolBar.UnSubscribeDragDrop();
		}
	}
}
