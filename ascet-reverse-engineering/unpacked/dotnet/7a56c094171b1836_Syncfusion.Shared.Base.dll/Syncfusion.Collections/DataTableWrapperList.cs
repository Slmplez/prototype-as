using System;
using System.Collections;
using System.ComponentModel;
using System.Data;

namespace Syncfusion.Collections;

public class DataTableWrapperList : IBindingList, IList, ICollection, IEnumerable, ITypedList
{
	private DataTable dt;

	private bool inRowAdd;

	private DataRow rowAdd;

	public static int ChangedRowIndex = -1;

	private DataRow addRow;

	private PropertyDescriptorCollection properties;

	public DataTable DataTable => dt;

	public bool AllowNew => true;

	public PropertyDescriptor SortProperty => null;

	public bool SupportsSorting => false;

	public bool IsSorted => false;

	public bool AllowRemove => true;

	public bool SupportsSearching => false;

	public ListSortDirection SortDirection => ListSortDirection.Ascending;

	public bool SupportsChangeNotification => true;

	public bool AllowEdit => true;

	public bool IsReadOnly => false;

	public object this[int index]
	{
		get
		{
			if (inRowAdd && index == dt.Rows.Count)
			{
				return rowAdd;
			}
			return dt.Rows[index];
		}
		set
		{
			throw new NotSupportedException("Read-only collection");
		}
	}

	bool IList.IsFixedSize => false;

	public bool IsSynchronized => dt.Rows.IsSynchronized;

	public int Count
	{
		get
		{
			if (inRowAdd)
			{
				return dt.Rows.Count + 1;
			}
			return dt.Rows.Count;
		}
	}

	public object SyncRoot => dt.Rows.SyncRoot;

	public event ListChangedEventHandler ListChanged;

	public DataTableWrapperList(DataTable dt)
	{
		this.dt = dt;
		dt.RowChanging += dt_RowChanging;
		dt.RowChanged += dt_RowChanged;
	}

	public static int GetDataTableRowIndexOf(DataRow row)
	{
		if (ChangedRowIndex != -1)
		{
			return ChangedRowIndex;
		}
		return row.Table.Rows.IndexOf(row);
	}

	private void dt_RowChanged(object sender, DataRowChangeEventArgs e)
	{
		switch (e.Action)
		{
		case DataRowAction.Add:
		{
			inRowAdd = false;
			rowAdd = e.Row;
			int newIndex = dt.Rows.Count - 1;
			if (this.ListChanged != null)
			{
				this.ListChanged(this, new ListChangedEventArgs(ListChangedType.ItemAdded, newIndex));
			}
			break;
		}
		case DataRowAction.Change:
			if (this.ListChanged != null)
			{
				int dataTableRowIndexOf = GetDataTableRowIndexOf(e.Row);
				this.ListChanged(this, new ListChangedEventArgs(ListChangedType.ItemChanged, dataTableRowIndexOf));
			}
			break;
		default:
			if (this.ListChanged != null)
			{
				this.ListChanged(this, new ListChangedEventArgs(ListChangedType.Reset, -1));
			}
			break;
		}
	}

	private void dt_RowChanging(object sender, DataRowChangeEventArgs e)
	{
		DataRowAction action = e.Action;
		if (action == DataRowAction.Add)
		{
			inRowAdd = true;
			rowAdd = e.Row;
		}
	}

	public void AddIndex(PropertyDescriptor property)
	{
	}

	void IBindingList.ApplySort(PropertyDescriptor property, ListSortDirection direction)
	{
	}

	public int Find(PropertyDescriptor property, object key)
	{
		return -1;
	}

	public void RemoveSort()
	{
	}

	public object AddNew()
	{
		addRow = dt.NewRow();
		dt.Rows.Add(addRow);
		return addRow;
	}

	public void RemoveIndex(PropertyDescriptor property)
	{
	}

	public void RemoveAt(int index)
	{
		dt.Rows.RemoveAt(index);
	}

	public void Insert(int index, object value)
	{
		dt.Rows.InsertAt((DataRow)value, index);
	}

	public void Remove(object value)
	{
		dt.Rows.Remove((DataRow)value);
	}

	bool IList.Contains(object value)
	{
		return false;
	}

	public void Clear()
	{
		dt.Rows.Clear();
	}

	int IList.IndexOf(object value)
	{
		return -1;
	}

	public int Add(object value)
	{
		dt.Rows.Add((DataRow)value);
		return dt.Rows.Count - 1;
	}

	public void CopyTo(Array array, int index)
	{
		dt.Rows.CopyTo(array, index);
	}

	public IEnumerator GetEnumerator()
	{
		return dt.Rows.GetEnumerator();
	}

	public PropertyDescriptorCollection GetItemProperties(PropertyDescriptor[] listAccessors)
	{
		if (properties == null)
		{
			ArrayList arrayList = new ArrayList();
			foreach (DataColumn column in dt.Columns)
			{
				arrayList.Add(new DataTableColumnPropertyDescriptor(column));
			}
			properties = new PropertyDescriptorCollection((PropertyDescriptor[])arrayList.ToArray(typeof(PropertyDescriptor)));
		}
		return properties;
	}

	public string GetListName(PropertyDescriptor[] listAccessors)
	{
		return dt.TableName;
	}
}
