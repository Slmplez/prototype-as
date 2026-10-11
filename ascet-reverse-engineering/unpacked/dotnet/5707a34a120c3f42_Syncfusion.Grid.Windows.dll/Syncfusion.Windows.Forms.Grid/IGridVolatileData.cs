namespace Syncfusion.Windows.Forms.Grid;

public interface IGridVolatileData : IGridData
{
	int RowCount { get; set; }

	bool HasRowCount { get; }

	int ColCount { get; set; }

	bool HasColCount { get; }

	void Clear();

	void ResetRowCount();

	void ResetColCount();

	void ResetItem(GridCellPos cell);
}
