using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class MultiColumnTreeViewActionList : SyncActionListBase<MultiColumnTreeView>
{
	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public AnchorStyles Anchor
	{
		get
		{
			AnchorStyles result = AnchorStyles.Top | AnchorStyles.Left;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.Anchor;
			}
			return result;
		}
		set
		{
			SetValue("Anchor", value);
		}
	}

	public DockStyle Dock
	{
		get
		{
			DockStyle result = DockStyle.None;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.Dock;
			}
			return result;
		}
		set
		{
			SetValue("Dock", value);
		}
	}

	public bool HotTracking
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.HotTracking;
			}
			return result;
		}
		set
		{
			SetValue("HotTracking", value);
		}
	}

	public bool ShowCheckBoxes
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.ShowCheckBoxes;
			}
			return result;
		}
		set
		{
			SetValue("ShowCheckBoxes", value);
		}
	}

	public bool ShowOptionButtons
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.ShowOptionButtons;
			}
			return result;
		}
		set
		{
			SetValue("ShowOptionButtons", value);
		}
	}

	public bool ShowLines
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.ShowLines;
			}
			return result;
		}
		set
		{
			SetValue("ShowLines", value);
		}
	}

	public bool ShowPlusMinus
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.ShowPlusMinus;
			}
			return result;
		}
		set
		{
			SetValue("ShowPlusMinus", value);
		}
	}

	public ImageList LeftImageList
	{
		get
		{
			ImageList result = new ImageList();
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.LeftImageList;
			}
			return result;
		}
		set
		{
			SetValue("LeftImageList", value);
		}
	}

	public ImageList RightImageList
	{
		get
		{
			ImageList result = new ImageList();
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.RightImageList;
			}
			return result;
		}
		set
		{
			SetValue("RightImageList", value);
		}
	}

	public ImageList StateImageList
	{
		get
		{
			ImageList result = new ImageList();
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.StateImageList;
			}
			return result;
		}
		set
		{
			SetValue("StateImageList", value);
		}
	}

	public bool LabelEdit
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.LabelEdit;
			}
			return result;
		}
		set
		{
			SetValue("LabelEdit", value);
		}
	}

	public bool LoadOnDemand
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.LoadOnDemand;
			}
			return result;
		}
		set
		{
			SetValue("LoadOnDemand", value);
		}
	}

	public bool OwnerDrawNodes
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				MultiColumnTreeView multiColumnTreeView = base.Control;
				result = multiColumnTreeView.OwnerDrawNodes;
			}
			return result;
		}
		set
		{
			SetValue("OwnerDrawNodes", value);
		}
	}

	public MultiColumnTreeViewActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - MultiColumnTreeView");
		AddDesignerActionPropertyItem("Name", "Name", "Appearance_1", "Indicates the Name used in code to identify the Object.");
		AddDesignerActionMethodItem("EditNodes", "Edit Nodes Collection", "Appearance_1", "Indicates Top Level nodes of the treeview.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ShowCheckBoxes", "Show Check Boxes", "Appearance", "Indicates if check boxes will be shown for the nodes.");
		AddDesignerActionPropertyItem("ShowOptionButtons", "Show Option Buttons", "Appearance", "Indicates if the nodes will have an option button");
		AddDesignerActionPropertyItem("ShowLines", "Show Lines", "Appearance", "Indicates if the tree lines are visible");
		AddDesignerActionPropertyItem("ShowPlusMinus", "Show Plus Minus", "Appearance", "Indicates if the plus minus controls are visible");
		AddDesignerActionHeaderItem("ImageList");
		AddDesignerActionPropertyItem("LeftImageList", "Left ImageList", "ImageList", "Indicates the image list that holds images to be drawn on the left of the node.");
		AddDesignerActionPropertyItem("RightImageList", "Right ImageList", "ImageList", "Indicates the image list that holds images to be drawn on the right of the node.");
		AddDesignerActionPropertyItem("StateImageList", "State ImageList", "ImageList", "Indicates the image list that holds images to be drawn on the state of the node.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("LabelEdit", "Edit Label", "Behavior", "Gets/Sets a value indicating whether the label text of the tree nodes can be edited.");
		AddDesignerActionPropertyItem("LoadOnDemand", "Load Child nodes OnDemand", "Behavior", "Specifies if the tree should follow the load-on-demand paradigm.");
		AddDesignerActionPropertyItem("OwnerDrawNodes", "Owner Draw Nodes", "Behavior", "Indicates if the BeforeNodePaint event will be fired before drawing a node.");
		AddDesignerActionPropertyItem("HotTracking", "HotTracking", "Behavior", "Indicates if the nodes will have a hot tracked appearance when the mouse cursor is hovering over them");
		AddDesignerActionHeaderItem("Layout");
		AddDesignerActionPropertyItem("Anchor", "Anchor", "Layout", "Specifies the edges of the container to which a certain control is to be bound.");
		AddDesignerActionPropertyItem("Dock", "Dock", "Layout", "Defines which borders of the control are to be bound to the container.");
	}

	public void EditNodes()
	{
		if (base.Control != null)
		{
			MultiColumnTreeView treeViewAdv = base.Control;
			TreeViewAdvEditorForm treeViewAdvEditorForm = new TreeViewAdvEditorForm(treeViewAdv, GetService(typeof(IServiceProvider)) as IServiceProvider);
			treeViewAdvEditorForm.ShowDialog();
		}
	}
}
