using System;

namespace Syncfusion.Windows.Forms.Collections;

public class ListItemEventArgs<T> : EventArgs
{
	public T Item;

	public ListItemEventArgs(T item)
	{
		Item = item;
	}
}
