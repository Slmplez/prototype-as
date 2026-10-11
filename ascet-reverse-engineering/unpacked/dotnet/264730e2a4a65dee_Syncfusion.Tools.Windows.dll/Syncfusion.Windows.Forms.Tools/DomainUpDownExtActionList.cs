using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class DomainUpDownExtActionList : SyncActionListBase<DomainUpDownExt>
{
	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				DomainUpDownExt domainUpDownExt = base.Control;
				result = domainUpDownExt.Name;
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
				DomainUpDownExt domainUpDownExt = base.Control;
				result = domainUpDownExt.Text;
			}
			return result;
		}
		set
		{
			SetValue("Text", value);
		}
	}

	public HorizontalAlignment TextAlign
	{
		get
		{
			HorizontalAlignment result = HorizontalAlignment.Left;
			if (base.Control != null)
			{
				DomainUpDownExt domainUpDownExt = base.Control;
				result = domainUpDownExt.TextAlign;
			}
			return result;
		}
		set
		{
			SetValue("TextAlign", value);
		}
	}

	public bool ThemedBorder
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				DomainUpDownExt domainUpDownExt = base.Control;
				result = domainUpDownExt.ThemedBorder;
			}
			return result;
		}
		set
		{
			SetValue("ThemedBorder", value);
		}
	}

	public LeftRightAlignment UpDownAlign
	{
		get
		{
			LeftRightAlignment result = LeftRightAlignment.Right;
			if (base.Control != null)
			{
				DomainUpDownExt domainUpDownExt = base.Control;
				result = domainUpDownExt.UpDownAlign;
			}
			return result;
		}
		set
		{
			SetValue("UpDownAlign", value);
		}
	}

	public int MaxLength
	{
		get
		{
			int result = 32767;
			if (base.Control != null)
			{
				DomainUpDownExt domainUpDownExt = base.Control;
				result = domainUpDownExt.MaxLength;
			}
			return result;
		}
		set
		{
			SetValue("MaxLength", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				DomainUpDownExt domainUpDownExt = base.Control;
				result = domainUpDownExt.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public DomainUpDownExtActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - DomainUpDownExt");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used in code to identify the Object.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ThemesEnabled", "ThemesEnabled", "Appearance", "Determines if the text in the DomainUpDownExt is ThemesEnabled.");
		AddDesignerActionPropertyItem("ThemedBorder", "Themed Border", "Appearance", "Specifies whether or not you want themed border around the control when themes are enabled.");
		AddDesignerActionPropertyItem("Text", "Text", "Appearance", "The text associated with the control.");
		AddDesignerActionPropertyItem("TextAlign", "Text Alignment", "Appearance", "Gets or sets the alignment of the text.");
		AddDesignerActionPropertyItem("UpDownAlign", "UpDown Align", "Appearance", "Gets or sets the alignment of the up and down buttons on the control.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("MaxLength", "MaxLength", "Behavior", "Gets or Sets the maximum length of the text that can be entered into the editable portion of the control.");
	}
}
