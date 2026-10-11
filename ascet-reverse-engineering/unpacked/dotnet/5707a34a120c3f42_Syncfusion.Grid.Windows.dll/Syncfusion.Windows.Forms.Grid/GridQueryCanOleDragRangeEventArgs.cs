using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridQueryCanOleDragRangeEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfo range;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	public GridQueryCanOleDragRangeEventArgs(GridRangeInfo range)
	{
		this.range = range;
	}

	internal GridQueryCanOleDragRangeEventArgs(GridRangeInfo range, bool cancel)
		: base(cancel)
	{
		this.range = range;
	}
}
