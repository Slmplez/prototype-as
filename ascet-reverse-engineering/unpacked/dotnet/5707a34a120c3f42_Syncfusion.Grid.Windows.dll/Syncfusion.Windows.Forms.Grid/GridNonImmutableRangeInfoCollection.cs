using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridNonImmutableRangeInfoCollection : CollectionBase
{
	public class GridNonImmutableRangeInfoEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public GridNonImmutableRangeInfo Current => (GridNonImmutableRangeInfo)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public GridNonImmutableRangeInfoEnumerator(GridNonImmutableRangeInfoCollection covMappings)
		{
			iEnLocal = covMappings;
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

	public GridNonImmutableRangeInfo this[int intIndex]
	{
		get
		{
			return (GridNonImmutableRangeInfo)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public GridNonImmutableRangeInfoCollection()
	{
	}

	public GridNonImmutableRangeInfoCollection(GridNonImmutableRangeInfoCollection covValue)
	{
		AddRange(covValue);
	}

	public GridNonImmutableRangeInfoCollection(GridNonImmutableRangeInfo[] covValue)
	{
		AddRange(covValue);
	}

	public int Add(GridNonImmutableRangeInfo covValue)
	{
		return base.List.Add(covValue);
	}

	public void AddRange(GridNonImmutableRangeInfo[] covValue)
	{
		for (int i = 0; i < covValue.Length; i++)
		{
			Add(covValue[i]);
		}
	}

	public void AddRange(GridNonImmutableRangeInfoCollection covValue)
	{
		for (int i = 0; i < covValue.Count; i++)
		{
			Add(covValue[i]);
		}
	}

	public bool Contains(GridNonImmutableRangeInfo covValue)
	{
		return base.List.Contains(covValue);
	}

	public void CopyTo(GridNonImmutableRangeInfo[] covArray, int intIndex)
	{
		base.List.CopyTo(covArray, intIndex);
	}

	public int IndexOf(GridNonImmutableRangeInfo covValue)
	{
		return base.List.IndexOf(covValue);
	}

	public void Insert(int intIndex, GridNonImmutableRangeInfo covValue)
	{
		base.List.Insert(intIndex, covValue);
	}

	public new GridNonImmutableRangeInfoEnumerator GetEnumerator()
	{
		return new GridNonImmutableRangeInfoEnumerator(this);
	}

	public void Remove(GridNonImmutableRangeInfo covValue)
	{
		base.List.Remove(covValue);
	}

	protected override void OnSet(int intIndex, object objOldValue, object objNewValue)
	{
	}

	protected override void OnInsert(int intIndex, object objValue)
	{
	}
}
