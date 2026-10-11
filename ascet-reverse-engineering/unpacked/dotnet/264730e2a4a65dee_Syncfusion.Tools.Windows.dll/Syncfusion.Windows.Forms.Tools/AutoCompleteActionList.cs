using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteActionList : SyncActionListBase<AutoComplete>
{
	public ImageList ImageList
	{
		get
		{
			ImageList result = null;
			if (base.Component != null)
			{
				AutoComplete autoComplete = base.Component as AutoComplete;
				result = autoComplete.ImageList;
			}
			return result;
		}
		set
		{
			SetValue("ImageList", value);
		}
	}

	public bool AdjustHeightToItemCount
	{
		get
		{
			bool result = true;
			if (base.Component != null)
			{
				AutoComplete autoComplete = base.Component as AutoComplete;
				result = autoComplete.AdjustHeightToItemCount;
			}
			return result;
		}
		set
		{
			SetValue("AdjustHeightToItemCount", value);
		}
	}

	public bool ShowColumnHeader
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				AutoComplete autoComplete = base.Component as AutoComplete;
				result = autoComplete.ShowColumnHeader;
			}
			return result;
		}
		set
		{
			SetValue("ShowColumnHeader", value);
		}
	}

	public bool AutoAddItem
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				AutoComplete autoComplete = base.Component as AutoComplete;
				result = autoComplete.AutoAddItem;
			}
			return result;
		}
		set
		{
			SetValue("AutoAddItem", value);
		}
	}

	public bool AutoPersistentDropDownSize
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				AutoComplete autoComplete = base.Component as AutoComplete;
				result = autoComplete.AutoPersistentDropDownSize;
			}
			return result;
		}
		set
		{
			SetValue("AutoPersistentDropDownSize", value);
		}
	}

	public bool ShowCloseButton
	{
		get
		{
			bool result = true;
			if (base.Component != null)
			{
				AutoComplete autoComplete = base.Component as AutoComplete;
				result = autoComplete.ShowCloseButton;
			}
			return result;
		}
		set
		{
			SetValue("ShowCloseButton", value);
		}
	}

	public bool ShowGripper
	{
		get
		{
			bool result = true;
			if (base.Component != null)
			{
				AutoComplete autoComplete = base.Component as AutoComplete;
				result = autoComplete.ShowGripper;
			}
			return result;
		}
		set
		{
			SetValue("ShowGripper", value);
		}
	}

	public AutoCompleteActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - AutoComplete");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ImageList", "ImageList", "Appearance", "Specifies the imagelist used by the control.");
		AddDesignerActionPropertyItem("AdjustHeightToItemCount", "AdjustHeightToItemCount", "Appearance", "Specifies if the height of the dropdown should be adjusted based on the number of items.");
		AddDesignerActionPropertyItem("ShowColumnHeader", "ShowColumnHeader", "Appearance", "Specifies if dropdown list of possible matches will show their headers.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("AutoAddItem", "AutoAddItem", "Behavior", "Specifies if user wants to add items to the history.");
		AddDesignerActionPropertyItem("AutoPersistentDropDownSize", "AutoPersistentDropDownSize", "Behavior", "Indicates whether the dropdown size is persistent.");
		AddDesignerActionHeaderItem("Misc");
		AddDesignerActionPropertyItem("ShowCloseButton", "ShowCloseButton", "Misc", "");
		AddDesignerActionPropertyItem("ShowGripper", "ShowGripper", "Misc", "");
	}
}
