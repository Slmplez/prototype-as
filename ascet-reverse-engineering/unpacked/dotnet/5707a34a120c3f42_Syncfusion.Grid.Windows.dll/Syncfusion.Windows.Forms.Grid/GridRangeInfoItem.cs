namespace Syncfusion.Windows.Forms.Grid;

internal class GridRangeInfoItem
{
	private GridRangeInfo range = new GridRangeInfo();

	public string Range
	{
		get
		{
			return range.ToString();
		}
		set
		{
			range = GridRangeInfo.Parse(value);
		}
	}

	public GridRangeInfoItem(GridRangeInfo range)
	{
		Range = range.ToString();
	}

	public GridRangeInfoItem()
	{
	}

	public GridRangeInfo GetRangeInfo()
	{
		return GridRangeInfo.Parse(Range);
	}
}
