using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal interface IGridVolatileDataContainer
{
	GridBaseStylesMap BaseStylesMap { get; }

	int HeaderRowCount { get; }

	int HeaderColCount { get; }

	void ChangeCell(int rowIndex, int colIndex, GridStyleInfo style);

	void GetCellInfo(int rowIndex, int colIndex, GridStyleInfo style);

	GridCellModelBase LookupCellModel(string id);
}
