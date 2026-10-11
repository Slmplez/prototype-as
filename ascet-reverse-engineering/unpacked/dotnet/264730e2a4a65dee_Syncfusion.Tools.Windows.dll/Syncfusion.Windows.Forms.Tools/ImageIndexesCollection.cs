using System;
using System.Collections;
using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public sealed class ImageIndexesCollection : ICollection, IEnumerable, IDisposable
{
	private Hashtable m_htIndexes;

	private ComboBoxBaseDataBound.ObjectCollection m_items;

	public int this[int index]
	{
		get
		{
			int result = -1;
			if (m_htIndexes.ContainsKey(index))
			{
				result = (int)m_htIndexes[index];
			}
			return result;
		}
		set
		{
			if (m_htIndexes.ContainsKey(index))
			{
				m_htIndexes[index] = value;
			}
		}
	}

	public bool IsSynchronized => m_htIndexes.IsSynchronized;

	public int Count => m_htIndexes.Count;

	public object SyncRoot => m_htIndexes.SyncRoot;

	internal ImageIndexesCollection(ComboBoxBaseDataBound.ObjectCollection items)
	{
		m_htIndexes = new Hashtable();
		m_items = items;
		m_items.CollectionChange += M_Items_CollectionChange;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public void CopyTo(Array array, int index)
	{
	}

	public IEnumerator GetEnumerator()
	{
		return m_htIndexes.Values.GetEnumerator();
	}

	private void M_Items_CollectionChange(object sender, ComboBoxBaseDataBound.CollectionChangeEventArgs args)
	{
		switch (args.Operation)
		{
		case ComboBoxBaseDataBound.CollectionChangeOperation.AddRange:
			if (args.Item is IList list)
			{
				for (int i = 0; i < list.Count; i++)
				{
					m_htIndexes.Add(m_htIndexes.Count, -1);
				}
			}
			break;
		case ComboBoxBaseDataBound.CollectionChangeOperation.Add:
			if (!m_htIndexes.ContainsKey(args.Index))
			{
				m_htIndexes.Add(args.Index, -1);
			}
			break;
		case ComboBoxBaseDataBound.CollectionChangeOperation.Clear:
			m_htIndexes.Clear();
			break;
		case ComboBoxBaseDataBound.CollectionChangeOperation.RemoveAt:
			if (m_htIndexes.ContainsKey(args.Index))
			{
				for (int j = args.Index; j < m_htIndexes.Count; j++)
				{
					m_htIndexes[j] = m_htIndexes[j + 1];
				}
				m_htIndexes.Remove(m_htIndexes.Count - 1);
			}
			break;
		case ComboBoxBaseDataBound.CollectionChangeOperation.Insert:
		{
			m_htIndexes.Add(m_htIndexes.Count, -1);
			for (int num = m_htIndexes.Count - 1; num > args.Index - 1; num--)
			{
				m_htIndexes[num] = m_htIndexes[num - 1];
			}
			m_htIndexes[args.Index] = -1;
			break;
		}
		case ComboBoxBaseDataBound.CollectionChangeOperation.Remove:
		case ComboBoxBaseDataBound.CollectionChangeOperation.SetItem:
			break;
		}
	}

	void IDisposable.Dispose()
	{
		if (m_htIndexes != null)
		{
			m_htIndexes.Clear();
			m_htIndexes = null;
		}
		m_items = null;
	}
}
