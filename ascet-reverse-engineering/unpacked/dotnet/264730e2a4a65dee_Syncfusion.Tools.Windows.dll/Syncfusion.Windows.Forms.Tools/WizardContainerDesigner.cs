using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class WizardContainerDesigner : ParentControlDesigner
{
	public override SelectionRules SelectionRules => base.SelectionRules & SelectionRules.Locked;

	public override bool CanParent(Control control)
	{
		return false;
	}

	protected override void OnDragEnter(DragEventArgs de)
	{
		de.Effect = DragDropEffects.None;
	}

	protected override void OnDragOver(DragEventArgs de)
	{
		de.Effect = DragDropEffects.None;
	}
}
