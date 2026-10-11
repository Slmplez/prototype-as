using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridColHiddenTypeConverter))]
public class GridColHidden
{
	private int colIndex = -1;

	internal GridColHiddenCollection collection;

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

	public GridColHidden()
	{
	}

	public override string ToString()
	{
		return "Hide Column " + colIndex;
	}

	public GridColHidden(int colIndex)
	{
		this.colIndex = colIndex;
	}

	public override bool Equals(object obj)
	{
		if (obj == this)
		{
			return true;
		}
		if (!(obj is GridColHidden gridColHidden))
		{
			return false;
		}
		return gridColHidden.colIndex == colIndex;
	}

	public override int GetHashCode()
	{
		return colIndex.GetHashCode();
	}
}
