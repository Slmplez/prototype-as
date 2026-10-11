using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TabSplitterContainerDesigner : ParentControlDesigner
{
	private class TabSplitterContainerActionList : DesignerActionList
	{
		public TabSplitterContainerActionList(IComponent component)
			: base(component)
		{
		}

		public void AddPrimaryPage()
		{
			if (base.Component is TabSplitterContainer tabSplitterContainer && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.CreateComponent(typeof(TabSplitterPage)) is TabSplitterPage tabSplitterPage)
			{
				tabSplitterPage.Text = tabSplitterPage.Name;
				tabSplitterContainer.PrimaryPages.Add(tabSplitterPage);
			}
		}

		public void AddSecondaryPage()
		{
			if (base.Component is TabSplitterContainer tabSplitterContainer && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.CreateComponent(typeof(TabSplitterPage)) is TabSplitterPage tabSplitterPage)
			{
				tabSplitterPage.Text = tabSplitterPage.Name;
				tabSplitterContainer.SecondaryPages.Add(tabSplitterPage);
			}
		}

		public override DesignerActionItemCollection GetSortedActionItems()
		{
			DesignerActionItemCollection designerActionItemCollection = new DesignerActionItemCollection();
			designerActionItemCollection.Add(new DesignerActionMethodItem(this, "AddPrimaryPage", "Add primary page", "Data", "Adds primary page"));
			designerActionItemCollection.Add(new DesignerActionMethodItem(this, "AddSecondaryPage", "Add secondary page", "Data", "Adds secondary page"));
			return designerActionItemCollection;
		}
	}

	private DesignerVerbCollection m_verbs;

	private DesignerActionListCollection m_actionLists;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (m_verbs == null)
			{
				m_verbs = new DesignerVerbCollection();
				m_verbs.Add(new DesignerVerb("Add primary page", AddPrimaryPageHandler));
				m_verbs.Add(new DesignerVerb("Add secondary page", AddSecondaryPageHandler));
			}
			return m_verbs;
		}
	}

	public override DesignerActionListCollection ActionLists => m_actionLists;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		if (Control is TabSplitterContainer tabSplitterContainer)
		{
			tabSplitterContainer.SplitterPositionChanging += OnSplitterPositionChanging;
			tabSplitterContainer.OrientationChanging += OnSplitterOrientationChanging;
			tabSplitterContainer.CollapsedChanging += OnSplitterCollapsedChanging;
			tabSplitterContainer.SwappedChanging += OnSplitterSwappedChanging;
		}
		m_actionLists = new DesignerActionListCollection(new DesignerActionList[1]
		{
			new TabSplitterContainerActionList(base.Component)
		});
	}

	protected override void Dispose(bool disposing)
	{
		if (Control is TabSplitterContainer tabSplitterContainer)
		{
			tabSplitterContainer.SplitterPositionChanging -= OnSplitterPositionChanging;
			tabSplitterContainer.OrientationChanging -= OnSplitterOrientationChanging;
			tabSplitterContainer.CollapsedChanging -= OnSplitterCollapsedChanging;
			tabSplitterContainer.SwappedChanging -= OnSplitterSwappedChanging;
		}
		base.Dispose(disposing);
	}

	protected override bool GetHitTest(Point point)
	{
		if (Control is TabSplitterContainer { Splitter: var splitter } && splitter.ClientRectangle.Contains(splitter.PointToClient(point)))
		{
			return true;
		}
		return base.GetHitTest(point);
	}

	public override bool CanParent(Control control)
	{
		return false;
	}

	protected override void OnDragEnter(DragEventArgs de)
	{
		de.Effect = DragDropEffects.None;
	}

	protected override void OnDragOver(DragEventArgs de)
	{
		de.Effect = DragDropEffects.None;
	}

	protected override void WndProc(ref Message m)
	{
		int msg = m.Msg;
		if (msg == 513)
		{
			OnWmLButtonDown(ref m);
		}
		base.WndProc(ref m);
	}

	public void OnSplitterPositionChanging(object sender, CancelEventArgs e)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(sender)["SplitterPosition"];
		if (propertyDescriptor != null && e is TabSplitterContainer.PositionEventArgs e2)
		{
			try
			{
				propertyDescriptor.SetValue(sender, e2.Position);
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message);
			}
		}
		e.Cancel = true;
	}

	public void OnSplitterOrientationChanging(object sender, CancelEventArgs e)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(sender)["Orientation"];
		if (propertyDescriptor != null && e is TabSplitterContainer.OrientationEventArgs e2)
		{
			try
			{
				propertyDescriptor.SetValue(sender, e2.Orientation);
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message);
			}
		}
		e.Cancel = true;
	}

	public void OnSplitterCollapsedChanging(object sender, CancelEventArgs e)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(sender)["Collapsed"];
		if (propertyDescriptor != null && e is TabSplitterContainer.CollapsedEventArgs e2)
		{
			try
			{
				propertyDescriptor.SetValue(sender, e2.Collapsed);
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message);
			}
		}
		e.Cancel = true;
	}

	public void OnSplitterSwappedChanging(object sender, CancelEventArgs e)
	{
		PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(sender)["Swapped"];
		if (propertyDescriptor != null && e is TabSplitterContainer.SwappedEventArgs e2)
		{
			try
			{
				propertyDescriptor.SetValue(sender, e2.Swapped);
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message);
			}
		}
		e.Cancel = true;
	}

	public void AddPrimaryPageHandler(object sender, EventArgs e)
	{
		if (base.Component is TabSplitterContainer tabSplitterContainer && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.CreateComponent(typeof(TabSplitterPage)) is TabSplitterPage tabSplitterPage)
		{
			tabSplitterPage.Text = tabSplitterPage.Name;
			tabSplitterContainer.PrimaryPages.Add(tabSplitterPage);
		}
	}

	public void AddSecondaryPageHandler(object sender, EventArgs e)
	{
		if (base.Component is TabSplitterContainer tabSplitterContainer && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.CreateComponent(typeof(TabSplitterPage)) is TabSplitterPage tabSplitterPage)
		{
			tabSplitterPage.Text = tabSplitterPage.Name;
			tabSplitterContainer.SecondaryPages.Add(tabSplitterPage);
		}
	}

	private void OnWmLButtonDown(ref Message m)
	{
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService && (selectionService.SelectionCount != 1 || selectionService.PrimarySelection != base.Component))
		{
			selectionService.SetSelectedComponents(new object[1] { base.Component });
		}
	}
}
