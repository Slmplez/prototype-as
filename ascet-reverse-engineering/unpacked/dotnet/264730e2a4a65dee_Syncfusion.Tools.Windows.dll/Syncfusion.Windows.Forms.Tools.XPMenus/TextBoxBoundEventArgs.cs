using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class TextBoxBoundEventArgs : EventArgs
{
	private TextBoxBase textBoxBase;

	public TextBoxBase TextBox => textBoxBase;

	public TextBoxBoundEventArgs(TextBoxBase textBox)
	{
		textBoxBase = textBox;
	}
}
