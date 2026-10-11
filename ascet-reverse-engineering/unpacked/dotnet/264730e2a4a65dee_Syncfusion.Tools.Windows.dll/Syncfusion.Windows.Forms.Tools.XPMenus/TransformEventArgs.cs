using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class TransformEventArgs : EventArgs
{
	private int m_transformOffsetY;

	private static TransformEventArgs _empty;

	public int TransformOffsetY
	{
		get
		{
			return m_transformOffsetY;
		}
		set
		{
			if (value != m_transformOffsetY)
			{
				m_transformOffsetY = value;
			}
		}
	}

	public new static TransformEventArgs Empty => _empty;

	static TransformEventArgs()
	{
		_empty = new TransformEventArgs();
	}

	public TransformEventArgs()
	{
	}

	public TransformEventArgs(int offfsetY)
	{
		m_transformOffsetY = offfsetY;
	}
}
