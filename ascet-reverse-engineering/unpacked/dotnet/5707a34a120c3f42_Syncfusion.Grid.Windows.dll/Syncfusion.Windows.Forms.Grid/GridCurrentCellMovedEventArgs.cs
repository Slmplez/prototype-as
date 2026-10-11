using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellMovedEventArgs : SyncfusionEventArgs
{
	private GridSetCurrentCellOptions options;

	[TraceProperty(true)]
	public GridSetCurrentCellOptions Options => options;

	public GridCurrentCellMovedEventArgs(GridSetCurrentCellOptions options)
	{
		this.options = options;
	}
}
