using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Grid;

[Editor(typeof(GridRowsStylesUITypeEditor), typeof(UITypeEditor))]
public class GridModelRowStylesIndexer : GridModelBound, ICollection, IEnumerable
{
	public GridStyleInfo this[int rowIndex]
	{
		get
		{
			return model[rowIndex, -1];
		}
		set
		{
			model[rowIndex, -1] = value;
		}
	}

	public GridStyleInfo this[string name]
	{
		get
		{
			return this[base.Model.NameToRowIndex(name)];
		}
		set
		{
			this[base.Model.NameToRowIndex(name)] = value;
		}
	}

	public int Count => model.RowCount;

	public bool IsSynchronized => false;

	public object SyncRoot => base.Model.Data;

	internal GridModelRowStylesIndexer(GridModel model)
		: base(model)
	{
	}

	public IEnumerator GetEnumerator()
	{
		GridStyleInfo[] array = new GridStyleInfo[Count];
		CopyTo(array, 0);
		return array.GetEnumerator();
	}

	public void CopyTo(GridStyleInfo[] array, int index)
	{
		int count = Count;
		for (int i = index + 1; i <= count; i++)
		{
			array.SetValue(this[i], i - 1);
		}
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridStyleInfo[])array, index);
	}
}
