namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableSummaryNode : ITreeTableNode
{
	bool HasSummaries { get; }

	ITreeTableSummary[] GetSummaries(ITreeTableEmptySummaryArraySource emptySummaries);

	void InvalidateSummariesTopDown(bool notifyEntrySummary);
}
