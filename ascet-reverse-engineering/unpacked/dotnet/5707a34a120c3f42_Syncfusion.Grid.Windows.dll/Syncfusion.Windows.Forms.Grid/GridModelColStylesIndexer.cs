using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Grid;

[Editor(typeof(GridColStylesUITypeEditor), typeof(UITypeEditor))]
public class GridModelColStylesIndexer : GridModelBound, ICollection, IEnumerable
{
	public GridStyleInfo this[int colIndex]
	{
		get
		{
			return model[-1, colIndex];
		}
		set
		{
			model[-1, colIndex] = value;
		}
	}

	public GridStyleInfo this[string name]
	{
		get
		{
			return this[base.Model.NameToColIndex(name)];
		}
		set
		{
			this[base.Model.NameToColIndex(name)] = value;
		}
	}

	public int Count => model.ColCount;

	public bool IsSynchronized => false;

	public object SyncRoot => base.Model.Data;

	internal GridModelColStylesIndexer(GridModel model)
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
