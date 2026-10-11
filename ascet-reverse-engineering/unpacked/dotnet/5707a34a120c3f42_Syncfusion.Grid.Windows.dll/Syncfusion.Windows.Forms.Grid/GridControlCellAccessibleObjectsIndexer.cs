using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridControlCellAccessibleObjectsIndexer
{
	private ArrayList data;

	private GridControlRowAccessibleObject rowAcc;

	[Browsable(false)]
	public GridControlCellAccessibleObject this[int index]
	{
		get
		{
			GridControlCellAccessibleObject gridControlCellAccessibleObject = GetItem(index);
			if (gridControlCellAccessibleObject == null)
			{
				gridControlCellAccessibleObject = new GridControlCellAccessibleObject(rowAcc.grid, rowAcc.RowIndex, index + 1);
				SetItem(index, gridControlCellAccessibleObject);
			}
			return gridControlCellAccessibleObject;
		}
	}

	internal GridControlCellAccessibleObjectsIndexer(GridControlRowAccessibleObject rowAcc)
	{
		this.rowAcc = rowAcc;
		data = new ArrayList();
	}

	internal GridControlCellAccessibleObject GetItem(int index)
	{
		if (index < 0 || index >= data.Count)
		{
			return null;
		}
		return data[index] as GridControlCellAccessibleObject;
	}

	internal void SetItem(int index, GridControlCellAccessibleObject accObj)
	{
		if (index >= data.Count)
		{
			object[] c = new object[index - data.Count + 1];
			data.AddRange(c);
		}
		data[index] = accObj;
	}

	internal void ResetItem(int index)
	{
		if (index < data.Count)
		{
			data[index] = null;
		}
	}
}
