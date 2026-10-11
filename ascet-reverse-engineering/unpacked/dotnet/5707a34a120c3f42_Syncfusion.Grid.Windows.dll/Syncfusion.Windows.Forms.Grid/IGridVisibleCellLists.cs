using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridVisibleCellLists
{
	void SetVisibleRowsList(object view, IDictionary list);

	void SetVisibleColumnsList(object view, IDictionary list);
}
