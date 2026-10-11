using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TreeViewAdvDesigner : ControlDesigner
{
	private ISelectionService selectionService;

	private bool m_bSkipSelectionChanging;

	private DesignerActionListCollection actionLists;

	public TreeViewAdv Instance => Control as TreeViewAdv;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			DesignerVerbCollection designerVerbCollection = base.Verbs;
			if (designerVerbCollection == null)
			{
				designerVerbCollection = new DesignerVerbCollection();
			}
			designerVerbCollection.Add(new DesignerVerb("Nodes &Editor", tree_NodesEditor));
			designerVerbCollection.Add(new DesignerVerb("&Add Node", tree_AddNode));
			designerVerbCollection.Add(new DesignerVerb("Add &Child Node", tree_AddChildNode));
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
				actionLists.Add(new TreeViewAdvActionList(base.Component));
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

	private void tree_NodesEditor(object sender, EventArgs e)
	{
		if (Instance == null)
		{
			return;
		}
		IServiceProvider site = Instance.Site;
		using TreeViewAdvEditorForm treeViewAdvEditorForm = new TreeViewAdvEditorForm(Instance, site);
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

	private void tree_AddChildNode(object sender, EventArgs e)
	{
		TreeViewAdv instance = Instance;
		if (instance != null)
		{
			TreeNodeAdv node = new TreeNodeAdv("Node" + instance.NodeCount);
			if (instance.SelectedNode != null)
			{
				instance.SelectedNode.Nodes.Add(node);
				instance.NodeCount++;
				instance.SelectedNode.Expand();
			}
			instance.Invalidate();
		}
	}

	private void tree_AddNode(object sender, EventArgs e)
	{
		TreeViewAdv instance = Instance;
		if (instance != null)
		{
			TreeNodeAdv node = new TreeNodeAdv("Node" + instance.NodeCount);
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

	private void selectionService_SelectionChanging(object sender, EventArgs e)
	{
		if (m_bSkipSelectionChanging)
		{
			m_bSkipSelectionChanging = false;
			return;
		}
		foreach (object selectedComponent in selectionService.GetSelectedComponents())
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
