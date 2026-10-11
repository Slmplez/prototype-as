using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class XPTaskBarBoxActionList : SyncActionListBase<XPTaskBarBox>
{
	private const string DEF_ITEMS_PROPERTY_NAME = "Name";

	public string Text
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				_ = base.Control;
				result = base.Control.Text;
			}
			return result;
		}
		set
		{
			SetValue("Text", value);
		}
	}

	public XPTaskBarItemsCollection Items
	{
		get
		{
			XPTaskBarItemsCollection result = null;
			if (base.Control != null)
			{
				_ = base.Control;
				result = base.Control.Items;
			}
			return result;
		}
		set
		{
			SetValue("Items", value);
		}
	}

	public bool Collapsed
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.Collapsed;
			}
			return result;
		}
		set
		{
			SetValue("Collapsed", value);
		}
	}

	public bool ShowCollapseButton
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.ShowCollapseButton;
			}
			return result;
		}
		set
		{
			SetValue("ShowCollapseButton", value);
		}
	}

	public Color HeaderBackColor
	{
		get
		{
			Color result = Color.Empty;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.HeaderBackColor;
			}
			return result;
		}
		set
		{
			SetValue("HeaderBackColor", value);
		}
	}

	public Color ItemBackColor
	{
		get
		{
			Color result = Color.Empty;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.ItemBackColor;
			}
			return result;
		}
		set
		{
			SetValue("ItemBackColor", value);
		}
	}

	public ImageList ImageList
	{
		get
		{
			ImageList result = null;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.ImageList;
			}
			return result;
		}
		set
		{
			SetValue("ImageList", value);
		}
	}

	public int PreferredChildPanelHeight
	{
		get
		{
			int result = 30;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.PreferredChildPanelHeight;
			}
			return result;
		}
		set
		{
			SetValue("PreferredChildPanelHeight", value);
		}
	}

	public XPTaskBarBox.HeaderDirectionFormat HeaderDirection
	{
		get
		{
			XPTaskBarBox.HeaderDirectionFormat result = XPTaskBarBox.HeaderDirectionFormat.LeftToRight;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.HeaderDirection;
			}
			return result;
		}
		set
		{
			SetValue("HeaderDirection", value);
		}
	}

	public bool DrawFocusRect
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.DrawFocusRect;
			}
			return result;
		}
		set
		{
			SetValue("DrawFocusRect", value);
		}
	}

	public bool ShowToolTip
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.ShowToolTip;
			}
			return result;
		}
		set
		{
			SetValue("ShowToolTip", value);
		}
	}

	public int AnimationDelay
	{
		get
		{
			int result = 50;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.AnimationDelay;
			}
			return result;
		}
		set
		{
			SetValue("AnimationDelay", value);
		}
	}

	public int AnimationPositionsCount
	{
		get
		{
			int result = 10;
			if (base.Control != null)
			{
				XPTaskBarBox xPTaskBarBox = base.Control;
				result = xPTaskBarBox.AnimationPositionsCount;
			}
			return result;
		}
		set
		{
			SetValue("AnimationPositionsCount", value);
		}
	}

	public XPTaskBarBoxActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - XPTaskBarBox");
		AddDesignerActionPropertyItem("Text", "Header Text", "Appearance_", "Specifies the name of the header part of XPTaskBarBox.");
		AddDesignerActionMethodItem("AddItem", "Add Item", "Misc", "Adds new XPTaskBarBox");
		AddDesignerActionPropertyItem("Items", "Items Collection", "Misc", "Indicates the collection of XPTaskBarBoxes.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("Collapsed", "Collapsed", "Appearance", "Specifies whether the box should be collapsed.");
		AddDesignerActionPropertyItem("ShowCollapseButton", "Show CollapseButton", "Appearance", "Specifies whether the collapse button should be shown.");
		AddDesignerActionPropertyItem("HeaderBackColor", "Header BackColor", "Appearance", "Specifies header backcolor of XPTaskBarBox.");
		AddDesignerActionPropertyItem("ItemBackColor", "Item BackColor", "Appearance", "Specifies Item backcolor of XPTaskBarBox.");
		AddDesignerActionPropertyItem("ImageList", "Image List", "Appearance", "Specifies the imageList.");
		AddDesignerActionPropertyItem("PreferredChildPanelHeight", "ChildPanel Height", "Appearance", "Specifies the childPanel height.");
		AddDesignerActionPropertyItem("HeaderDirection", "Header Direction", "Appearance", "Specifies the direction of the header.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("AnimationDelay", "Animation Delay", "Behavior", "Specifies the animation delay during collapse/expand.");
		AddDesignerActionPropertyItem("AnimationPositionsCount", "AnimationPositions Count", "Behavior", "Specifies the number of Animations positions during collapse/expand.");
		AddDesignerActionPropertyItem("DrawFocusRect", "DrawFocusRect", "Behavior", "Specifies whether focus rectangle should be drawn when clicked.");
		AddDesignerActionPropertyItem("ShowToolTip", "ShowToolTip", "Behavior", "Specifies whether tooltips should be shown.");
	}

	public void AddItem()
	{
		if (base.Component is XPTaskBarBox xPTaskBarBox && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			DesignerTransaction designerTransaction = designerHost.CreateTransaction();
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(xPTaskBarBox);
			_ = properties["Name"];
			XPTaskBarItem value = new XPTaskBarItem();
			xPTaskBarBox.Items.Add(value);
			designerTransaction.Commit();
		}
	}
}
