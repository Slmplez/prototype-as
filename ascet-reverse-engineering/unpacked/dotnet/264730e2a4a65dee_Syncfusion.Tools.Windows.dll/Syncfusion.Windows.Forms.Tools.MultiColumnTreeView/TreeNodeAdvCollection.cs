using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Editor(typeof(TreeNodeAdvCollectionEditor), typeof(UITypeEditor))]
public class TreeNodeAdvCollection : ArrayListExt
{
	internal IComparer Comparer;

	private TreeNodeAdv m_parent;

	protected TreeNodeAdv Parent => m_parent;

	public new TreeNodeAdv this[int index]
	{
		get
		{
			return (TreeNodeAdv)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	public event CollectionChangeEventHandler BeforeRemoving;

	public TreeNodeAdvCollection()
		: this(null)
	{
	}

	public TreeNodeAdvCollection(TreeNodeAdv node)
	{
		m_parent = node;
	}

	protected void RaiseBeforeRemoving(CollectionChangeEventArgs e)
	{
		if (!base.IsCollectionChangedEventSuspended && this.BeforeRemoving != null)
		{
			this.BeforeRemoving(this, e);
		}
	}

	protected override void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		if (!base.IsCollectionChangedEventSuspended && Parent != null)
		{
			Parent.OnChildsCollectionChanged(args);
		}
		base.OnCollectionChanged(args);
	}

	protected internal virtual void SetParent(TreeNodeAdv nodeAdv)
	{
		m_parent = nodeAdv;
	}

	protected internal virtual void ResetParent()
	{
		m_parent = null;
	}

	public virtual TreeNodeAdv Add(string name)
	{
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv(name);
		Add(treeNodeAdv);
		return treeNodeAdv;
	}

	public virtual int Add(TreeNodeAdv node)
	{
		if (node.TreeView != null && node.TreeView.Root == node)
		{
			throw new ArgumentException("Cannot add a root node to the TreeNodeAdvCollection.", "node");
		}
		return Add((object)node);
	}

	public void AddRange(TreeNodeAdv[] items)
	{
		if (Parent != null && Parent.TreeView != null)
		{
			Parent.TreeView.BeginUpdate();
		}
		base.AddRange(items);
		if (Parent != null && Parent.TreeView != null)
		{
			Parent.TreeView.EndUpdate();
		}
	}

	public void Remove(TreeNodeAdv node)
	{
		CollectionChangeEventArgs e = new CollectionChangeEventArgs(CollectionChangeAction.Remove, node);
		if (Parent != null)
		{
			Parent.OnBeforeChildRemove(e);
		}
		RaiseBeforeRemoving(e);
		base.Remove(node);
	}

	public void Insert(int index, TreeNodeAdv node)
	{
		Insert(index, (object)node);
	}

	public bool Contains(TreeNodeAdv node)
	{
		return base.Contains(node);
	}

	public int IndexOf(TreeNodeAdv node)
	{
		return base.IndexOf(node);
	}

	public override void Sort()
	{
		Sort(SortOrder.Ascending);
	}

	public virtual void Sort(SortOrder order)
	{
		if (Parent != null && Parent.TreeView != null)
		{
			Parent.TreeView.BeginUpdate();
		}
		if (order != SortOrder.None)
		{
			if (Comparer != null)
			{
				Sort(Comparer);
			}
			else
			{
				base.Sort();
			}
			if (order == SortOrder.Descending)
			{
				Reverse();
			}
		}
		if (Parent != null && Parent.TreeView != null)
		{
			Parent.TreeView.EndUpdate();
		}
	}
}
