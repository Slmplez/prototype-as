using System.ComponentModel;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class ButtonEditActionList : SyncActionListBase<ButtonEdit>
{
	public bool ShowTextBox
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				ButtonEdit buttonEdit = base.Control;
				result = buttonEdit.ShowTextBox;
			}
			return result;
		}
		set
		{
			SetValue("ShowTextBox", value);
		}
	}

	public ButtonAppearance ButtonStyle
	{
		get
		{
			ButtonAppearance result = ButtonAppearance.WindowsXP;
			if (base.Control != null)
			{
				ButtonEdit buttonEdit = base.Control;
				result = buttonEdit.ButtonStyle;
			}
			return result;
		}
		set
		{
			SetValue("ButtonStyle", value);
		}
	}

	public bool UseVisualStyle
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				ButtonEdit buttonEdit = base.Control;
				result = buttonEdit.UseVisualStyle;
			}
			return result;
		}
		set
		{
			SetValue("UseVisualStyle", value);
		}
	}

	public ButtonEdit.ButtonEditChildButtonCollection Buttons
	{
		get
		{
			ButtonEdit.ButtonEditChildButtonCollection result = null;
			if (base.Control != null)
			{
				ButtonEdit buttonEdit = base.Control;
				result = buttonEdit.Buttons;
			}
			return result;
		}
		set
		{
			SetValue("Buttons", value);
		}
	}

	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				ButtonEdit buttonEdit = base.Control;
				result = buttonEdit.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public ButtonEditActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - ButtonEdit");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the name used in code to identify the object.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ShowTextBox", "Show TextBox", "Appearance", "Indicates whether the embedded TextBox is visible in the ButtonEdit.");
		AddDesignerActionPropertyItem("UseVisualStyle", "UseVisualStyle", "Appearance", "Indicates whether to use visual styles.");
		if (UseVisualStyle)
		{
			AddDesignerActionPropertyItem("ButtonStyle", "Button Style", "Appearance", "Gets or sets the button style for the control.");
		}
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("Buttons", "Buttons Collection", "Behavior", "Gets or sets the collection of Buttons that makes up this ButtonEdit control.");
	}
}
