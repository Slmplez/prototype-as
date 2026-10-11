using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class TabPageAdvDesigner : ScrollableControlDesigner
{
	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules selectionRules = base.SelectionRules;
			Control control = Control;
			if (control.Parent is TabControlAdv)
			{
				selectionRules &= ~SelectionRules.AllSizeable;
			}
			return selectionRules;
		}
	}

	public override bool CanBeParentedTo(IDesigner parentDesigner)
	{
		return parentDesigner is TabControlAdvDesigner;
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		Panel panel = (Panel)base.Component;
		if (panel.BorderStyle == BorderStyle.None)
		{
			DrawingUtils.DrawDesignTimeBorder(pe.Graphics, panel);
		}
		base.OnPaintAdornments(pe);
	}
}
