using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridDataBoundGridRecordAccessibleObjectsIndexer
{
	private ArrayList data;

	private GridDataBoundGrid dataBoundGrid;

	[Browsable(false)]
	public GridDataBoundGridRecordAccessibleObject this[int index]
	{
		get
		{
			GridDataBoundGridRecordAccessibleObject gridDataBoundGridRecordAccessibleObject = GetItem(index);
			if (gridDataBoundGridRecordAccessibleObject == null)
			{
				gridDataBoundGridRecordAccessibleObject = dataBoundGrid.CreateRecordAccessibilityInstance(index);
				SetItem(index, gridDataBoundGridRecordAccessibleObject);
			}
			return gridDataBoundGridRecordAccessibleObject;
		}
	}

	internal GridDataBoundGridRecordAccessibleObjectsIndexer(GridDataBoundGrid grid)
	{
		dataBoundGrid = grid;
		data = new ArrayList();
	}

	internal GridDataBoundGridRecordAccessibleObject GetItem(int index)
	{
		if (index < 0 || index >= data.Count)
		{
			return null;
		}
		return data[index] as GridDataBoundGridRecordAccessibleObject;
	}

	internal void SetItem(int index, GridDataBoundGridRecordAccessibleObject accObj)
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
