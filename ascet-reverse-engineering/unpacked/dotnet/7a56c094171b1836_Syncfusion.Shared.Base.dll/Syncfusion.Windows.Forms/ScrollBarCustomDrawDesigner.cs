using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms;

public class ScrollBarCustomDrawDesigner : ParentControlDesigner
{
	protected new ScrollBarCustomDraw Control
	{
		get
		{
			if (base.Component is ScrollBarCustomDraw)
			{
				return base.Component as ScrollBarCustomDraw;
			}
			if (base.Control is ScrollBarCustomDraw)
			{
				return base.Control as ScrollBarCustomDraw;
			}
			return null;
		}
	}

	public override SelectionRules SelectionRules
	{
		get
		{
			if (Control != null && Control.KeepSystemMetrics)
			{
				if (Control is VScrollBarCustomDraw)
				{
					return base.SelectionRules & ~(SelectionRules.LeftSizeable | SelectionRules.RightSizeable);
				}
				if (Control is HScrollBarCustomDraw)
				{
					return base.SelectionRules & ~(SelectionRules.TopSizeable | SelectionRules.BottomSizeable);
				}
			}
			return base.SelectionRules;
		}
	}
}
