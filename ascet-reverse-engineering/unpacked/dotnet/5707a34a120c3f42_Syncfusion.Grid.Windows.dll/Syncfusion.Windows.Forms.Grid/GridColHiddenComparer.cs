using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridColHiddenComparer : IComparer
{
	public int Compare(object x, object y)
	{
		GridColHidden gridColHidden = (GridColHidden)x;
		GridColHidden gridColHidden2 = (GridColHidden)y;
		return gridColHidden.ColIndex - gridColHidden2.ColIndex;
	}
}
