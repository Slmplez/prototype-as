#define TRACE
using System.Diagnostics;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithCounterEntry : TreeTableWithSummaryEntry, ITreeTableCounterNode, ITreeTableSummaryNode, ITreeTableNode
{
	internal static bool traceVisibleCount;

	private ITreeTableCounter counter;

	public TreeTableWithCounter TreeTableWithCounter => (TreeTableWithCounter)base.Tree;

	public new TreeTableWithCounterBranch Parent
	{
		get
		{
			return base.Parent as TreeTableWithCounterBranch;
		}
		set
		{
			base.Parent = value;
		}
	}

	public override ITreeTableBranch CreateBranch(TreeTable tree)
	{
		return new TreeTableWithCounterBranch(tree);
	}

	public virtual ITreeTableCounter GetCounterPosition()
	{
		if (Parent == null)
		{
			if (TreeTableWithCounter == null)
			{
				return null;
			}
			return TreeTableWithCounter.GetStartCounterPosition();
		}
		return Parent.GetCounterPositionOfChild(this);
	}

	internal virtual ITreeTableCounterSource GetCounterSource()
	{
		return Value as ITreeTableCounterSource;
	}

	public bool IsCounterDirty()
	{
		return counter == null;
	}

	public ITreeTableCounter GetCounterTotal()
	{
		if (counter == null)
		{
			ITreeTableCounterSource counterSource = GetCounterSource();
			if (traceVisibleCount)
			{
				Trace.Indent();
			}
			if (counterSource != null)
			{
				counter = counterSource.GetCounter();
			}
			if (traceVisibleCount)
			{
				Trace.WriteLine("Counter Total: " + counter.ToString() + " / " + Value.GetType().Name);
				Trace.Unindent();
			}
		}
		return counter;
	}

	public virtual void InvalidateCounter()
	{
		counter = null;
	}

	public override void InvalidateCounterBottomUp(bool notifyCounterSource)
	{
		if (traceVisibleCount)
		{
			Trace.WriteLine("InvalidateCounterBottomUp " + Value.GetType());
			Trace.WriteLine(counter);
		}
		counter = null;
		if (Parent != null)
		{
			Parent.InvalidateCounterBottomUp(notifyCounterSource);
		}
		else if (notifyCounterSource && base.Tree != null && base.Tree.Tag is ITreeTableCounterSource)
		{
			((ITreeTableCounterSource)base.Tree.Tag).InvalidateCounterBottomUp();
		}
	}

	public void InvalidateCounterTopDown(bool notifyCounterSource)
	{
		counter = null;
		if (notifyCounterSource)
		{
			ITreeTableCounterSource counterSource = GetCounterSource();
			if (notifyCounterSource)
			{
				counterSource?.InvalidateCounterTopDown(notifyCounterSource);
			}
		}
	}
}
