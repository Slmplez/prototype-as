using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class ComboBoxHideDropDown : ComboBox
{
	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 8465)
		{
			int num = (int)m.WParam >> 16;
			if (num != 7)
			{
				base.WndProc(ref m);
			}
			else
			{
				OnDropDown(EventArgs.Empty);
			}
		}
		else
		{
			base.WndProc(ref m);
		}
	}
}
