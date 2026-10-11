using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridColWidthTypeConverter))]
public class GridColWidth
{
	private int width;

	private int colIndex = -1;

	internal GridColWidthCollection collection;

	[DefaultValue(-1)]
	public int Width
	{
		get
		{
			return width;
		}
		set
		{
			if (width != value)
			{
				width = value;
				if (collection != null)
				{
					collection.WriteToDict();
				}
			}
		}
	}

	public int ColIndex
	{
		get
		{
			return colIndex;
		}
		set
		{
			if (colIndex != value)
			{
				colIndex = value;
				if (collection != null)
				{
					collection.WriteToDict();
				}
			}
		}
	}

	public GridColWidth()
	{
	}

	public override string ToString()
	{
		return "ColWidth(" + colIndex + ") = " + width;
	}

	public GridColWidth(int colIndex)
	{
		this.colIndex = colIndex;
		width = -1;
	}

	public GridColWidth(int colIndex, int width)
	{
		this.colIndex = colIndex;
		this.width = width;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (!(obj is GridColWidth gridColWidth))
		{
			return false;
		}
		if (gridColWidth.colIndex == colIndex)
		{
			return gridColWidth.width == width;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return colIndex.GetHashCode();
	}
}
