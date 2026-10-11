using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class ComboBoxAdvActionList : SyncActionListBase<ComboBoxAdv>
{
	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public Border3DStyle Border3DStyle
	{
		get
		{
			Border3DStyle result = Border3DStyle.Sunken;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.Border3DStyle;
			}
			return result;
		}
		set
		{
			SetValue("Border3DStyle", value);
		}
	}

	public ComboBoxStyle DropDownStyle
	{
		get
		{
			ComboBoxStyle result = ComboBoxStyle.DropDown;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.DropDownStyle;
			}
			return result;
		}
		set
		{
			SetValue("DropDownStyle", value);
		}
	}

	public VisualStyle Style
	{
		get
		{
			VisualStyle result = VisualStyle.Default;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.Style;
			}
			return result;
		}
		set
		{
			SetValue("Style", value);
		}
	}

	public int DropDownWidth
	{
		get
		{
			int width = base.Control.Width;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				width = comboBoxAdv.Width;
			}
			return width;
		}
		set
		{
			SetValue("DropDownWidth", value);
		}
	}

	public int MaxDropDownItems
	{
		get
		{
			int result = 8;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.MaxDropDownItems;
			}
			return result;
		}
		set
		{
			SetValue("MaxDropDownItems", value);
		}
	}

	public bool ReadOnly
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.ReadOnly;
			}
			return result;
		}
		set
		{
			SetValue("ReadOnly", value);
		}
	}

	public bool Sorted
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.Sorted;
			}
			return result;
		}
		set
		{
			SetValue("Sorted", value);
		}
	}

	public bool ShowImageInTextBox
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.ShowImageInTextBox;
			}
			return result;
		}
		set
		{
			SetValue("ShowImageInTextBox", value);
		}
	}

	public ImageList ImageList
	{
		get
		{
			ImageList result = null;
			if (base.Control != null)
			{
				ComboBoxAdv comboBoxAdv = base.Control;
				result = comboBoxAdv.ImageList;
			}
			return result;
		}
		set
		{
			SetValue("ImageList", value);
		}
	}

	public ComboBoxAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - ComboBoxAdv");
		AddDesignerActionPropertyItem("Name", "Name", "Appearance", "Specifies the name for the control.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("Border3DStyle", "Border3D Style", "Appearance", "Indicates the style of the 3D Border.");
		AddDesignerActionPropertyItem("DropDownStyle", "DropDown Style", "Appearance", "Indicates the style of the comboBox.");
		AddDesignerActionPropertyItem("Style", "Visual Style", "Appearance", "Specifies advanced appearance and behavior.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("DropDownWidth", "DropDown Width", "Behavior", "Specifies the width of the dropdown.");
		AddDesignerActionPropertyItem("MaxDropDownItems", "MaxDropDownItems", "Behavior", "Specfies the maximum number of items to be displayed in the combobox dropdown.");
		AddDesignerActionPropertyItem("ReadOnly", "ReadOnly", "Behavior", "Specifies whether the text in the edit portion can be changed or not.");
		AddDesignerActionPropertyItem("Sorted", "Sort Items", "Behavior", "Specifies whether items in the dropdown should be sorted.");
		AddDesignerActionHeaderItem("Misc");
		AddDesignerActionPropertyItem("ShowImageInTextBox", "ShowImageInTextBox", "Misc", "Specifies whether selected image should be shown in the textbox.");
		AddDesignerActionPropertyItem("ImageList", "ImageList", "Misc", "Specfies the imagelist for the combobox.");
	}
}
