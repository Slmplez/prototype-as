using System;
using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class AutoCompleteDataColumnInfoCollection : CollectionBase
{
	[DocumentationExclude]
	protected AutoComplete m_owner;

	public AutoCompleteDataColumnInfo this[int index]
	{
		get
		{
			return base.List[index] as AutoCompleteDataColumnInfo;
		}
		set
		{
			base.List[index] = value;
		}
	}

	public AutoCompleteDataColumnInfoCollection(AutoComplete autoComplete)
	{
		m_owner = autoComplete;
	}

	public void Insert(int index, AutoCompleteDataColumnInfo item)
	{
		base.List.Insert(index, item);
	}

	public int Add(AutoCompleteDataColumnInfo column)
	{
		if (column == null)
		{
			throw new ArgumentNullException("column");
		}
		column.columnsCollection = this;
		return base.List.Add(column);
	}

	public void Remove(AutoCompleteDataColumnInfo column)
	{
		if (base.List.Contains(column))
		{
			base.List.Remove(column);
			if (m_owner != null && m_owner.Container != null)
			{
				m_owner.Container.Remove(column);
			}
			column.columnsCollection = null;
		}
	}

	public int GetMatchingColumnIndex()
	{
		int result = 0;
		int i = 0;
		for (int count = base.Count; i < count; i++)
		{
			if (this[i].MatchingColumn)
			{
				result = i;
				break;
			}
		}
		return result;
	}

	public bool Contains(AutoCompleteDataColumnInfo column)
	{
		return base.List.Contains(column);
	}

	public void CopyTo(AutoCompleteDataColumnInfo[] array, int index)
	{
		base.List.CopyTo(array, index);
	}

	[DocumentationExclude]
	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		AutoCompleteDataColumnInfo autoCompleteDataColumnInfo = value as AutoCompleteDataColumnInfo;
		if (m_owner != null && m_owner.Container != null && autoCompleteDataColumnInfo != null)
		{
			m_owner.Container.Add(autoCompleteDataColumnInfo);
		}
	}

	[DocumentationExclude]
	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		base.OnSetComplete(index, oldValue, newValue);
		AutoCompleteDataColumnInfo autoCompleteDataColumnInfo = oldValue as AutoCompleteDataColumnInfo;
		AutoCompleteDataColumnInfo autoCompleteDataColumnInfo2 = newValue as AutoCompleteDataColumnInfo;
		if (m_owner != null && m_owner.Container != null)
		{
			if (autoCompleteDataColumnInfo != null)
			{
				m_owner.Container.Remove(autoCompleteDataColumnInfo);
			}
			if (autoCompleteDataColumnInfo2 != null)
			{
				m_owner.Container.Add(autoCompleteDataColumnInfo2);
			}
		}
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		base.OnRemoveComplete(index, value);
		AutoCompleteDataColumnInfo autoCompleteDataColumnInfo = value as AutoCompleteDataColumnInfo;
		if (m_owner != null && m_owner.Container != null && autoCompleteDataColumnInfo != null)
		{
			m_owner.Container.Remove(autoCompleteDataColumnInfo);
		}
	}
}
