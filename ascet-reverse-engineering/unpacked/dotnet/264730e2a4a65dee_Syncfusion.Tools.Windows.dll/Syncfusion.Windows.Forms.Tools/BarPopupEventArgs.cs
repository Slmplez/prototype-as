using System.ComponentModel;
using Syncfusion.Windows.Forms.Tools.Navigation;

namespace Syncfusion.Windows.Forms.Tools;

public class BarPopupEventArgs : CancelEventArgs
{
	private int maximumItemsToDisplay = 19;

	private Bar _currentBar;

	public Bar CurrentBar => _currentBar;

	public int MaximumItemsToDisplay
	{
		get
		{
			return maximumItemsToDisplay;
		}
		set
		{
			if (maximumItemsToDisplay != value)
			{
				maximumItemsToDisplay = value;
			}
		}
	}

	public BarPopupEventArgs()
	{
	}

	public BarPopupEventArgs(Bar currentBar)
	{
		_currentBar = currentBar;
	}

	public BarPopupEventArgs(bool cancel)
		: base(cancel)
	{
	}
}
