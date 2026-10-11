using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridControlColHeaderAccessibleObjectsIndexer
{
	private ArrayList data;

	private GridControlBaseImp grid;

	[Browsable(false)]
	public GridControlColHeaderAccessibleObject this[int index]
	{
		get
		{
			GridControlColHeaderAccessibleObject gridControlColHeaderAccessibleObject = GetItem(index);
			if (gridControlColHeaderAccessibleObject == null)
			{
				gridControlColHeaderAccessibleObject = grid.CreateColHeaderAccessibilityInstance(index);
				SetItem(index, gridControlColHeaderAccessibleObject);
			}
			return gridControlColHeaderAccessibleObject;
		}
	}

	internal GridControlColHeaderAccessibleObjectsIndexer(GridControlBaseImp grid)
	{
		this.grid = grid;
		data = new ArrayList();
	}

	internal GridControlColHeaderAccessibleObject GetItem(int index)
	{
		if (index >= data.Count)
		{
			return null;
		}
		return data[index] as GridControlColHeaderAccessibleObject;
	}

	internal void SetItem(int index, GridControlColHeaderAccessibleObject accObj)
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
