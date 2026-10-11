namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableCounter
{
	int Kind { get; }

	ITreeTableCounter Combine(ITreeTableCounter other, int cookie);

	double Compare(ITreeTableCounter other, int cookie);

	bool IsEmpty(int cookie);

	double GetValue(int cookie);
}
