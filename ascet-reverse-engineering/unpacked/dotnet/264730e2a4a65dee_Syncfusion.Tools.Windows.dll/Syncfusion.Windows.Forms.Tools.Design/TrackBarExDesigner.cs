using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TrackBarExDesigner : ControlDesigner
{
	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules result = base.SelectionRules;
			if (base.Component is TrackBarEx { AutoSize: not false })
			{
				result = SelectionRules.Moveable | SelectionRules.LeftSizeable | SelectionRules.RightSizeable;
			}
			return result;
		}
	}
}
