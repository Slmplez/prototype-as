using System;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class UniquePageID
{
	private string m_strTabName;

	public string TabName
	{
		get
		{
			return m_strTabName;
		}
		set
		{
			if (value != m_strTabName)
			{
				m_strTabName = value;
			}
		}
	}

	public UniquePageID(string tabName)
	{
		m_strTabName = tabName;
	}
}
