using System;
using System.Collections;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridStyleInfoCustomPropertiesCollection : ICollection, IEnumerable
{
	private StyleInfoBase styleInfo;

	private Hashtable types = new Hashtable();

	bool ICollection.IsSynchronized => types.Values.IsSynchronized;

	public int Count => types.Count;

	object ICollection.SyncRoot => types.Values.SyncRoot;

	internal GridStyleInfoCustomPropertiesCollection(StyleInfoBase styleInfo)
	{
		this.styleInfo = styleInfo;
		ICollection styleInfoProperties = styleInfo.Store.StyleInfoProperties;
		Type type = styleInfo.GetType();
		foreach (StyleInfoProperty item in styleInfoProperties)
		{
			if (!item.ComponentType.IsAssignableFrom(type) && styleInfo.HasValue(item) && !types.ContainsKey(item.ComponentType))
			{
				types.Add(item.ComponentType, Activator.CreateInstance(item.ComponentType, styleInfo));
			}
		}
	}

	public void Add(GridStyleInfoCustomProperties value)
	{
		value.StyleInfo = (GridStyleInfo)styleInfo;
	}

	public void CopyTo(GridStyleInfoCustomProperties[] array, int index)
	{
		types.Values.CopyTo(array, index);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridStyleInfoCustomProperties[])array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return types.Values.GetEnumerator();
	}
}
