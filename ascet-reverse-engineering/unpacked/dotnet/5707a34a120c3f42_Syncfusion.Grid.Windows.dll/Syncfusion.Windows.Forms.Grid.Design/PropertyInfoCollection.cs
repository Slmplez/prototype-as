using System;
using System.Collections;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
internal class PropertyInfoCollection : CollectionBase
{
	internal class PropertyInfoEnumerator : IEnumerator
	{
		private IEnumerator iEnBase;

		private IEnumerable iEnLocal;

		public PropertyInfo Current => (PropertyInfo)iEnBase.Current;

		object IEnumerator.Current => iEnBase.Current;

		public PropertyInfoEnumerator(PropertyInfoCollection proMappings)
		{
			iEnLocal = proMappings;
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

	public PropertyInfo this[int intIndex]
	{
		get
		{
			return (PropertyInfo)base.List[intIndex];
		}
		set
		{
			base.List[intIndex] = value;
		}
	}

	public PropertyInfoCollection()
	{
	}

	public PropertyInfoCollection(PropertyInfoCollection proValue)
	{
		AddRange(proValue);
	}

	public PropertyInfoCollection(PropertyInfo[] proValue)
	{
		AddRange(proValue);
	}

	public int Add(PropertyInfo proValue)
	{
		return base.List.Add(proValue);
	}

	public void AddRange(PropertyInfo[] proValue)
	{
		for (int i = 0; i < proValue.Length; i++)
		{
			Add(proValue[i]);
		}
	}

	public void AddRange(PropertyInfoCollection proValue)
	{
		for (int i = 0; i < proValue.Count; i++)
		{
			Add(proValue[i]);
		}
	}

	public bool Contains(PropertyInfo proValue)
	{
		return base.List.Contains(proValue);
	}

	public void CopyTo(PropertyInfo[] proArray, int intIndex)
	{
		base.List.CopyTo(proArray, intIndex);
	}

	public int IndexOf(PropertyInfo proValue)
	{
		return base.List.IndexOf(proValue);
	}

	public PropertyInfo FindByName(string propertyName)
	{
		PropertyInfoEnumerator enumerator = GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.Name == propertyName)
			{
				return enumerator.Current;
			}
		}
		return null;
	}

	public void Insert(int intIndex, PropertyInfo proValue)
	{
		base.List.Insert(intIndex, proValue);
	}

	public new PropertyInfoEnumerator GetEnumerator()
	{
		return new PropertyInfoEnumerator(this);
	}

	public void Remove(PropertyInfo proValue)
	{
		base.List.Remove(proValue);
	}

	protected override void OnSet(int intIndex, object objOldValue, object objNewValue)
	{
	}

	protected override void OnInsert(int intIndex, object objValue)
	{
	}
}
