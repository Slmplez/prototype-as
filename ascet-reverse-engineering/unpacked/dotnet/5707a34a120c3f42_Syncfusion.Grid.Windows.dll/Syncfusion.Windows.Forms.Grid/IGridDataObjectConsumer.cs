using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridDataObjectConsumer
{
	string Name { get; }

	bool QueryAcceptData(IDataObject dataObject, IGridDataObjectConsumer consumer, GridQueryAcceptDataOptions options);

	Size DetermineRowColCount(IDataObject dataObject);

	bool DropAtRowCol(IDataObject dataObject, int rowIndex, int colIndex);
}
