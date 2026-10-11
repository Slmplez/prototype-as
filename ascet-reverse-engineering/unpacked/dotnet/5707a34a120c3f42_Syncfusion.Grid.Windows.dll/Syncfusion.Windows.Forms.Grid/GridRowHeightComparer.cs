using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridRowHeightComparer : IComparer
{
	public int Compare(object x, object y)
	{
		GridRowHeight gridRowHeight = (GridRowHeight)x;
		GridRowHeight gridRowHeight2 = (GridRowHeight)y;
		return gridRowHeight.RowIndex - gridRowHeight2.RowIndex;
	}
}
