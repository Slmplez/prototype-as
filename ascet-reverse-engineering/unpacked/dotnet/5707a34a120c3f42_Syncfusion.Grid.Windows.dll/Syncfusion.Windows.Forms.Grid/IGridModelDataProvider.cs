namespace Syncfusion.Windows.Forms.Grid;

public interface IGridModelDataProvider
{
	void QueryRowCount(GridRowColCountEventArgs e);

	void QueryColCount(GridRowColCountEventArgs e);

	void QueryCellInfo(GridQueryCellInfoEventArgs e);

	void SaveCellInfo(GridSaveCellInfoEventArgs e);

	int NameToColIndex(string name);

	int NameToRowIndex(string name);
}
