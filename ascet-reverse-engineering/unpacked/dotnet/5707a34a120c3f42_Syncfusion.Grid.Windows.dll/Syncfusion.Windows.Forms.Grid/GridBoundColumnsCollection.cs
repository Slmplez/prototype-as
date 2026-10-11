using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Globalization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[ListBindable(false)]
[Editor(typeof(GridBoundColumnsCollectionEditor), typeof(UITypeEditor))]
public class GridBoundColumnsCollection : BaseCollection, IList, ICollection, IEnumerable, ICloneable
{
	private ArrayList items = new ArrayList();

	private ICurrencyManagerSource owner;

	private bool isDefault;

	private bool inAddRange;

	protected override ArrayList List => items;

	public GridBoundColumn this[int index] => (GridBoundColumn)items[index];

	public GridBoundColumn this[string columnName]
	{
		get
		{
			int count = items.Count;
			for (int i = 0; i < count; i++)
			{
				GridBoundColumn gridBoundColumn = (GridBoundColumn)items[i];
				if (string.Compare(gridBoundColumn.MappingName, columnName, ignoreCase: true, CultureInfo.InvariantCulture) == 0)
				{
					return gridBoundColumn;
				}
			}
			return null;
		}
	}

	public GridBoundColumn this[PropertyDescriptor propDesc]
	{
		get
		{
			int count = items.Count;
			for (int i = 0; i < count; i++)
			{
				GridBoundColumn gridBoundColumn = (GridBoundColumn)items[i];
				if (propDesc.Equals(gridBoundColumn.PropertyDescriptor))
				{
					return gridBoundColumn;
				}
			}
			return null;
		}
	}

	internal GridModelDataBinder OwnerDB => owner as GridModelDataBinder;

	public ICurrencyManagerSource Owner => owner;

	bool IList.IsFixedSize => false;

	bool IList.IsReadOnly => false;

	object IList.this[int index]
	{
		get
		{
			return items[index];
		}
		set
		{
			throw new NotSupportedException();
		}
	}

	int ICollection.Count => items.Count;

	bool ICollection.IsSynchronized => false;

	object ICollection.SyncRoot => this;

	public event CollectionChangeEventHandler CollectionChanged;

	public virtual object Clone()
	{
		GridBoundColumnsCollection gridBoundColumnsCollection = new GridBoundColumnsCollection(owner, isDefault);
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				GridBoundColumn column = (GridBoundColumn)enumerator.Current;
				gridBoundColumnsCollection.Add(column);
			}
			return gridBoundColumnsCollection;
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

	public virtual GridBoundColumn CreateBoundColumn(PropertyDescriptor pd)
	{
		return new GridBoundColumn(pd);
	}

	int IList.Add(object value)
	{
		return Add((GridBoundColumn)value);
	}

	void IList.Clear()
	{
		Clear();
	}

	bool IList.Contains(object value)
	{
		return items.Contains(value);
	}

	int IList.IndexOf(object value)
	{
		return items.IndexOf(value);
	}

