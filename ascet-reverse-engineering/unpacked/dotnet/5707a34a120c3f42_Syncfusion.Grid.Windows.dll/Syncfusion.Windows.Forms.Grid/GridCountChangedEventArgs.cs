using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCountChangedEventArgs : SyncfusionSuccessEventArgs
{
	private int savedCount;

	[TraceProperty(true)]
	public int SavedValue => savedCount;

	public GridCountChangedEventArgs(int savedCount, bool success)
		: base(success)
	{
		this.savedCount = savedCount;
	}
}
