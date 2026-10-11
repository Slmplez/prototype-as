using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class WizardPageDesigner : ParentControlDesigner
{
	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules selectionRules = base.SelectionRules;
			return selectionRules & SelectionRules.Locked;
		}
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
