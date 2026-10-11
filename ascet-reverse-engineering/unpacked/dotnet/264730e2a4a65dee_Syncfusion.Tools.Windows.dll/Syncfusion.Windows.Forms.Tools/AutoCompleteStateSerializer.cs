using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class AutoCompleteStateSerializer : ISerializable
{
	private const string c_strDROP_DOWN_HEIGHT = "DropDownHeight";

	private const string c_strDROP_DOWN_WIDTH = "DropDownWidth";

	private int m_nDropDownHeight;

	private int m_nDropDownWidth;

	public int DropDownHeight
	{
		get
		{
			return m_nDropDownHeight;
		}
		set
		{
			if (m_nDropDownHeight != value)
			{
				m_nDropDownHeight = value;
			}
		}
	}

	public int DropDownWidth
	{
		get
		{
			return m_nDropDownWidth;
		}
		set
		{
			if (m_nDropDownWidth != value)
			{
				m_nDropDownWidth = value;
			}
		}
	}

	public AutoCompleteStateSerializer(AutoComplete acSrc)
	{
		PopupHost popupHost = acSrc.AutoCompletePopup.PopupHost;
		Size lastSize = ((SizablePopupHost)popupHost).LastSize;
		m_nDropDownHeight = lastSize.Height;
		m_nDropDownWidth = lastSize.Width;
	}

	protected AutoCompleteStateSerializer(SerializationInfo info, StreamingContext context)
	{
		m_nDropDownHeight = info.GetInt32("DropDownHeight");
		m_nDropDownWidth = info.GetInt32("DropDownWidth");
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("DropDownHeight", DropDownHeight);
		info.AddValue("DropDownWidth", DropDownWidth);
	}
}
