using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridQueryCellModelEventArgs : GridModelEventArgs
{
	private string cellType;

	private GridCellModelBase cellModel;

	[TraceProperty(true)]
	public string CellType => cellType;

	[TraceProperty(true)]
	public GridCellModelBase CellModel
	{
		get
		{
			return cellModel;
		}
		set
		{
			cellModel = value;
		}
	}

	public GridQueryCellModelEventArgs(GridModel gridModel, string cellType)
		: base(gridModel)
	{
		this.cellType = cellType;
		cellModel = null;
	}
}
