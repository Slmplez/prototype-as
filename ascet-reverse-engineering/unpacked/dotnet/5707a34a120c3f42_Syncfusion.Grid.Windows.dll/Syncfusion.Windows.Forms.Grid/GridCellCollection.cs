using System;
using System.Collections;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridCellCollection : SFArrayList
{
	public new GridStyleInfoStore this[int index]
	{
		get
		{
			return base[index] as GridStyleInfoStore;
		}
		set
		{
			base[index] = value;
		}
	}

	public GridCellCollection()
	{
	}

	public GridCellCollection(ICollection c)
		: base(c)
	{
	}

	public override object Clone()
	{
		GridCellCollection gridCellCollection = new GridCellCollection();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridStyleInfoStore gridStyleInfoStore = (GridStyleInfoStore)enumerator.Current;
				gridCellCollection.Add(gridStyleInfoStore.Clone());
			}
			return gridCellCollection;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public int Add(GridStyleInfoStore store)
	{
		return base.Add(store);
	}
}
