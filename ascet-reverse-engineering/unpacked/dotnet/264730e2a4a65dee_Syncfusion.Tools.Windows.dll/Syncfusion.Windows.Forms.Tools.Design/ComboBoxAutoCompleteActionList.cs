using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ComboBoxAutoCompleteActionList : SyncActionListBase<ComboBoxAutoComplete>
{
	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				ComboBoxAutoComplete comboBoxAutoComplete = base.Control;
				result = comboBoxAutoComplete.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public FlatStyle FlatStyle
	{
		get
		{
			FlatStyle result = FlatStyle.System;
			if (base.Control != null)
			{
				ComboBoxAutoComplete comboBoxAutoComplete = base.Control;
				result = comboBoxAutoComplete.FlatStyle;
			}
			return result;
		}
		set
		{
			SetValue("FlatStyle", value);
		}
	}

	public int DropDownHeight
	{
		get
		{
			int result = 106;
			if (base.Control != null)
			{
				ComboBoxAutoComplete comboBoxAutoComplete = base.Control;
				result = comboBoxAutoComplete.DropDownHeight;
			}
			return result;
		}
		set
		{
			SetValue("DropDownHeight", value);
		}
	}

	public AutoCompleteMode AutoCompleteMode
	{
		get
		{
			AutoCompleteMode result = AutoCompleteMode.None;
			if (base.Control != null)
			{
				ComboBoxAutoComplete comboBoxAutoComplete = base.Control;
				result = comboBoxAutoComplete.AutoCompleteMode;
			}
			return result;
		}
		set
		{
			SetValue("AutoCompleteMode", value);
		}
	}

	public AutoCompleteSource AutoCompleteSource
	{
		get
		{
			AutoCompleteSource result = AutoCompleteSource.None;
			if (base.Control != null)
			{
				ComboBoxAutoComplete comboBoxAutoComplete = base.Control;
				result = comboBoxAutoComplete.AutoCompleteSource;
			}
			return result;
		}
		set
		{
			SetValue("AutoCompleteSource", value);
		}
	}

	public bool AllowNewText
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				ComboBoxAutoComplete comboBoxAutoComplete = base.Control;
				result = comboBoxAutoComplete.AllowNewText;
			}
			return result;
		}
		set
		{
			SetValue("AllowNewText", value);
		}
	}

	public bool ReadOnly
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				ComboBoxAutoComplete comboBoxAutoComplete = base.Control;
				result = comboBoxAutoComplete.ReadOnly;
			}
			return result;
		}
		set
		{
			SetValue("ReadOnly", value);
		}
	}

	public ComboBoxAutoCompleteActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - ComboBoxAutoComplete");
		AddDesignerActionPropertyItem("Name", "Name", "Appearance_", "Specifies the name of the control.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("FlatStyle", "FlatStyle", "Appearance", "Determines the display style of the control.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("DropDownHeight", "DropDown Height", "Behavior", "Specifies the height of the dropdown.");
		AddDesignerActionHeaderItem("Misc");
		AddDesignerActionPropertyItem("AutoCompleteMode", "AutoCompleteMode", "Misc", "Indicates the text completion behavior of ComboBox.");
		AddDesignerActionPropertyItem("AutoCompleteSource", "AutoCompleteSource", "Misc", "Specifies the source of complete strings which is used for automatic completion.");
		AddDesignerActionPropertyItem("AllowNewText", "Allow NewText", "Misc", "Specifies whether new text can be accepted to the autoComplete or not.");
		AddDesignerActionPropertyItem("ReadOnly", "ReadOnly", "Misc", "Specifies whether the control should be made read-only or not.");
	}
}
