using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class TabBarSplitterControlDesigner : ParentControlDesigner
{
	private static string[] nonBrowse = new string[1] { "Click" };

	private bool disableDrawGrid;

	private int persistedActivePage;

	private bool m_bPropChanged;

	private DesignerVerb removeVerb;

	private bool m_bTabComponentSelected;

	private DesignerVerbCollection verbs;

	public int PersistedActivePageIndex
	{
		get
		{
			return persistedActivePage;
		}
		set
		{
			persistedActivePage = value;
		}
	}

	protected override bool DrawGrid
	{
		get
		{
			if (disableDrawGrid)
			{
				return false;
			}
			return base.DrawGrid;
		}
	}

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				removeVerb = new DesignerVerb(SR.GetString("TabBarSplitterControlRemove"), OnRemove);
				verbs = new DesignerVerbCollection();
				verbs.Add(new DesignerVerb(SR.GetString("TabBarSplitterControlAdd"), OnAdd));
				verbs.Add(removeVerb);
			}
			removeVerb.Enabled = Control.Controls.Count > 0;
			return verbs;
		}
	}

	protected override bool GetHitTest(Point point)
	{
		return m_bTabComponentSelected;
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 132)
		{
			base.WndProc(ref m);
			if ((int)m.Result == -1)
			{
				m.Result = (IntPtr)1;
			}
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	internal static TabBarPage GetTabBarPageOfComponent(object comp)
	{
		TabBarPage tabBarPage = null;
		for (Control control = comp as Control; control != null; control = control.Parent)
		{
			tabBarPage = control as TabBarPage;
			if (tabBarPage != null)
			{
				break;
			}
		}
		return tabBarPage;
	}

	private void CheckVerbStatus(object sender, ComponentChangedEventArgs e)
	{
		TabBarSplitterControl tabBarSplitterControl = base.Component as TabBarSplitterControl;
		if (removeVerb != null && tabBarSplitterControl != null)
		{
			removeVerb.Enabled = tabBarSplitterControl.Bar.TabCount > 0;
		}
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
			if (base.Component is TabBarSplitterControl tabBarSplitterControl)
			{
				tabBarSplitterControl.ActivePageChanged -= OnTabActivePageChanged;
				tabBarSplitterControl.Bar.RelativeWidthChanged -= OnTabRelativeWidthChanged;
				tabBarSplitterControl.Click -= OnControlClick;
			}
		}
		base.Dispose(disposing);
	}

	public override void Initialize(IComponent component)
	{
		if (!(component is TabBarSplitterControl tabBarSplitterControl))
		{
			throw new Exception("Error initializing TabBarSplitterControlDesigner. Assembly is not correctly referenced.");
		}
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
		if (tabBarSplitterControl != null)
		{
			tabBarSplitterControl.ActivePageChanged += OnTabActivePageChanged;
			tabBarSplitterControl.Bar.RelativeWidthChanged += OnTabRelativeWidthChanged;
			tabBarSplitterControl.Click -= OnControlClick;
		}
		Control.PerformLayout();
	}

	private void OnControlClick(object sender, EventArgs e)
	{
		((ISelectionService)GetService(typeof(ISelectionService)))?.SetSelectedComponents(new object[1] { sender });
	}

	private void OnAdd(object sender, EventArgs eevent)
	{
		TabBarSplitterControl tabBarSplitterControl = base.Component as TabBarSplitterControl;
		Control control = Control;
		MemberDescriptor member = TypeDescriptor.GetProperties(tabBarSplitterControl)["Controls"];
		if (!(GetService(typeof(IDesignerHost)) is IDesignerHost designerHost))
		{
			return;
		}
		DesignerTransaction designerTransaction = designerHost.CreateTransaction("Add tab to " + base.Component.Site.Name);
		try
		{
			try
			{
				RaiseComponentChanging(member);
			}
			catch (CheckoutException ex)
			{
				if (ex == CheckoutException.Canceled)
				{
					return;
				}
				throw;
			}
			TabBarPage tabBarPage = (TabBarPage)designerHost.CreateComponent(typeof(TabBarPage));
			string text = null;
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(tabBarPage)["Name"];
			if (propertyDescriptor != null && propertyDescriptor.PropertyType == typeof(string))
			{
				if (propertyDescriptor.GetValue(tabBarPage) is string text2)
				{
					tabBarPage.Text = text2;
					tabBarPage.Text = text2;
				}
				control.Controls.Add(tabBarPage);
				RaiseComponentChanged(member, null, null);
				tabBarSplitterControl.Bar.SelectedItem = tabBarPage;
			}
		}
		finally
		{
			designerTransaction.Commit();
		}
	}

	private void OnRemove(object sender, EventArgs eevent)
	{
		if (!(base.Component is TabBarSplitterControl tabBarSplitterControl) || tabBarSplitterControl.Bar.TabCount == 0)
		{
			return;
		}
		MemberDescriptor member = TypeDescriptor.GetProperties(tabBarSplitterControl)["Controls"];
		TabBarPage activePage = tabBarSplitterControl.ActivePage;
		if (activePage == null || !(GetService(typeof(IDesignerHost)) is IDesignerHost designerHost))
		{
			return;
		}
		DesignerTransaction designerTransaction = designerHost.CreateTransaction(string.Concat(new string[4]
		{
			"Remove",
			activePage.Site.Name,
			"from",
			base.Component.Site.Name
		}));
		try
		{
			try
			{
				RaiseComponentChanging(member);
			}
			catch (CheckoutException ex)
			{
				if (ex == CheckoutException.Canceled)
				{
					return;
				}
				throw;
			}
			designerHost.DestroyComponent(activePage);
			RaiseComponentChanged(member, null, null);
		}
		finally
		{
			designerTransaction.Commit();
		}
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		m_bTabComponentSelected = false;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService == null)
		{
			return;
		}
		ICollection selectedComponents = selectionService.GetSelectedComponents();
		TabBarSplitterControl tabBarSplitterControl = base.Component as TabBarSplitterControl;
		foreach (object item in selectedComponents)
		{
			if (item is Control && item != tabBarSplitterControl)
			{
				TabBarPage tabBarPageOfComponent = GetTabBarPageOfComponent(item);
				if (tabBarPageOfComponent != null && tabBarPageOfComponent.Parent == tabBarSplitterControl && tabBarPageOfComponent.IsActiveControl)
				{
					tabBarSplitterControl.Bar.SelectedItem = tabBarPageOfComponent;
					break;
				}
			}
			else
			{
				m_bTabComponentSelected = true;
			}
		}
		m_bPropChanged = false;
	}

	private void OnTabRelativeWidthChanged(object sender, EventArgs e)
	{
		m_bPropChanged = true;
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["RelativeWidth"];
		RaiseComponentChanged(member, null, null);
	}

	private void OnTabActivePageChanged(object sender, ControlEventArgs e)
	{
		if (m_bPropChanged)
		{
			m_bPropChanged = false;
			return;
		}
		int persistedActivePageIndex = PersistedActivePageIndex;
		TabBarSplitterControl tabBarSplitterControl = base.Component as TabBarSplitterControl;
		PersistedActivePageIndex = tabBarSplitterControl.ActivePageIndex;
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["ActivePageIndex"];
		RaiseComponentChanged(member, persistedActivePageIndex, PersistedActivePageIndex);
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null && tabBarSplitterControl.ActivePage != null)
		{
			selectionService.SetSelectedComponents(new object[1] { tabBarSplitterControl.ActivePage });
		}
	}
}
