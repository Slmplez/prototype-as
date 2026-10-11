using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridDataBoundGridFieldHeaderAccessibleObjectsIndexer
{
	private ArrayList data;

	private GridDataBoundGrid dataBoundGrid;

	[Browsable(false)]
	public GridDataBoundGridFieldHeaderAccessibleObject this[int index]
	{
		get
		{
			GridDataBoundGridFieldHeaderAccessibleObject gridDataBoundGridFieldHeaderAccessibleObject = GetItem(index);
			if (gridDataBoundGridFieldHeaderAccessibleObject == null)
			{
				gridDataBoundGridFieldHeaderAccessibleObject = dataBoundGrid.CreateFieldHeaderAccessibilityInstance(index);
				SetItem(index, gridDataBoundGridFieldHeaderAccessibleObject);
			}
			return gridDataBoundGridFieldHeaderAccessibleObject;
		}
	}

	internal GridDataBoundGridFieldHeaderAccessibleObjectsIndexer(GridDataBoundGrid grid)
	{
		dataBoundGrid = grid;
		data = new ArrayList();
	}

	internal GridDataBoundGridFieldHeaderAccessibleObject GetItem(int index)
	{
		if (index >= data.Count)
		{
			return null;
		}
		return data[index] as GridDataBoundGridFieldHeaderAccessibleObject;
	}

	internal void SetItem(int index, GridDataBoundGridFieldHeaderAccessibleObject accObj)
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
