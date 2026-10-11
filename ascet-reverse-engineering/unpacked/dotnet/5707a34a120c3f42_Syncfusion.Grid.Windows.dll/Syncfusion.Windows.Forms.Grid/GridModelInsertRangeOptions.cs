namespace Syncfusion.Windows.Forms.Grid;

public class GridModelInsertRangeOptions
{
	internal GridStyleInfoStoreTable data;

	internal int[] rowColSizes;

	internal bool[] rowColHide;

	internal GridRangeInfoList covered;

	public GridStyleInfoStoreTable Data
	{
		get
		{
			return data;
		}
		set
		{
			data = value;
		}
	}

	public int[] RowColSizes
	{
		get
		{
			return rowColSizes;
		}
		set
		{
			rowColSizes = value;
		}
	}

	public bool[] RowColHide
	{
		get
		{
			return rowColHide;
		}
		set
		{
			rowColHide = value;
		}
	}

	public GridRangeInfoList Covered
	{
		get
		{
			return covered;
		}
		set
		{
			covered = value;
		}
	}
}
