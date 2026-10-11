using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools;

[Editor(typeof(TreeNodeAdvCollectionEditor), typeof(UITypeEditor))]
public class TreeNodeAdvCollection : ArrayListExt
{
	internal IComparer comparer;

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

	public override void RemoveAt(int index)
	{
		OnBeforeRemoving(index);
		base.RemoveAt(index);
	}

	protected virtual void OnBeforeRemoving(int index)
	{
		TreeNodeAdv element = this[index];
		CollectionChangeEventArgs e = new CollectionChangeEventArgs(CollectionChangeAction.Remove, element);
		RaiseBeforeRemoving(e);
	}

	protected void RaiseBeforeRemoving(CollectionChangeEventArgs e)
	{
		if (this.BeforeRemoving != null)
		{
			this.BeforeRemoving(this, e);
		}
	}

	protected override void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		base.OnCollectionChanged(args);
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
		base.AddRange(items);
	}

	public override void Sort()
	{
		Sort(SortOrder.Ascending);
	}

	public virtual void Sort(SortOrder order)
	{
		if (order != SortOrder.None)
		{
			if (comparer != null)
			{
				Sort(comparer);
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
	}
}
