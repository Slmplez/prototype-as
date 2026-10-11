namespace Syncfusion.Windows.Forms.Grid;

public class GridDataColStylesIndexer
{
	private GridData dataParent;

	public GridStyleInfoStore this[int colIndex]
	{
		get
		{
			return dataParent[-1, colIndex];
		}
		set
		{
			dataParent[-1, colIndex] = value;
			dataParent.modified = true;
		}
	}

	internal GridDataColStylesIndexer(GridData data)
	{
		dataParent = data;
	}
}
