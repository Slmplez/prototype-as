#define TRACE
using System;
using System.Diagnostics;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithCounter : TreeTableWithSummary
{
	private ITreeTableCounter _startPos;

	public new TreeTableWithCounterEntry this[int index]
	{
		get
		{
			return (TreeTableWithCounterEntry)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	public TreeTableWithCounter(ITreeTableCounter startPos, bool sorted)
		: base(sorted)
	{
		_startPos = startPos;
	}

	public override void EndInit()
	{
		base.EndInit();
	}

	public void InvalidateCounterTopDown(bool notifyCounterSource)
	{
		if (base.Root != null)
		{
			((ITreeTableCounterNode)base.Root).InvalidateCounterTopDown(notifyCounterSource);
		}
	}

	public ITreeTableCounter GetCounterTotal()
	{
		if (base.Root == null)
		{
			return _startPos;
		}
		return ((ITreeTableCounterNode)base.Root).GetCounterTotal();
	}

	public ITreeTableCounter GetStartCounterPosition()
	{
		return _startPos;
	}

	public TreeTableWithCounterEntry GetEntryAtCounterPosition(ITreeTableCounter searchPosition, int cookie)
	{
		return GetEntryAtCounterPosition(GetStartCounterPosition(), searchPosition, cookie, preferLeftMost: false);
	}

	public TreeTableWithCounterEntry GetEntryAtCounterPosition(ITreeTableCounter searchPosition, int cookie, bool preferLeftMost)
	{
		return GetEntryAtCounterPosition(GetStartCounterPosition(), searchPosition, cookie, preferLeftMost);
	}

	private TreeTableWithCounterEntry GetEntryAtCounterPosition(ITreeTableCounter start, ITreeTableCounter searchPosition, int cookie)
	{
		return GetEntryAtCounterPosition(start, searchPosition, cookie, preferLeftMost: false);
	}

	private TreeTableWithCounterEntry GetEntryAtCounterPosition(ITreeTableCounter start, ITreeTableCounter searchPosition, int cookie, bool preferLeftMost)
	{
		GetCount();
		if (searchPosition.Compare(GetStartCounterPosition(), cookie) < 0.0)
		{
			throw new ArgumentOutOfRangeException("searchPosition");
		}
		if (searchPosition.Compare(GetCounterTotal(), cookie) > 0.0)
		{
			Trace.WriteLine(searchPosition.ToString());
			Trace.WriteLine(GetCounterTotal().ToString());
			throw new ArgumentOutOfRangeException("searchPosition", $"{searchPosition} out of range {GetCounterTotal()}");
		}
		if (base.Root == null)
		{
			return null;
		}
		ITreeTableNode root = base.Root;
		ITreeTableCounter currentNodePosition = start;
		return GetEntryAtCounterPosition(root, start, searchPosition, cookie, preferLeftMost, out currentNodePosition);
	}

	private TreeTableWithCounterEntry GetEntryAtCounterPosition(ITreeTableNode currentNode, ITreeTableCounter start, ITreeTableCounter searchPosition, int cookie, bool preferLeftMost, out ITreeTableCounter currentNodePosition)
	{
		TreeTableWithCounterBranch treeTableWithCounterBranch = null;
		currentNodePosition = start;
		while (!currentNode.IsEntry())
		{
			TreeTableWithCounterBranch treeTableWithCounterBranch2 = (TreeTableWithCounterBranch)currentNode;
			ITreeTableCounterNode treeTableCounterNode = (ITreeTableCounterNode)treeTableWithCounterBranch2.Left;
			ITreeTableCounter treeTableCounter = currentNodePosition.Combine(treeTableCounterNode.GetCounterTotal(), cookie);
			if (searchPosition.Compare(treeTableCounter, cookie) < 0.0)
			{
				currentNode = treeTableWithCounterBranch2.Left;
			}
			else if (preferLeftMost && searchPosition.Compare(currentNodePosition, cookie) == 0.0)
			{
				while (!currentNode.IsEntry())
				{
					treeTableWithCounterBranch2 = (TreeTableWithCounterBranch)currentNode;
					currentNode = treeTableWithCounterBranch2.Left;
				}
			}
			else if (preferLeftMost && searchPosition.Compare(treeTableCounter, cookie) == 0.0)
			{
				ITreeTableCounter currentNodePosition2 = null;
				ITreeTableNode entryAtCounterPosition = GetEntryAtCounterPosition(treeTableWithCounterBranch2.Left, currentNodePosition, searchPosition, cookie, preferLeftMost, out currentNodePosition2);
				if (treeTableCounter.Compare(currentNodePosition2, cookie) == 0.0)
				{
					currentNode = entryAtCounterPosition;
					currentNodePosition = currentNodePosition2;
				}
				else
				{
					currentNodePosition = treeTableCounter;
					currentNode = treeTableWithCounterBranch2.Right;
				}
			}
			else
			{
				if (treeTableWithCounterBranch == null)
				{
					treeTableWithCounterBranch = treeTableWithCounterBranch2;
				}
				currentNodePosition = treeTableCounter;
				currentNode = treeTableWithCounterBranch2.Right;
			}
		}
		return (TreeTableWithCounterEntry)currentNode;
	}

	public ITreeTableEntry GetNextNotEmptyCounterEntry(ITreeTableEntry current, int cookie)
	{
		ITreeTableBranch treeTableBranch = current.Parent;
		ITreeTableNode treeTableNode;
		if (treeTableBranch == null)
		{
			treeTableNode = null;
			return null;
		}
		treeTableNode = current;
		do
		{
			if (object.ReferenceEquals(treeTableNode, treeTableBranch.Left))
			{
				treeTableNode = treeTableBranch.Right;
				continue;
			}
			ITreeTableBranch parent = treeTableBranch.Parent;
			if (parent == null)
			{
				return null;
			}
			while (object.ReferenceEquals(parent.Right, treeTableBranch) || object.ReferenceEquals(parent.Right, treeTableNode))
			{
				treeTableBranch = parent;
				parent = parent.Parent;
				if (parent == null)
				{
					return null;
				}
			}
			if (treeTableNode == parent.Right)
			{
				Trace.WriteLine(ToString());
				Trace.WriteLine(treeTableBranch.ToString());
				Trace.WriteLine(parent.ToString());
				Trace.WriteLine(treeTableNode.ToString());
				return null;
			}
			treeTableNode = parent.Right;
		}
		while (treeTableNode != null && ((ITreeTableCounterNode)treeTableNode).GetCounterTotal().IsEmpty(cookie));
		while (!treeTableNode.IsEntry())
		{
			ITreeTableBranch treeTableBranch2 = (ITreeTableBranch)treeTableNode;
			treeTableNode = (((ITreeTableCounterNode)treeTableBranch2.Left).GetCounterTotal().IsEmpty(cookie) ? treeTableBranch2.Right : treeTableBranch2.Left);
		}
		return treeTableNode as ITreeTableEntry;
	}

	public ITreeTableEntry GetPreviousNotEmptyCounterEntry(ITreeTableEntry current, int cookie)
	{
		ITreeTableBranch treeTableBranch = current.Parent;
		ITreeTableNode treeTableNode;
		if (treeTableBranch == null)
		{
			treeTableNode = null;
			return null;
		}
		treeTableNode = current;
		do
		{
			if (object.ReferenceEquals(treeTableNode, treeTableBranch.Right))
			{
				treeTableNode = treeTableBranch.Left;
				continue;
			}
			ITreeTableBranch parent = treeTableBranch.Parent;
			if (parent == null)
			{
				return null;
			}
			while (object.ReferenceEquals(parent.Left, treeTableBranch) || object.ReferenceEquals(parent.Left, treeTableNode))
			{
				treeTableBranch = parent;
				parent = parent.Parent;
				if (parent == null)
				{
					return null;
				}
			}
			if (treeTableNode == parent.Left)
			{
				Trace.WriteLine(ToString());
				Trace.WriteLine(treeTableBranch.ToString());
				Trace.WriteLine(parent.ToString());
				Trace.WriteLine(treeTableNode.ToString());
				return null;
			}
			treeTableNode = parent.Left;
		}
		while (treeTableNode != null && ((ITreeTableCounterNode)treeTableNode).GetCounterTotal().IsEmpty(cookie));
		while (!treeTableNode.IsEntry())
		{
			ITreeTableBranch treeTableBranch2 = (ITreeTableBranch)treeTableNode;
			treeTableNode = (((ITreeTableCounterNode)treeTableBranch2.Right).GetCounterTotal().IsEmpty(cookie) ? treeTableBranch2.Left : treeTableBranch2.Right);
		}
		return treeTableNode as ITreeTableEntry;
	}

	public TreeTableWithCounterEntry GetNextVisibleEntry(TreeTableWithCounterEntry current)
	{
		return (TreeTableWithCounterEntry)GetNextNotEmptyCounterEntry(current, 32768);
	}

	public TreeTableWithCounterEntry GetPreviousVisibleEntry(TreeTableWithCounterEntry current)
	{
		return (TreeTableWithCounterEntry)GetPreviousNotEmptyCounterEntry(current, 32768);
	}

	public void Insert(int index, TreeTableWithCounterEntry value)
	{
		Insert(index, (TreeTableWithSummaryEntry)value);
	}

	public void Remove(TreeTableWithCounterEntry value)
	{
		Remove((TreeTableWithSummaryEntry)value);
	}

	public bool Contains(TreeTableWithCounterEntry value)
	{
		if (value == null)
		{
			return false;
		}
		return Contains((TreeTableWithSummaryEntry)value);
	}

	public int IndexOf(TreeTableWithCounterEntry value)
	{
		return IndexOf((TreeTableWithSummaryEntry)value);
	}

	public int Add(TreeTableWithCounterEntry value)
	{
		return Add((TreeTableWithSummaryEntry)value);
	}

	public void CopyTo(TreeTableWithCounterEntry[] array, int index)
	{
		CopyTo((ITreeTableNode[])array, index);
	}

	public new TreeTableWithCounterEnumerator GetEnumerator()
	{
		return new TreeTableWithCounterEnumerator(this);
	}
}
