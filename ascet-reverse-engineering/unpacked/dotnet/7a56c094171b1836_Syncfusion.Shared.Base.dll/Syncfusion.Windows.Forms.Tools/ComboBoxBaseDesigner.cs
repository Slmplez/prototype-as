using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

internal class ComboBoxBaseDesigner : ParentControlDesigner
{
	protected override bool DrawGrid
	{
		get
		{
			return false;
		}
		set
		{
			base.DrawGrid = value;
		}
	}
}
