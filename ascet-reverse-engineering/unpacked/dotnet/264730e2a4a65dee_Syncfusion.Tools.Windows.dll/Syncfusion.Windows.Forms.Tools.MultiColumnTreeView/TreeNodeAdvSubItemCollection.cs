using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Editor(typeof(TreeNodeAdvSubItemCollectionEditor), typeof(UITypeEditor))]
public class TreeNodeAdvSubItemCollection : CollectionBase, ICloneable
{
	private TreeNodeAdv m_node;

	private TreeNodeAdvSubItem m_firstSubItem;

	protected TreeNodeAdv TreeNode => m_node;

	public TreeNodeAdvSubItem this[int index]
	{
		get
		{
			return base.List[index] as TreeNodeAdvSubItem;
		}
		set
		{
			base.List[index] = value;
		}
	}

	public event CollectionChangeEventHandler CollectionChanged;

	internal TreeNodeAdvSubItemCollection()
	{
	}

	public TreeNodeAdvSubItemCollection(TreeNodeAdv node)
	{
		m_node = node;
	}

	public int Add(TreeNodeAdvSubItem subitem)
	{
		return base.List.Add(subitem);
	}

	public void AddRange(TreeNodeAdvSubItem[] subitems)
	{
		foreach (TreeNodeAdvSubItem subitem in subitems)
		{
			Add(subitem);
		}
	}

	public void AddRange(ICollection subitems)
	{
		foreach (TreeNodeAdvSubItem subitem in subitems)
		{
			Add(subitem);
		}
	}

	public void Remove(TreeNodeAdvSubItem subitem)
	{
		base.List.Remove(subitem);
	}

	public void Insert(int index, TreeNodeAdvSubItem subitem)
	{
		base.List.Insert(index, subitem);
	}

	public bool Contains(TreeNodeAdvSubItem subitem)
	{
		return base.List.Contains(subitem);
	}

	public int IndexOf(TreeNodeAdvSubItem subitem)
	{
		return base.List.IndexOf(subitem);
	}

	public TreeNodeAdvSubItemCollection Clone()
	{
		TreeNodeAdvSubItemCollection treeNodeAdvSubItemCollection = new TreeNodeAdvSubItemCollection();
		foreach (TreeNodeAdvSubItem inner in base.InnerList)
		{
			treeNodeAdvSubItemCollection.Add(inner.Clone());
		}
		return treeNodeAdvSubItemCollection;
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public TreeNodeAdvSubItem[] ToArray()
	{
		TreeNodeAdvSubItem[] array = new TreeNodeAdvSubItem[base.Count];
		base.InnerList.CopyTo(array);
		return array;
	}

	public TreeNodeAdvSubItem CreateItem()
	{
		return new TreeNodeAdvSubItem(m_node);
	}

	private void RaiseCollectionChanged(CollectionChangeEventArgs args)
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, args);
		}
	}

	protected internal void SetParent(TreeNodeAdv node)
	{
		m_node = node;
		foreach (TreeNodeAdvSubItem inner in base.InnerList)
		{
			inner.SetParent(m_node);
		}
	}

	protected override void OnClear()
	{
		if (base.Count > 0)
		{
			m_firstSubItem = this[0];
		}
	}

	protected override void OnClearComplete()
	{
		base.OnClearComplete();
		if (m_firstSubItem != null)
		{
			base.InnerList.Add(m_firstSubItem);
		}
		RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
	}

	protected override void OnInsertComplete(int index, object value)
	{
		if (value is TreeNodeAdvSubItem treeNodeAdvSubItem)
		{
			treeNodeAdvSubItem.SetParent(TreeNode);
		}
		base.OnInsertComplete(index, value);
		RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, value));
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		if (value is TreeNodeAdvSubItem treeNodeAdvSubItem)
		{
			treeNodeAdvSubItem.ResetParent();
		}
		base.OnRemoveComplete(index, value);
		RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Remove, value));
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		TreeNodeAdvSubItem treeNodeAdvSubItem = newValue as TreeNodeAdvSubItem;
		TreeNodeAdvSubItem treeNodeAdvSubItem2 = oldValue as TreeNodeAdvSubItem;
		treeNodeAdvSubItem?.SetParent(TreeNode);
		treeNodeAdvSubItem2?.ResetParent();
		base.OnSetComplete(index, oldValue, newValue);
		RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, newValue));
	}

	protected override void OnValidate(object value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("Into collection can be placed NULL references.");
		}
		base.OnValidate(value);
	}
}
