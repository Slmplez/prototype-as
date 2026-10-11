using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class GradientLabelActionList : SyncActionListBase<GradientLabel>
{
	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				GradientLabel gradientLabel = base.Control;
				result = gradientLabel.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public Image Image
	{
		get
		{
			Image result = null;
			if (base.Control != null)
			{
				GradientLabel gradientLabel = base.Control;
				result = gradientLabel.Image;
			}
			return result;
		}
		set
		{
			SetValue("Image", value);
		}
	}

	public string Text
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				GradientLabel gradientLabel = base.Control;
				result = gradientLabel.Text;
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
				GradientLabel gradientLabel = base.Control;
				result = gradientLabel.TextAlign;
			}
			return result;
		}
		set
		{
			SetValue("TextAlign", value);
		}
	}

	public ContentAlignment ImageAlign
	{
		get
		{
			ContentAlignment result = ContentAlignment.MiddleLeft;
			if (base.Control != null)
			{
				GradientLabel gradientLabel = base.Control;
				result = gradientLabel.ImageAlign;
			}
			return result;
		}
		set
		{
			SetValue("ImageAlign", value);
		}
	}

	public bool UseMnemonic
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				GradientLabel gradientLabel = base.Control;
				result = gradientLabel.UseMnemonic;
			}
			return result;
		}
		set
		{
			SetValue("UseMnemonic", value);
		}
	}

	public GradientLabelActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - Gradient Label");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used in code to identify the Object.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("Image", "Image", "Appearance", "Gets or sets the image that is displayed on a Gradient Label.");
		AddDesignerActionPropertyItem("ImageAlign", "Image Align", "Appearance", "Gets or sets the alignment of an image that is displayed in the control.");
		AddDesignerActionPropertyItem("UseMnemonic", "UseMnemonic", "Appearance", "Gets or sets a value indicating whether the control interprets an ampersand character (&) in the control's System.Windows.Forms.Control.Text property to be an access key prefix character.");
		AddDesignerActionPropertyItem("Text", "Text", "Appearance", "The text associated with the control.");
		AddDesignerActionPropertyItem("TextAlign", "Text Alignment", "Appearance", "Indicates the alignment of Text in the Gradient Label.");
	}
}
