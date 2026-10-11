using System;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

public class BarSelectionChangedEventArgs : EventArgs
{
	private Bar _bar;

	public Bar Bar
	{
		get
		{
			return _bar;
		}
		set
		{
			_bar = value;
		}
	}

	public BarSelectionChangedEventArgs(Bar bar)
	{
		_bar = bar;
	}
}
