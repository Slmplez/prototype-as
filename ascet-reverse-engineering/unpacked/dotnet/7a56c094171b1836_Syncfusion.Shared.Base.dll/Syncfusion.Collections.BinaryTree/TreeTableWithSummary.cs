namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithSummary : TreeTable
{
	public bool HasSummaries
	{
		get
		{
			if (base.Root == null)
			{
				return false;
			}
			return ((ITreeTableSummaryNode)base.Root).HasSummaries;
		}
	}

	public new TreeTableWithSummaryEntry this[int index]
	{
		get
		{
			return (TreeTableWithSummaryEntry)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	public TreeTableWithSummary(bool sorted)
		: base(sorted)
	{
	}

	public void InvalidateSummariesTopDown(bool notifySummariesSource)
	{
		if (base.Root != null)
		{
			((ITreeTableSummaryNode)base.Root).InvalidateSummariesTopDown(notifySummariesSource);
		}
	}

	public ITreeTableSummary[] GetSummaries(ITreeTableEmptySummaryArraySource emptySummaries)
	{
		if (base.Root == null)
		{
			return emptySummaries.GetEmptySummaries();
		}
		return ((ITreeTableSummaryNode)base.Root).GetSummaries(emptySummaries);
	}

	public void Insert(int index, TreeTableWithSummaryEntry value)
	{
		Insert(index, (ITreeTableNode)value);
	}

	public void Remove(TreeTableWithSummaryEntry value)
	{
		Remove((ITreeTableNode)value);
	}

	public bool Contains(TreeTableWithSummaryEntry value)
	{
		if (value == null)
		{
			return false;
		}
		return Contains((ITreeTableNode)value);
	}

	public int IndexOf(TreeTableWithSummaryEntry value)
	{
		return IndexOf((ITreeTableNode)value);
	}

	public int Add(TreeTableWithSummaryEntry value)
	{
		return Add((ITreeTableNode)value);
	}

	public void CopyTo(TreeTableWithSummaryEntry[] array, int index)
	{
		CopyTo((ITreeTableNode[])array, index);
	}

	public new TreeTableWithSummaryEnumerator GetEnumerator()
	{
		return new TreeTableWithSummaryEnumerator(this);
	}
}
