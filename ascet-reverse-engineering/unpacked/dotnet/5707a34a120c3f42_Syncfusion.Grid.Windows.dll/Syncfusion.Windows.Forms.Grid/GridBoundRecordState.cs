using System;
using System.Collections;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBoundRecordState : IDisposable
{
	internal GridBoundRecordState parent;

	internal IList table;

	internal int position;

	internal int row;

	internal bool expanded;

	internal IList childList;

	internal BindingManagerBase listManager;

	internal bool hasChildList;

	internal int level;

	internal int childCount;

	public GridBoundRecordState Parent => parent;

	public IList Table => table;

	public BindingManagerBase ListManager => listManager;

	public int Position => position;

	public int RowIndexInRecord => row;

	public bool Expanded => expanded;

	public IList ChildList => childList;

	public bool HasChildList => hasChildList;

	public int LevelIndex => level;

	public int ChildCount => childCount;

	internal GridBoundRecordState(GridBoundRecordState parent)
	{
		this.parent = parent;
	}

	public void Dispose()
	{
		if (!GridModelDataBinder.DoNotDisposeLists && childList is IDisposable)
		{
			((IDisposable)childList).Dispose();
		}
		GC.SuppressFinalize(this);
	}
}
