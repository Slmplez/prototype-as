using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class ColorCellCollection : CollectionBase
{
	private HexagonColorControl m_colorControl;

	public ColorCell this[int index]
	{
		get
		{
			return (ColorCell)base.List[index];
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

	public ColorCellCollection(HexagonColorControl control)
	{
		if (control == null)
		{
			throw new NullReferenceException("ColorControl can't be NULL");
		}
		m_colorControl = control;
	}

	public void Add(ColorCell cell)
	{
		if (cell == null)
		{
			throw new NullReferenceException("Cell can't be NULL");
		}
		base.List.Add(cell);
	}

	public bool Contains(ColorCell cell)
	{
		if (cell == null)
		{
			throw new NullReferenceException("Cell can't be NULL");
		}
		return base.List.Contains(cell);
	}

	public void Remove(ColorCell cell)
	{
		if (cell == null)
		{
			throw new NullReferenceException("cell can't be NULL");
		}
		if (!Contains(cell))
		{
			throw new NullReferenceException("Cell doesn't exist in collection");
		}
		base.List.Remove(cell);
	}

	public int IndexOf(ColorCell cell)
	{
		if (cell == null)
		{
			throw new NullReferenceException("Cell can't be NULL");
		}
		return base.List.IndexOf(cell);
	}

	public void Insert(int index, ColorCell cell)
	{
		if (cell == null)
		{
			throw new NullReferenceException("cell can't be NULL");
		}
		if (index < 0 || index >= base.List.Count)
		{
			throw new IndexOutOfRangeException("index");
		}
		base.List.Insert(index, cell);
	}

	protected override void OnInsert(int index, object value)
	{
		ColorCell colorCell = (ColorCell)value;
		if (!Contains(colorCell))
		{
			base.OnInsert(index, value);
			if (colorCell.Index == -1)
			{
				colorCell.Index = base.Count;
			}
			OnCollectionChanged();
		}
	}

	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		ColorCell colorCell = value as ColorCell;
		colorCell.CalculateBounds();
	}
}
