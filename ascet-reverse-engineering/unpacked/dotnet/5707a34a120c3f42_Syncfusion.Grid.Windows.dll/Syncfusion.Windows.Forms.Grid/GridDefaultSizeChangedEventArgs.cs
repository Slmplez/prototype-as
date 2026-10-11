using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDefaultSizeChangedEventArgs : SyncfusionSuccessEventArgs
{
	private int savedValue;

	[TraceProperty(true)]
	public int SavedValue => savedValue;

	public GridDefaultSizeChangedEventArgs(int savedValue, bool success)
		: base(success)
	{
		this.savedValue = savedValue;
	}
}
