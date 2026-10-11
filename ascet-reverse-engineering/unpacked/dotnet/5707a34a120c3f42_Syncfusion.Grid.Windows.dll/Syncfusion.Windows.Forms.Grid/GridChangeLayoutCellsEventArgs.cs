using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridChangeLayoutCellsEventArgs : SyncfusionEventArgs
{
	private GridRangeInfo range;

	[TraceProperty(true)]
	[DocumentationExclude]
	public GridRangeInfo Range => range;

	public GridChangeLayoutCellsEventArgs(GridRangeInfo range)
	{
		this.range = range;
	}
}
