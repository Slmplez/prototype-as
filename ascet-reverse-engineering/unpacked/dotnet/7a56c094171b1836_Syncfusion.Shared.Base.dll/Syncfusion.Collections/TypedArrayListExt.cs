using System;

namespace Syncfusion.Collections;

public class TypedArrayListExt<T> : ArrayListExt
{
	public new T this[int index]
	{
		get
		{
			return (T)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	protected override void AddHandlers(object item)
	{
		if (!(item is T))
		{
			throw new ArgumentException("The item added to the ArrayList is not of appropriate type. It should be of type " + typeof(T).Name + ".");
		}
		base.AddHandlers(item);
	}
}
