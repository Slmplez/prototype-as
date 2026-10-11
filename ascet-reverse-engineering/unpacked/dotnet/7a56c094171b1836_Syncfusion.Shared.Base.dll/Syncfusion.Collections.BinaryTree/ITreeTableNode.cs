namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableNode
{
	ITreeTableBranch Parent { get; set; }

	int GetPosition();

	int GetCount();

	bool IsEmpty();

	bool IsEntry();

	int GetLevel();

	object GetMinimum();

	void InvalidateCounterBottomUp(bool notifyParentRecordSource);

	void InvalidateSummariesBottomUp(bool notifyParentRecordSource);
}
