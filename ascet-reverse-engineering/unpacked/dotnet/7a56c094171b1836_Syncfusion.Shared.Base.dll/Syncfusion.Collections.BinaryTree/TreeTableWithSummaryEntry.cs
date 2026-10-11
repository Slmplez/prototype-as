namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithSummaryEntry : TreeTableEntry, ITreeTableSummaryNode, ITreeTableNode
{
	private static readonly ITreeTableSummary[] emptySummaryArray = new ITreeTableSummary[0];

	private ITreeTableSummary[] summaries;

	public TreeTableWithSummary TreeTableWithSummary => (TreeTableWithSummary)base.Tree;

	public new TreeTableWithSummaryBranch Parent
	{
		get
		{
			return base.Parent as TreeTableWithSummaryBranch;
		}
		set
		{
			base.Parent = value;
		}
	}

	public bool HasSummaries => summaries != null;

	public override ITreeTableBranch CreateBranch(TreeTable tree)
	{
		return new TreeTableWithSummaryBranch(tree);
	}

	public ITreeTableSummary[] GetSummaries(ITreeTableEmptySummaryArraySource emptySummaries)
	{
		if (summaries == null)
		{
			summaries = OnGetSummaries(emptySummaries);
			if (summaries == null)
			{
				summaries = emptySummaryArray;
			}
		}
		return summaries;
	}

	public virtual ITreeTableSummary[] OnGetSummaries(ITreeTableEmptySummaryArraySource emptySummaries)
	{
		ITreeTableSummary[] result = null;
		ITreeTableSummaryArraySource summaryArraySource = GetSummaryArraySource();
		if (summaryArraySource != null)
		{
			result = summaryArraySource.GetSummaries(emptySummaries, out var _);
		}
		return result;
	}

	public virtual ITreeTableSummaryArraySource GetSummaryArraySource()
	{
		return Value as ITreeTableSummaryArraySource;
	}

	public override void InvalidateSummariesBottomUp(bool notifyParentRecordSource)
	{
		summaries = null;
		if (Value is ITreeTableSummaryArraySource && base.Tree != null)
		{
			((ITreeTableSummaryArraySource)base.Tree.Tag).InvalidateSummary();
		}
		if (Parent != null)
		{
			Parent.InvalidateSummariesBottomUp(notifyParentRecordSource);
		}
		else if (notifyParentRecordSource && base.Tree != null && base.Tree.Tag is ITreeTableSummaryArraySource)
		{
			((ITreeTableSummaryArraySource)base.Tree.Tag).InvalidateSummariesBottomUp();
		}
	}

	public void InvalidateSummariesTopDown(bool notifySummaryArraySource)
	{
		summaries = null;
		if (notifySummaryArraySource)
		{
			GetSummaryArraySource()?.InvalidateSummariesTopDown();
			summaries = null;
		}
	}
}
