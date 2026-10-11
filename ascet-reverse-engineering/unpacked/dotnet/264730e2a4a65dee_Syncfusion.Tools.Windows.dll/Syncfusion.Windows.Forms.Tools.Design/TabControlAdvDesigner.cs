using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Design;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Reflection;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TabControlAdvDesigner : ParentControlDesigner, ITabControlAdvDesigner
{
	private static string VerbCaption = "Add Tab";

	private bool disableDrawGrid;

	private bool tabComponentSelected;

	private DesignerVerbCollection verbs;

	private DesignerVerb removeVerb;

	private ToolTip tooltip;

	private TabControlCollectionSerializationProvider dummySerProvider;

	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new TabControlActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				removeVerb = new DesignerVerb("Remove Tab", OnRemove);
				verbs = new DesignerVerbCollection();
				verbs.Add(new DesignerVerb("Add Tab", OnAdd));
				verbs.Add(removeVerb);
			}
			removeVerb.Enabled = Control.Controls.Count > 0;
			return verbs;
		}
	}

	protected override bool DrawGrid
	{
		get
		{
			if (!disableDrawGrid)
			{
				return base.DrawGrid;
			}
			return false;
		}
	}

	private void CheckVerbStatus(object sender, ComponentChangedEventArgs e)
	{
		if (removeVerb != null)
		{
			removeVerb.Enabled = Control.Controls.Count > 0;
		}
	}

	public override bool CanParent(Control control)
	{
		return control is TabPageAdv;
	}

	protected override IComponent[] CreateToolCore(ToolboxItem tool, int x, int y, int width, int height, bool hasLocation, bool hasSize)
	{
		throw new NotSupportedException("Cannot drag and drop controls from the toolbox into this component, please use the " + VerbCaption + " verb in the context menu to add tab pages (TabPageAdv Controls) into this Control.");
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			selectionService.SelectionChanged += OnSelectionChanged;
		}
		IComponentChangeService componentChangeService = (IComponentChangeService)GetService(typeof(IComponentChangeService));
		if (componentChangeService != null)
		{
			componentChangeService.ComponentChanged += CheckVerbStatus;
		}
		((TabControlAdv)component).SelectedIndexChanged += OnTabSelectedIndexChanged;
		((TabControlAdv)component).GotFocus += OnGotFocus;
		IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
		if (designerSerializationManager != null)
		{
			dummySerProvider = new TabControlCollectionSerializationProvider(Control.Controls, this);
			designerSerializationManager.AddSerializationProvider(dummySerProvider);
		}
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		designerHost.LoadComplete += DesignerLoadCompleteHandler;
		tooltip = new ToolTip();
		tooltip.AutomaticDelay = 0;
		tooltip.InitialDelay = 0;
		tooltip.ReshowDelay = 0;
		tooltip.Active = true;
		tooltip.ShowAlways = true;
		tooltip.SetToolTip(Control, "Select " + VerbCaption + " from the Context Menu to add tab pages into this tab control.");
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
			if (selectionService != null)
			{
				selectionService.SelectionChanged -= OnSelectionChanged;
			}
			IComponentChangeService componentChangeService = (IComponentChangeService)GetService(typeof(IComponentChangeService));
			if (componentChangeService != null)
			{
				componentChangeService.ComponentChanged -= CheckVerbStatus;
			}
			if (base.Component != null && base.Component is TabControlAdv)
			{
				((TabControlAdv)base.Component).SelectedIndexChanged -= OnTabSelectedIndexChanged;
				((TabControlAdv)base.Component).GotFocus -= OnGotFocus;
			}
			IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
			if (designerHost != null)
			{
				designerHost.LoadComplete -= DesignerLoadCompleteHandler;
			}
		}
		base.Dispose(disposing);
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		try
		{
			disableDrawGrid = true;
			base.OnPaintAdornments(pe);
		}
		finally
		{
			disableDrawGrid = false;
		}
	}

	protected override bool GetHitTest(Point point)
	{
		TabControlAdv tabControlAdv = (TabControlAdv)Control;
		if (tabControlAdv.TabPages.Count > 1)
		{
			point = tabControlAdv.PointToClient(point);
			if (tabComponentSelected)
			{
				if (tabControlAdv.Renderer.HitTestTabs(point, inTransformedCoOrds: false) == -1)
				{
					return tabControlAdv.GetHitTestScroll(point);
				}
				return true;
			}
			return false;
		}
		return false;
	}

	protected override void OnMouseLeave()
	{
		(Control as TabControlAdv).TabPrimitivesHost.HandledMouseLeave();
		base.OnMouseLeave();
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		tabComponentSelected = false;
		if (selectionService == null)
		{
			return;
		}
		ICollection selectedComponents = selectionService.GetSelectedComponents();
		TabControlAdv tabControlAdv = (TabControlAdv)base.Component;
		foreach (object item in selectedComponents)
		{
			if (item == tabControlAdv)
			{
				tabComponentSelected = true;
			}
			TabPageAdv tabPageOfComponent = GetTabPageOfComponent(item);
			if (tabPageOfComponent != null && tabPageOfComponent.Parent == tabControlAdv)
			{
				tabComponentSelected = true;
				tabControlAdv.SelectedTab = tabPageOfComponent;
			}
		}
	}

	private void OnTabSelectedIndexChanged(object sender, EventArgs e)
	{
		TabControlAdv tabControlAdv = (TabControlAdv)base.Component;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			ICollection selectedComponents = selectionService.GetSelectedComponents();
			bool flag = true;
			foreach (object item in selectedComponents)
			{
				TabPageAdv tabPageOfComponent = GetTabPageOfComponent(item);
				if (tabPageOfComponent != null && tabPageOfComponent.Parent == tabControlAdv && tabPageOfComponent == tabControlAdv.SelectedTab)
				{
					flag = false;
				}
			}
			if (flag)
			{
				selectionService.SetSelectedComponents(new object[1] { base.Component });
			}
		}
		foreach (TabPageAdv tabPage in tabControlAdv.TabPages)
		{
			tabPage.SendToBack();
		}
	}

	private void OnGotFocus(object sender, EventArgs e)
	{
		((EventHandlerService)GetService(typeof(EventHandlerService)))?.FocusWindow?.Focus();
	}

	internal static TabPageAdv GetTabPageOfComponent(object selectedComponent)
	{
		if (!(selectedComponent is Control))
		{
			return null;
		}
		for (Control control = (Control)selectedComponent; control != null; control = control.Parent)
		{
			if (control is TabPageAdv)
			{
				return (TabPageAdv)control;
			}
		}
		return null;
	}

	private void OnRemove(object sender, EventArgs eevent)
	{
		TabControlAdv tabControlAdv = (TabControlAdv)base.Component;
		if (tabControlAdv == null || tabControlAdv.TabPages.Count == 0)
		{
			return;
		}
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Controls"];
		TabPageAdv selectedTab = tabControlAdv.SelectedTab;
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost == null)
		{
			return;
		}
		DesignerTransaction designerTransaction = null;
		try
		{
			try
			{
				designerTransaction = designerHost.CreateTransaction("Remove " + selectedTab.Site.Name + " from " + base.Component.Site.Name);
				RaiseComponentChanging(member);
			}
			catch (CheckoutException ex)
			{
				CheckoutException ex2 = ex;
				if (ex2 != CheckoutException.Canceled)
				{
					throw ex2;
				}
			}
			designerHost.DestroyComponent(selectedTab);
			RaiseComponentChanged(member, null, null);
		}
		finally
		{
			designerTransaction?.Commit();
		}
	}

	private TypeLoader GetExisitingTypeLoader()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		ComponentCollection components = designerHost.Container.Components;
		foreach (object item in components)
		{
			if (item is TypeLoader result)
			{
				PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(item)["Name"];
				if (propertyDescriptor != null && !(propertyDescriptor.PropertyType != typeof(string)) && "designTimeTabTypeLoader" == (string)propertyDescriptor.GetValue(item))
				{
					return result;
				}
			}
		}
		return null;
	}

	private void SetupTypeLoaderComponent(TypeLoader typeLoader)
	{
		if (typeLoader == null)
		{
			return;
		}
		TypesToLoadList typesToLoadList = null;
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(typeLoader)["TypesToLoadList"];
		if (propertyDescriptor != null && propertyDescriptor.PropertyType == typeof(TypesToLoadList))
		{
			typesToLoadList = propertyDescriptor.GetValue(typeLoader) as TypesToLoadList;
		}
		if (typesToLoadList == null)
		{
			return;
		}
		Type typeFromHandle = typeof(TypesToLoadList);
		object[] args = new object[7]
		{
			"TabStyleName",
			BindingFlags.Static | BindingFlags.Public | BindingFlags.GetProperty,
			null,
			null,
			null,
			null,
			null
		};
		try
		{
			typeFromHandle.InvokeMember("InitInvokeMemberSettings", BindingFlags.InvokeMethod, null, typesToLoadList, args);
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.Message);
		}
	}

	void ITabControlAdvDesigner.InitTypeLoaderComponent()
	{
		TypeLoader typeLoader = GetExisitingTypeLoader();
		if (typeLoader == null)
		{
			IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
			typeLoader = (TypeLoader)designerHost.CreateComponent(typeof(TypeLoader));
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(typeLoader)["Name"];
			if (propertyDescriptor != null && propertyDescriptor.PropertyType == typeof(string))
			{
				propertyDescriptor.SetValue(typeLoader, "designTimeTabTypeLoader");
			}
			designerHost.Container.Add(typeLoader);
			((IComponentChangeService)GetService(typeof(IComponentChangeService)))?.OnComponentChanged(typeLoader, null, null, null);
		}
		SetupTypeLoaderComponent(typeLoader);
	}

	private void OnAdd(object sender, EventArgs eevent)
	{
		TabControlAdv tabControlAdv = (TabControlAdv)base.Component;
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Controls"];
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost == null)
		{
			return;
		}
		DesignerTransaction designerTransaction = null;
		try
		{
			try
			{
				designerTransaction = designerHost.CreateTransaction("Add tab to " + base.Component.Site.Name);
				RaiseComponentChanging(member);
			}
			catch (CheckoutException ex)
			{
				CheckoutException ex2 = ex;
				if (ex2 == CheckoutException.Canceled)
				{
					throw ex2;
				}
			}
			TabPageAdv tabPageAdv = (TabPageAdv)designerHost.CreateComponent(GetChildType());
			string text = null;
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(tabPageAdv)["Name"];
			if (propertyDescriptor != null && propertyDescriptor.PropertyType == typeof(string))
			{
				text = (string)propertyDescriptor.GetValue(tabPageAdv);
			}
			if (text != null)
			{
				tabPageAdv.Text = text;
			}
			tabControlAdv.Controls.Add(tabPageAdv);
			RaiseComponentChanged(member, null, null);
		}
		finally
		{
			designerTransaction?.Commit();
		}
	}

	private Type GetChildType()
	{
		Type result = typeof(TabPageAdv);
		object[] customAttributes = base.Component.GetType().GetCustomAttributes(typeof(DefaultChildTypeAttribute), inherit: true);
		if (customAttributes.Length > 0)
		{
			DefaultChildTypeAttribute defaultChildTypeAttribute = customAttributes[0] as DefaultChildTypeAttribute;
			if (!typeof(TabPageAdv).IsAssignableFrom(defaultChildTypeAttribute.ChildType))
			{
				MessageBox.Show("Specified custom type " + defaultChildTypeAttribute.ChildType.ToString() + " is not derived from TabPageAdv. Creating a TabPageAdv instance.", "TabControlAdv designer warning:");
			}
			else
			{
				result = defaultChildTypeAttribute.ChildType;
			}
		}
		return result;
	}

	public void RemoveUnserializableChildControls()
	{
		if (!(Control is TabControlAdv tabControlAdv))
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		for (int num = tabControlAdv.Controls.Count - 1; num >= 0; num--)
		{
			Control control = tabControlAdv.Controls[num];
			if (control != null && !(control is TabPageAdv))
			{
				arrayList.Add(control);
				tabControlAdv.Controls.Remove(control);
			}
		}
		if (arrayList.Count > 0)
		{
			tabControlAdv.ChildControlsRemovedByDesigner(arrayList);
		}
	}

	public void DesignerLoadCompleteHandler(object sender, EventArgs e)
	{
		SetupTypeLoaderComponent(GetExisitingTypeLoader());
	}

	protected virtual void SetDirty()
	{
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["TabPages"];
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost != null)
		{
			RaiseComponentChanged(member, null, null);
		}
	}
}
