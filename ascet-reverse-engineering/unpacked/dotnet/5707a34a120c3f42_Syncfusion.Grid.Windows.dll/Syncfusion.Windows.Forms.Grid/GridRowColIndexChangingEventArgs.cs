using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColIndexChangingEventArgs : SyncfusionCancelEventArgs
{
	private int rowColIndex;

	[TraceProperty(true)]
	public int Value => rowColIndex;

	public GridRowColIndexChangingEventArgs(int rowColIndex)
	{
		this.rowColIndex = rowColIndex;
	}
}
