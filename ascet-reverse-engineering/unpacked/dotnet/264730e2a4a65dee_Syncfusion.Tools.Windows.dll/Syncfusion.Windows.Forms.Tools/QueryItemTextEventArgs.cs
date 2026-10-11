using System;

namespace Syncfusion.Windows.Forms.Tools;

public class QueryItemTextEventArgs : EventArgs
{
	private int m_item = -1;

	private int m_subItem = -1;

	private string m_strText;

	public int Item => m_item;

	public int SubItem => m_subItem;

	public string Text
	{
		get
		{
			return m_strText;
		}
		set
		{
			if (value != m_strText)
			{
				m_strText = value;
			}
		}
	}

	public QueryItemTextEventArgs(int item, int subItem)
	{
		m_item = item;
		m_subItem = subItem;
	}
}
