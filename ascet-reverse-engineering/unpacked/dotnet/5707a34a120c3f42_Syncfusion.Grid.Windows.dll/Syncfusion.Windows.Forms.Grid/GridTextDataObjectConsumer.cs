using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridTextDataObjectConsumer : GridSubComponent, IGridDataObjectConsumer
{
	public string Name => "Text";

	public GridTextDataObjectConsumer(GridControlBase grid)
		: base(grid)
	{
	}

	public bool QueryAcceptData(IDataObject dataObject, IGridDataObjectConsumer consumer, GridQueryAcceptDataOptions options)
	{
		if (!GridUtil.IsSet(base.Grid.Model.Options.DragDropDropTargetFlags, 8))
		{
			return false;
		}
		if (!base.Grid.Model.IgnoreReadOnly && base.Grid.Model.ReadOnly)
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
		if (dataObject != null)
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
				base.Grid.Model.TextDataExchange.CalcBufferDimension(text, out nRows, out nCols);
			}
		}
		return new Size(nCols, nRows);
	}

	public bool DropAtRowCol(IDataObject dataObject, int rowIndex, int colIndex)
	{
		if (dataObject != null)
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
				return base.Grid.Model.TextDataExchange.PasteTextFromBuffer(text, GridRangeInfo.Cell(rowIndex, colIndex), base.Grid.Model.Options.DragDropDropTargetFlags);
			}
		}
		return false;
	}
}
