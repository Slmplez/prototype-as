using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridNamespaceGroupItemCollection : CollectionBase
{
	public class GridNamespaceGroupItemEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public GridNamespaceGroupItem Current => (GridNamespaceGroupItem)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public GridNamespaceGroupItemEnumerator(GridNamespaceGroupItemCollection styMappings)
		{
			iEnLocal = styMappings;
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

	public GridNamespaceGroupItem this[int intIndex]
	{
		get
		{
			return (GridNamespaceGroupItem)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public GridNamespaceGroupItemCollection()
	{
	}

	public GridNamespaceGroupItemCollection(GridNamespaceGroupItemCollection styValue)
	{
		AddRange(styValue);
	}

	public GridNamespaceGroupItemCollection(GridNamespaceGroupItem[] styValue)
	{
		AddRange(styValue);
	}

	public int Add(GridNamespaceGroupItem styValue)
	{
		return base.List.Add(styValue);
	}

	public string Add(string base64Str)
	{
		string empty = string.Empty;
		empty = GetNameForValue(base64Str);
		if (empty == string.Empty)
		{
			empty = "I" + base.Count;
			Add(new GridNamespaceGroupItem(empty, base64Str));
		}
		return empty;
	}

	public void AddRange(GridNamespaceGroupItem[] styValue)
	{
		for (int i = 0; i < styValue.Length; i++)
		{
			Add(styValue[i]);
		}
	}

	public void AddRange(GridNamespaceGroupItemCollection styValue)
	{
		for (int i = 0; i < styValue.Count; i++)
		{
			Add(styValue[i]);
		}
	}

	public bool Contains(GridNamespaceGroupItem styValue)
	{
		return base.List.Contains(styValue);
	}

	public bool ContainsValue(string val)
	{
		GridNamespaceGroupItemEnumerator enumerator = GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.Value == val)
			{
				return true;
			}
		}
		return false;
	}

	public void CopyTo(GridNamespaceGroupItem[] styArray, int intIndex)
	{
		base.List.CopyTo(styArray, intIndex);
	}

	public int IndexOf(GridNamespaceGroupItem styValue)
	{
		return base.List.IndexOf(styValue);
	}

	public string GetValueForName(string name)
	{
		GridNamespaceGroupItemEnumerator enumerator = GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.Name == name)
			{
				return enumerator.Current.Value;
			}
		}
		return string.Empty;
	}

	public string GetNameForValue(string val)
	{
		GridNamespaceGroupItemEnumerator enumerator = GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.Value == val)
			{
				return enumerator.Current.Name;
			}
		}
		return string.Empty;
	}

	public void Insert(int intIndex, GridNamespaceGroupItem styValue)
	{
		base.List.Insert(intIndex, styValue);
	}

	public new GridNamespaceGroupItemEnumerator GetEnumerator()
	{
		return new GridNamespaceGroupItemEnumerator(this);
	}

	public void Remove(GridNamespaceGroupItem styValue)
	{
		base.List.Remove(styValue);
	}

	protected override void OnSet(int intIndex, object objOldValue, object objNewValue)
	{
	}

	protected override void OnInsert(int intIndex, object objValue)
	{
	}
}
