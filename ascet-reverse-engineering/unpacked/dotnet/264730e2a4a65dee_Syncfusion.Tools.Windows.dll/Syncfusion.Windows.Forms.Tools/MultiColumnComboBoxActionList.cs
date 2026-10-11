using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class MultiColumnComboBoxActionList : SyncActionListBase<MultiColumnComboBox>
{
	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public Color AlphaBlendSelectionColor
	{
		get
		{
			Color result = Color.FromArgb(64, 178, 180, 191);
			if (base.Control != null)
			{
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.AlphaBlendSelectionColor;
			}
			return result;
		}
		set
		{
			SetValue("AlphaBlendSelectionColor", value);
		}
	}

	public Border3DStyle Border3DStyle
	{
		get
		{
			Border3DStyle result = Border3DStyle.Sunken;
			if (base.Control != null)
			{
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.Border3DStyle;
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
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.DropDownStyle;
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
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.Style;
			}
			return result;
		}
		set
		{
			SetValue("Style", value);
		}
	}

	public bool ShowColumnHeader
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.ShowColumnHeader;
			}
			return result;
		}
		set
		{
			SetValue("ShowColumnHeader", value);
		}
	}

	public int DropDownWidth
	{
		get
		{
			int width = base.Control.Width;
			if (base.Control != null)
			{
				MultiColumnComboBox multiColumnComboBox = base.Control;
				width = multiColumnComboBox.Width;
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
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.MaxDropDownItems;
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
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.ReadOnly;
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
				MultiColumnComboBox multiColumnComboBox = base.Control;
				result = multiColumnComboBox.Sorted;
			}
			return result;
		}
		set
		{
			SetValue("Sorted", value);
		}
	}

	public MultiColumnComboBoxActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - MutilColumnComboBox");
		AddDesignerActionPropertyItem("Name", "Name", "Appearance", "Specifies the name for the control.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("AlphaBlendSelectionColor", "AlphaBlend SelectionColor", "Appearance", "Specfies the color of alpha blend selections in the dropdown.");
		AddDesignerActionPropertyItem("Border3DStyle", "Border3D Style", "Appearance", "Indicates the style of the 3D Border.");
		AddDesignerActionPropertyItem("DropDownStyle", "DropDown Style", "Appearance", "Indicates the style of the comboBox.");
		AddDesignerActionPropertyItem("Style", "Visual Style", "Appearance", "Specifies advanced appearance and behavior.");
		AddDesignerActionPropertyItem("ShowColumnHeader", "ShowColumnHeader", "Appearance", "Specifies whether column header should be shown or not.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("DropDownWidth", "DropDown Width", "Behavior", "Specifies the width of the dropdown.");
		AddDesignerActionPropertyItem("MaxDropDownItems", "MaxDropDownItems", "Behavior", "Specfies the maximum number of items to be displayed in the combobox dropdown.");
		AddDesignerActionPropertyItem("ReadOnly", "ReadOnly", "Behavior", "Specifies whether the text in the edit portion can be changed or not.");
		AddDesignerActionPropertyItem("Sorted", "Sort Items", "Behavior", "Specifies whether items in the dropdown should be sorted.");
	}
}
