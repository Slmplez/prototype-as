namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableCounterNode : ITreeTableSummaryNode, ITreeTableNode
{
	ITreeTableCounter GetCounterTotal();

	ITreeTableCounter GetCounterPosition();

	void InvalidateCounterTopDown(bool notifyCounterSource);
}
