using Syncfusion.Collections.BinaryTree;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridScrollVisibleElementsMapper
{
	private TreeTableWithCounter rbTree;

	private int count;

	public int Count
	{
		get
		{
			return count;
		}
		set
		{
			count = value;
		}
	}

	public int VisibleCount
	{
		get
		{
			int num = Count - InternalCount;
			return InternalVisibleCount + num;
		}
	}

	public bool this[int pos]
	{
		get
		{
			CheckRange("pos", 0, Count - 1, pos);
			if (pos >= InternalCount)
			{
				return true;
			}
			_ = rbTree[pos];
			TreeTableVisibleCounter treeTableVisibleCounter = (TreeTableVisibleCounter)rbTree[pos].GetCounterTotal();
			return treeTableVisibleCounter.GetVisibleCount() == 1.0;
		}
		set
		{
			CheckRange("pos", 0, Count - 1, pos);
			if (pos >= InternalCount)
			{
				EnsureTreeCount(pos + 1);
			}
			double num = (value ? 1 : 0);
			TreeTableWithCounterEntry treeTableWithCounterEntry = rbTree[pos];
			TreeTableVisibleCounter treeTableVisibleCounter = (TreeTableVisibleCounter)rbTree[pos].GetCounterTotal();
			if (treeTableVisibleCounter.GetVisibleCount() != num)
			{
				treeTableWithCounterEntry.Value = new TreeTableVisibleCounterSource(num);
				treeTableWithCounterEntry.InvalidateCounterBottomUp(notifyCounterSource: false);
			}
		}
	}

	internal int InternalCount
	{
		get
		{
			return rbTree.GetCount();
		}
		set
		{
			if (value >= InternalCount)
			{
				EnsureTreeCount(value);
			}
			else
			{
				_ = InternalCount;
			}
		}
	}

	private int InternalVisibleCount
	{
		get
		{
			if (InternalCount == 0)
			{
				return 0;
			}
			TreeTableVisibleCounter treeTableVisibleCounter = (TreeTableVisibleCounter)rbTree.GetCounterTotal();
			return (int)treeTableVisibleCounter.GetVisibleCount();
		}
	}

	public GridScrollVisibleElementsMapper()
	{
		TreeTableVisibleCounter startPos = new TreeTableVisibleCounter(0.0);
		rbTree = new TreeTableWithCounter(startPos, sorted: false);
	}

	public void HideRange(int from, int to)
	{
		CheckRange("from", 0, Count - 1, from);
		CheckRange("to", 0, Count - 1, to);
		EnsureTreeCount(to + 1);
		for (int i = from; i <= to; i++)
		{
			TreeTableWithCounterEntry treeTableWithCounterEntry = rbTree[i];
			TreeTableVisibleCounter treeTableVisibleCounter = (TreeTableVisibleCounter)rbTree[i].GetCounterTotal();
			if (treeTableVisibleCounter.GetVisibleCount() != 0.0)
			{
				treeTableWithCounterEntry.Value = new TreeTableVisibleCounterSource(0.0);
				if (treeTableWithCounterEntry.IsCounterDirty())
				{
					treeTableWithCounterEntry.InvalidateCounterBottomUp(notifyCounterSource: false);
				}
			}
		}
	}

	public void ShowRange(int from, int to)
	{
		CheckRange("from", 0, Count - 1, from);
		CheckRange("to", 0, Count - 1, to);
		EnsureTreeCount(to + 1);
		for (int i = from; i <= to; i++)
		{
			TreeTableWithCounterEntry treeTableWithCounterEntry = rbTree[i];
			TreeTableVisibleCounter treeTableVisibleCounter = (TreeTableVisibleCounter)rbTree[i].GetCounterTotal();
			if (treeTableVisibleCounter.GetVisibleCount() != 1.0)
			{
				treeTableWithCounterEntry.Value = new TreeTableVisibleCounterSource(1.0);
				treeTableWithCounterEntry.InvalidateCounterBottomUp(notifyCounterSource: false);
			}
		}
	}

	public int GetOriginalPositionAtVisiblePosition(int pos)
	{
		CheckRange("pos", 0, Count - 1, pos);
		if (InternalCount == 0)
		{
			return pos;
		}
		int num = 0;
		int internalVisibleCount = InternalVisibleCount;
		if (pos >= internalVisibleCount)
		{
			num = pos - internalVisibleCount + 1;
			pos = internalVisibleCount;
		}
		TreeTableEntry entryAtCounterPosition = rbTree.GetEntryAtCounterPosition(new TreeTableVisibleCounter(pos), 32768, preferLeftMost: false);
		return rbTree.IndexOf(entryAtCounterPosition) + num;
	}

	public int GetVisiblePositionForOriginalPosition(int pos)
	{
		CheckRange("pos", 0, Count - 1, pos);
		int num = 0;
		int internalCount = InternalCount;
		if (internalCount == 0)
		{
			return pos;
		}
		TreeTableVisibleCounter treeTableVisibleCounter;
		if (pos >= internalCount)
		{
			num = pos - internalCount;
			treeTableVisibleCounter = (TreeTableVisibleCounter)rbTree.GetCounterTotal();
		}
		else
		{
			treeTableVisibleCounter = (TreeTableVisibleCounter)rbTree[pos].GetCounterPosition();
		}
		return (int)treeTableVisibleCounter.GetVisibleCount() + num;
	}

	public bool IsColumnHidden(int pos)
	{
		CheckRange("pos", 0, Count - 1, pos);
		return !this[pos];
	}

	private void EnsureTreeCount(int count)
	{
		int num = rbTree.GetCount();
		if (num == 0)
		{
			rbTree.BeginInit();
			for (int i = 0; i < count; i++)
			{
				TreeTableWithCounterEntry treeTableWithCounterEntry = new TreeTableWithCounterEntry();
				treeTableWithCounterEntry.Value = new TreeTableVisibleCounterSource(1.0);
				treeTableWithCounterEntry.Tree = rbTree;
				rbTree.Add(treeTableWithCounterEntry);
			}
			rbTree.EndInit();
		}
		else if (num < count)
		{
			for (int j = num; j < count; j++)
			{
				TreeTableWithCounterEntry treeTableWithCounterEntry2 = new TreeTableWithCounterEntry();
				treeTableWithCounterEntry2.Value = new TreeTableVisibleCounterSource(1.0);
				treeTableWithCounterEntry2.Tree = rbTree;
				rbTree.Add(treeTableWithCounterEntry2);
			}
		}
	}

	private void CheckRange(string paramName, int from, int to, int actualValue)
	{
	}
}
