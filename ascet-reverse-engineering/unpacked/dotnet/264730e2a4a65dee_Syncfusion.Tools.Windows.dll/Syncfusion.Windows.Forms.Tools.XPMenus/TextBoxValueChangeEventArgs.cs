using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class TextBoxValueChangeEventArgs : CancelEventArgs
{
	private string m_newValue;

	public string NewValue
	{
		get
		{
			return m_newValue;
		}
		set
		{
			m_newValue = value;
		}
	}

	public TextBoxValueChangeEventArgs(string newValue)
	{
		m_newValue = newValue;
	}
}
