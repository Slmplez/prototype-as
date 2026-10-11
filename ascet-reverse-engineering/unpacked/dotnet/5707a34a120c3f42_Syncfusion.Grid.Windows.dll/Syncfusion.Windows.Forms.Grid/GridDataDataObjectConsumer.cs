using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDataDataObjectConsumer : GridSubComponent, IGridDataObjectConsumer
{
	private GridControlBase grid;

	public string Name => "GridData";

	public GridDataDataObjectConsumer(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
	}

	public bool QueryAcceptData(IDataObject dataObject, IGridDataObjectConsumer consumer, GridQueryAcceptDataOptions options)
	{
		if (!GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 16))
		{
			return false;
		}
		if (!grid.Model.IgnoreReadOnly && grid.Model.ReadOnly)
		{
			return false;
		}
		if (consumer != null && consumer.Name != "Text")
		{
			return false;
		}
		return dataObject.GetDataPresent(typeof(GridData));
	}

	public Size DetermineRowColCount(IDataObject dataObject)
	{
		int height = 0;
		int width = 0;
		if (dataObject.GetDataPresent(typeof(GridData)))
		{
			GridData gridData = (GridData)dataObject.GetData(typeof(GridData));
			height = gridData.RowCount;
			width = gridData.ColCount;
		}
		return new Size(width, height);
	}

	public bool DropAtRowCol(IDataObject dataObject, int rowIndex, int colIndex)
	{
		if (dataObject.GetDataPresent(typeof(GridData)))
		{
			GridModel.InternalGridDragDropData.dndGridTargetStyle = true;
			GridData data = (GridData)dataObject.GetData(typeof(GridData));
			return grid.Model.DataExchange.PasteCellsFromDataObject(data, GridRangeInfo.Cell(rowIndex, colIndex), bIgnoreDiffRange: true, grid.Model.Options.DragDropDropTargetFlags);
		}
		return false;
	}
}
