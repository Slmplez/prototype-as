using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public interface IGridPaintSelectCells
{
	[DocumentationExclude]
	void UpdateSelectRange(GridRangeInfo range, GridRangeInfoList pOldRangeList);

	[DocumentationExclude]
	void PrepareClearSelection();

	[DocumentationExclude]
	void PrepareChangeSelection(GridRangeInfo oldRange, GridRangeInfo newRange);
}
