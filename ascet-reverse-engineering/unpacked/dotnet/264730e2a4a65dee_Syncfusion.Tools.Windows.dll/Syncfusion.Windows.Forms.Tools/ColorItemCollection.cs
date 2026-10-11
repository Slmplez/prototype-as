using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[Editor(typeof(ColorItemCollectionEditor), typeof(UITypeEditor))]
public class ColorItemCollection : CollectionBase
{
	private ColorUIAdvGroup m_colorGroup;

	private bool m_bIsbaseCollection;

	[DefaultValue(false)]
	public bool IsBaseCollection => m_bIsbaseCollection;

	public ColorUIAdvGroup Group => m_colorGroup;

	public ColorItem this[int index]
	{
		get
		{
			return (ColorItem)base.List[index];
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

	public event EventHandler CollectionChanged;

	protected void OnCollectionChanged()
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, EventArgs.Empty);
		}
	}

	public ColorItemCollection(ColorUIAdvGroup group, bool isBaseCollection)
	{
		if (group == null)
		{
			throw new NullReferenceException("ColorUIAdvGroup can't be NULL");
		}
		m_colorGroup = group;
		m_bIsbaseCollection = isBaseCollection;
	}

	public ColorItemCollection()
	{
	}

	public void Add(ColorItem item)
	{
		if (item == null)
		{
			throw new NullReferenceException("Item can't be NULL");
		}
		base.List.Add(item);
	}

	public bool Contains(ColorItem item)
	{
		if (item == null)
		{
			throw new NullReferenceException("Item can't be NULL");
		}
		return base.List.Contains(item);
	}

	public void Remove(ColorItem item)
	{
		if (item == null)
		{
			throw new NullReferenceException("Item can't be NULL");
		}
		if (!Contains(item))
		{
			throw new NullReferenceException("Item doesn't exist in collection");
		}
		item.ColorChanged -= Item_ColorChanged;
		base.List.Remove(item);
	}

	public int IndexOf(ColorItem item)
	{
		if (item == null)
		{
			throw new NullReferenceException("Item can't be NULL");
		}
		return base.List.IndexOf(item);
	}

	public void Insert(int index, ColorItem item)
	{
		if (item == null)
		{
			throw new NullReferenceException("Item can't be NULL");
		}
		if (index < 0 || index >= base.List.Count)
		{
			throw new IndexOutOfRangeException("index");
		}
		base.List.Insert(index, item);
	}

	protected override void OnInsert(int index, object value)
	{
		base.OnInsert(index, value);
		ColorItem colorItem = (ColorItem)value;
		if (m_colorGroup.GroupType == ColorUIAdvGroups.RecentColors)
		{
			colorItem.Index = 0;
		}
		else if (colorItem.Index == -1)
		{
			colorItem.Index = base.Count;
		}
		colorItem.ColorChanged += Item_ColorChanged;
		OnCollectionChanged();
	}

	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		m_colorGroup.UpdateGroupSize();
		if (!IsBaseCollection && m_colorGroup.ParentControl != null)
		{
			m_colorGroup.ParentControl.Invalidate();
		}
	}

	private void Item_ColorChanged(object sender, EventArgs args)
	{
		ColorItem colorItem = sender as ColorItem;
		ColorUIAdvGroup colorUIAdvGroup = ((!(sender is GroupColorItem groupColorItem)) ? colorItem.BaseItem.Group : groupColorItem.Group);
		if ((colorUIAdvGroup.GroupType == ColorUIAdvGroups.ThemeColors || colorUIAdvGroup.GroupType == ColorUIAdvGroups.StandardColors) && !m_colorGroup.ParentControl.ChangedItems.ContainsKey(colorItem))
		{
			m_colorGroup.ParentControl.ChangedItems.Add(colorItem, colorUIAdvGroup);
		}
		m_colorGroup.ParentControl.Invalidate(colorItem.Bounds);
	}
}
