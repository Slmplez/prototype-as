using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class GroupBarDesigner : ParentControlDesigner
{
	protected DesignerVerb dvAddGroup;

	protected DesignerVerb dvRemoveGroup;

	protected DesignerVerbCollection dvcVerbs;

	protected bool bLoadComplete;

	private DesignerActionListCollection actionLists;

	protected override bool DrawGrid => false;

	public override DesignerVerbCollection Verbs => dvcVerbs;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new GroupBarActionList(base.Component));
			}
			return actionLists;
		}
	}

	public GroupBarDesigner()
	{
		dvAddGroup = new DesignerVerb("Add Group", OnVerbAddGroup);
		dvRemoveGroup = new DesignerVerb("Remove Group", OnVerbRemoveGroup);
		DesignerVerb[] value = new DesignerVerb[2] { dvAddGroup, dvRemoveGroup };
		dvcVerbs = new DesignerVerbCollection(value);
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		designerHost.LoadComplete += IDesignerHost_LoadComplete;
		IComponentChangeService componentChangeService = (IComponentChangeService)GetService(typeof(IComponentChangeService));
		componentChangeService.ComponentRemoved += IComponentChangeService_ComponentRemoved;
		componentChangeService.ComponentChanged += IComponentChangeService_ComponentChanged;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		selectionService.SelectionChanged += ISelectionService_SelectionChanged;
	}

	protected override void PostFilterProperties(IDictionary properties)
	{
		if (bLoadComplete && base.Component is GroupBar { StackedMode: false })
		{
			if (properties.Contains("HeaderHeight"))
			{
				properties.Remove("HeaderHeight");
			}
			if (properties.Contains("HeaderFont"))
			{
				properties.Remove("HeaderFont");
			}
			if (properties.Contains("HeaderForeColor"))
			{
				properties.Remove("HeaderForeColor");
			}
			if (properties.Contains("HeaderBackColor"))
			{
				properties.Remove("HeaderBackColor");
			}
			if (properties.Contains("NavigationPaneButtonWidth"))
			{
				properties.Remove("NavigationPaneButtonWidth");
			}
			if (properties.Contains("NavigationPaneHeight"))
			{
				properties.Remove("NavigationPaneHeight");
			}
		}
		base.PostFilterProperties(properties);
	}

	protected override void OnMouseDragBegin(int x, int y)
	{
		base.OnMouseDragBegin(x, y);
		GroupBar groupBar = base.Component as GroupBar;
		((IIntegratedScrollContainer)groupBar).HandleScrollButtonDown(groupBar.PointToClient(new Point(x, y)));
	}

	protected override void OnMouseDragEnd(bool cancel)
	{
		base.OnMouseDragEnd(cancel);
		GroupBar groupBar = base.Component as GroupBar;
		((IIntegratedScrollContainer)groupBar).HandleScrollButtonUp(groupBar.PointToClient(Cursor.Position));
	}

	protected override void OnDragDrop(DragEventArgs de)
	{
		base.OnDragDrop(de);
		GroupBar groupBar = Control as GroupBar;
		if (groupBar.SelectedItem != -1 && groupBar.SelectedItem < groupBar.GroupBarItems.Count)
		{
			groupBar.SelectedItem = groupBar.SelectedItem;
			ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
			object[] array = new object[1] { groupBar };
			selectionService.SetSelectedComponents(array);
			array[0] = groupBar.GroupBarItems[groupBar.SelectedItem].Client;
			selectionService.SetSelectedComponents(array);
		}
	}

	protected override void WndProc(ref Message m)
	{
		bool flag = false;
		if (m.Msg == 513 && ((ISelectionService)GetService(typeof(ISelectionService))).PrimarySelection is GroupBar)
		{
			flag = true;
		}
		base.WndProc(ref m);
		if (m.Msg == 513 && flag)
		{
			GroupBar groupBar = Control as GroupBar;
			int groupAtLocation = ((IGroupBarDesignerInvoke)groupBar).GetGroupAtLocation(new Point((int)m.LParam));
			if (groupAtLocation >= 0 && groupAtLocation != groupBar.SelectedItem)
			{
				int selectedItem = groupBar.SelectedItem;
				groupBar.SelectedItem = groupAtLocation;
				RaiseComponentChanged(TypeDescriptor.GetProperties(groupBar)["SelectedIndex"], selectedItem, groupAtLocation);
			}
		}
	}

	protected void IDesignerHost_LoadComplete(object sender, EventArgs e)
	{
		bLoadComplete = true;
		GroupBar groupBar = base.Component as GroupBar;
		if (groupBar.GroupBarItems.Count == 0)
		{
			dvRemoveGroup.Enabled = false;
		}
		TypeDescriptor.Refresh(groupBar);
	}

	protected void IComponentChangeService_ComponentRemoved(object sender, ComponentEventArgs e)
	{
		if (!(e.Component is Control))
		{
			return;
		}
		GroupBar groupBar = base.Component as GroupBar;
		if (e.Component.Equals(groupBar))
		{
			if (groupBar.GroupBarItems.Count > 0)
			{
				GroupBarItem[] array = new GroupBarItem[groupBar.GroupBarItems.Count];
				groupBar.GroupBarItems.CopyTo(array, 0);
				groupBar.GroupBarItems.Clear();
				IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
				GroupBarItem[] array2 = array;
				foreach (GroupBarItem groupBarItem in array2)
				{
					designerHost.DestroyComponent(groupBarItem);
				}
			}
			return;
		}
		GroupBar.GroupBarItemCollection groupBarItems = groupBar.GroupBarItems;
		foreach (GroupBarItem item in groupBarItems)
		{
			if (item.Client != null && item.Client.Equals(e.Component))
			{
				item.Client = null;
				break;
			}
		}
		RaiseComponentChanged(TypeDescriptor.GetProperties(groupBar)["GroupBarItems"], groupBarItems, groupBar.GroupBarItems);
	}

	protected void IComponentChangeService_ComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		if (e.Component != base.Component)
		{
			return;
		}
		DesignerVerbCollection designerVerbCollection = Verbs;
		if (designerVerbCollection != null && designerVerbCollection.Count > 0)
		{
			if (((GroupBar)Control).GroupBarItems.Count > 0)
			{
				dvRemoveGroup.Enabled = true;
			}
			else
			{
				dvRemoveGroup.Enabled = false;
			}
		}
	}

	protected void ISelectionService_SelectionChanged(object sender, EventArgs e)
	{
		if (!(GetService(typeof(ISelectionService)) is ISelectionService selectionService) || selectionService.PrimarySelection != base.Component)
		{
			return;
		}
		GroupBar groupBar = base.Component as GroupBar;
		if (groupBar.StackedMode)
		{
			return;
		}
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(groupBar);
		foreach (PropertyDescriptor item in properties)
		{
			if (item.Category == "Stacked Mode")
			{
				TypeDescriptor.Refresh(groupBar);
				break;
			}
		}
	}

	public void OnVerbAddGroup(object sender, EventArgs e)
	{
		GroupBar groupBar = base.Component as GroupBar;
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		GroupBarItem item = (GroupBarItem)designerHost.CreateComponent(typeof(GroupBarItem));
		groupBar.GroupBarItems.Add(item);
		RaiseComponentChanged(TypeDescriptor.GetProperties(groupBar)["GroupBarItems"], null, groupBar.GroupBarItems);
	}

	public void OnVerbRemoveGroup(object sender, EventArgs e)
	{
		GroupBar groupBar = base.Component as GroupBar;
		if (groupBar.GroupBarItems.Count > 0 && groupBar.SelectedItem >= 0)
		{
			IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
			GroupBarItem groupBarItem = groupBar.GroupBarItems[groupBar.SelectedItem];
			if (groupBarItem.Client != null)
			{
				Control client = groupBarItem.Client;
				groupBarItem.Client = null;
				client.Hide();
				designerHost.DestroyComponent(client);
			}
			groupBar.GroupBarItems.Remove(groupBarItem);
			designerHost.DestroyComponent(groupBarItem);
			RaiseComponentChanged(TypeDescriptor.GetProperties(groupBar)["BarObjects"], null, groupBar.GroupBarItems);
		}
	}

	protected override void Dispose(bool bdispose)
	{
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			designerHost.LoadComplete -= IDesignerHost_LoadComplete;
		}
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentChanged -= IComponentChangeService_ComponentChanged;
			componentChangeService.ComponentRemoved -= IComponentChangeService_ComponentRemoved;
		}
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SelectionChanged -= ISelectionService_SelectionChanged;
		}
		base.Dispose(bdispose);
	}
}
