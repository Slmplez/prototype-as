using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid.GridInternal;

[DocumentationExclude]
internal class GridInternalDataObjectConsumer : GridSubComponent, IGridDataObjectConsumer
{
	public string Name => "Internal";

	public GridInternalDataObjectConsumer(GridControlBase grid)
		: base(grid)
	{
	}

	public bool QueryAcceptData(IDataObject dataObject, IGridDataObjectConsumer consumer, GridQueryAcceptDataOptions options)
	{
		return false;
	}

	public Size DetermineRowColCount(IDataObject dataObject)
	{
		int height = 0;
		int width = 0;
		return new Size(width, height);
	}

	public bool DropAtRowCol(IDataObject dataObject, int rowIndex, int colIndex)
	{
		return false;
	}
}
