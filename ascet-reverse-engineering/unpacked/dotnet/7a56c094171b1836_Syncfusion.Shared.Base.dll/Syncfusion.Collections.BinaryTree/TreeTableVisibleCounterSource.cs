namespace Syncfusion.Collections.BinaryTree;

public class TreeTableVisibleCounterSource : ITreeTableCounterSource
{
	private double visibleCount;

	public TreeTableVisibleCounterSource(double visibleCount)
	{
		this.visibleCount = visibleCount;
	}

	public virtual void InvalidateCounterBottomUp()
	{
	}

	public virtual ITreeTableCounter GetCounter()
	{
		return new TreeTableVisibleCounter(visibleCount);
	}

	public virtual void InvalidateCounterTopDown(bool notifyCounterSource)
	{
	}
}
