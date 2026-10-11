using System;

namespace Syncfusion.Windows.Forms.Tools;

public class EditEventArgs : EventArgs
{
	private string m_editText;

	public string EditText
	{
		get
		{
			return m_editText;
		}
		set
		{
			if (value != m_editText)
			{
				m_editText = value;
			}
		}
	}

	public EditEventArgs(string editText)
	{
		m_editText = editText;
	}
}
