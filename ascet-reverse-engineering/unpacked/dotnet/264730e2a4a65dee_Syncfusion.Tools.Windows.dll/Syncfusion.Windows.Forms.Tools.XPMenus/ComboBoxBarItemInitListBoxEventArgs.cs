using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class ComboBoxBarItemInitListBoxEventArgs : EventArgs
{
	private ListBox listBox;

	public ListBox ListBox => listBox;

	public ComboBoxBarItemInitListBoxEventArgs(ListBox listBox)
	{
		this.listBox = listBox;
	}
}
