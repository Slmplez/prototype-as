using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class XPTaskPageDesigner : ScrollableControlDesigner
{
	public override SelectionRules SelectionRules => SelectionRules.Locked;
}
