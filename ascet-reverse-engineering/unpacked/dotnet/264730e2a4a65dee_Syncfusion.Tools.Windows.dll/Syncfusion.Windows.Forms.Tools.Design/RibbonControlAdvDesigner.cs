using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.Windows.Forms.Collections;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RibbonControlAdvDesigner : ControlDesigner, IMessageFilter
{
	private enum ItemPlacement
	{
		Quick,
		Main
	}

	private class RibbonControlAdvHeaderDesignerActionList : DesignerActionList
	{
		private RibbonControlAdvDesigner m_designer;

		private DesignerActionItemCollection m_actionItems;

		public bool ShowQuickPanelBelowRibbon
		{
			get
			{
				return m_designer.m_control.ShowQuickPanelBelowRibbon;
			}
			set
			{
				TypeDescriptor.GetProperties(m_designer.m_control)["ShowQuickPanelBelowRibbon"]?.SetValue(m_designer.m_control, value);
			}
		}

		public RibbonControlAdvHeaderDesignerActionList(RibbonControlAdv control, RibbonControlAdvDesigner designer)
			: base(control)
		{
			m_designer = designer;
			m_actionItems = new DesignerActionItemCollection();
			m_actionItems.Add(new DesignerActionMethodItem(this, "EditQuickItems", "Edit quick items..."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddMainTabItem", "Add main tab item"));
			m_actionItems.Add(new DesignerActionHeaderItem("Layout", "Layout"));
			m_actionItems.Add(new DesignerActionPropertyItem("ShowQuickPanelBelowRibbon", "ShowQuickPanelBelowRibbon", "Layout"));
		}

		private void EditQuickItems()
		{
			if (base.Component is RibbonControlAdv ribbonControlAdv)
			{
				CustomizeQuickItemsDialog.Execute(ribbonControlAdv.HeaderInternal);
				ribbonControlAdv.HeaderInternal.PerformLayout();
				MemberDescriptor member = TypeDescriptor.GetProperties(ribbonControlAdv)["Header"];
				m_designer.RaiseComponentChanging(member);
				m_designer.RaiseComponentChanged(member, null, null);
			}
		}

		private void AddMainTabItem()
		{
			m_designer.AddNewItem(typeof(ToolStripTabItem), ItemPlacement.Main);
		}

		public override DesignerActionItemCollection GetSortedActionItems()
		{
			return m_actionItems;
		}
	}

	private class RibbonControlAdvHeaderGlyph : ControlBodyGlyph
	{
		private RibbonControlAdv m_control;

		private BehaviorService m_behService;

		public override Rectangle Bounds
		{
			get
			{
				Point point = m_behService.ControlToAdornerWindow(m_control);
				return new Rectangle(point.X, point.Y, m_control.ClientSize.Width - 1, m_control.ClientSize.Height - 1);
			}
		}

		protected Rectangle HeaderBounds
		{
			get
			{
				Point point = m_behService.ControlToAdornerWindow(m_control.HeaderInternal);
				return new Rectangle(point.X, point.Y, m_control.HeaderInternal.ClientSize.Width - 1, m_control.HeaderInternal.ClientSize.Height - 1);
			}
		}

		public RibbonControlAdvHeaderGlyph(RibbonControlAdv control, RibbonControlAdvDesigner designer)
			: base(Rectangle.Empty, Cursors.Default, control, designer)
		{
			m_control = control;
			m_behService = designer.BehaviorService;
		}

		public override Cursor GetHitTest(Point p)
		{
			if (Bounds.Contains(p))
			{
				return Cursors.Default;
			}
			return null;
		}
	}

	private RibbonControlAdv m_control;

	private DesignerActionListCollection m_actionLists;

	private ControlBodyGlyph m_gRibbonControl;

	private GlyphCollection m_ribbonGlyphs;

	private BehaviorService m_behaviorSvc;

	private ISelectionService m_selectionSvc;

	private IComponentChangeService m_componentChangeSvc;

	private ToolStripExService m_toolStripSvc;

	private RibbonAdornerService m_ribbonAdornerSvc;

	private MenuDropDown m_officeMenu;

	private NativeWindowEx m_adornerWindow;

	private static string sOfficeMenu = "OfficeMenu";

	public override DesignerActionListCollection ActionLists => m_actionLists;

	public RibbonControlAdvDesigner()
	{
		m_ribbonGlyphs = new GlyphCollection();
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = component as RibbonControlAdv;
		if (m_control != null)
		{
			m_control.ControlAdded += OnControlAdded;
			m_control.ControlRemoved += OnControlRemoved;
			RibbonControlAdvHeader headerInternal = m_control.HeaderInternal;
			if (headerInternal != null)
			{
				headerInternal.QuickItems.ItemRemoved += OnQuickItemRemoved;
				headerInternal.MainItems.ItemAdded += OnMainItemAdded;
				ToolStripDropDownItem menuButton = headerInternal.MenuButton;
				if (menuButton != null)
				{
					menuButton.DropDownOpening += OnMenuButtonDropDownOpening;
				}
				ToolStripDropDownItem quickOverflowButton = headerInternal.QuickOverflowButton;
				if (quickOverflowButton != null)
				{
					quickOverflowButton.DropDownOpening += OnQuickOverflowOpening;
				}
			}
			m_behaviorSvc = DesignerUtils.GetBehaviorService(m_control);
			m_selectionSvc = DesignerUtils.GetSelectionService(m_control);
			m_componentChangeSvc = DesignerUtils.GetComponentChangeService(m_control);
			m_toolStripSvc = ToolStripExService.Get(m_control.Site);
			m_ribbonAdornerSvc = RibbonAdornerService.Get(m_control.Site);
			if (GetService(typeof(IExtenderProviderService)) is IExtenderProviderService extenderProviderService)
			{
				extenderProviderService.AddExtenderProvider(m_control.TabGroups);
			}
			m_selectionSvc.SelectionChanged += OnSelectionChanged;
			m_componentChangeSvc.ComponentRemoved += OnComponentRemoved;
			m_componentChangeSvc.ComponentChanged += OnComponentChanged;
		}
		m_actionLists = new DesignerActionListCollection();
		m_actionLists.Add(new RibbonControlAdvHeaderDesignerActionList(m_control, this));
		UpdateNestedContainer();
		UpdateRibbonGlyphs();
		SubclassAdornerWindow();
	}

	protected override void Dispose(bool disposing)
	{
		m_selectionSvc.SelectionChanged -= OnSelectionChanged;
		m_componentChangeSvc.ComponentRemoved -= OnComponentRemoved;
		m_componentChangeSvc.ComponentChanged -= OnComponentChanged;
		if (GetService(typeof(IExtenderProviderService)) is IExtenderProviderService extenderProviderService)
		{
			extenderProviderService.RemoveExtenderProvider(m_control.TabGroups);
		}
		if (m_adornerWindow != null)
		{
			m_adornerWindow.MessageFilter = null;
			m_adornerWindow = null;
		}
		if (m_ribbonAdornerSvc != null)
		{
			m_ribbonAdornerSvc.RemoveGlyphs(m_ribbonGlyphs);
		}
		base.Dispose(disposing);
	}

	private void AddNewItem(Type toolStripItemType, ItemPlacement placement)
	{
		if (!(m_control.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost))
		{
			return;
		}
		ToolStripItem toolStripItem = (ToolStripItem)designerHost.CreateComponent(toolStripItemType);
		if (toolStripItem != null)
		{
			toolStripItem.Text = toolStripItem.Name;
			switch (placement)
			{
			case ItemPlacement.Quick:
				toolStripItem.Image = new Bitmap(typeof(ToolStripButton), "blank.bmp");
				toolStripItem.DisplayStyle = ToolStripItemDisplayStyle.Image;
				m_control.Header.AddQuickItem(toolStripItem);
				break;
			case ItemPlacement.Main:
				m_control.Header.AddMainItem(toolStripItem);
				break;
			}
		}
	}

	protected override bool GetHitTest(Point point)
	{
		return false;
	}

	protected override ControlBodyGlyph GetControlGlyph(GlyphSelectionType selectionType)
	{
		if (m_gRibbonControl == null)
		{
			m_gRibbonControl = new RibbonControlAdvHeaderGlyph(m_control, this);
		}
		return m_gRibbonControl;
	}

	private void OnControlAdded(object sender, ControlEventArgs e)
	{
		if (e.Control is RibbonPanel ribbonPanel && GetService(typeof(INestedContainer)) is INestedContainer nestedContainer && GetService(typeof(INameCreationService)) is INameCreationService nameCreationService)
		{
			string name = nameCreationService.CreateName(nestedContainer, ribbonPanel.GetType());
			nestedContainer.Add(ribbonPanel, name);
		}
	}

	private void OnControlRemoved(object sender, ControlEventArgs e)
	{
		if (e.Control is RibbonPanel ribbonPanel && GetService(typeof(INestedContainer)) is INestedContainer nestedContainer)
		{
			nestedContainer.Remove(ribbonPanel);
		}
	}

	private void OnQuickItemRemoved(object sender, ListItemEventArgs<ToolStripItem> e)
	{
		if (e.Item is QuickToolstripReflectable quickToolstripReflectable)
		{
			quickToolstripReflectable.DropDown.Opening -= OnDropDownOpening;
		}
	}

	private void OnMainItemAdded(object sender, ListItemEventArgs<ToolStripItem> e)
	{
		if (e.Item.Site == null)
		{
			ISite site = m_control.Site;
			if (site != null && site.Container != null)
			{
				site.Container.Add(e.Item);
			}
		}
		UpdateRibbonGlyphs();
	}

	private void OnDropDownOpening(object sender, CancelEventArgs e)
	{
		e.Cancel = true;
	}

	private void OnMenuButtonDropDownOpening(object sender, EventArgs e)
	{
		if (sender is ToolStripMenuButton toolStripMenuButton && toolStripMenuButton.DropDownItems.Count == 0)
		{
			WindowsAPI.ShowWindow(toolStripMenuButton.DropDown.Handle, 1);
		}
	}

	private void OnQuickOverflowOpening(object sender, EventArgs e)
	{
		if (sender is ToolStripDropDownItem toolStripDropDownItem)
		{
			DesignerUtils.UpdateDropDownParent(toolStripDropDownItem.DropDown);
		}
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		if (!m_control.IsDisposed)
		{
			object primarySelection = m_toolStripSvc.PrimarySelection;
			ToolStripDropDown dropDown = m_control.HeaderInternal.MenuButton.DropDown;
			if (dropDown.IsAutoGenerated)
			{
				UpdateSelection(dropDown, primarySelection);
			}
			if (primarySelection is ToolStripTabItem item)
			{
				CheckTabItem(item);
			}
			else if (primarySelection is ToolStripEx { Parent: RibbonPanel { TabItem: not null } parent })
			{
				CheckTabItem(parent.TabItem);
			}
		}
	}

	private void OnComponentRemoved(object sender, ComponentEventArgs e)
	{
		ObservableList<ToolStripItem> quickItems = m_control.HeaderInternal.QuickItems;
		int i = 0;
		for (int count = quickItems.Count; i < count; i++)
		{
			if (quickItems[i] is IQuickItem quickItem && quickItem.Reflects(e.Component))
			{
				quickItems.RemoveAt(i);
				break;
			}
		}
	}

	private void OnComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		if (e.Component == m_control && e.Member != null && e.Member.Name == "MenuButtonDropDown")
		{
			UpdateNestedContainer();
		}
	}

	private bool IsDropDownComponent(ToolStripDropDown dropDown, object component)
	{
		if (component != null)
		{
			if (!component.Equals(dropDown))
			{
				return DesignerUtils.IsDropDownItem(dropDown, component as ToolStripItem);
			}
			return true;
		}
		return false;
	}

	private bool IsMenuDropDownItem(ToolStripItem item)
	{
		bool result = false;
		if (item != null)
		{
			ToolStrip owner = item.Owner;
			if (owner != null)
			{
				ToolStripDropDown dropDown = m_control.HeaderInternal.MenuButton.DropDown;
				if (dropDown != null)
				{
					result = dropDown.Equals(owner) || dropDown.Contains(owner);
				}
			}
		}
		return result;
	}

	private Component GetOwnerItem(ToolStrip ts)
	{
		Component result = null;
		ISite site = ts.Site;
		if (site != null)
		{
			IContainer container = site.Container;
			if (container != null)
			{
				result = container.Components[site.Name] as ToolStripItem;
			}
		}
		return result;
	}

	private Component GetNextSelection(ToolStripItem item)
	{
		Component component = null;
		if (item != null)
		{
			ToolStrip owner = item.Owner;
			if (owner != null)
			{
				component = owner.GetNextItem(item, ArrowDirection.Down);
				if (component == null || component == item)
				{
					component = GetOwnerItem(owner);
				}
			}
		}
		return component;
	}

	private void UpdateNestedContainer()
	{
		if (!(GetService(typeof(INestedContainer)) is INestedContainer nestedContainer))
		{
			return;
		}
		int num = 0;
		int count = nestedContainer.Components.Count;
		while (m_officeMenu != null && num < count)
		{
			if (nestedContainer.Components[num] == m_officeMenu)
			{
				nestedContainer.Remove(m_officeMenu);
				m_officeMenu = null;
			}
			num++;
		}
		if (m_control.MenuButtonDropDown is MenuDropDown { IsAutoGenerated: not false } menuDropDown)
		{
			nestedContainer.Add(menuDropDown, sOfficeMenu);
			m_officeMenu = menuDropDown;
		}
	}

	private void UpdateRibbonGlyphs()
	{
		if (m_ribbonAdornerSvc == null)
		{
			return;
		}
		m_ribbonAdornerSvc.RemoveGlyphs(m_ribbonGlyphs);
		m_ribbonGlyphs.Clear();
		m_ribbonGlyphs.Insert(0, new MenuButtonGlyph(m_control));
		for (int i = 0; i < m_control.HeaderInternal.MainItems.Count; i++)
		{
			ToolStripItem item = m_control.HeaderInternal.MainItems[i];
			ComponentGlyph toolStripItemGlyph = DesignerUtils.GetToolStripItemGlyph(item);
			if (toolStripItemGlyph != null)
			{
				m_ribbonGlyphs.Insert(0, toolStripItemGlyph);
			}
		}
		m_ribbonAdornerSvc.AddGlyphs(m_ribbonGlyphs);
	}

	private void UpdateSelection(ToolStripDropDown dropDown, object selection)
	{
		if (dropDown != null && dropDown.Visible)
		{
			if (selection != dropDown && !DesignerUtils.IsDropDownItem(dropDown, selection as ToolStripItem))
			{
				dropDown.Hide();
			}
			else
			{
				m_behaviorSvc.Invalidate();
			}
		}
	}

	private void Invalidate(Region region)
	{
		if (m_behaviorSvc != null)
		{
			m_behaviorSvc.Invalidate(region);
		}
	}

	private void Invalidate(Rectangle rc)
	{
		if (m_behaviorSvc != null)
		{
			m_behaviorSvc.Invalidate(rc);
		}
	}

	private void CheckTabItem(ToolStripTabItem item)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(item).Find("Checked", ignoreCase: false);
		if (!(bool)propertyDescriptor.GetValue(item))
		{
			propertyDescriptor.SetValue(item, true);
		}
	}

	private void SubclassAdornerWindow()
	{
		if (m_behaviorSvc != null)
		{
			Type type = m_behaviorSvc.GetType();
			PropertyInfo property = type.GetProperty("AdornerWindowControl", BindingFlags.Instance | BindingFlags.NonPublic);
			if (property != null && property.GetValue(m_behaviorSvc, new object[0]) is Control control)
			{
				m_adornerWindow = new NativeWindowEx(control.Handle);
				m_adornerWindow.MessageFilter = this;
			}
		}
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		Msg msg = (Msg)m.Msg;
		if (msg == Msg.WM_CONTEXTMENU && m_selectionSvc != null && m_selectionSvc.SelectionCount == 1 && m_selectionSvc.PrimarySelection is ToolStripTabItem)
		{
			return true;
		}
		return false;
	}
}
