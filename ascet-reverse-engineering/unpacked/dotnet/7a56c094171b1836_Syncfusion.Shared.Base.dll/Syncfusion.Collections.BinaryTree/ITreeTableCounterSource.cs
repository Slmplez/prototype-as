namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableCounterSource
{
	ITreeTableCounter GetCounter();

	void InvalidateCounterTopDown(bool notifyCounterSource);

	void InvalidateCounterBottomUp();
}
