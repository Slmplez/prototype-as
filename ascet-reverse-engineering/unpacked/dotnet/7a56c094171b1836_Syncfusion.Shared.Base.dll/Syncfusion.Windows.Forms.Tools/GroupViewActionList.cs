using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupViewActionList : SyncActionListBase<GroupView>
{
	public GroupView.GroupViewItemCollection GroupViewItems
	{
		get
		{
			GroupView.GroupViewItemCollection result = null;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.GroupViewItems;
			}
			return result;
		}
		set
		{
			SetValue("GroupViewItems", value);
		}
	}

	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public bool ButtonView
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.ButtonView;
			}
			return result;
		}
		set
		{
			SetValue("ButtonView", value);
		}
	}

	public bool FlatLook
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.FlatLook;
			}
			return result;
		}
		set
		{
			SetValue("FlatLook", value);
		}
	}

	public bool FlowView
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.FlowView;
			}
			return result;
		}
		set
		{
			SetValue("FlowView", value);
		}
	}

	public bool SmallImageView
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.SmallImageView;
			}
			return result;
		}
		set
		{
			SetValue("SmallImageView", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public ImageList LargeImageList
	{
		get
		{
			ImageList result = null;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.LargeImageList;
			}
			return result;
		}
		set
		{
			SetValue("LargeImageList", value);
		}
	}

	public ImageList SmallImageList
	{
		get
		{
			ImageList result = null;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.SmallImageList;
			}
			return result;
		}
		set
		{
			SetValue("SmallImageList", value);
		}
	}

	public bool AllowDragDrop
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.AllowDragDrop;
			}
			return result;
		}
		set
		{
			SetValue("AllowDragDrop", value);
		}
	}

	public bool HighlightImage
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.HighlightImage;
			}
			return result;
		}
		set
		{
			SetValue("HighlightImage", value);
		}
	}

	public bool HighlightText
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.HighlightText;
			}
			return result;
		}
		set
		{
			SetValue("HighlightText", value);
		}
	}

	public bool IntegratedScrolling
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.IntegratedScrolling;
			}
			return result;
		}
		set
		{
			SetValue("IntegratedScrolling", value);
		}
	}

	public bool TextWrap
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				GroupView groupView = base.Control;
				result = groupView.TextWrap;
			}
			return result;
		}
		set
		{
			SetValue("TextWrap", value);
		}
	}

	public GroupViewActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - GroupView");
		AddDesignerActionPropertyItem("Name", "Name", "Misc", "Specifies the name of the control.");
		AddDesignerActionPropertyItem("GroupViewItems", "Items Collection", "Misc", "Specifies the collection of groupViewItems.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ButtonView", "Button View", "Appearance", "Specifies whether Button view should be enabled.");
		AddDesignerActionPropertyItem("FlatLook", "Flat Look", "Appearance", "Specifies whether control should be displayed with flat look.");
		AddDesignerActionPropertyItem("FlowView", "Flow View", "Appearance", "Specifies whether control should use flow type display.");
		AddDesignerActionPropertyItem("SmallImageView", "Small Image View", "Appearance", "Specifies whether control should use small images for items.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Specifies whether themes should be enabled.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("LargeImageList", "Large Imagelist", "Behavior", "Specifies the imagelist used for large images.");
		AddDesignerActionPropertyItem("SmallImageList", "Small Imagelist", "Behavior", "Specifies the imagelist used for small images.");
		AddDesignerActionPropertyItem("AllowDragDrop", "Allow Drag Drop", "Behavior", "Specifies whether drag drop should be enabled.");
		AddDesignerActionPropertyItem("HighlightImage", "Highlight Image", "Behavior", "Specifies whether item's image should be highlighted when mouse hover.");
		AddDesignerActionPropertyItem("HighlightText", "Highlight Text", "Behavior", "Specifies whether item's text should be highlighted when mouse hover.");
		AddDesignerActionPropertyItem("IntegratedScrolling", "Integrated Scrolling", "Behavior", "Specifies whether control use scrolling option integrated with the parent control.");
		AddDesignerActionPropertyItem("TextWrap", "Wrap Text", "Behavior", "Specfies whether item's text should be wrapped.");
	}
}
