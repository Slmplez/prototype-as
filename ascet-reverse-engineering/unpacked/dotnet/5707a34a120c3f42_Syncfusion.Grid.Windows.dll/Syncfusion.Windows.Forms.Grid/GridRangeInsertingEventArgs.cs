using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRangeInsertingEventArgs : SyncfusionCancelEventArgs
{
	private int insertAt;

	private int count;

	private GridModelInsertRangeOptions iro;

	[TraceProperty(true)]
	public int InsertAt => insertAt;

	[TraceProperty(true)]
	public int Count => count;

	public GridModelInsertRangeOptions InsertRangeOptions => iro;

	public GridRangeInsertingEventArgs(int insertAt, int count, GridModelInsertRangeOptions iro)
	{
		this.insertAt = insertAt;
		this.count = count;
		this.iro = iro;
	}
}
