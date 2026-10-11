namespace Syncfusion.Windows.Forms.Grid;

public interface IGridData
{
	GridStyleInfo this[int rowIndex, int colIndex] { get; set; }

	GridBaseStylesMap BaseStylesMap { get; }

	GridStyleInfo[] GetBaseStyles(GridStyleInfo styleInfo, int rowIndex, int colIndex);

	GridCellModelBase LookupCellModel(string id);
}
