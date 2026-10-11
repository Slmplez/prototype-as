using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class RadioButtonAdvActionList : SyncActionListBase<RadioButtonAdv>
{
	public bool ImageCheckBox
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.ImageCheckBox;
			}
			return result;
		}
		set
		{
			SetValue("ImageCheckBox", value);
		}
	}

	public bool Checked
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.Checked;
			}
			return result;
		}
		set
		{
			SetValue("Checked", value);
		}
	}

	public Image CheckedImage
	{
		get
		{
			Image result = null;
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.CheckedImage;
			}
			return result;
		}
		set
		{
			SetValue("CheckedImage", value);
		}
	}

	public Image UncheckedImage
	{
		get
		{
			Image result = null;
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.UncheckedImage;
			}
			return result;
		}
		set
		{
			SetValue("UncheckedImage", value);
		}
	}

	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public string Text
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.Text;
			}
			return result;
		}
		set
		{
			SetValue("Text", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public RadioButtonAdvStyle Style
	{
		get
		{
			RadioButtonAdvStyle result = RadioButtonAdvStyle.Default;
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.Style;
			}
			return result;
		}
		set
		{
			SetValue("Style", value);
		}
	}

	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			Office2007Theme result = Office2007Theme.Blue;
			if (base.Control != null)
			{
				RadioButtonAdv radioButtonAdv = base.Control;
				result = radioButtonAdv.Office2007ColorScheme;
			}
			return result;
		}
		set
		{
			SetValue("Office2007ColorScheme", value);
		}
	}

	public RadioButtonAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - Advanced RadioButton");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the name used in code to identify the object.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ImageCheckBox", "Image CheckBox", "Appearance", "Determines if the checkbox will be drawn using the images provided.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Indicates whether themes are enabled for this control.");
		AddDesignerActionPropertyItem("Text", "Text", "Appearance", "The text associated with the control.");
		AddDesignerActionPropertyItem("Style", "Visual Style", "Appearance", "Visual Style for the Radio button.");
		if (Style == RadioButtonAdvStyle.Office2007)
		{
			AddDesignerActionPropertyItem("Office2007ColorScheme", "Color Scheme", "Appearance", "Color Scheme for Office 2007 visual style.");
		}
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("Checked", "Checked", "Behavior", "Gets or sets the checked state of the radio button.");
		if (ImageCheckBox)
		{
			AddDesignerActionHeaderItem("StateImages");
			AddDesignerActionPropertyItem("CheckedImage", "Checked Image", "StateImages", "Gets or sets the image used to draw the radio button when checked and mouse not over.");
			AddDesignerActionPropertyItem("UncheckedImage", "Unchecked Image", "StateImages", "Gets or sets the image used to draw the radio button when unchecked and mouse not over.");
		}
	}
}
