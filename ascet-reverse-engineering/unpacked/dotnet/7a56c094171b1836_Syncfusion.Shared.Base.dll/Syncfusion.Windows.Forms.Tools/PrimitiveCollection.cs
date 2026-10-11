using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Editor(typeof(GradientPanelExtCollectionEditor), typeof(UITypeEditor))]
public class PrimitiveCollection : CollectionBase, ICloneable
{
	public Primitive this[int index]
	{
		get
		{
			return (Primitive)base.InnerList[index];
		}
		set
		{
			base.InnerList[index] = value;
		}
	}

	public event CollectionChangeEventHandler CollectionChanged;

	private void RaiseCollectionChanged(CollectionChangeEventArgs args)
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, args);
		}
	}

	protected virtual void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		RaiseCollectionChanged(args);
	}

	public void Add(Primitive primitive)
	{
		if (primitive != null)
		{
			base.InnerList.Add(primitive);
			CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Add, primitive);
			OnCollectionChanged(args);
		}
	}

	public void AddRange(Primitive[] primitives)
	{
		if (primitives != null)
		{
			base.InnerList.AddRange(primitives);
			CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Add, primitives);
			OnCollectionChanged(args);
		}
	}

	public void Remove(Primitive primitive)
	{
		if (primitive != null)
		{
			base.InnerList.Remove(primitive);
			CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Remove, primitive);
			OnCollectionChanged(args);
		}
	}

	protected override void OnClear()
	{
		foreach (Primitive inner in base.InnerList)
		{
			inner.OwnerControl = null;
		}
		base.OnClear();
	}

	public virtual object Clone()
	{
		PrimitiveCollection primitiveCollection = new PrimitiveCollection();
		foreach (Primitive inner in base.InnerList)
		{
			primitiveCollection.Add(inner.Clone() as Primitive);
		}
		return primitiveCollection;
	}
}
