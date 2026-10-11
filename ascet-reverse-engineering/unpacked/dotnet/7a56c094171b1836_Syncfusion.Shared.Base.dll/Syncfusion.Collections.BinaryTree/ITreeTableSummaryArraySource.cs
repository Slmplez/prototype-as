namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableSummaryArraySource
{
	ITreeTableSummary[] GetSummaries(ITreeTableEmptySummaryArraySource emptySummaries, out bool changed);

	void InvalidateSummariesTopDown();

	void InvalidateSummariesBottomUp();

	void InvalidateSummary();
}
