using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoLabelActionList : SyncActionListBase<AutoLabel>
{
	public string Name
	{
		get
		{
			string result = string.Empty;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.Name;
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
			string result = string.Empty;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.Text;
			}
			return result;
		}
		set
		{
			SetValue("Text", value);
		}
	}

	public bool AutoSize
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.AutoSize;
			}
			return result;
		}
		set
		{
			SetValue("AutoSize", value);
		}
	}

	public int DX
	{
		get
		{
			int result = 0;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.DX;
			}
			return result;
		}
		set
		{
			SetValue("DX", value);
		}
	}

	public int DY
	{
		get
		{
			int result = 0;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.DY;
			}
			return result;
		}
		set
		{
			SetValue("DY", value);
		}
	}

	public int Gap
	{
		get
		{
			int result = 4;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.Gap;
			}
			return result;
		}
		set
		{
			SetValue("Gap", value);
		}
	}

	public Control LabeledControl
	{
		get
		{
			Control result = null;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.LabeledControl;
			}
			return result;
		}
		set
		{
			SetValue("LabeledControl", value);
		}
	}

	public AutoLabelPosition Position
	{
		get
		{
			AutoLabelPosition result = AutoLabelPosition.Left;
			if (base.Control != null)
			{
				AutoLabel autoLabel = base.Control;
				result = autoLabel.Position;
			}
			return result;
		}
		set
		{
			SetValue("Position", value);
		}
	}

	public AutoLabelActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - Auto Label");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used for the control.");
		AddDesignerActionPropertyItem("Text", "Text", "Design", "Indicates the text to be displayed in the control.");
		AddDesignerActionHeaderItem("Layout");
		AddDesignerActionPropertyItem("AutoSize", "Auto Size", "Layout", "Enabled automatic resizing.");
		AddDesignerActionHeaderItem("Layout Information");
		AddDesignerActionPropertyItem("DX", "DX", "Layout Information", "Indicates the horizontal distance between the left of AutoLabel and its labeled control.");
		AddDesignerActionPropertyItem("DY", "DY", "Layout Information", "Indicates the vertical distance between the left of AutoLabel and its labeled control.");
		AddDesignerActionPropertyItem("Gap", "Gap", "Layout Information", "Indicates the horizontal and vertical gap to use when computing relative position.");
		AddDesignerActionPropertyItem("LabeledControl", "Labeled Control", "Layout Information", "Specifies the control that is being labeled.");
		AddDesignerActionPropertyItem("Position", "Position", "Layout Information", "Specifies the relative position of the Labeled control and AutoLabel.");
	}
}
