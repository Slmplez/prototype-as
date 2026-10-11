using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Serializable]
[Editor(typeof(PrimitivesCollectionEditor), typeof(UITypeEditor))]
public class TreeNodePrimitivesCollection : CollectionBase, ICloneable
{
	private Hashtable m_htItems = new Hashtable();

	private TreeNodeAdv m_node;

	private bool m_isDeletingMode;

	protected TreeNodeAdv TreeNode => m_node;

	public TreeNodePrimitive this[int index]
	{
		get
		{
			return (TreeNodePrimitive)base.List[index];
		}
		set
		{
			TreeNodePrimitive treeNodePrimitive = this[index];
			if (value.PrimitiveType != treeNodePrimitive.PrimitiveType)
			{
				OnValidate(value);
			}
			base.List[index] = value;
		}
	}

	public TreeNodePrimitive this[PredefinedPrimitiveTypes type]
	{
		get
		{
			return (TreeNodePrimitive)m_htItems[type];
		}
		set
		{
			TreeNodePrimitive primitive = this[type];
			m_htItems[type] = value;
			this[IndexOf(primitive)] = value;
		}
	}

	public event CollectionChangeEventHandler CollectionChanged;

	public TreeNodePrimitivesCollection(TreeNodeAdv node)
	{
		m_node = node;
	}

	public bool IsValidPrimitiveType(PredefinedPrimitiveTypes primitiveType)
	{
		return m_htItems[primitiveType] == null;
	}

	public int Add(TreeNodePrimitive primitive)
	{
		return base.List.Add(primitive);
	}

	public void AddRange(TreeNodePrimitive[] arrPrimitives)
	{
		if (arrPrimitives != null && arrPrimitives.Length > 0)
		{
			int i = 0;
			for (int num = arrPrimitives.Length; i < num; i++)
			{
				TreeNodePrimitive value = arrPrimitives[i];
				base.List.Add(value);
			}
		}
	}

	public void Remove(TreeNodePrimitive primitive)
	{
		if (m_htItems[primitive.PrimitiveType] != null)
		{
			m_isDeletingMode = true;
			base.List.Remove(primitive);
			m_isDeletingMode = false;
		}
	}

	public void Insert(int index, TreeNodePrimitive primitive)
	{
		base.List.Insert(index, primitive);
	}

	public int IndexOf(TreeNodePrimitive primitive)
	{
		return base.List.IndexOf(primitive);
	}

	public bool Contains(TreeNodePrimitive primitive)
	{
		return base.List.Contains(primitive);
	}

	protected void RaiseCollectionChanged(CollectionChangeEventArgs args)
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, args);
		}
	}

	protected virtual void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		if (TreeNode != null)
		{
			TreeNode.OnPrimitivesCollectionChanged(args);
		}
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

	protected override void OnRemoveComplete(int index, object value)
	{
		TreeNodePrimitive treeNodePrimitive = (TreeNodePrimitive)value;
		treeNodePrimitive.PropertyChanging -= OnPrimitivePropertyChanging;
		m_htItems.Remove(treeNodePrimitive.PrimitiveType);
		CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Remove, treeNodePrimitive);
		OnCollectionChanged(args);
		base.OnRemoveComplete(index, value);
	}

	protected override void OnInsertComplete(int index, object value)
	{
		TreeNodePrimitive treeNodePrimitive = (TreeNodePrimitive)value;
		treeNodePrimitive.PropertyChanging += OnPrimitivePropertyChanging;
		m_htItems[treeNodePrimitive.PrimitiveType] = treeNodePrimitive;
		CollectionChangeEventArgs args = new CollectionChangeEventArgs(CollectionChangeAction.Add, treeNodePrimitive);
		OnCollectionChanged(args);
		base.OnInsertComplete(index, value);
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		TreeNodePrimitive treeNodePrimitive = (TreeNodePrimitive)oldValue;
		TreeNodePrimitive treeNodePrimitive2 = (TreeNodePrimitive)newValue;
		treeNodePrimitive.PropertyChanging -= OnPrimitivePropertyChanging;
		treeNodePrimitive2.PropertyChanging += OnPrimitivePropertyChanging;
		base.OnSetComplete(index, oldValue, newValue);
	}

	protected override void OnValidate(object value)
	{
		if (!m_isDeletingMode)
		{
			TreeNodePrimitive treeNodePrimitive = (TreeNodePrimitive)value;
			if (!IsValidPrimitiveType(treeNodePrimitive.PrimitiveType))
			{
				throw new ArgumentException("Primitive of this type already has been added.");
			}
		}
		base.OnValidate(value);
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public virtual TreeNodePrimitivesCollection Clone()
	{
		TreeNodePrimitivesCollection treeNodePrimitivesCollection = new TreeNodePrimitivesCollection(TreeNode);
		foreach (TreeNodePrimitive inner in base.InnerList)
		{
			TreeNodePrimitive primitive = new TreeNodePrimitive(inner.Index, inner.PrimitiveType);
			treeNodePrimitivesCollection.Add(primitive);
		}
		return treeNodePrimitivesCollection;
	}

	protected internal void SetParent(TreeNodeAdv nodeAdv)
	{
		m_node = nodeAdv;
	}

	private void OnPrimitivePropertyChanging(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		string propertyName;
		if ((propertyName = e.PropertyName) != null && propertyName == "PrimitiveType")
		{
			if (!IsValidPrimitiveType((PredefinedPrimitiveTypes)e.NewValue))
			{
				throw new ArgumentException("Primitive of this type already has been added.");
			}
			PredefinedPrimitiveTypes predefinedPrimitiveTypes = (PredefinedPrimitiveTypes)e.NewValue;
			m_htItems.Remove(e.OldValue);
			m_htItems[predefinedPrimitiveTypes] = sender;
		}
	}
}
