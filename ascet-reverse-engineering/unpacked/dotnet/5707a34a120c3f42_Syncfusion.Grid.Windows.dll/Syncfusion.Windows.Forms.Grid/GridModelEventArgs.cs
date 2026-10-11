using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridModelEventArgs : SyncfusionEventArgs
{
	private GridModel gridModel;

	[TraceProperty(true)]
	public GridModel GridModel => gridModel;

	public GridModelEventArgs(GridModel model)
	{
		gridModel = model;
	}
}
