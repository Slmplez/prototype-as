using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
public class GridRowColEntryCollection : CollectionBase
{
	public class GridRowColEntryEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public GridRowColEntry Current => (GridRowColEntry)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public GridRowColEntryEnumerator(GridRowColEntryCollection griMappings)
		{
			iEnLocal = griMappings;
			iEnBase = iEnLocal.GetEnumerator();
		}

		public bool MoveNext()
		{
			return iEnBase.MoveNext();
		}

		bool IEnumerator.MoveNext()
		{
			return iEnBase.MoveNext();
		}

		public void Reset()
		{
			iEnBase.Reset();
		}

		void IEnumerator.Reset()
		{
			iEnBase.Reset();
		}
	}

	public GridRowColEntry this[int intIndex]
	{
		get
		{
			return (GridRowColEntry)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public GridRowColEntryCollection()
	{
	}

	public GridRowColEntryCollection(GridRowColEntryCollection griValue)
	{
		AddRange(griValue);
	}

	public GridRowColEntryCollection(GridRowColEntry[] griValue)
	{
		AddRange(griValue);
	}

	public int Add(GridRowColEntry griValue)
	{
		return base.List.Add(griValue);
	}

	public void AddRange(GridRowColEntry[] griValue)
	{
		for (int i = 0; i < griValue.Length; i++)
		{
			Add(griValue[i]);
		}
	}

	public void AddRange(GridRowColEntryCollection griValue)
	{
		for (int i = 0; i < griValue.Count; i++)
		{
			Add(griValue[i]);
		}
	}

	public bool Contains(GridRowColEntry griValue)
	{
		return base.List.Contains(griValue);
	}

	public void CopyTo(GridRowColEntry[] griArray, int intIndex)
	{
		base.List.CopyTo(griArray, intIndex);
	}

	public int IndexOf(GridRowColEntry griValue)
	{
		return base.List.IndexOf(griValue);
	}

	public void Insert(int intIndex, GridRowColEntry griValue)
	{
		base.List.Insert(intIndex, griValue);
	}

	public new GridRowColEntryEnumerator GetEnumerator()
	{
		return new GridRowColEntryEnumerator(this);
	}

	public void Remove(GridRowColEntry griValue)
	{
		base.List.Remove(griValue);
	}

	protected override void OnSet(int intIndex, object objOldValue, object objNewValue)
	{
	}

	protected override void OnInsert(int intIndex, object objValue)
	{
	}
}
