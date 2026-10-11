using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Editor(typeof(TreeColumnAdvCollectionEditor), typeof(UITypeEditor))]
public class TreeColumnAdvCollection : CollectionBase, ICloneable
{
	private MultiColumnTreeView m_tree;

	public MultiColumnTreeView TreeView => m_tree;

	public TreeColumnAdv this[int index]
	{
		get
		{
			return base.List[index] as TreeColumnAdv;
		}
		set
		{
			base.List[index] = value;
		}
	}

	public TreeColumnAdv[] VisibleColumns
	{
		get
		{
			ArrayList visibleColumnsList = GetVisibleColumnsList();
			return (TreeColumnAdv[])visibleColumnsList.ToArray(typeof(TreeColumnAdv));
		}
	}

	public event CollectionChangeEventHandler CollectionChanged;

	public TreeColumnAdvCollection(MultiColumnTreeView tree)
	{
		if (tree == null)
		{
			throw new ArgumentNullException("tree");
		}
		m_tree = tree;
	}

	public int Add(TreeColumnAdv column)
	{
		return base.List.Add(column);
	}

	public void AddRange(TreeColumnAdv[] columns)
	{
		TreeView.BeginUpdate();
		foreach (TreeColumnAdv value in columns)
		{
			base.List.Add(value);
		}
		TreeView.EndUpdate();
	}

	public void AddRange(ICollection columns)
	{
		TreeView.BeginUpdate();
		foreach (TreeColumnAdv column in columns)
		{
			base.List.Add(column);
		}
		TreeView.EndUpdate();
	}

	public void Remove(TreeColumnAdv column)
	{
		base.List.Remove(column);
	}

	public void Insert(int index, TreeColumnAdv column)
	{
		base.List.Insert(index, column);
	}

	public bool Contains(TreeColumnAdv column)
	{
		if (column == null)
		{
			return false;
		}
		return base.List.Contains(column);
	}

	public int IndexOf(TreeColumnAdv column)
	{
		return base.List.IndexOf(column);
	}

	public TreeColumnAdvCollection Clone()
	{
		TreeColumnAdvCollection treeColumnAdvCollection = new TreeColumnAdvCollection(TreeView);
		foreach (TreeColumnAdv inner in base.InnerList)
		{
			treeColumnAdvCollection.Add(inner.Clone());
		}
		return treeColumnAdvCollection;
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public int GetTotalColumnsWidth()
	{
		return GetTotalColumnsWidth(visible: false);
	}

	public int GetTotalColumnsWidth(bool visible)
	{
		int num = 0;
		int i = 0;
		for (int count = base.Count; i < count; i++)
		{
			TreeColumnAdv treeColumnAdv = base.InnerList[i] as TreeColumnAdv;
			num += (visible ? (treeColumnAdv.Visible ? treeColumnAdv.Width : 0) : treeColumnAdv.Width);
		}
		return num;
	}

	public int GetVisibleColumnsCount()
	{
		int num = 0;
		int i = 0;
		for (int count = base.Count; i < count; i++)
		{
			TreeColumnAdv treeColumnAdv = base.InnerList[i] as TreeColumnAdv;
			if (treeColumnAdv.Visible)
			{
				num++;
			}
		}
		return num;
	}

	private ArrayList GetVisibleColumnsList()
	{
		ArrayList arrayList = new ArrayList(base.Count);
		int i = 0;
		for (int count = base.Count; i < count; i++)
		{
			TreeColumnAdv treeColumnAdv = base.InnerList[i] as TreeColumnAdv;
			if (treeColumnAdv.Visible)
			{
				arrayList.Add(treeColumnAdv);
			}
		}
		return arrayList;
	}

	protected void RaiseCollectionChanged(CollectionChangeEventArgs args)
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, args);
		}
	}

	protected override void OnClearComplete()
	{
		base.OnClearComplete();
		RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
	}

	protected override void OnInsertComplete(int index, object value)
	{
		if (value is TreeColumnAdv treeColumnAdv)
		{
			treeColumnAdv.SetParent(TreeView);
		}
		base.OnInsertComplete(index, value);
		RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, value));
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		if (value is TreeColumnAdv treeColumnAdv)
		{
			treeColumnAdv.ResetParent();
		}
		base.OnRemoveComplete(index, value);
		RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Remove, value));
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		TreeColumnAdv treeColumnAdv = newValue as TreeColumnAdv;
		TreeColumnAdv treeColumnAdv2 = oldValue as TreeColumnAdv;
		treeColumnAdv?.SetParent(TreeView);
		treeColumnAdv2?.ResetParent();
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
