using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DocumentationExclude]
public class MCGridListControlChild : GridListControlChild
{
	private MultiColumnComboBox ParentCombo
	{
		get
		{
			Control control = base.Parent;
			while (control != null && !(control is MultiColumnComboBox))
			{
				control = control.Parent;
			}
			return control as MultiColumnComboBox;
		}
	}

	public MCGridListControlChild(GridListControl listControl)
		: base(listControl)
	{
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 513)
		{
			if (FindForm() is PopupHost)
			{
				return;
			}
			if (ParentCombo != null && !ParentCombo.ContainsFocus)
			{
				ParentCombo.Focus();
			}
		}
		base.WndProc(ref m);
	}
}
