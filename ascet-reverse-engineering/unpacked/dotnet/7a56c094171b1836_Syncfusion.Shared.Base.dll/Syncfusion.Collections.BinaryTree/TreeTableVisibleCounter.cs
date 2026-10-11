namespace Syncfusion.Collections.BinaryTree;

public class TreeTableVisibleCounter : ITreeTableCounter
{
	private double visibleCount;

	public static readonly TreeTableVisibleCounter Empty = new TreeTableVisibleCounter(0.0);

	public virtual int Kind => 0;

	public TreeTableVisibleCounter(double visibleCount)
	{
		this.visibleCount = visibleCount;
	}

	public double GetVisibleCount()
	{
		return visibleCount;
	}

	public virtual double GetValue(int cookie)
	{
		return visibleCount;
	}

	ITreeTableCounter ITreeTableCounter.Combine(ITreeTableCounter other, int cookie)
	{
		return Combine((TreeTableVisibleCounter)other, cookie);
	}

	public virtual TreeTableVisibleCounter CreateCounter()
	{
		return new TreeTableVisibleCounter(0.0);
	}

	protected virtual void OnCombineCounters(ITreeTableCounter x, ITreeTableCounter y, int cookie)
	{
	}

	public TreeTableVisibleCounter Combine(TreeTableVisibleCounter other, int cookie)
	{
		if (other == null || other.IsEmpty(int.MaxValue))
		{
			return this;
		}
		if (IsEmpty(int.MaxValue))
		{
			return other;
		}
		TreeTableVisibleCounter treeTableVisibleCounter = CreateCounter();
		treeTableVisibleCounter.visibleCount = GetVisibleCount() + other.GetVisibleCount();
		treeTableVisibleCounter.OnCombineCounters(this, other, cookie);
		return treeTableVisibleCounter;
	}

	double ITreeTableCounter.Compare(ITreeTableCounter other, int cookie)
	{
		return Compare((TreeTableVisibleCounter)other, cookie);
	}

	public virtual double Compare(TreeTableVisibleCounter other, int cookie)
	{
		if (other == null)
		{
			return 0.0;
		}
		if ((cookie & 0x8000) != 0)
		{
			return GetVisibleCount() - other.GetVisibleCount();
		}
		return 0.0;
	}

	public virtual bool IsEmpty(int cookie)
	{
		return GetVisibleCount() == 0.0;
	}

	public override string ToString()
	{
		return "Count = " + GetVisibleCount();
	}
}