	public void Insert(int index, GridBoundColumn column)
	{
		column.SetOwner(owner);
		column.MappingNameChanged += ColumnStyleMappingNameChanged;
		column.PropertyDescriptorChanged += ColumnStylePropDescChanged;
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, column));
		items.Insert(index, column);
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, (GridBoundColumn)value);
	}

	void IList.Remove(object value)
	{
		Remove((GridBoundColumn)value);
	}

	void IList.RemoveAt(int index)
	{
		RemoveAt(index);
	}

	public void CopyTo(GridBoundColumn[] array, int index)
	{
		((ICollection)this).CopyTo((Array)array, index);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		items.CopyTo(array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return items.GetEnumerator();
	}

	public GridBoundColumnsCollection(ICurrencyManagerSource table)
	{
		owner = table;
	}

	internal GridBoundColumnsCollection(ICurrencyManagerSource table, bool isDefault)
		: this(table)
	{
		this.isDefault = isDefault;
	}

	internal GridBoundColumn MapColumnStyleToPropertyName(string mappingName)
	{
		int count = items.Count;
		for (int i = 0; i < count; i++)
		{
			GridBoundColumn gridBoundColumn = (GridBoundColumn)items[i];
			if (string.Compare(gridBoundColumn.MappingName, mappingName, ignoreCase: true, CultureInfo.InvariantCulture) == 0)
			{
				return gridBoundColumn;
			}
		}
		return null;
	}

	internal void CheckForMappingNameDuplicates(GridBoundColumn column)
	{
		if (GridUtil.IsEmpty(column.MappingName))
		{
			return;
		}
		for (int i = 0; i < items.Count; i++)
		{
			if (((GridBoundColumn)items[i]).MappingName.Equals(column.MappingName) && column != items[i])
			{
				throw new ArgumentException("DuplicateMappingName", "column");
			}
		}
	}

	private void ColumnStyleMappingNameChanged(object sender, EventArgs pcea)
	{
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
	}

	private void ColumnStylePropDescChanged(object sender, EventArgs pcea)
	{
	}

	public virtual int Add(GridBoundColumn column)
	{
		if (isDefault)
		{
			throw new ArgumentException("DataGridDefaultColumnCollectionChanged");
		}
		CheckForMappingNameDuplicates(column);
		column.SetOwner(owner);
		column.MappingNameChanged += ColumnStyleMappingNameChanged;
		column.PropertyDescriptorChanged += ColumnStylePropDescChanged;
		int result = items.Add(column);
		if (!inAddRange)
		{
			OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, column));
		}
		return result;
	}

	public void AddRange(GridBoundColumn[] columns)
	{
		if (columns == null)
		{
			throw new ArgumentNullException("columns");
		}
		inAddRange = true;
		for (int i = 0; i < columns.Length; i++)
		{
			Add(columns[i]);
		}
		inAddRange = false;
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, null));
	}

	internal void AddDefaultColumn(GridBoundColumn column)
	{
		items.Add(column);
		column.SetOwner(owner);
	}

	internal void ResetDefaultColumnCollection()
	{
		items.Clear();
	}

	public void Clear()
	{
		items.Clear();
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
	}

	public bool Contains(PropertyDescriptor propDesc)
	{
		return this[propDesc] != null;
	}

	public bool Contains(GridBoundColumn column)
	{
		return items.IndexOf(column) != -1;
	}

	public bool Contains(string name)
	{
		IEnumerator enumerator = items.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (string.Compare(((GridBoundColumn)enumerator.Current).MappingName, name, ignoreCase: true, CultureInfo.InvariantCulture) == 0)
			{
				return true;
			}
		}
		return false;
	}

	public int IndexOf(GridBoundColumn element)
	{
		int count = items.Count;
		for (int i = 0; i < count; i++)
		{
			GridBoundColumn gridBoundColumn = (GridBoundColumn)items[i];
			if (element == gridBoundColumn)
			{
				return i;
			}
		}
		return -1;
	}

	protected virtual void OnCollectionChanged(CollectionChangeEventArgs ccevent)
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, ccevent);
		}
	}

	public void Remove(GridBoundColumn column)
	{
		if (isDefault)
		{
			throw new ArgumentException("DataGridDefaultColumnCollectionChanged");
		}
		int num = -1;
		int count = items.Count;
		for (int i = 0; i < count; i++)
		{
			if (items[i] == column)
			{
				num = i;
				break;
			}
		}
		if (num == -1)
		{
			throw new InvalidOperationException("DataGridColumnCollectionMissing");
		}
		RemoveAt(num);
	}

	public void RemoveAt(int index)
	{
		if (isDefault)
		{
			throw new ArgumentException("DataGridDefaultColumnCollectionChanged");
		}
		GridBoundColumn gridBoundColumn = (GridBoundColumn)items[index];
		gridBoundColumn.MappingNameChanged -= ColumnStyleMappingNameChanged;
		gridBoundColumn.PropertyDescriptorChanged -= ColumnStylePropDescChanged;
		gridBoundColumn.SetOwner(owner);
		items.RemoveAt(index);
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Remove, gridBoundColumn));
	}

	public void ResetPropertyDescriptors()
	{
		for (int i = 0; i < base.Count; i++)
		{
			this[i].PropertyDescriptor = null;
		}
	}
}
