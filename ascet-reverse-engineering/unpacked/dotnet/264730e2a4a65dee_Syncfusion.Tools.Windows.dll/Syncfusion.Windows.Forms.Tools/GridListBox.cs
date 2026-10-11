using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class GridListBox : GridListControl
{
	protected override GridListControlChild CreateGridChild()
	{
		return new MCGridListControlChild(this);
	}

	protected override void OnBindingContextChanged(EventArgs e)
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
			if (!base.Parent.ContainsFocus)
			{
				base.Parent.Focus();
			}
		}
		base.WndProc(ref m);
	}
}
