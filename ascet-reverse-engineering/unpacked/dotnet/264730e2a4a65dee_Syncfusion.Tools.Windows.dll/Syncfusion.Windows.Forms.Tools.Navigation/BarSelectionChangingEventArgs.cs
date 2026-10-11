using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

public class BarSelectionChangingEventArgs : CancelEventArgs
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

	public BarSelectionChangingEventArgs(bool cancel, Bar bar)
		: base(cancel)
	{
		_bar = bar;
	}

	public BarSelectionChangingEventArgs(Bar bar)
		: this(cancel: false, bar)
	{
	}
}
