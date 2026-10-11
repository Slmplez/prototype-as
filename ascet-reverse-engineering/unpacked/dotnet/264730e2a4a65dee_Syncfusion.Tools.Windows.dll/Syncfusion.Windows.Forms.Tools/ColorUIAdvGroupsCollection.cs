using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[Editor(typeof(ColorUIAdvGroupsCollectionEditor), typeof(UITypeEditor))]
public class ColorUIAdvGroupsCollection : CollectionBase
{
	public class Comparer : IComparer
	{
		public int Compare(object x, object y)
		{
			ColorUIAdvGroup colorUIAdvGroup = x as ColorUIAdvGroup;
			ColorUIAdvGroup colorUIAdvGroup2 = y as ColorUIAdvGroup;
			if (colorUIAdvGroup.Index < colorUIAdvGroup2.Index)
			{
				return -1;
			}
			if (colorUIAdvGroup.Index > colorUIAdvGroup2.Index)
			{
				return 1;
			}
			return 0;
		}
	}

	private ColorPickerUIAdv m_colorPicker;

	public ColorUIAdvGroup this[int index]
	{
		get
		{
			return (ColorUIAdvGroup)base.List[index];
		}
		set
		{
			if (index < 0 || index >= base.List.Count)
			{
				throw new IndexOutOfRangeException("index");
			}
			if (value == null)
			{
				throw new NullReferenceException("value can't be NULL");
			}
			if (base.List[index] != value)
			{
				base.List[index] = value;
			}
		}
	}

	internal ArrayList SortedItems
	{
		get
		{
			ArrayList arrayList = new ArrayList(this);
			arrayList.Sort(new Comparer());
			return arrayList;
		}
	}

	internal int MaxIndex
	{
		get
		{
			int num = -1;
			foreach (ColorUIAdvGroup inner in base.InnerList)
			{
				if (num < inner.Index)
				{
					num = inner.Index;
				}
			}
			return num;
		}
	}

	public event EventHandler CollectionChanged;

	public ColorUIAdvGroupsCollection(ColorPickerUIAdv control)
	{
		if (control == null)
		{
			throw new NullReferenceException("ColorPickerUIAdv can't be NULL");
		}
		m_colorPicker = control;
	}

	public void Add(ColorUIAdvGroup group)
	{
		if (group == null)
		{
			throw new NullReferenceException("Group can't be NULL");
		}
		base.List.Add(group);
		if (this == m_colorPicker.CustomGroups && !m_colorPicker.Groups.Contains(group))
		{
			m_colorPicker.Groups.Add(group);
		}
	}

	public bool Contains(ColorUIAdvGroup group)
	{
		if (group == null)
		{
			throw new NullReferenceException("Group can't be NULL");
		}
		return base.List.Contains(group);
	}

	public void Remove(ColorUIAdvGroup group)
	{
		if (group == null)
		{
			throw new NullReferenceException("Group can't be NULL");
		}
		if (!Contains(group))
		{
			throw new NullReferenceException("Group doesn't exist in collection");
		}
		base.List.Remove(group);
		if (this == m_colorPicker.CustomGroups && m_colorPicker.Groups.Contains(group))
		{
			m_colorPicker.Groups.Remove(group);
		}
		m_colorPicker.UpdateControl();
	}

	public int IndexOf(ColorUIAdvGroup group)
	{
		if (group == null)
		{
			throw new NullReferenceException("Group can't be NULL");
		}
		return base.List.IndexOf(group);
	}

	public void Insert(int index, ColorUIAdvGroup group)
	{
		if (group == null)
		{
			throw new NullReferenceException("Group can't be NULL");
		}
		if (index < 0 || index >= base.List.Count)
		{
			throw new IndexOutOfRangeException("index");
		}
		base.List.Insert(index, group);
		if (this == m_colorPicker.CustomGroups && !m_colorPicker.Groups.Contains(group))
		{
			m_colorPicker.Groups.Insert(index, group);
		}
	}

	protected void OnCollectionChanged()
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, EventArgs.Empty);
		}
	}

	protected override void OnInsert(int index, object value)
	{
		ColorUIAdvGroup colorUIAdvGroup = value as ColorUIAdvGroup;
		if (!Contains(colorUIAdvGroup))
		{
			base.OnInsert(index, value);
			if (colorUIAdvGroup.ParentControl == null)
			{
				colorUIAdvGroup.ParentControl = m_colorPicker;
			}
			if (colorUIAdvGroup.Index < 0)
			{
				colorUIAdvGroup.Index = m_colorPicker.Groups.MaxIndex + 1;
			}
			if (this == m_colorPicker.CustomGroups && !m_colorPicker.Groups.Contains(colorUIAdvGroup))
			{
				m_colorPicker.Groups.Add(colorUIAdvGroup);
			}
			OnCollectionChanged();
		}
	}

	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		if (this != m_colorPicker.CustomGroups)
		{
			m_colorPicker.UpdateControl();
		}
	}

	protected override void OnClear()
	{
		base.OnClear();
		if (this != m_colorPicker.CustomGroups)
		{
			return;
		}
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				ColorUIAdvGroup colorUIAdvGroup = (ColorUIAdvGroup)enumerator.Current;
				if (m_colorPicker.Groups.Contains(colorUIAdvGroup))
				{
					m_colorPicker.Groups.Remove(colorUIAdvGroup);
				}
			}
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
}
