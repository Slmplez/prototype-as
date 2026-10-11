using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFilterBarCreatingColumnHeaderEventArgs : SyncfusionCancelEventArgs
{
	private string _colName;

	[TraceProperty(true)]
	public string ColName => _colName;

	public GridFilterBarCreatingColumnHeaderEventArgs(string colName)
	{
		_colName = colName;
	}
}
