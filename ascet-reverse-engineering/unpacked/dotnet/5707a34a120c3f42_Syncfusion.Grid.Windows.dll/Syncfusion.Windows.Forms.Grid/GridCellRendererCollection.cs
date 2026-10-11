using System;
using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellRendererCollection : GridSubComponent, ICollection, IEnumerable
{
	private string cachedKey = string.Empty;

	private GridCellRendererBase cachedRenderer;

	internal Hashtable content = new Hashtable();

	private GridControlBase grid;

	public virtual ICollection Values => content.Values;

	public virtual object SyncRoot => content.SyncRoot;

	public virtual ICollection Keys => content.Keys;

	public virtual GridCellRendererBase this[string key]
	{
		get
		{
			if (key == cachedKey)
			{
				return cachedRenderer;
			}
			cachedKey = key;
			if (!ContainsKey(key))
			{
				cachedKey = key;
				GridCellModelBase gridCellModelBase = grid.Model.CellModels[key];
				cachedRenderer = gridCellModelBase.CreateRenderer(grid);
				Add(cachedKey, cachedRenderer);
				if (gridCellModelBase.BindingContext == null)
				{
					gridCellModelBase.BindingContext = grid.BindingContext;
				}
			}
			else
			{
				cachedRenderer = (GridCellRendererBase)content[key];
			}
			return cachedRenderer;
		}
		set
		{
			if (ContainsKey(key) && content[key] != value)
			{
				Remove(key);
			}
			Add(key, value);
		}
	}

	public virtual bool IsSynchronized => content.IsSynchronized;

	public virtual int Count => content.Count;

	public GridCellRendererCollection(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
		grid.Model.CellModelsChanged += GridModelCellModelsChanged;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (grid != null && grid.Model != null)
			{
				grid.Model.CellModelsChanged -= GridModelCellModelsChanged;
			}
			Clear();
		}
		base.Dispose(disposing);
	}

	private void GridModelCellModelsChanged(object sender, CollectionChangeEventArgs e)
	{
		if (e.Action != CollectionChangeAction.Add)
		{
			if (e.Element == null)
			{
				Clear();
			}
			if (ContainsKey((string)e.Element))
			{
				Remove((string)e.Element);
			}
		}
	}

	public virtual IEnumerator GetEnumerator()
	{
		return content.GetEnumerator();
	}

	public virtual void Remove(string key)
	{
		if (ContainsKey(key))
		{
			if (content[key] is GridCellRendererBase { Grid: not null } gridCellRendererBase)
			{
				gridCellRendererBase.Dispose();
			}
			content.Remove(key);
		}
		cachedKey = string.Empty;
		cachedRenderer = null;
	}

	public virtual void CopyTo(GridCellRendererBase[] array, int index)
	{
		content.CopyTo(array, index);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridCellRendererBase[])array, index);
	}

	public virtual bool ContainsValue(GridCellRendererBase cellRenderer)
	{
		return content.ContainsValue(cellRenderer);
	}

	public virtual bool ContainsKey(string key)
	{
		return content.ContainsKey(key);
	}

	public virtual void Clear()
	{
		foreach (object value in content.Values)
		{
			if (value is GridCellRendererBase { Grid: not null } gridCellRendererBase)
			{
				gridCellRendererBase.Dispose();
			}
		}
		content.Clear();
		cachedKey = string.Empty;
		cachedRenderer = null;
	}

	public virtual void Add(string key, GridCellRendererBase grid)
	{
		content.Add(key, grid);
	}
}
