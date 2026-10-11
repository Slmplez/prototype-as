namespace Syncfusion.Windows.Forms.Grid;

public interface IGridCellModelFactory
{
	bool IsDefault { get; }

	GridCellModelBase CreateCellModel(string controlId, GridModel pGrid);
}
