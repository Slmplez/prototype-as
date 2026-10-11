using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRangeRemovedEventArgs : SyncfusionSuccessEventArgs
{
	private int from;

	private int to;

	private GridModelInsertRangeOptions iro;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int To => to;

	public GridModelInsertRangeOptions InsertRangeOptions => iro;

	public GridRangeRemovedEventArgs(int from, int last, GridModelInsertRangeOptions iro, bool success)
		: base(success)
	{
		this.from = from;
		to = last;
		this.iro = iro;
	}
}
