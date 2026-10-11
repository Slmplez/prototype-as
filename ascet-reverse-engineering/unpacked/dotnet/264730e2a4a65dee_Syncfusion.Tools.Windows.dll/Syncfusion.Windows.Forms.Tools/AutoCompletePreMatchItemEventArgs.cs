using System;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompletePreMatchItemEventArgs : EventArgs
{
	private string m_currentTextValue;

	public string CurrentText
	{
		get
		{
			return m_currentTextValue;
		}
		set
		{
			m_currentTextValue = value;
		}
	}

	public AutoCompletePreMatchItemEventArgs(string currentText)
	{
		m_currentTextValue = currentText;
	}
}
