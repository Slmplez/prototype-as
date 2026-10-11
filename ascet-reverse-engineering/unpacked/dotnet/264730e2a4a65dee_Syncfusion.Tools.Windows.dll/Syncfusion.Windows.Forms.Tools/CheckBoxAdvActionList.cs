using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class CheckBoxAdvActionList : SyncActionListBase<CheckBoxAdv>
{
	public bool ImageCheckBox
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.ImageCheckBox;
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
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.Checked;
			}
			return result;
		}
		set
		{
			SetValue("Checked", value);
		}
	}

	public bool Tristate
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.Tristate;
			}
			return result;
		}
		set
		{
			SetValue("Tristate", value);
		}
	}

	public Image CheckedImage
	{
		get
		{
			Image result = null;
			if (base.Control != null)
			{
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.CheckedImage;
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
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.UncheckedImage;
			}
			return result;
		}
		set
		{
			SetValue("UncheckedImage", value);
		}
	}

	public Image IndeterminateImage
	{
		get
		{
			Image result = null;
			if (base.Control != null)
			{
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.IndeterminateImage;
			}
			return result;
		}
		set
		{
			SetValue("IndeterminateImage", value);
		}
	}

	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.Name;
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
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.Text;
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
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public CheckBoxAdvStyle Style
	{
		get
		{
			CheckBoxAdvStyle result = CheckBoxAdvStyle.Default;
			if (base.Control != null)
			{
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.Style;
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
				CheckBoxAdv checkBoxAdv = base.Control;
				result = checkBoxAdv.Office2007ColorScheme;
			}
			return result;
		}
		set
		{
			SetValue("Office2007ColorScheme", value);
		}
	}

	public CheckBoxAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - Advanced CheckBox");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the name used in code to identify the object.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ImageCheckBox", "Image CheckBox", "Appearance", "Determines if the checkbox will be drawn using the images provided.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Determines if the text in the CheckBox is ThemesEnabled.");
		AddDesignerActionPropertyItem("Text", "Text", "Appearance", "The text associated with the control.");
		AddDesignerActionPropertyItem("Style", "Visual Style", "Appearance", "Visual Style for the checkbox.");
		if (Style == CheckBoxAdvStyle.Office2007)
		{
			AddDesignerActionPropertyItem("Office2007ColorScheme", "Color Scheme", "Appearance", "Color Scheme for Office 2007 visual style.");
		}
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("Checked", "Checked", "Behavior", "Gets or sets the checked state of the CheckBox.");
		AddDesignerActionPropertyItem("Tristate", "Tristate", "Behavior", "Indicates whether undetermined state can be accessed through clicking.");
		if (ImageCheckBox)
		{
			AddDesignerActionHeaderItem("StateImages");
			AddDesignerActionPropertyItem("CheckedImage", "Checked Image", "StateImages", "Gets or sets the image used to draw the checkbox when checked and mouse not over.");
			AddDesignerActionPropertyItem("UncheckedImage", "Unchecked Image", "StateImages", "Gets or sets the image used to draw the checkbox when Unchecked and mouse not over.");
			AddDesignerActionPropertyItem("IndeterminateImage", "Indeterminate Image", "StateImages", "Gets or sets the image used to draw the checkbox when Indeterminate and mouse not over.");
		}
	}
}
