using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class ListBoxTextChangingEventArgs : CancelEventArgs
{
	private string m_sNewText;

	private int m_iLastSelectedIndex;

	public string NewText => m_sNewText;

	public int LastSelectedIndex => m_iLastSelectedIndex;

	public ListBoxTextChangingEventArgs(string pNewText, int pSelectedIndex)
	{
		m_sNewText = pNewText;
		m_iLastSelectedIndex = pSelectedIndex;
	}

	public ListBoxTextChangingEventArgs(string pNewText)
		: this(pNewText, -1)
	{
	}
}
