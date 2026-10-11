using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridRowHiddenTypeConverter))]
public class GridRowHidden
{
	private int rowIndex = -1;

	internal GridRowHiddenCollection collection;

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

	public GridRowHidden()
	{
	}

	public override string ToString()
	{
		return "Hide Row " + rowIndex;
	}

	public GridRowHidden(int rowIndex)
	{
		this.rowIndex = rowIndex;
	}
}
