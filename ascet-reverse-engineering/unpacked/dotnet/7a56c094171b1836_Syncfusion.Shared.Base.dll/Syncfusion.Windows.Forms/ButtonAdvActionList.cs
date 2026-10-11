using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

public class ButtonAdvActionList : SyncActionListBase<ButtonAdv>
{
	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public bool UseVisualStyle
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.UseVisualStyle;
			}
			return result;
		}
		set
		{
			SetValue("UseVisualStyle", value);
		}
	}

	public bool KeepFocusRectangle
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.KeepFocusRectangle;
			}
			return result;
		}
		set
		{
			SetValue("KeepFocusRectangle", value);
		}
	}

	public ButtonAppearance Appearance
	{
		get
		{
			ButtonAppearance result = ButtonAppearance.Classic;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.Appearance;
			}
			return result;
		}
		set
		{
			SetValue("Appearance", value);
		}
	}

	public ButtonTypes ButtonType
	{
		get
		{
			ButtonTypes result = ButtonTypes.Normal;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.ButtonType;
			}
			return result;
		}
		set
		{
			SetValue("ButtonType", value);
		}
	}

	public Image Image
	{
		get
		{
			Image result = null;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.Image;
			}
			return result;
		}
		set
		{
			SetValue("Image", value);
		}
	}

	public ContentAlignment ImageAlign
	{
		get
		{
			ContentAlignment result = ContentAlignment.MiddleLeft;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.ImageAlign;
			}
			return result;
		}
		set
		{
			SetValue("ImageAlign", value);
		}
	}

	public ButtonAdvBorderStyle BorderStyleAdv
	{
		get
		{
			ButtonAdvBorderStyle result = ButtonAdvBorderStyle.Default;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.BorderStyleAdv;
			}
			return result;
		}
		set
		{
			SetValue("BorderStyleAdv", value);
		}
	}

	public string Text
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.Text;
			}
			return result;
		}
		set
		{
			SetValue("Text", value);
		}
	}

	public ContentAlignment TextAlign
	{
		get
		{
			ContentAlignment result = ContentAlignment.MiddleLeft;
			if (base.Control != null)
			{
				ButtonAdv buttonAdv = base.Control;
				result = buttonAdv.TextAlign;
			}
			return result;
		}
		set
		{
			SetValue("TextAlign", value);
		}
	}

	public ButtonAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - ButtonAdv");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the name used in code to identify the object.");
		AddDesignerActionPropertyItem("Text", "Text", "Design", "The text associated with the control.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("KeepFocusRectangle", "Keep Focus Rectangle", "Appearance", "Indicates whether ButtonAdv will show focus rectangle receiving focus.");
		AddDesignerActionPropertyItem("UseVisualStyle", "Use Visual Style", "Appearance", "Indicates whether Visual Styles must be enabled for the button.");
		AddDesignerActionPropertyItem("Appearance", "Style", "Appearance", " Gets or sets the look and feel of the ButtonAdv.");
		AddDesignerActionPropertyItem("ButtonType", "Button Type", "Appearance", "  Gets or sets the type of button to be used.");
		AddDesignerActionPropertyItem("BorderStyleAdv", "Border Style", "Appearance", "  Gets or sets ButtonAdv border style.");
		AddDesignerActionPropertyItem("Image", "Image ", "Appearance", " Gets or sets the  image that is displayed in the control.");
		AddDesignerActionPropertyItem("ImageAlign", "Image Align", "Appearance", " Gets or sets the alignment of an image that is displayed in the control.");
		AddDesignerActionPropertyItem("TextAlign", "Text Alignment", "Appearance", "Indicates the alignment of Text in the Gradient Label.");
	}
}
