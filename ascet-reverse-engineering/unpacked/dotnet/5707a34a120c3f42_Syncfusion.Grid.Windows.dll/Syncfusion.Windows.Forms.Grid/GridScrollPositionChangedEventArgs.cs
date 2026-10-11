using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridScrollPositionChangedEventArgs : SyncfusionSuccessEventArgs
{
	public GridScrollPositionChangedEventArgs(bool success)
		: base(success)
	{
	}
}
