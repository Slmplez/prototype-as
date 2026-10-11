using System;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableBranch : TreeTableNode, ITreeTableBranch, ITreeTableNode
{
	private ITreeTableNode _left;

	private ITreeTableNode _right;

	internal int _entryCount = -1;

	private TreeTableNodeColor _redBlack;

	private object _minimum = TreeTableNode.emptyMin;

	public TreeTableNodeColor Color
	{
		get
		{
			return _redBlack;
		}
		set
		{
			_redBlack = value;
		}
	}

	public ITreeTableNode Left
	{
		get
		{
			return _left;
		}
		set
		{
			SetLeft(value, inAddMode: false, _tree.Sorted);
		}
	}

	public ITreeTableNode Right
	{
		get
		{
			return _right;
		}
		set
		{
			SetRight(value, inAddMode: false);
		}
	}

	public TreeTableBranch(TreeTable tree)
	{
		_tree = tree;
	}

	public override object GetMinimum()
	{
		if (object.ReferenceEquals(TreeTableNode.emptyMin, _minimum))
		{
			_minimum = _left.GetMinimum();
		}
		return _minimum;
	}

	public ITreeTableBranch GetLeftB()
	{
		return (ITreeTableBranch)Left;
	}

	public ITreeTableBranch GetRightB()
	{
		return (ITreeTableBranch)Right;
	}

	public virtual void SetLeft(ITreeTableNode value, bool inAddMode, bool isSorted)
	{
		if (object.ReferenceEquals(_left, value))
		{
			return;
		}
		if (inAddMode)
		{
			if (_left != null && _left.Parent == this)
			{
				_left.Parent = null;
			}
			_left = value;
			if (_left != null)
			{
				_left.Parent = this;
			}
			return;
		}
		int num = ((_left != null) ? _left.GetCount() : 0);
		int num2 = value?.GetCount() ?? 0;
		int num3 = num2 - num;
		if (_left != null && _left.Parent == this)
		{
			_left.Parent = null;
		}
		_left = value;
		if (_left != null)
		{
			_left.Parent = this;
		}
		if (num3 != 0)
		{
			InvalidateCountBottomUp();
		}
		if (isSorted)
		{
			InvalidateMinimumBottomUp();
		}
		InvalidateCounterBottomUp(notifyParentRecordSource: false);
		InvalidateSummariesBottomUp(notifyParentRecordSource: false);
	}

	public virtual void SetRight(ITreeTableNode value, bool inAddMode)
	{
		if (object.ReferenceEquals(_right, value))
		{
			return;
		}
		if (inAddMode)
		{
			if (_right != null && _right.Parent == this)
			{
				_right.Parent = null;
			}
			_right = value;
			if (_right != null)
			{
				_right.Parent = this;
			}
			return;
		}
		int num = ((_right != null) ? _right.GetCount() : 0);
		int num2 = value?.GetCount() ?? 0;
		int num3 = num2 - num;
		if (_right != null && _right.Parent == this)
		{
			_right.Parent = null;
		}
		_right = value;
		if (_right != null)
		{
			_right.Parent = this;
		}
		if (num3 != 0)
		{
			InvalidateCountBottomUp();
		}
		InvalidateCounterBottomUp(notifyParentRecordSource: false);
		InvalidateSummariesBottomUp(notifyParentRecordSource: false);
	}

	public virtual int GetEntryPositionOfChild(ITreeTableNode node)
	{
		int num = GetPosition();
		if (object.ReferenceEquals(node, Right))
		{
			num += Left.GetCount();
		}
		else if (!object.ReferenceEquals(node, Left))
		{
			throw new ArgumentException("must be a child node", "node");
		}
		return num;
	}

	public override int GetCount()
	{
		if (_tree.IsInitializing)
		{
			return 1;
		}
		if (_entryCount < 0)
		{
			_entryCount = _left.GetCount() + _right.GetCount();
		}
		return _entryCount;
	}

	public override bool IsEntry()
	{
		return false;
	}

	public virtual void InvalidateCountBottomUp()
	{
		if (!_tree.IsInitializing)
		{
			_entryCount = -1;
			if (base.Parent != null && base.Parent.Parent == base.Parent)
			{
				throw new InvalidOperationException();
			}
			if (base.Parent != null)
			{
				base.Parent.InvalidateCountBottomUp();
			}
		}
	}

	public virtual void InvalidateCountTopDown()
	{
		if (!_tree.IsInitializing)
		{
			_entryCount = -1;
			if (!Left.IsEntry())
			{
				GetLeftB().InvalidateCountTopDown();
			}
			if (!Right.IsEntry())
			{
				GetRightB().InvalidateCountTopDown();
			}
		}
	}

	public virtual void InvalidateMinimumBottomUp()
	{
		if (!_tree.IsInitializing)
		{
			_minimum = TreeTableNode.emptyMin;
			if (base.Parent != null)
			{
				base.Parent.InvalidateMinimumBottomUp();
			}
		}
	}

	public virtual void InvalidateMinimumTopDown()
	{
		if (!_tree.IsInitializing)
		{
			if (!Left.IsEntry())
			{
				GetLeftB().InvalidateMinimumTopDown();
			}
			if (!Right.IsEntry())
			{
				GetRightB().InvalidateMinimumTopDown();
			}
			_minimum = TreeTableNode.emptyMin;
		}
	}
}
