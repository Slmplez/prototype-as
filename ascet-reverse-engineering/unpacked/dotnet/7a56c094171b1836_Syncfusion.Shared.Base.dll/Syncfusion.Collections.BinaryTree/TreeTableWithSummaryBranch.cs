namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithSummaryBranch : TreeTableBranch, ITreeTableSummaryNode, ITreeTableNode
{
	private ITreeTableSummary[] _summaries;

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

	public bool HasSummaries => _summaries != null;

	public TreeTableWithSummaryBranch(TreeTable tree)
		: base(tree)
	{
	}

	public ITreeTableSummaryNode GetLeftC()
	{
		return (ITreeTableSummaryNode)base.Left;
	}

	public ITreeTableSummaryNode GetRightC()
	{
		return (ITreeTableSummaryNode)base.Right;
	}

	public ITreeTableSummary[] GetSummaries(ITreeTableEmptySummaryArraySource emptySummaries)
	{
		if (base.Tree.IsInitializing)
		{
			return null;
		}
		if (_summaries == null)
		{
			ITreeTableSummary[] summaries = GetLeftC().GetSummaries(emptySummaries);
			ITreeTableSummary[] summaries2 = GetRightC().GetSummaries(emptySummaries);
			if (summaries != null && summaries2 != null)
			{
				int num = 0;
				int num2 = 0;
				_summaries = new ITreeTableSummary[summaries.Length];
				for (int i = 0; i < _summaries.Length; i++)
				{
					_summaries[i] = summaries[i].Combine(summaries2[i]);
					if (num == i || num2 == i)
					{
						if (object.ReferenceEquals(_summaries[i], summaries[i]))
						{
							num++;
						}
						else if (object.ReferenceEquals(_summaries[i], summaries2[i]))
						{
							num2++;
						}
					}
				}
				if (num == _summaries.Length)
				{
					_summaries = summaries;
				}
				else if (num2 == _summaries.Length)
				{
					_summaries = summaries2;
				}
			}
		}
		return _summaries;
	}

	public override void InvalidateSummariesBottomUp(bool notifyParentRecordSource)
	{
		if (!base.Tree.IsInitializing)
		{
			_summaries = null;
			if (Parent != null)
			{
				Parent.InvalidateSummariesBottomUp(notifyParentRecordSource);
			}
			else if (notifyParentRecordSource && base.Tree != null && base.Tree.Tag is ITreeTableSummaryArraySource)
			{
				((ITreeTableSummaryArraySource)base.Tree.Tag).InvalidateSummariesBottomUp();
			}
		}
	}

	public void InvalidateSummariesTopDown(bool notifyCounterSource)
	{
		if (!base.Tree.IsInitializing)
		{
			_summaries = null;
			GetLeftC().InvalidateSummariesTopDown(notifyCounterSource);
			GetRightC().InvalidateSummariesTopDown(notifyCounterSource);
		}
	}
}
