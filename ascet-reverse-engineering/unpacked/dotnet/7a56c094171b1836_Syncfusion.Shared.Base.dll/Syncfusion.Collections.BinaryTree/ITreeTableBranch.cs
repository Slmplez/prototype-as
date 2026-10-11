namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableBranch : ITreeTableNode
{
	ITreeTableNode Left { get; set; }

	ITreeTableNode Right { get; set; }

	TreeTableNodeColor Color { get; set; }

	void SetLeft(ITreeTableNode value, bool inAddMode, bool isSortedTree);

	void SetRight(ITreeTableNode value, bool inAddMode);

	ITreeTableBranch GetLeftB();

	ITreeTableBranch GetRightB();

	int GetEntryPositionOfChild(ITreeTableNode node);

	void InvalidateCountBottomUp();

	void InvalidateCountTopDown();

	void InvalidateMinimumBottomUp();

	void InvalidateMinimumTopDown();
}
