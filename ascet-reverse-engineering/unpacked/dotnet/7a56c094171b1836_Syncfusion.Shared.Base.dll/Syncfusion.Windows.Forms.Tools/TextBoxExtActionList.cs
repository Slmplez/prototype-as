using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class TextBoxExtActionList : SyncActionListBase<TextBoxExt>
{
	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.Name;
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
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.Text;
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
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public ScrollBars ScrollBars
	{
		get
		{
			ScrollBars result = ScrollBars.None;
			if (base.Control != null)
			{
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.ScrollBars;
			}
			return result;
		}
		set
		{
			SetValue("ScrollBars", value);
		}
	}

	public HorizontalAlignment TextAlign
	{
		get
		{
			HorizontalAlignment result = HorizontalAlignment.Left;
			if (base.Control != null)
			{
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.TextAlign;
			}
			return result;
		}
		set
		{
			SetValue("TextAlign", value);
		}
	}

	public bool WordWrap
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.WordWrap;
			}
			return result;
		}
		set
		{
			SetValue("WordWrap", value);
		}
	}

	public virtual Color BorderColor
	{
		get
		{
			Color result = Color.Black;
			if (base.Control != null)
			{
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.BorderColor;
			}
			return result;
		}
		set
		{
			SetValue("BorderColor", value);
		}
	}

	public virtual Color BackColor
	{
		get
		{
			Color result = Color.White;
			if (base.Control != null)
			{
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.BackColor;
			}
			return result;
		}
		set
		{
			SetValue("BackColor", value);
		}
	}

	public bool Multiline
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				TextBoxExt textBoxExt = base.Control;
				result = textBoxExt.Multiline;
			}
			return result;
		}
		set
		{
			SetValue("Multiline", value);
		}
	}

	public TextBoxExtActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(base.Component);
		AddDesignerActionHeaderItem("Essential Tools - TextBoxExt");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used in code to identify the Object.");
		AddDesignerActionHeaderItem("Appearance");
		PropertyDescriptor propertyDescriptor = properties.Find("Text", ignoreCase: false);
		if (propertyDescriptor != null && propertyDescriptor.IsBrowsable)
		{
			AddDesignerActionPropertyItem("Text", "Text", "Appearance", "The text associated with the control.");
		}
		AddDesignerActionPropertyItem("ScrollBars", "Scroll Bars", "Appearance", " Gets or sets which scroll bars should appear in a multiline TextBoxExt control.");
		AddDesignerActionPropertyItem("TextAlign", "Text Alignment", "Appearance", "Gets or sets how text is aligned in a TextBoxExt control.");
		AddDesignerActionPropertyItem("ThemesEnabled", "ThemesEnabled", "Appearance", "Determines if the text in the CheckBox is ThemesEnabled.");
		AddDesignerActionPropertyItem("BorderColor", "BorderColor", "Appearance", "Specifies BorderColor");
		AddDesignerActionPropertyItem("BackColor", "BackColor", "Appearance", "Specifies BackColor");
		bool flag = properties.Find("WordWrap", ignoreCase: false)?.IsBrowsable ?? false;
		bool flag2 = properties.Find("Multiline", ignoreCase: false)?.IsBrowsable ?? false;
		if (flag || flag2)
		{
			AddDesignerActionHeaderItem("Behavior");
			if (flag)
			{
				AddDesignerActionPropertyItem("WordWrap", "Word Wrap", "Behavior", "Indicates whether a multiline text box control automatically wraps words to the beginning of the next line when necessary.");
			}
			if (flag2)
			{
				AddDesignerActionPropertyItem("Multiline", "Multiline", "Behavior", "Gets or sets a value indicating whether this is a multiline TextBoxExt control.");
			}
		}
	}
}
