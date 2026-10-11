using System.Collections;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableEnumerator : IEnumerator
{
	private ITreeTableNode _cursor;

	private ITreeTableNode _next;

	private ITreeTable _tree;

	object IEnumerator.Current => Current;

	public ITreeTableEntry Current => (ITreeTableEntry)_cursor;

	public TreeTableEnumerator(ITreeTable tree)
	{
		_tree = tree;
		_cursor = null;
		if (tree.Count > 0)
		{
			_next = (ITreeTableNode)tree[0];
		}
	}

	public virtual void Reset()
	{
		_cursor = null;
		if (_tree.Count > 0)
		{
			_next = (ITreeTableNode)_tree[0];
		}
		else
		{
			_next = null;
		}
	}

	public bool MoveNext()
	{
		if (_next == null)
		{
			return false;
		}
		_cursor = _next;
		ITreeTableBranch treeTableBranch = _cursor.Parent;
		if (treeTableBranch == null)
		{
			_next = null;
			return true;
		}
		if (object.ReferenceEquals(_cursor, treeTableBranch.Left))
		{
			_next = treeTableBranch.Right;
		}
		else
		{
			ITreeTableBranch parent = treeTableBranch.Parent;
			if (parent == null)
			{
				_next = null;
				return true;
			}
			while (object.ReferenceEquals(parent.Right, treeTableBranch))
			{
				treeTableBranch = parent;
				parent = parent.Parent;
				if (parent == null)
				{
					_next = null;
					return true;
				}
			}
			_next = parent.Right;
		}
		while (!_next.IsEntry())
		{
			_next = ((ITreeTableBranch)_next).Left;
		}
		return _cursor != null;
	}
}
