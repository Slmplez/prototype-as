using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteMatchItemEventArgs : CancelEventArgs
{
	private string m_currentTextValue;

	private string m_possibleMatchValue;

	public string CurrentText => m_currentTextValue;

	public string PossibleMatch => m_possibleMatchValue;

	public AutoCompleteMatchItemEventArgs(string currentText, string possibleMatch)
	{
		m_currentTextValue = currentText;
		m_possibleMatchValue = possibleMatch;
	}
}
