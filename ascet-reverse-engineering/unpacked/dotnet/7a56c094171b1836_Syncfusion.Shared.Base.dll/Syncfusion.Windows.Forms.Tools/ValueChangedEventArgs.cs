using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ValueChangedEventArgs : EventArgs
{
	private object m_old;

	private object m_new;

	public object newValue => m_new;

	public object oldValue => m_old;

	private ValueChangedEventArgs()
	{
	}

	public ValueChangedEventArgs(object old, object newValue)
	{
		m_old = old;
		m_new = newValue;
	}
}
