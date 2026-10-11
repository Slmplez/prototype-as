using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridRowHeightTypeConverter))]
public class GridRowHeight
{
	private int height;

	private int rowIndex = -1;

	internal GridRowHeightCollection collection;

	[DefaultValue(-1)]
	public int Height
	{
		get
		{
			return height;
		}
		set
		{
			if (height != value)
			{
				height = value;
				if (collection != null)
				{
					collection.WriteToDict();
				}
			}
		}
	}

	public int RowIndex
	{
		get
		{
			return rowIndex;
		}
		set
		{
			if (rowIndex != value)
			{
				rowIndex = value;
				if (collection != null)
				{
					collection.WriteToDict();
				}
			}
		}
	}

	public GridRowHeight()
	{
	}

	public override string ToString()
	{
		return "RowHeight(" + rowIndex + ") = " + height;
	}

	public GridRowHeight(int rowIndex)
	{
		this.rowIndex = rowIndex;
		height = -1;
	}

	public GridRowHeight(int rowIndex, int height)
	{
		this.rowIndex = rowIndex;
		this.height = height;
	}
}
