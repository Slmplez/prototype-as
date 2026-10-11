using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class FieldDefinitionCollection : CollectionBase
{
	public class FieldDefinitionEnumerator : IEnumerator
	{
		private IEnumerator baseEnumerator;

		private IEnumerable temp;

		public FieldDefinition Current => (FieldDefinition)baseEnumerator.Current;

		object IEnumerator.Current => baseEnumerator.Current;

		public FieldDefinitionEnumerator(FieldDefinitionCollection mappings)
		{
			temp = mappings;
			baseEnumerator = temp.GetEnumerator();
		}

		public bool MoveNext()
		{
			return baseEnumerator.MoveNext();
		}

		bool IEnumerator.MoveNext()
		{
			return baseEnumerator.MoveNext();
		}

		public void Reset()
		{
			baseEnumerator.Reset();
		}

		void IEnumerator.Reset()
		{
			baseEnumerator.Reset();
		}
	}

	public FieldDefinition this[int index]
	{
		get
		{
			return (FieldDefinition)base.List[index];
		}
		set
		{
			base.List[index] = value;
		}
	}

	public FieldDefinitionCollection()
	{
	}

	public FieldDefinitionCollection(FieldDefinitionCollection value)
	{
		AddRange(value);
	}

	public FieldDefinitionCollection(FieldDefinition[] value)
	{
		AddRange(value);
	}

	public int Add(FieldDefinition value)
	{
		return base.List.Add(value);
	}

	public void AddRange(FieldDefinition[] value)
	{
		for (int i = 0; i < value.Length; i++)
		{
			Add(value[i]);
		}
	}

	public void AddRange(FieldDefinitionCollection value)
	{
		for (int i = 0; i < value.Count; i++)
		{
			Add(value[i]);
		}
	}

	public bool Contains(FieldDefinition value)
	{
		return base.List.Contains(value);
	}

	public void CopyTo(FieldDefinition[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	public int IndexOf(FieldDefinition value)
	{
		return base.List.IndexOf(value);
	}

	public void Insert(int index, FieldDefinition value)
	{
		base.List.Insert(index, value);
	}

	public new FieldDefinitionEnumerator GetEnumerator()
	{
		return new FieldDefinitionEnumerator(this);
	}

	public void Remove(FieldDefinition value)
	{
		base.List.Remove(value);
	}
}
