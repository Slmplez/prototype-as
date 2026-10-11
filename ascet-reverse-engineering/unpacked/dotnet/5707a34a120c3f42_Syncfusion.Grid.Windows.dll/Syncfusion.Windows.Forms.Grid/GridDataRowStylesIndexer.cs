namespace Syncfusion.Windows.Forms.Grid;

public class GridDataRowStylesIndexer
{
	private GridData dataParent;

	public GridStyleInfoStore this[int rowIndex]
	{
		get
		{
			return dataParent[rowIndex, -1];
		}
		set
		{
			dataParent[rowIndex, -1] = value;
			dataParent.modified = true;
		}
	}

	internal GridDataRowStylesIndexer(GridData data)
	{
		dataParent = data;
	}
}
