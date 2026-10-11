using System;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteItemEventArgs : EventArgs
{
	private object[] m_itemarray;

	private int m_matchColumnIndex;

	private string m_selectedValue = string.Empty;

	private bool m_bHandled;

	public object[] ItemArray => m_itemarray;

	public int MatchColumnIndex => m_matchColumnIndex;

	public bool Handled
	{
		get
		{
			return m_bHandled;
		}
		set
		{
			m_bHandled = value;
		}
	}

	public string SelectedValue
	{
		get
		{
			return m_selectedValue;
		}
		set
		{
			m_selectedValue = value;
		}
	}

	public AutoCompleteItemEventArgs(object[] array, int matchColumnIndex)
	{
		m_itemarray = array;
		m_matchColumnIndex = matchColumnIndex;
	}
}
