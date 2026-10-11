using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarChangedEventArgs : EventArgs
{
	private static BarChangedEventArgs _empty;

	private Bar m_bar;

	public Bar Bar => m_bar;

	public new static BarChangedEventArgs Empty => _empty;

	static BarChangedEventArgs()
	{
		_empty = new BarChangedEventArgs();
	}

	private BarChangedEventArgs()
	{
		m_bar = null;
	}

	public BarChangedEventArgs(Bar bar)
	{
		if (bar == null)
		{
			throw new ArgumentNullException("bar");
		}
		m_bar = bar;
	}
}
