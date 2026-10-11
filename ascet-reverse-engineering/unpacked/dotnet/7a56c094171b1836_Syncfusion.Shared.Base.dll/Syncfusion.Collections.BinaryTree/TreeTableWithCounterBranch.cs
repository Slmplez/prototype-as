#define TRACE
using System;
using System.Diagnostics;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithCounterBranch : TreeTableWithSummaryBranch, ITreeTableCounterNode, ITreeTableSummaryNode, ITreeTableNode
{
	private ITreeTableCounter _counter;

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

	public TreeTableWithCounterBranch(TreeTable tree)
		: base(tree)
	{
	}

	public ITreeTableCounter GetCounterPositionOfChild(ITreeTableNode node)
	{
		ITreeTableCounter counterPosition = GetCounterPosition();
		if (object.ReferenceEquals(node, base.Right))
		{
			return counterPosition.Combine(GetLeftC().GetCounterTotal(), 65535);
		}
		if (object.ReferenceEquals(node, base.Left))
		{
			return counterPosition;
		}
		throw new ArgumentException("must be a child node", "node");
	}

	public new ITreeTableCounterNode GetLeftC()
	{
		return (ITreeTableCounterNode)base.Left;
	}

	public new ITreeTableCounterNode GetRightC()
	{
		return (ITreeTableCounterNode)base.Right;
	}

	public ITreeTableCounter GetCounterTotal()
	{
		if (base.Tree.IsInitializing)
		{
			return null;
		}
		if (_counter == null)
		{
			ITreeTableCounter counterTotal = GetLeftC().GetCounterTotal();
			ITreeTableCounter counterTotal2 = GetRightC().GetCounterTotal();
			if (counterTotal != null && counterTotal2 != null)
			{
				_counter = counterTotal.Combine(counterTotal2, 65535);
			}
		}
		return _counter;
	}

	public ITreeTableCounter GetCounterPosition()
	{
		if (Parent == null)
		{
			return TreeTableWithCounter.GetStartCounterPosition();
		}
		return Parent.GetCounterPositionOfChild(this);
	}

	public override void InvalidateCounterBottomUp(bool notifyCounterSource)
	{
		if (base.Tree.IsInitializing)
		{
			return;
		}
		_counter = null;
		if (Parent != null)
		{
			Parent.InvalidateCounterBottomUp(notifyCounterSource);
		}
		else
		{
			if (!notifyCounterSource)
			{
				return;
			}
			if (TreeTableWithCounterEntry.traceVisibleCount)
			{
				Trace.WriteLine("InvalidateCounterBottomUp " + base.Tree.GetType());
				if (base.Tree != null && base.Tree.Tag != null)
				{
					Trace.WriteLine(base.Tree.Tag.GetType());
				}
			}
			if (base.Tree != null && base.Tree.Tag is ITreeTableCounterSource)
			{
				((ITreeTableCounterSource)base.Tree.Tag).InvalidateCounterBottomUp();
			}
		}
	}

	public void InvalidateCounterTopDown(bool notifyCounterSource)
	{
		if (!base.Tree.IsInitializing)
		{
			_counter = null;
			GetLeftC().InvalidateCounterTopDown(notifyCounterSource);
			GetRightC().InvalidateCounterTopDown(notifyCounterSource);
		}
	}
}
