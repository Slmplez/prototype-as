using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeNodeAdvBeforeEditEventArgs : CancelEventArgs
{
	private TextBox textBox;

	private TreeNodeAdv node;

	public TreeNodeAdv Node => node;

	public TextBox TextBox => textBox;

	public TreeNodeAdvBeforeEditEventArgs(TreeNodeAdv node, TextBox textBox)
	{
		this.node = node;
		this.textBox = textBox;
	}
}
