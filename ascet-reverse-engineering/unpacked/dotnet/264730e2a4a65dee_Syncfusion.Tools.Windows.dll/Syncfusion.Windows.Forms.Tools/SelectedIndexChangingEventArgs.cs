using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class SelectedIndexChangingEventArgs : CancelEventArgs
{
	private int newSelectedIndex;

	public int NewSelectedIndex => newSelectedIndex;

	public SelectedIndexChangingEventArgs(int newSelectedIndex)
	{
		this.newSelectedIndex = newSelectedIndex;
	}
}
