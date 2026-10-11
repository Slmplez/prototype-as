using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class MultiColumnTreeViewDesigner : ControlDesigner
{
	private ISelectionService selectionService;

	private bool m_bSkipSelectionChanging;

	private DesignerActionListCollection actionLists;

	public Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView Instance => Control as Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			DesignerVerbCollection designerVerbCollection = new DesignerVerbCollection();
			designerVerbCollection.Add(new DesignerVerb("Nodes &Editor...", tree_NodesEditor));
			designerVerbCollection.Add(new DesignerVerb("Columns Editor...", tree_ColumnsEditor));
			designerVerbCollection.Add(new DesignerVerb("Styles Editor...", tree_StylesEditor));
			designerVerbCollection.Add(new DesignerVerb("Add Node", tree_AddNode));
			designerVerbCollection.Add(new DesignerVerb("Add Column", tree_AddColumn));
			return designerVerbCollection;
		}
	}

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new MultiColumnTreeViewActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		selectionService.SelectionChanging += selectionService_SelectionChanging;
	}

	private void tree_ColumnsEditor(object sender, EventArgs e)
	{
		if (Instance == null)
		{
			return;
		}
		IServiceProvider site = Instance.Site;
		using ColumnsEditorForm columnsEditorForm = new ColumnsEditorForm(Instance.Columns, site);
		if (site != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null)
			{
				windowsFormsEditorService.ShowDialog(columnsEditorForm);
			}
			else
			{
				columnsEditorForm.ShowDialog();
			}
		}
		else
		{
			columnsEditorForm.ShowDialog();
		}
	}

	private void tree_NodesEditor(object sender, EventArgs e)
	{
		if (Instance == null)
		{
			return;
		}
		IServiceProvider site = Instance.Site;
		using Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvEditorForm treeViewAdvEditorForm = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvEditorForm(Instance, site);
		if (site != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null)
			{
				windowsFormsEditorService.ShowDialog(treeViewAdvEditorForm);
			}
			else
			{
				treeViewAdvEditorForm.ShowDialog();
			}
		}
		else
		{
			treeViewAdvEditorForm.ShowDialog();
		}
	}

	private void tree_AddNode(object sender, EventArgs e)
	{
		Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView instance = Instance;
		if (instance != null)
		{
			Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdv node = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeNodeAdv("Node" + instance.NodeCount);
			if (instance.SelectedNode != null && instance.SelectedNode.Parent != null)
			{
				instance.SelectedNode.Parent.Nodes.Add(node);
			}
			else
			{
				instance.Nodes.Add(node);
			}
			instance.NodeCount++;
			instance.Invalidate();
		}
	}

	private void tree_AddColumn(object sender, EventArgs e)
	{
		Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.MultiColumnTreeView instance = Instance;
		if (instance != null)
		{
			TreeColumnAdv column = new TreeColumnAdv("Column" + instance.Columns.Count);
			instance.Columns.Add(column);
		}
	}

	private void tree_StylesEditor(object sender, EventArgs e)
	{
		if (Instance == null)
		{
			return;
		}
		IServiceProvider site = Instance.Site;
		using Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvBaseStylesEditorForm treeViewAdvBaseStylesEditorForm = new Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeViewAdvBaseStylesEditorForm(Instance);
		if (site != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null)
			{
				windowsFormsEditorService.ShowDialog(treeViewAdvBaseStylesEditorForm);
			}
			else
			{
				treeViewAdvBaseStylesEditorForm.ShowDialog();
			}
		}
		else
		{
			treeViewAdvBaseStylesEditorForm.ShowDialog();
		}
	}

	private void selectionService_SelectionChanging(object sender, EventArgs e)
	{
		if (m_bSkipSelectionChanging)
		{
			m_bSkipSelectionChanging = false;
			return;
		}
		foreach (Component selectedComponent in selectionService.GetSelectedComponents())
		{
			if (selectedComponent is Control control && Control != null && Control.Controls.Contains(control))
			{
				m_bSkipSelectionChanging = true;
				ArrayList arrayList = new ArrayList();
				arrayList.Add(Control);
				selectionService.SetSelectedComponents(arrayList);
				break;
			}
		}
	}
}
