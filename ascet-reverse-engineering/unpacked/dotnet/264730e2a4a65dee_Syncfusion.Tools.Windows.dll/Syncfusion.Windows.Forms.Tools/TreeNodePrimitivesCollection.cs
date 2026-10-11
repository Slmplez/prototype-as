using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[Editor(typeof(PrimitivesCollectionEditor), typeof(UITypeEditor))]
public class TreeNodePrimitivesCollection : CollectionBase, ICloneable
{
	private Hashtable m_htItems = new Hashtable();

	public TreeNodePrimitive this[int index]
	{
		get
		{
			return (TreeNodePrimitive)base.InnerList[index];
		}
		set
		{
			TreeNodePrimitive treeNodePrimitive = this[index];
			if (value.PrimitiveType != treeNodePrimitive.PrimitiveType)
			{
				ValidatePrimitive(value.PrimitiveType);
			}
			m_htItems.Remove(treeNodePrimitive.PrimitiveType);
			base.InnerList[index] = value;
			m_htItems[value.PrimitiveType] = value.PrimitiveType;
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

	public void Add(TreeNodePrimitive primitive)
	{
		ValidatePrimitive(primitive.PrimitiveType);
		primitive.PropertyChanging += OnPrimitivePropertyChanging;
		base.InnerList.Add(primitive);
		m_htItems[primitive.PrimitiveType] = primitive.PrimitiveType;
		CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Add, primitive);
		OnCollectionChanged(args);
	}

	public void AddRange(TreeNodePrimitive[] arrPrimitives)
	{
		if (arrPrimitives != null && arrPrimitives.Length > 0)
		{
			int i = 0;
			for (int num = arrPrimitives.Length; i < num; i++)
			{
				TreeNodePrimitive treeNodePrimitive = arrPrimitives[i];
				ValidatePrimitive(treeNodePrimitive.PrimitiveType);
				treeNodePrimitive.PropertyChanging += OnPrimitivePropertyChanging;
				m_htItems[treeNodePrimitive.PrimitiveType] = treeNodePrimitive.PrimitiveType;
			}
			base.InnerList.AddRange(arrPrimitives);
			CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Add, arrPrimitives);
			OnCollectionChanged(args);
		}
	}

	public void Remove(TreeNodePrimitive primitive)
	{
		if (m_htItems[primitive.PrimitiveType] != null)
		{
			base.InnerList.Remove(primitive);
			CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Remove, primitive);
			OnCollectionChanged(args);
		}
	}

	protected virtual void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		RaiseCollectionChanged(args);
	}

	protected override void OnClear()
	{
		base.OnClear();
		int i = 0;
		for (int count = base.Count; i < count; i++)
		{
			this[i].PropertyChanging -= OnPrimitivePropertyChanging;
		}
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Remove, base.InnerList.ToArray()));
		m_htItems.Clear();
	}

	protected override void OnRemove(int index, object value)
	{
		base.OnRemove(index, value);
		TreeNodePrimitive treeNodePrimitive = (TreeNodePrimitive)value;
		treeNodePrimitive.PropertyChanging -= OnPrimitivePropertyChanging;
		m_htItems.Remove(treeNodePrimitive.PrimitiveType);
	}

	public virtual object Clone()
	{
		TreeNodePrimitivesCollection treeNodePrimitivesCollection = new TreeNodePrimitivesCollection();
		foreach (TreeNodePrimitive inner in base.InnerList)
		{
			TreeNodePrimitive primitive = new TreeNodePrimitive(inner.Index, inner.PrimitiveType);
			treeNodePrimitivesCollection.Add(primitive);
		}
		return treeNodePrimitivesCollection;
	}

	internal bool IsValidPrimitiveType(PredefinedPrimitiveTypes primitiveType)
	{
		if (m_htItems == null)
		{
			m_htItems = new Hashtable();
		}
		return m_htItems[primitiveType] == null;
	}

	private void ValidatePrimitive(PredefinedPrimitiveTypes primitiveType)
	{
		if (!IsValidPrimitiveType(primitiveType))
		{
			throw new ArgumentException("Primitive of this type already has been added.");
		}
	}

	private void OnPrimitivePropertyChanging(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		string propertyName;
		if ((propertyName = e.PropertyName) != null && propertyName == "PrimitiveType")
		{
			PredefinedPrimitiveTypes predefinedPrimitiveTypes = (PredefinedPrimitiveTypes)e.NewValue;
			ValidatePrimitive(predefinedPrimitiveTypes);
			m_htItems.Remove(e.OldValue);
			m_htItems[predefinedPrimitiveTypes] = predefinedPrimitiveTypes;
		}
	}
}
