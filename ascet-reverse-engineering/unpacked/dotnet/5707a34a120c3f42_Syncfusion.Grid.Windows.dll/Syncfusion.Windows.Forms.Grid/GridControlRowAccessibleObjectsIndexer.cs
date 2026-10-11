using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridControlRowAccessibleObjectsIndexer
{
	private ArrayList data;

	internal GridControlBaseImp grid;

	[Browsable(false)]
	public GridControlRowAccessibleObject this[int index]
	{
		get
		{
			GridControlRowAccessibleObject gridControlRowAccessibleObject = GetItem(index);
			if (gridControlRowAccessibleObject == null)
			{
				gridControlRowAccessibleObject = grid.CreateRowAccessibilityInstance(index);
				SetItem(index, gridControlRowAccessibleObject);
			}
			return gridControlRowAccessibleObject;
		}
	}

	internal GridControlRowAccessibleObjectsIndexer(GridControlBaseImp grid)
	{
		this.grid = grid;
		data = new ArrayList();
	}

	internal GridControlRowAccessibleObject GetItem(int index)
	{
		if (index < 0 || index >= data.Count)
		{
			return null;
		}
		return data[index] as GridControlRowAccessibleObject;
	}

	internal void SetItem(int index, GridControlRowAccessibleObject accObj)
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
