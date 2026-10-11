using System.Collections;
using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridListControlItemAccessibleObjectsIndexer
{
	private ArrayList data;

	private GridListControl listControl;

	private GridListControlChild gridChild;

	[Browsable(false)]
	public GridListControlItemAccessibleObject this[int index]
	{
		get
		{
			GridListControlItemAccessibleObject gridListControlItemAccessibleObject = GetItem(index);
			if (gridListControlItemAccessibleObject == null)
			{
				gridListControlItemAccessibleObject = gridChild.CreateListControlItemAccessibilityInstance(index);
				SetItem(index, gridListControlItemAccessibleObject);
			}
			return gridListControlItemAccessibleObject;
		}
	}

	internal GridListControlItemAccessibleObjectsIndexer(GridListControlChild grid)
	{
		gridChild = grid;
		listControl = gridChild.ListControl;
		data = new ArrayList();
	}

	internal GridListControlItemAccessibleObject GetItem(int index)
	{
		if (index >= data.Count)
		{
			return null;
		}
		return data[index] as GridListControlItemAccessibleObject;
	}

	internal void SetItem(int index, GridListControlItemAccessibleObject accObj)
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
