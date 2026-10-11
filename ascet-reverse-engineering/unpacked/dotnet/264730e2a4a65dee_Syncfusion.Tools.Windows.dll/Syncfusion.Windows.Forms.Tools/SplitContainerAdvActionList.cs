using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Enums;

namespace Syncfusion.Windows.Forms.Tools;

public class SplitContainerAdvActionList : SyncActionListBase<SplitContainerAdv>
{
	public bool IsSplitterFixed
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.IsSplitterFixed;
			}
			return result;
		}
		set
		{
			SetValue("IsSplitterFixed", value);
		}
	}

	public BorderStyle BorderStyle
	{
		get
		{
			BorderStyle result = BorderStyle.None;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.BorderStyle;
			}
			return result;
		}
		set
		{
			SetValue("BorderStyle", value);
		}
	}

	public Syncfusion.Windows.Forms.Tools.Enums.FixedPanel FixedPanel
	{
		get
		{
			Syncfusion.Windows.Forms.Tools.Enums.FixedPanel result = Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.FixedPanel;
			}
			return result;
		}
		set
		{
			SetValue("FixedPanel", value);
		}
	}

	public Orientation Orientation
	{
		get
		{
			Orientation result = Orientation.Horizontal;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.Orientation;
			}
			return result;
		}
		set
		{
			SetValue("Orientation", value);
		}
	}

	public bool Panel1Collapsed
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.CollapsedPanel == CollapsedPanel.Panel1;
			}
			return result;
		}
		set
		{
			SetValue("Panel1Collapsed", value);
		}
	}

	public bool Panel2Collapsed
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.CollapsedPanel == CollapsedPanel.Panel2;
			}
			return result;
		}
		set
		{
			SetValue("Panel2Collapsed", value);
		}
	}

	public int Panel1MinSize
	{
		get
		{
			int result = 25;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.Panel1MinSize;
			}
			return result;
		}
		set
		{
			SetValue("Panel1MinSize", value);
		}
	}

	public int Panel2MinSize
	{
		get
		{
			int result = 25;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.Panel2MinSize;
			}
			return result;
		}
		set
		{
			SetValue("Panel2MinSize", value);
		}
	}

	public int SplitterIncrement
	{
		get
		{
			int result = 1;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.SplitterIncrement;
			}
			return result;
		}
		set
		{
			SetValue("SplitterIncrement", value);
		}
	}

	public int SplitterWidth
	{
		get
		{
			int result = 6;
			if (base.Control != null)
			{
				SplitContainerAdv splitContainerAdv = base.Control;
				result = splitContainerAdv.SplitterWidth;
			}
			return result;
		}
		set
		{
			SetValue("SplitterWidth", value);
		}
	}

	public SplitContainerAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - SplitContainerAdv");
		AddDesignerActionPropertyItem("IsSplitterFixed", "Fixed Splitter", "Appearance", "Specifies whether the splitter should be fixed.");
		AddDesignerActionPropertyItem("Panel1Collapsed", "Collapse Panel1", "Appearance", "Specifies whether panel1 should be collapsed.");
		AddDesignerActionPropertyItem("Panel2Collapsed", "Collapse Panel2", "Appearance", "Specifies whether panel2 should be collapsed.");
		AddDesignerActionPropertyItem("BorderStyle", "BorderStyle", "Appearance", "Specifies the border style of panel.");
		AddDesignerActionPropertyItem("FixedPanel", "Fixed Panel", "Appearance", "Specifies which panel should be fixed.");
		AddDesignerActionPropertyItem("Orientation", "Orientation", "Appearance", "Specifies the orientation of the panels.");
		AddDesignerActionPropertyItem("Panel1MinSize", "Panel1 MinSize", "Appearance", "Specifies the minimum size of the panel1.");
		AddDesignerActionPropertyItem("Panel2MinSize", "Panel2 MinSize", "Appearance", "Specifies the minimum size of the panel2.");
		AddDesignerActionPropertyItem("SplitterIncrement", "Splitter Increment", "Appearance", "Specifies the no. of pixels the splitter moves in increment.");
		AddDesignerActionPropertyItem("SplitterWidth", "Splitter Width", "Appearance", "Specifies the thickness of the splitter.");
	}
}
