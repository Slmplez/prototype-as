using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBaseStyleCollection : CollectionBase
{
	public class GridBaseStyleEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public GridBaseStyle Current => (GridBaseStyle)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public GridBaseStyleEnumerator(GridBaseStyleCollection griMappings)
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

	public GridBaseStyle this[int intIndex]
	{
		get
		{
			return (GridBaseStyle)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public GridBaseStyleCollection()
	{
	}

	public GridBaseStyleCollection(GridBaseStyleCollection griValue)
	{
		AddRange(griValue);
	}

	public GridBaseStyleCollection(GridBaseStyle[] griValue)
	{
		AddRange(griValue);
	}

	public int Add(GridBaseStyle griValue)
	{
		return base.List.Add(griValue);
	}

	public void AddRange(GridBaseStyle[] griValue)
	{
		for (int i = 0; i < griValue.Length; i++)
		{
			Add(griValue[i]);
		}
	}

	public void AddRange(GridBaseStyleCollection griValue)
	{
		for (int i = 0; i < griValue.Count; i++)
		{
			Add(griValue[i]);
		}
	}

	public bool Contains(GridBaseStyle griValue)
	{
		return base.List.Contains(griValue);
	}

	public void CopyTo(GridBaseStyle[] griArray, int intIndex)
	{
		base.List.CopyTo(griArray, intIndex);
	}

	public int IndexOf(GridBaseStyle griValue)
	{
		return base.List.IndexOf(griValue);
	}

	public void Insert(int intIndex, GridBaseStyle griValue)
	{
		base.List.Insert(intIndex, griValue);
	}

	public new GridBaseStyleEnumerator GetEnumerator()
	{
		return new GridBaseStyleEnumerator(this);
	}

	public void Remove(GridBaseStyle griValue)
	{
		base.List.Remove(griValue);
	}
}
