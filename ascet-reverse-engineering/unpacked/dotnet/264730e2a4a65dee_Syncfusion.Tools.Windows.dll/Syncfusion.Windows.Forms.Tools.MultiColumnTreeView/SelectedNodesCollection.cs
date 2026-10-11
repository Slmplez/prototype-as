using System;
using System.Collections;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class SelectedNodesCollection : ArrayListExt
{
	public new TreeNodeAdv this[int index] => (TreeNodeAdv)base[index];

	public SelectedNodesCollection()
	{
		base.ForceReadOnly = true;
	}

	protected override void AddHandlers(object item)
	{
		if (item != null && !(item is TreeNodeAdv))
		{
			throw new ArgumentException("Only elements of type TreeNodeAdv can be added to the SelectedNodesCollection.");
		}
		if (Count > 1)
		{
			TreeNodeAdv treeNodeAdv = item as TreeNodeAdv;
			{
				IEnumerator enumerator = GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						TreeNodeAdv treeNodeAdv2 = (TreeNodeAdv)enumerator.Current;
						if (treeNodeAdv2 != treeNodeAdv)
						{
							bool flag = treeNodeAdv2.TreeView == null || treeNodeAdv2.TreeView.SelectionMode == TreeSelectionMode.MultiSelectAll;
							if (treeNodeAdv2.Parent != treeNodeAdv.Parent && !flag)
							{
								Remove(treeNodeAdv);
								throw new NotSupportedException("Cannot add a TreeNodeAdv into a SelectedNodesCollection that is not a sibling of the existing nodes in the collection.");
							}
						}
					}
				}
				finally
				{
					IDisposable disposable = enumerator as IDisposable;
					if (disposable != null)
					{
						disposable.Dispose();
					}
				}
			}
		}
		base.AddHandlers(item);
	}

	public override object Clone()
	{
		SelectedNodesCollection selectedNodesCollection = new SelectedNodesCollection();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				object current = enumerator.Current;
				selectedNodesCollection.Add(current);
			}
			return selectedNodesCollection;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	internal void SetFixedSize(bool fixedSize)
	{
		base.ForceFixedSize = fixedSize;
	}
}
