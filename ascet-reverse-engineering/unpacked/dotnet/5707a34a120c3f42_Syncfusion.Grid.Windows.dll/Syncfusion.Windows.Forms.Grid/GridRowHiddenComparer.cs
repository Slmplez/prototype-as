using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridRowHiddenComparer : IComparer
{
	public int Compare(object x, object y)
	{
		GridRowHidden gridRowHidden = (GridRowHidden)x;
		GridRowHidden gridRowHidden2 = (GridRowHidden)y;
		return gridRowHidden.RowIndex - gridRowHidden2.RowIndex;
	}
}
