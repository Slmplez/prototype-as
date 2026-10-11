using System;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class TabPageInfo
{
	private string m_strText;

	private int m_order = -1;

	private bool m_bIsSelected;

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

	public int Order
	{
		get
		{
			return m_order;
		}
		set
		{
			if (value != m_order)
			{
				m_order = value;
			}
		}
	}

	public bool IsSelected
	{
		get
		{
			return m_bIsSelected;
		}
		set
		{
			if (value != m_bIsSelected)
			{
				m_bIsSelected = value;
			}
		}
	}

	public TabPageInfo()
	{
	}

	public TabPageInfo(string text, int order, bool selected)
	{
		m_strText = text;
		m_order = order;
		m_bIsSelected = selected;
	}
}
