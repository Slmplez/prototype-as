using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class TextBoxItemBoundEventArgs : EventArgs
{
	private TextBoxBase m_textBoxBase;

	public TextBoxBase TextBox => m_textBoxBase;

	public TextBoxItemBoundEventArgs(TextBoxBase textBoxBase)
	{
		m_textBoxBase = textBoxBase;
	}
}
