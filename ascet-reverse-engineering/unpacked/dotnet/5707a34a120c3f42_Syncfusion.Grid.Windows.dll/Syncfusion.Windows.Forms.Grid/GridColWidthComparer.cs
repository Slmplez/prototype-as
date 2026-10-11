using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridColWidthComparer : IComparer
{
	public int Compare(object x, object y)
	{
		GridColWidth gridColWidth = (GridColWidth)x;
		GridColWidth gridColWidth2 = (GridColWidth)y;
		return gridColWidth.ColIndex - gridColWidth2.ColIndex;
	}
}
