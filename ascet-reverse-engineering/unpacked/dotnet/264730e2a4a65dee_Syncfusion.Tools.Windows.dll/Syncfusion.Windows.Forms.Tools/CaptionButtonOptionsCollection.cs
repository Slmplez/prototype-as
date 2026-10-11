using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class CaptionButtonOptionsCollection : CollectionBase
{
	public CaptionButtonOptions this[int index]
	{
		get
		{
			return base.List[index] as CaptionButtonOptions;
		}
		set
		{
			if (index < 0 || index > base.List.Count)
			{
				throw new IndexOutOfRangeException("Incorrect index.");
			}
			if (value == null)
			{
				throw new NullReferenceException("Incorrect value (null).");
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

	public void Add(CaptionButtonOptions options)
	{
		if (options == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		base.List.Add(options);
		OnCollectionChanged();
	}

	public bool Contains(CaptionButtonOptions options)
	{
		if (options == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		return base.List.Contains(options);
	}

	public void Remove(CaptionButtonOptions options)
	{
		if (options == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		if (!Contains(options))
		{
			throw new ArgumentException("Not in list.");
		}
		base.List.Remove(options);
		OnCollectionChanged();
	}

	public int IndexOf(CaptionButtonOptions options)
	{
		if (options == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		return base.List.IndexOf(options);
	}

	public void Insert(int index, CaptionButtonOptions options)
	{
		if (options == null)
		{
			throw new NullReferenceException("Incorrect argument (null).");
		}
		if (index < 0 || index > base.List.Count)
		{
			throw new ArgumentException("Incorrect index");
		}
		base.List.Insert(index, options);
		OnCollectionChanged();
	}
}
