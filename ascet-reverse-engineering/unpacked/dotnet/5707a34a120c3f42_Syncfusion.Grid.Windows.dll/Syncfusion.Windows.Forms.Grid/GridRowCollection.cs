using System;
using System.Collections;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridRowCollection : SFTable, IList, ICollection, IEnumerable
{
	public new GridStyleInfoStore this[int rowIndex, int colIndex]
	{
		get
		{
			return base[rowIndex, colIndex] as GridStyleInfoStore;
		}
		set
		{
			base[rowIndex, colIndex] = value;
		}
	}

	public bool IsReadOnly => base.Rows.IsReadOnly;

	object IList.this[int index]
	{
		get
		{
			return base.Rows[index];
		}
		set
		{
			base.Rows[index] = value;
		}
	}

	public GridCellCollection this[int index]
	{
		get
		{
			return (GridCellCollection)((IList)this)[index];
		}
		set
		{
			((IList)this)[index] = value;
		}
	}

	public bool IsFixedSize => false;

	public bool IsSynchronized => base.Rows.IsSynchronized;

	public int Count => base.Rows.Count;

	public object SyncRoot => base.Rows.SyncRoot;

	protected GridRowCollection(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}

	public GridRowCollection()
	{
	}

	public GridRowCollection(SFTable data)
		: base(data, clone: false)
	{
		int count = data.Rows.Count;
		base.Rows.EnsureCount(count);
		for (int i = 0; i < count; i++)
		{
			ArrayList arrayList = (ArrayList)data.Rows[i];
			if (arrayList == null)
			{
				continue;
			}
			GridCellCollection gridCellCollection = (this[i] = new GridCellCollection());
			for (int j = 0; j < arrayList.Count; j++)
			{
				if (arrayList[j] != null)
				{
					gridCellCollection.Add((GridStyleInfoStore)arrayList[j]);
				}
				else
				{
					gridCellCollection.Add(null);
				}
			}
		}
	}

	public override SFArrayList CreateCellCollection()
	{
		return new GridCellCollection();
	}

	public override object Clone()
	{
		GridRowCollection gridRowCollection = new GridRowCollection();
		int count = base.Rows.Count;
		gridRowCollection.Rows.EnsureCount(count);
		for (int i = 0; i < count; i++)
		{
			gridRowCollection.Rows[i] = (GridCellCollection)this[i].Clone();
		}
		return new GridRowCollection(this);
	}

	public void RemoveAt(int index)
	{
		base.Rows.RemoveAt(index);
	}

	void IList.Insert(int index, object value)
	{
		base.Rows.Insert(index, value);
	}

	public void Insert(int index, GridCellCollection value)
	{
		((IList)this).Insert(index, (object)value);
	}

	void IList.Remove(object value)
	{
		base.Rows.Remove(value);
	}

	public void Remove(GridCellCollection value)
	{
		((IList)this).Remove((object)value);
	}

	bool IList.Contains(object value)
	{
		return base.Rows.Contains(value);
	}

	public bool Contains(GridCellCollection value)
	{
		return ((IList)this).Contains((object)value);
	}

	int IList.IndexOf(object value)
	{
		return base.Rows.IndexOf(value);
	}

	public int IndexOf(GridCellCollection value)
	{
		return ((IList)this).IndexOf((object)value);
	}

	int IList.Add(object value)
	{
		return base.Rows.Add(value);
	}

	public int Add(GridCellCollection value)
	{
		return ((IList)this).Add((object)value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		base.Rows.CopyTo(array, index);
	}

	public void CopyTo(GridCellCollection[] array, int index)
	{
		((ICollection)this).CopyTo((Array)array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return base.Rows.GetEnumerator();
	}

	void IList.Clear()
	{
		Clear();
	}
}
