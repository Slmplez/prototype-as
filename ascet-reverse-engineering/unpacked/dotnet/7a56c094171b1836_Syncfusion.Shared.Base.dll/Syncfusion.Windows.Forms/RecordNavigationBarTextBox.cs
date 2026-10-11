using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
internal class RecordNavigationBarTextBox : RichTextBox
{
	public RecordNavigationBarTextBox()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		base.CausesValidation = false;
	}
}
