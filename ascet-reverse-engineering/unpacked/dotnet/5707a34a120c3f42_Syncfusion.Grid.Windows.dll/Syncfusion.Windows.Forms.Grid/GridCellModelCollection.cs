using System;
using System.Collections;
using System.ComponentModel;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridCellModelCollection : GridModelBound, ICollection, IEnumerable, ISerializable, ICloneable
{
	private string defaultKey = string.Empty;

	internal Hashtable content = new Hashtable();

	public string DefaultCellType
	{
		get
		{
			return defaultKey;
		}
		set
		{
			if (!ContainsKey(value))
			{
				throw new ArgumentException(value + " not found in collection.", value);
			}
			defaultKey = value;
		}
	}

	public virtual ICollection Values => content.Values;

	public virtual object SyncRoot => content.SyncRoot;

	public virtual ICollection Keys => content.Keys;

	public virtual GridCellModelBase this[string cellTypeName]
	{
		get
		{
			if (!ContainsKey(cellTypeName))
			{
				model.ignoreCellModelsChanged = true;
				try
				{
					GridQueryCellModelEventArgs e = new GridQueryCellModelEventArgs(model, cellTypeName);
					model.RaiseQueryCellModel(e);
					if (e.CellModel != null)
					{
						if (!ContainsKey(e.CellType))
						{
							Add(e.CellType, e.CellModel);
						}
						return e.CellModel;
					}
					cellTypeName = defaultKey;
				}
				finally
				{
					model.ignoreCellModelsChanged = false;
				}
			}
			else if (GridUtil.IsEmpty(defaultKey))
			{
				defaultKey = cellTypeName;
			}
			return (GridCellModelBase)content[cellTypeName];
		}
		set
		{
			if (ContainsKey(cellTypeName) && content[cellTypeName] != value)
			{
				Remove(cellTypeName);
			}
			Add(cellTypeName, value);
		}
	}

	public virtual bool IsSynchronized => content.IsSynchronized;

	public virtual int Count => content.Count;

	public GridCellModelCollection(GridModel model)
		: base(model)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && content != null)
		{
			foreach (object value in content.Values)
			{
				if (value is GridCellModelBase gridCellModelBase)
				{
					gridCellModelBase.Dispose();
				}
			}
			content.Clear();
		}
		base.Dispose(disposing);
	}

	protected GridCellModelCollection(SerializationInfo info, StreamingContext context)
	{
		content = new Hashtable();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Name != "DefaultCellType")
			{
				content[enumerator.Name] = enumerator.Value as GridCellModelBase;
			}
			else
			{
				defaultKey = enumerator.Value as string;
			}
		}
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		if (content != null)
		{
			foreach (string key in content.Keys)
			{
				info.AddValue(key, content[key]);
			}
		}
		info.AddValue("DefaultCellType", defaultKey);
	}

	protected override void OnModelDeserialization(object sender, GridModel model)
	{
		base.OnModelDeserialization(sender, model);
		if (content == null || content.Count <= 0)
		{
			return;
		}
		foreach (object value in content.Values)
		{
			if (value is GridCellModelBase gridCellModelBase)
			{
				gridCellModelBase.RaiseModelDeserialization(sender, model);
			}
		}
	}

	public object Clone()
	{
		return MemberwiseClone();
	}

	protected virtual void OnCollectionChanged(CollectionChangeEventArgs e)
	{
		base.Model.RaiseCellModelsChanged(e);
	}

	internal void RaiseCollectionChanged(CollectionChangeEventArgs e)
	{
		OnCollectionChanged(e);
	}

	public virtual IEnumerator GetEnumerator()
	{
		return content.GetEnumerator();
	}

	public virtual void Remove(string cellTypeName)
	{
		content.Remove(cellTypeName);
		if (cellTypeName == defaultKey)
		{
			defaultKey = string.Empty;
		}
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Remove, cellTypeName));
	}

	public virtual void CopyTo(GridCellModelBase[] array, int index)
	{
		content.CopyTo(array, index);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridCellModelBase[])array, index);
	}

	public virtual bool ContainsValue(GridCellModelBase cellModel)
	{
		return content.ContainsValue(cellModel);
	}

	public virtual bool ContainsKey(string cellTypeName)
	{
		return content.ContainsKey(cellTypeName);
	}

	public virtual void Clear()
	{
		content.Clear();
		defaultKey = string.Empty;
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
	}

	public virtual void Add(string cellTypeName, GridCellModelBase model)
	{
		content.Add(cellTypeName, model);
		if (GridUtil.IsEmpty(defaultKey))
		{
			defaultKey = cellTypeName;
		}
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, cellTypeName));
	}
}
