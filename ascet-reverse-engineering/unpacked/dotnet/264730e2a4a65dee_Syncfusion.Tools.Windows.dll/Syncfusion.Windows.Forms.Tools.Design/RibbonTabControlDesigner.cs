using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RibbonTabControlDesigner : ControlDesigner
{
	private RibbonTabControl m_control;

	private DesignerVerbCollection m_verbs = new DesignerVerbCollection();

	private DesignerActionListCollection m_actionList = new DesignerActionListCollection();

	private static Pen _adornmentsBorderPen;

	public override DesignerVerbCollection Verbs => m_verbs;

	public override DesignerActionListCollection ActionLists => m_actionList;

	static RibbonTabControlDesigner()
	{
		_adornmentsBorderPen = new Pen(Color.Gray);
		_adornmentsBorderPen.DashStyle = DashStyle.Dash;
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = (RibbonTabControl)base.Component;
		m_control.Groups.GroupAdded += Groups_GroupAdded;
		m_verbs.Add(new DesignerVerb("Add group", AddGroup));
		m_verbs.Add(new DesignerVerb("Add tab item", AddTabItem));
		m_verbs.Add(new DesignerVerb("Add toolstrip button", AddButton));
		m_verbs.Add(new DesignerVerb("Add toolstrip label", AddLabel));
		m_verbs.Add(new DesignerVerb("Add separator", AddSeparator));
		m_verbs.Add(new DesignerVerb("Add toolstrip combobox", AddCombobox));
		m_verbs.Add(new DesignerVerb("Add toolstrip textbox", AddTextbox));
		m_verbs.Add(new DesignerVerb("Add toolstrip progressbar", AddProgressBar));
		RibbonTabControlActionList value = new RibbonTabControlActionList(m_control, this);
		m_actionList.Add(value);
		EnableDesignMode((Control)m_control.Header, "Header");
		IDesignerHost designerHost = GetDesignerHost((Control)m_control.Header);
		if (designerHost != null && designerHost.GetDesigner((Control)m_control.Header) is IHeaderDesigner headerDesigner)
		{
			RibbonHeaderControlDesigner tabHeaderDesigner = headerDesigner.GetTabHeaderDesigner();
			if (tabHeaderDesigner != null)
			{
				tabHeaderDesigner.Verbs.AddRange(Verbs);
				tabHeaderDesigner.ActionLists.Add(value);
			}
		}
		if (m_control.Site.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SelectionChanged += SelectionService_SelectionChanged;
		}
		if (m_control.Site.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentRemoved += ChangeService_ComponentRemoved;
		}
	}

	protected override void Dispose(bool disposing)
	{
		foreach (RibbonTabGroup group in m_control.Groups)
		{
			IDesignerHost designerHost = GetDesignerHost(group);
			if (designerHost != null && designerHost.GetDesigner(group) is RibbonTabGroupDesigner ribbonTabGroupDesigner)
			{
				ribbonTabGroupDesigner.AddNewToolStripItem -= GroupDesigner_AddNewItem;
				ribbonTabGroupDesigner.GroupClicked -= GroupDesigner_GroupClicked;
				ribbonTabGroupDesigner.AddNewSingleItem -= GroupDesigner_AddNewSingleItem;
			}
		}
		m_control.Groups.GroupAdded -= Groups_GroupAdded;
		base.Dispose(disposing);
	}

	public void AddGroup(object sender, EventArgs e)
	{
		AddNewGroup();
	}

	public void AddTabItem(object sender, EventArgs e)
	{
		AddItem(typeof(RibbonTabItem));
	}

	public void AddButton(object sender, EventArgs e)
	{
		AddItem(typeof(ToolStripButton));
	}

	public void AddLabel(object sender, EventArgs e)
	{
		AddItem(typeof(ToolStripLabel));
	}

	public void AddSeparator(object sender, EventArgs e)
	{
		AddItem(typeof(ToolStripSeparator));
	}

	public void AddCombobox(object sender, EventArgs e)
	{
		AddItem(typeof(ToolStripComboBox));
	}

	public void AddTextbox(object sender, EventArgs e)
	{
		AddItem(typeof(ToolStripTextBox));
	}

	public void AddProgressBar(object sender, EventArgs e)
	{
		AddItem(typeof(ToolStripProgressBar));
	}

	internal ToolStripItem AddItem(Type itemType)
	{
		if (!itemType.IsSubclassOf(typeof(ToolStripItem)))
		{
			throw new ArgumentOutOfRangeException("itemType");
		}
		RibbonTabGroup ribbonTabGroup = AddNewGroup();
		ribbonTabGroup.SingleItem = true;
		return AddNewItem(itemType, ribbonTabGroup);
	}

	internal RibbonTabGroup AddNewGroup()
	{
		RibbonTabGroup ribbonTabGroup = (RibbonTabGroup)CreateHostedComponent(typeof(RibbonTabGroup));
		return m_control.AddGroup(ribbonTabGroup);
	}

	private IComponent CreateHostedComponent(Type componentType, bool bAssignText)
	{
		if (componentType == null)
		{
			throw new ArgumentNullException("componentType");
		}
		IDesignerHost designerHost = GetDesignerHost(m_control);
		if (designerHost != null)
		{
			IComponent component = designerHost.CreateComponent(componentType);
			if (bAssignText)
			{
				PropertyInfo property = componentType.GetProperty("Text", BindingFlags.Instance | BindingFlags.Public);
				PropertyInfo property2 = componentType.GetProperty("Name", BindingFlags.Instance | BindingFlags.Public);
				if (property != null)
				{
					property.SetValue(component, property2.GetValue(component, null), null);
				}
			}
			return component;
		}
		return null;
	}

	private IComponent CreateHostedComponent(Type componentType)
	{
		return CreateHostedComponent(componentType, bAssignText: true);
	}

	private IDesignerHost GetDesignerHost(Component component)
	{
		if (component != null && component.Site != null)
		{
			return component.Site.GetService(typeof(IDesignerHost)) as IDesignerHost;
		}
		return null;
	}

	private ToolStripItem AddNewItem(Type itemType, RibbonTabGroup group)
	{
		if (group == null)
		{
			throw new ArgumentNullException("group");
		}
		if (!itemType.IsSubclassOf(typeof(ToolStripItem)))
		{
			throw new ArgumentOutOfRangeException("itemType");
		}
		ToolStripItem toolStripItem = (ToolStripItem)CreateHostedComponent(itemType);
		if (toolStripItem == null)
		{
			return null;
		}
		if (toolStripItem is RibbonTabItem)
		{
			((RibbonTabItem)toolStripItem).Page = (RibbonTabPage)CreateHostedComponent(typeof(RibbonTabPage));
		}
		return m_control.AddItem(toolStripItem, group);
	}

	private void DeactivateGroups()
	{
		foreach (RibbonTabGroup group in m_control.Groups)
		{
			group.Active = false;
			group.InvalidateWithInnerControl();
		}
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		base.OnPaintAdornments(pe);
		pe.Graphics.DrawRectangle(_adornmentsBorderPen, 0, 0, m_control.Width - 1, m_control.Height - 1);
	}

	public void GroupDesigner_AddNewItem(object sender, AddNewToolStripItemEventArgs e)
	{
		AddNewItem(e.Type, (RibbonTabGroup)sender);
	}

	public void Groups_GroupAdded(object sender, RibbonTabGroupEventArgs args)
	{
		RibbonTabGroup ribbonTabGroup = args.Group;
		IDesignerHost designerHost = GetDesignerHost(ribbonTabGroup);
		if (designerHost != null && designerHost.GetDesigner(ribbonTabGroup) is RibbonTabGroupDesigner ribbonTabGroupDesigner)
		{
			ribbonTabGroupDesigner.AddNewToolStripItem += GroupDesigner_AddNewItem;
			ribbonTabGroupDesigner.GroupClicked += GroupDesigner_GroupClicked;
			ribbonTabGroupDesigner.AddNewSingleItem += GroupDesigner_AddNewSingleItem;
		}
	}

	public void GroupDesigner_GroupClicked(object sender, ToolStripItemEventArgs e)
	{
		if (sender is RibbonTabGroup ribbonTabGroup)
		{
			DeactivateGroups();
			ribbonTabGroup.Active = true;
			ribbonTabGroup.Invalidate();
		}
	}

	public void GroupDesigner_AddNewSingleItem(object sender, NewItemDroppedAtSingleItemGroupEventArgs args)
	{
		RibbonTabGroup ribbonTabGroup = AddNewGroup();
		ribbonTabGroup.SingleItem = true;
		m_control.AddItem(args.Item, ribbonTabGroup);
		m_control.Header.Groups.Remove(ribbonTabGroup);
		RibbonTabGroup value = (RibbonTabGroup)sender;
		int num = m_control.Groups.IndexOf(value);
		if (!args.CloserToLeft)
		{
			num++;
		}
		m_control.Groups.Insert(num, ribbonTabGroup);
		((Control)m_control.Header).PerformLayout();
	}

	public void SelectionService_SelectionChanged(object sender, EventArgs e)
	{
		ISelectionService selectionService = (ISelectionService)sender;
		ICollection selectedComponents = selectionService.GetSelectedComponents();
		if (selectedComponents.Count != 1)
		{
			DeactivateGroups();
			return;
		}
		IEnumerator enumerator = selectedComponents.GetEnumerator();
		enumerator.MoveNext();
		IComponent component = (IComponent)enumerator.Current;
		if (!(component is ToolStripItem))
		{
			DeactivateGroups();
		}
		if (component is RibbonTabGroup && ((RibbonTabGroup)component).SingleItem)
		{
			selectionService.SetSelectedComponents(new Component[1] { m_control.Header.GetTabsHeader() });
		}
	}

	public void ChangeService_ComponentRemoved(object sender, ComponentEventArgs e)
	{
		IDesignerHost designerHost = GetDesignerHost(m_control);
		if (designerHost != null)
		{
			ToolStripItem toolStripItem = e.Component as ToolStripItem;
			if (toolStripItem != null && toolStripItem.Owner is RibbonTabGroup { SingleItem: not false } ribbonTabGroup)
			{
				ribbonTabGroup.Items.Clear();
				m_control.Groups.Remove(ribbonTabGroup);
				designerHost.DestroyComponent(ribbonTabGroup);
			}
			if (toolStripItem is RibbonTabItem ribbonTabItem)
			{
				designerHost.DestroyComponent(ribbonTabItem.Page);
			}
		}
	}
}
