namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class TypeBoxItem
{
	private string m_sText = string.Empty;

	private ItemType m_itType;

	public string Text
	{
		get
		{
			return m_sText;
		}
		set
		{
			if (m_sText != value)
			{
				m_sText = value;
			}
		}
	}

	public ItemType Type
	{
		get
		{
			return m_itType;
		}
		set
		{
			if (m_itType != value)
			{
				m_itType = value;
			}
		}
	}

	public TypeBoxItem(string text, ItemType type)
	{
		Text = text;
		Type = type;
	}

	public override string ToString()
	{
		return Text;
	}
}
