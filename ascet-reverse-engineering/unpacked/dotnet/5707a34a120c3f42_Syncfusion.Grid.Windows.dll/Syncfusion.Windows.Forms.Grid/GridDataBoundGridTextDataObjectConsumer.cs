using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDataBoundGridTextDataObjectConsumer : GridSubComponent, IGridDataObjectConsumer
{
	private GridControlBase grid;

	public string Name => "DataBoundGridText";

	public GridDataBoundGridTextDataObjectConsumer(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
	}

	public bool QueryAcceptData(IDataObject dataObject, IGridDataObjectConsumer consumer, GridQueryAcceptDataOptions options)
	{
		if (!GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 8))
		{
			return false;
		}
		if (!grid.Model.IgnoreReadOnly && grid.Model.ReadOnly)
		{
			return false;
		}
		if (consumer == null)
		{
			if (!dataObject.GetDataPresent(DataFormats.Text))
			{
				return dataObject.GetDataPresent(DataFormats.UnicodeText);
			}
			return true;
		}
		return false;
	}

	public Size DetermineRowColCount(IDataObject dataObject)
	{
		int nRows = 0;
		int nCols = 0;
		string text = null;
		if (dataObject.GetDataPresent(DataFormats.UnicodeText))
		{
			text = dataObject.GetData(DataFormats.UnicodeText) as string;
		}
		else if (dataObject.GetDataPresent(DataFormats.Text))
		{
			text = dataObject.GetData(DataFormats.Text) as string;
		}
		if (text != null)
		{
			grid.Model.TextDataExchange.CalcBufferDimension(text, out nRows, out nCols);
		}
		return new Size(nCols, nRows);
	}

	public bool DropAtRowCol(IDataObject dataObject, int rowIndex, int colIndex)
	{
		if (grid.Model.DataProvider is GridModelDataBinder gridModelDataBinder)
		{
			string text = null;
			if (dataObject.GetDataPresent(DataFormats.UnicodeText))
			{
				text = dataObject.GetData(DataFormats.UnicodeText) as string;
			}
			else if (dataObject.GetDataPresent(DataFormats.Text))
			{
				text = dataObject.GetData(DataFormats.Text) as string;
			}
			if (text != null)
			{
				GridRangeInfo value = GridRangeInfo.Cell(rowIndex, colIndex);
				GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
				gridRangeInfoList.Add(value);
				gridModelDataBinder.DataBoundPaste(dataObject, grid.Model.Options.DragDropDropTargetFlags, gridRangeInfoList, null);
			}
		}
		return false;
	}
}
