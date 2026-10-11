namespace Syncfusion.Windows.Forms.Tools;

public class AutoCompleteItem
{
	private object[] m_itemarray;

	private int m_matchColumnIndex;

	public object[] ItemArray => m_itemarray;

	public int MatchColumnIndex => m_matchColumnIndex;

	public AutoCompleteItem(object[] array, int matchColumnIndex)
	{
		m_itemarray = array;
		m_matchColumnIndex = matchColumnIndex;
	}

	public override string ToString()
	{
		string text = base.ToString();
		int num = m_itemarray.Length;
		if (num > 0)
		{
			for (int i = 0; i < num; i++)
			{
				text = text + " " + m_itemarray[i].ToString();
			}
		}
		return text;
	}
}
