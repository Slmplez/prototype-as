using System;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class XPTaskBarItemsCollection : ArrayListExt
{
	public new XPTaskBarItem this[int index]
	{
		get
		{
			return (XPTaskBarItem)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	protected override void AddHandlers(object newItem)
	{
		if (!(newItem is XPTaskBarItem))
		{
			throw new ApplicationException("Only objects of type XPTaskBarItem can be added to the XPTaskBarItemsCollection list.");
		}
		base.AddHandlers(newItem);
	}

	public virtual void AddRange(XPTaskBarItem[] items)
	{
		base.AddRange(items);
	}

	public override void Sort()
	{
		base.Sort(new XPTaskBarItemsComparer());
	}
}
