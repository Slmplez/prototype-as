using System;
using System.Collections;
using System.Collections.Specialized;
using Syncfusion.ComponentModel;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTable : Disposable, ITreeTable, IList, ICollection, IEnumerable, IDisposable
{
	private ITreeTableNode _root;

	private object _tag;

	private IComparer comparer;

	private BitVector32 bv = new BitVector32(0);

	private static BitVector32.Section __sorted;

	private static BitVector32.Section __inAddMode;

	private static BitVector32.Section __reserved1;

	private static BitVector32.Section __reserved2;

	private static BitVector32.Section __reserved3;

	private static BitVector32.Section __reserved4;

	private static BitVector32.Section __reservedShort;

	private ITreeTableBranch lastAddBranch;

	private ITreeTableEntry lastIndexLeaf;

	private int lastIndex = -1;

	private ITreeTableEntry lastFoundEntry;

	private object lastFoundEntryKey;

	private bool lastFoundEntryHighestSmallerValue;

	private bool _sorted
	{
		get
		{
			return bv[__sorted] != 0;
		}
		set
		{
			bv[__sorted] = (value ? 1 : 0);
		}
	}

	private bool inAddMode
	{
		get
		{
			return bv[__inAddMode] != 0;
		}
		set
		{
			bv[__inAddMode] = (value ? 1 : 0);
		}
	}

	public bool Reserved1
	{
		get
		{
			return bv[__reserved1] != 0;
		}
		set
		{
			bv[__reserved1] = (value ? 1 : 0);
		}
	}

	public bool Reserved2
	{
		get
		{
			return bv[__reserved2] != 0;
		}
		set
		{
			bv[__reserved2] = (value ? 1 : 0);
		}
	}

	public bool Reserved3
	{
		get
		{
			return bv[__reserved3] != 0;
		}
		set
		{
			bv[__reserved3] = (value ? 1 : 0);
		}
	}

	public bool Reserved4
	{
		get
		{
			return bv[__reserved4] != 0;
		}
		set
		{
			bv[__reserved4] = (value ? 1 : 0);
		}
	}

	public int ReservedShort
	{
		get
		{
			return bv[__reservedShort];
		}
		set
		{
			bv[__reservedShort] = value;
		}
	}

	public IComparer Comparer
	{
		get
		{
			return comparer;
		}
		set
		{
			comparer = value;
			_sorted = comparer != null;
		}
	}

	public object Tag
	{
		get
		{
			return _tag;
		}
		set
		{
			_tag = value;
		}
	}

	public bool Sorted => _sorted;

	public ITreeTableNode Root
	{
		get
		{
			return _root;
		}
		set
		{
			_root = value;
		}
	}

	public ITreeTableNode this[int index]
	{
		get
		{
			return GetEntryAt(index);
		}
		set
		{
			SetNodeAt(index, value);
		}
	}

	public bool IsInitializing => inAddMode;

	public bool IsReadOnly => false;

	object IList.this[int index]
	{
		get
		{
			return this[index];
		}
		set
		{
			this[index] = (ITreeTableNode)value;
		}
	}

	public bool IsFixedSize => false;

	public bool IsSynchronized => false;

	int ICollection.Count => GetCount();

	public object SyncRoot => null;

	static TreeTable()
	{
		__sorted = BitVector32.CreateSection(1);
		__inAddMode = BitVector32.CreateSection(1, __sorted);
		__reserved1 = BitVector32.CreateSection(1, __inAddMode);
		__reserved2 = BitVector32.CreateSection(1, __reserved1);
		__reserved3 = BitVector32.CreateSection(1, __reserved2);
		__reserved4 = BitVector32.CreateSection(1, __reserved3);
		__reservedShort = BitVector32.CreateSection(4095, __reserved4);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			{
				TreeTableEnumerator treeTableEnumerator = GetEnumerator();
				try
				{
					while (treeTableEnumerator.MoveNext())
					{
						ITreeTableEntry current = treeTableEnumerator.Current;
						current.Dispose();
					}
				}
				finally
				{
					IDisposable disposable = treeTableEnumerator as IDisposable;
					if (disposable != null)
					{
						disposable.Dispose();
					}
				}
			}
			_root = null;
			_sorted = false;
			_tag = null;
			inAddMode = false;
			lastAddBranch = null;
			comparer = null;
			lastIndexLeaf = null;
			lastIndex = -1;
		}
		base.Dispose(disposing);
	}

	public TreeTable(bool sorted)
	{
		_sorted = sorted;
		inAddMode = false;
	}

	private void LeftRotate(ITreeTableBranch x, bool inAddMode)
	{
		if (!(x.Right is ITreeTableBranch treeTableBranch))
		{
			return;
		}
		_ = x.Parent;
		ITreeTableNode left = treeTableBranch.Left;
		treeTableBranch.SetLeft(TreeTableEmpty.Empty, inAddMode, Sorted);
		x.SetRight(left, inAddMode);
		if (x.Parent != null)
		{
			if (object.ReferenceEquals(x, x.Parent.Left))
			{
				x.Parent.SetLeft(treeTableBranch, inAddMode, Sorted);
			}
			else
			{
				x.Parent.SetRight(treeTableBranch, inAddMode);
			}
		}
		else
		{
			_root = treeTableBranch;
		}
		treeTableBranch.SetLeft(x, inAddMode, Sorted);
	}

	private void RightRotate(ITreeTableBranch x, bool inAddMode)
	{
		if (!(x.Left is ITreeTableBranch { Right: var right } treeTableBranch))
		{
			return;
		}
		treeTableBranch.SetRight(TreeTableEmpty.Empty, inAddMode);
		x.SetLeft(right, inAddMode, Sorted);
		if (x.Parent != null)
		{
			if (x == x.Parent.Right)
			{
				x.Parent.SetRight(treeTableBranch, inAddMode);
			}
			else
			{
				x.Parent.SetLeft(treeTableBranch, inAddMode, Sorted);
			}
		}
		else
		{
			_root = treeTableBranch;
		}
		treeTableBranch.SetRight(x, inAddMode);
	}

	private void InsertFixup(ITreeTableBranch x, bool inAddMode)
	{
		while (!object.ReferenceEquals(x, _root) && x.Parent.Color == TreeTableNodeColor.Red && x.Parent.Parent != null)
		{
			if (x.Parent == x.Parent.Parent.Left)
			{
				if (x.Parent.Parent.Right is ITreeTableBranch { Color: TreeTableNodeColor.Red } treeTableBranch)
				{
					x.Parent.Color = TreeTableNodeColor.Black;
					treeTableBranch.Color = TreeTableNodeColor.Black;
					x.Parent.Parent.Color = TreeTableNodeColor.Red;
					x = x.Parent.Parent;
					continue;
				}
				if (x == x.Parent.Right)
				{
					x = x.Parent;
					LeftRotate(x, inAddMode);
				}
				x.Parent.Color = TreeTableNodeColor.Black;
				x.Parent.Parent.Color = TreeTableNodeColor.Red;
				RightRotate(x.Parent.Parent, inAddMode);
			}
			else if (x.Parent.Parent.Left is ITreeTableBranch { Color: TreeTableNodeColor.Red } treeTableBranch2)
			{
				x.Parent.Color = TreeTableNodeColor.Black;
				treeTableBranch2.Color = TreeTableNodeColor.Black;
				x.Parent.Parent.Color = TreeTableNodeColor.Red;
				x = x.Parent.Parent;
			}
			else
			{
				if (x == x.Parent.Left)
				{
					x = x.Parent;
					RightRotate(x, inAddMode);
				}
				x.Parent.Color = TreeTableNodeColor.Black;
				x.Parent.Parent.Color = TreeTableNodeColor.Red;
				LeftRotate(x.Parent.Parent, inAddMode);
			}
		}
		((ITreeTableBranch)Root).Color = TreeTableNodeColor.Black;
	}

	private void DeleteFixup(ITreeTableBranch x, bool isLeft)
	{
		bool flag = false;
		while (!object.ReferenceEquals(x, _root) && x.Color == TreeTableNodeColor.Black)
		{
			if (isLeft)
			{
				ITreeTableBranch treeTableBranch = x.Parent.Right as ITreeTableBranch;
				if (treeTableBranch != null && treeTableBranch.Color == TreeTableNodeColor.Red)
				{
					treeTableBranch.Color = TreeTableNodeColor.Black;
					x.Parent.Color = TreeTableNodeColor.Black;
					LeftRotate(x.Parent, flag);
					treeTableBranch = x.Parent.Right as ITreeTableBranch;
				}
				if (treeTableBranch == null)
				{
					return;
				}
				if (treeTableBranch.Color == TreeTableNodeColor.Black && (treeTableBranch.Left.IsEntry() || treeTableBranch.GetLeftB().Color == TreeTableNodeColor.Black) && (treeTableBranch.Right.IsEntry() || treeTableBranch.GetRightB().Color == TreeTableNodeColor.Black))
				{
					treeTableBranch.Color = TreeTableNodeColor.Red;
					if (x.Color == TreeTableNodeColor.Red)
					{
						x.Color = TreeTableNodeColor.Black;
						return;
					}
					isLeft = x.Parent.Left == x;
					x = x.Parent;
					continue;
				}
				if (treeTableBranch.Color == TreeTableNodeColor.Black && !treeTableBranch.Right.IsEntry() && treeTableBranch.GetRightB().Color == TreeTableNodeColor.Red)
				{
					LeftRotate(x.Parent, flag);
					TreeTableNodeColor color = treeTableBranch.Color;
					treeTableBranch.Color = x.Parent.Color;
					x.Parent.Color = color;
				}
				else if (treeTableBranch.Color == TreeTableNodeColor.Black && !treeTableBranch.Left.IsEntry() && treeTableBranch.GetLeftB().Color == TreeTableNodeColor.Red && (treeTableBranch.Right.IsEntry() || treeTableBranch.GetRightB().Color == TreeTableNodeColor.Black))
				{
					RightRotate(treeTableBranch, flag);
					treeTableBranch.Parent.Color = TreeTableNodeColor.Black;
					treeTableBranch.Color = TreeTableNodeColor.Red;
					LeftRotate(x.Parent, flag);
					TreeTableNodeColor color2 = treeTableBranch.Color;
					treeTableBranch.Color = x.Parent.Color;
					x.Parent.Color = color2;
				}
				return;
			}
			ITreeTableBranch treeTableBranch2 = x.Parent.Left as ITreeTableBranch;
			if (treeTableBranch2 != null && treeTableBranch2.Color == TreeTableNodeColor.Red)
			{
				treeTableBranch2.Color = TreeTableNodeColor.Black;
				x.Parent.Color = TreeTableNodeColor.Red;
				RightRotate(x.Parent, flag);
				treeTableBranch2 = x.Parent.Left as ITreeTableBranch;
			}
			if (treeTableBranch2 == null)
			{
				return;
			}
			if (treeTableBranch2.Color == TreeTableNodeColor.Black && (treeTableBranch2.Left.IsEntry() || treeTableBranch2.GetLeftB().Color == TreeTableNodeColor.Black) && (treeTableBranch2.Right.IsEntry() || treeTableBranch2.GetRightB().Color == TreeTableNodeColor.Black))
			{
				treeTableBranch2.Color = TreeTableNodeColor.Red;
				if (x.Color == TreeTableNodeColor.Red)
				{
					x.Color = TreeTableNodeColor.Black;
					return;
				}
				if (x.Parent != null)
				{
					isLeft = x.Parent.Left == x;
					x = x.Parent;
				}
				continue;
			}
			if (treeTableBranch2.Color == TreeTableNodeColor.Black && !treeTableBranch2.Right.IsEntry() && treeTableBranch2.GetRightB().Color == TreeTableNodeColor.Red)
			{
				ITreeTableBranch parent = x.Parent;
				LeftRotate(parent, flag);
				TreeTableNodeColor color3 = treeTableBranch2.Color;
				treeTableBranch2.Color = parent.Color;
				parent.Color = color3;
				return;
			}
			if (treeTableBranch2.Color != TreeTableNodeColor.Black || treeTableBranch2.Left.IsEntry() || treeTableBranch2.GetLeftB().Color != TreeTableNodeColor.Red || (!treeTableBranch2.Right.IsEntry() && treeTableBranch2.GetRightB().Color != TreeTableNodeColor.Black))
			{
				continue;
			}
			ITreeTableBranch parent2 = treeTableBranch2.Parent;
			ITreeTableBranch parent3 = x.Parent;
			RightRotate(treeTableBranch2, flag);
			parent2.Color = TreeTableNodeColor.Black;
			treeTableBranch2.Color = TreeTableNodeColor.Red;
			LeftRotate(x.Parent, flag);
			TreeTableNodeColor color4 = treeTableBranch2.Color;
			treeTableBranch2.Color = parent3.Color;
			parent3.Color = color4;
			return;
		}
		x.Color = TreeTableNodeColor.Black;
	}

	private void SetNodeAt(int index, ITreeTableNode value)
	{
		ITreeTableEntry entryAt = GetEntryAt(index);
		if (object.ReferenceEquals(entryAt, _root))
		{
			_root = value;
		}
		else
		{
			ITreeTableBranch parent = entryAt.Parent;
			ReplaceNode(parent, entryAt, value, inAddMode: false);
		}
		lastIndex = -1;
	}

	private ITreeTableEntry GetEntryAt(int index)
	{
		int count = GetCount();
		if (index < 0 || index >= count)
		{
			throw new ArgumentOutOfRangeException("index", index, "must be between 0 and " + (count - 1));
		}
		if (_root == null)
		{
			return (ITreeTableEntry)_root;
		}
		if (lastIndex != -1)
		{
			if (index == lastIndex)
			{
				return lastIndexLeaf;
			}
			if (index == lastIndex + 1)
			{
				lastIndex++;
				lastIndexLeaf = GetNextEntry(lastIndexLeaf);
				return lastIndexLeaf;
			}
		}
		ITreeTableBranch treeTableBranch = null;
		ITreeTableNode treeTableNode = _root;
		int num = 0;
		while (!treeTableNode.IsEntry())
		{
			treeTableBranch = (ITreeTableBranch)treeTableNode;
			int count2 = treeTableBranch.Left.GetCount();
			if (index < num + count2)
			{
				treeTableNode = treeTableBranch.Left;
				continue;
			}
			num += treeTableBranch.Left.GetCount();
			treeTableNode = treeTableBranch.Right;
		}
		lastIndexLeaf = (ITreeTableEntry)treeTableNode;
		lastIndex = index;
		return lastIndexLeaf;
	}

	public ITreeTableEntry GetPreviousEntry(ITreeTableEntry current)
	{
		ITreeTableBranch treeTableBranch = current.Parent;
		ITreeTableNode treeTableNode;
		if (treeTableBranch == null)
		{
			treeTableNode = null;
			return null;
		}
		if (object.ReferenceEquals(current, treeTableBranch.Right))
		{
			treeTableNode = treeTableBranch.Left;
		}
		else
		{
			ITreeTableBranch parent = treeTableBranch.Parent;
			if (parent == null)
			{
				return null;
			}
			while (object.ReferenceEquals(parent.Left, treeTableBranch))
			{
				treeTableBranch = parent;
				parent = parent.Parent;
				if (parent == null)
				{
					return null;
				}
			}
			treeTableNode = parent.Left;
		}
		while (!treeTableNode.IsEntry())
		{
			treeTableNode = ((ITreeTableBranch)treeTableNode).Right;
		}
		return treeTableNode as ITreeTableEntry;
	}

	public ITreeTableEntry GetNextEntry(ITreeTableEntry current)
	{
		ITreeTableBranch treeTableBranch = current.Parent;
		ITreeTableNode treeTableNode;
		if (treeTableBranch == null)
		{
			treeTableNode = null;
			return null;
		}
		if (object.ReferenceEquals(current, treeTableBranch.Left))
		{
			treeTableNode = treeTableBranch.Right;
		}
		else
		{
			ITreeTableBranch parent = treeTableBranch.Parent;
			if (parent == null)
			{
				return null;
			}
			while (object.ReferenceEquals(parent.Right, treeTableBranch))
			{
				treeTableBranch = parent;
				parent = parent.Parent;
				if (parent == null)
				{
					return null;
				}
			}
			treeTableNode = parent.Right;
		}
		while (!treeTableNode.IsEntry())
		{
			treeTableNode = ((ITreeTableBranch)treeTableNode).Left;
		}
		return treeTableNode as ITreeTableEntry;
	}

	private ITreeTableEntry GetMostLeftEntry(ITreeTableBranch parent)
	{
		ITreeTableNode treeTableNode;
		if (parent == null)
		{
			treeTableNode = null;
			return null;
		}
		treeTableNode = parent.Left;
		while (!treeTableNode.IsEntry())
		{
			treeTableNode = ((ITreeTableBranch)treeTableNode).Left;
		}
		return treeTableNode as ITreeTableEntry;
	}

	public void Insert(int index, ITreeTableNode value)
	{
		if (Sorted)
		{
			throw new InvalidOperationException("This tree is sorted - use AddSorted instead.");
		}
		int count = GetCount();
		if (index < 0 || index > count)
		{
			throw new ArgumentOutOfRangeException("index", index, "must be between 0 and " + count);
		}
		if (index == count)
		{
			Add(value);
			return;
		}
		CacheLastFoundEntry(null, null, highestSmallerValue: false);
		if (_root == null)
		{
			_root = value;
			return;
		}
		ITreeTableEntry treeTableEntry = null;
		if (lastIndex != -1)
		{
			if (index == lastIndex)
			{
				treeTableEntry = lastIndexLeaf;
			}
			else if (index == lastIndex + 1)
			{
				treeTableEntry = GetNextEntry(lastIndexLeaf);
			}
		}
		if (treeTableEntry == null)
		{
			treeTableEntry = GetEntryAt(index);
		}
		ITreeTableBranch parent = treeTableEntry.Parent;
		ITreeTableBranch treeTableBranch = treeTableEntry.CreateBranch(this);
		treeTableBranch.SetLeft(value, inAddMode: false, Sorted);
		treeTableBranch.Right = treeTableEntry;
		if (parent == null)
		{
			_root = treeTableBranch;
		}
		else
		{
			ReplaceNode(parent, treeTableEntry, treeTableBranch, inAddMode: false);
		}
		InsertFixup(treeTableBranch, inAddMode);
		if (value.IsEntry())
		{
			lastIndexLeaf = (ITreeTableEntry)value;
			lastIndex = index;
		}
		else
		{
			lastIndexLeaf = null;
			lastIndex = -1;
		}
	}

	public void Remove(ITreeTableNode value)
	{
		_Remove(value, resetParent: true);
	}

	public void ResetCache()
	{
		lastAddBranch = null;
		lastIndex = -1;
		lastIndexLeaf = null;
	}

	internal void _Remove(ITreeTableNode value, bool resetParent)
	{
		if (value == null)
		{
			return;
		}
		if (!Contains(value))
		{
			throw new ArgumentException("is not a node in this tree", "value");
		}
		CacheLastFoundEntry(null, null, highestSmallerValue: false);
		lastAddBranch = null;
		lastIndex = -1;
		lastIndexLeaf = null;
		if (object.ReferenceEquals(value, _root))
		{
			_root = null;
			if (resetParent)
			{
				value.Parent = null;
			}
			return;
		}
		ITreeTableBranch parent = value.Parent;
		ITreeTableNode sisterNode = GetSisterNode(parent, value);
		if (object.ReferenceEquals(parent, _root))
		{
			_root = sisterNode;
			_root.Parent = null;
		}
		else
		{
			ITreeTableBranch parent2 = parent.Parent;
			bool isLeft = parent2.Left == parent;
			ReplaceNode(parent2, parent, sisterNode, inAddMode: false);
			if (parent.Color == TreeTableNodeColor.Black)
			{
				parent.Parent = parent2;
				DeleteFixup(parent, isLeft);
			}
		}
		if (resetParent)
		{
			value.Parent = null;
		}
	}

	private ITreeTableNode GetSisterNode(ITreeTableBranch leafsParent, ITreeTableNode node)
	{
		if (object.ReferenceEquals(leafsParent.Left, node))
		{
			return leafsParent.Right;
		}
		return leafsParent.Left;
	}

	private void ReplaceNode(ITreeTableBranch branch, ITreeTableNode oldNode, ITreeTableNode newNode, bool inAddMode)
	{
		if (object.ReferenceEquals(branch.Left, oldNode))
		{
			branch.SetLeft(newNode, inAddMode, Sorted);
		}
		else
		{
			branch.SetRight(newNode, inAddMode);
		}
	}

	public bool Contains(ITreeTableNode value)
	{
		if (value == null || _root == null)
		{
			return false;
		}
		while (value.Parent != null)
		{
			value = value.Parent;
		}
		return object.ReferenceEquals(value, _root);
	}

	public int IndexOf(ITreeTableNode value)
	{
		if (!Contains(value))
		{
			return -1;
		}
		return value.GetPosition();
	}

	public int Add(ITreeTableNode value)
	{
		CacheLastFoundEntry(null, null, highestSmallerValue: false);
		lastIndex = -1;
		if (Sorted && !inAddMode)
		{
			return AddSorted(value);
		}
		if (_root == null)
		{
			_root = value;
			return 0;
		}
		ITreeTableBranch treeTableBranch = null;
		ITreeTableNode treeTableNode = ((lastAddBranch == null) ? _root : lastAddBranch);
		value.GetCount();
		while (!treeTableNode.IsEntry())
		{
			treeTableBranch = (ITreeTableBranch)treeTableNode;
			treeTableNode = treeTableBranch.Right;
		}
		ITreeTableEntry treeTableEntry = (ITreeTableEntry)treeTableNode;
		ITreeTableBranch treeTableBranch2 = treeTableEntry.CreateBranch(this);
		treeTableBranch2.SetLeft(treeTableEntry, inAddMode, Sorted);
		treeTableBranch2.SetRight(value, inAddMode);
		if (treeTableBranch == null)
		{
			_root = treeTableBranch2;
		}
		else
		{
			ReplaceNode(treeTableBranch, treeTableNode, treeTableBranch2, inAddMode);
		}
		InsertFixup(treeTableBranch2, inAddMode);
		lastAddBranch = treeTableBranch2;
		if (inAddMode)
		{
			return -1;
		}
		return _root.GetCount() - 1;
	}

	public virtual void BeginInit()
	{
		inAddMode = true;
	}

	public virtual void EndInit()
	{
		inAddMode = false;
		if (_root is TreeTableBranch { _entryCount: not -1 } treeTableBranch)
		{
			treeTableBranch._entryCount = -1;
		}
	}

	public int AddSorted(ITreeTableNode value)
	{
		if (!Sorted)
		{
			throw new InvalidOperationException("This tree is not sorted.");
		}
		if (inAddMode)
		{
			return Add(value);
		}
		CacheLastFoundEntry(null, null, highestSmallerValue: false);
		if (_root == null)
		{
			_root = value;
			return 0;
		}
		bool flag = false;
		IComparer comparer = Comparer;
		ITreeTableBranch treeTableBranch = null;
		ITreeTableNode treeTableNode = _root;
		int num = 0;
		int num2 = 0;
		while (!treeTableNode.IsEntry())
		{
			treeTableBranch = (ITreeTableBranch)treeTableNode;
			if (comparer != null)
			{
				num2 = comparer.Compare(value.GetMinimum(), treeTableBranch.Right.GetMinimum());
			}
			else
			{
				if (!(value.GetMinimum() is IComparable))
				{
					throw new InvalidOperationException("No Comparer specified.");
				}
				num2 = ((IComparable)value.GetMinimum()).CompareTo(treeTableBranch.Right.GetMinimum());
			}
			if (num2 <= 0)
			{
				treeTableNode = treeTableBranch.Left;
				continue;
			}
			num += treeTableBranch.Left.GetCount();
			treeTableNode = treeTableBranch.Right;
		}
		ITreeTableEntry treeTableEntry = (ITreeTableEntry)treeTableNode;
		ITreeTableBranch treeTableBranch2 = treeTableEntry.CreateBranch(this);
		if (comparer != null)
		{
			num2 = comparer.Compare(value.GetMinimum(), treeTableEntry.GetSortKey());
		}
		else if (value.GetMinimum() is IComparable)
		{
			num2 = ((IComparable)value.GetMinimum()).CompareTo(treeTableEntry.GetSortKey());
		}
		if (num2 <= 0)
		{
			treeTableBranch2.SetLeft(value, inAddMode: false, Sorted);
			treeTableBranch2.Right = treeTableEntry;
		}
		else
		{
			treeTableBranch2.SetLeft(treeTableEntry, inAddMode: false, Sorted);
			num++;
			treeTableBranch2.Right = value;
		}
		if (treeTableBranch == null)
		{
			_root = treeTableBranch2;
		}
		else
		{
			ReplaceNode(treeTableBranch, treeTableEntry, treeTableBranch2, flag);
		}
		InsertFixup(treeTableBranch2, flag);
		return num;
	}

	public ITreeTableEntry AddIfNotExists(object key, ITreeTableEntry value)
	{
		if (!Sorted)
		{
			throw new InvalidOperationException("This tree is not sorted.");
		}
		CacheLastFoundEntry(null, null, highestSmallerValue: false);
		if (_root == null)
		{
			_root = value;
			return value;
		}
		ITreeTableBranch treeTableBranch = null;
		ITreeTableNode treeTableNode = _root;
		int num = 0;
		int num2 = 0;
		IComparer comparer = Comparer;
		bool flag = false;
		while (!treeTableNode.IsEntry())
		{
			treeTableBranch = (ITreeTableBranch)treeTableNode;
			if (comparer != null)
			{
				num2 = comparer.Compare(key, treeTableBranch.Right.GetMinimum());
			}
			else
			{
				if (!(key is IComparable))
				{
					throw new InvalidOperationException("No Comparer specified.");
				}
				num2 = ((IComparable)key).CompareTo(treeTableBranch.Right.GetMinimum());
			}
			if (num2 == 0)
			{
				treeTableNode = treeTableBranch.Right;
				while (!treeTableNode.IsEntry())
				{
					treeTableNode = ((ITreeTableBranch)treeTableNode).Left;
				}
				return (ITreeTableEntry)treeTableNode;
			}
			if (num2 < 0)
			{
				treeTableNode = treeTableBranch.Left;
				continue;
			}
			num += treeTableBranch.Left.GetCount();
			treeTableNode = treeTableBranch.Right;
		}
		ITreeTableEntry treeTableEntry = (ITreeTableEntry)treeTableNode;
		if (comparer != null)
		{
			num2 = comparer.Compare(key, treeTableEntry.GetSortKey());
		}
		else if (value.GetMinimum() is IComparable)
		{
			num2 = ((IComparable)key).CompareTo(treeTableEntry.GetSortKey());
		}
		if (num2 == 0)
		{
			return treeTableEntry;
		}
		ITreeTableBranch treeTableBranch2 = treeTableEntry.CreateBranch(this);
		if (num2 < 0)
		{
			treeTableBranch2.SetLeft(value, inAddMode: false, Sorted);
			treeTableBranch2.Right = treeTableEntry;
		}
		else if (num2 > 0)
		{
			treeTableBranch2.SetLeft(treeTableEntry, inAddMode: false, Sorted);
			num++;
			treeTableBranch2.Right = value;
		}
		if (treeTableBranch == null)
		{
			_root = treeTableBranch2;
		}
		else
		{
			ReplaceNode(treeTableBranch, treeTableEntry, treeTableBranch2, inAddMode: false);
		}
		InsertFixup(treeTableBranch2, flag);
		return value;
	}

	public int IndexOfKey(object key)
	{
		return FindKey(key)?.GetPosition() ?? (-1);
	}

	public ITreeTableEntry FindKey(object key)
	{
		return _FindKey(key, highestSmallerValue: false);
	}

	public ITreeTableEntry FindHighestSmallerOrEqualKey(object key)
	{
		return _FindKey(key, highestSmallerValue: true);
	}

	private ITreeTableEntry CacheLastFoundEntry(ITreeTableEntry entry, object key, bool highestSmallerValue)
	{
		lastIndex = -1;
		lastFoundEntry = entry;
		lastFoundEntryKey = key;
		lastFoundEntryHighestSmallerValue = highestSmallerValue;
		return lastFoundEntry;
	}

	private ITreeTableEntry _FindKey(object key, bool highestSmallerValue)
	{
		if (!Sorted)
		{
			throw new InvalidOperationException("This tree is not sorted.");
		}
		if (_root == null)
		{
			return null;
		}
		IComparer comparer = Comparer;
		int num = 0;
		if (lastFoundEntry != null && lastFoundEntryKey != null && key != null && lastFoundEntryHighestSmallerValue == highestSmallerValue)
		{
			if (comparer != null)
			{
				num = comparer.Compare(key, lastFoundEntry.GetMinimum());
			}
			else if (key is IComparable)
			{
				num = ((IComparable)key).CompareTo(lastFoundEntry.GetMinimum());
			}
			if (num == 0)
			{
				return lastFoundEntry;
			}
		}
		ITreeTableBranch treeTableBranch = null;
		ITreeTableNode treeTableNode = _root;
		int num2 = 0;
		ITreeTableNode treeTableNode2 = null;
		while (!treeTableNode.IsEntry())
		{
			treeTableBranch = (ITreeTableBranch)treeTableNode;
			if (comparer != null)
			{
				num = comparer.Compare(key, treeTableBranch.Right.GetMinimum());
			}
			else
			{
				if (!(key is IComparable))
				{
					throw new InvalidOperationException("No Comparer specified.");
				}
				num = ((IComparable)key).CompareTo(treeTableBranch.Right.GetMinimum());
			}
			if (num == 0)
			{
				treeTableNode = treeTableBranch.Right;
				while (!treeTableNode.IsEntry())
				{
					treeTableNode = ((ITreeTableBranch)treeTableNode).Left;
				}
				return CacheLastFoundEntry((ITreeTableEntry)treeTableNode, key, highestSmallerValue);
			}
			if (num < 0)
			{
				treeTableNode = treeTableBranch.Left;
				treeTableNode2 = treeTableBranch.Left;
			}
			else
			{
				num2 += treeTableBranch.Left.GetCount();
				treeTableNode = treeTableBranch.Right;
			}
		}
		ITreeTableEntry treeTableEntry = (ITreeTableEntry)treeTableNode;
		if (comparer != null)
		{
			num = comparer.Compare(key, treeTableEntry.GetSortKey());
		}
		else if (key is IComparable)
		{
			num = ((IComparable)key).CompareTo(treeTableEntry.GetSortKey());
		}
		if (num == 0)
		{
			return CacheLastFoundEntry(treeTableEntry, key, highestSmallerValue);
		}
		if (highestSmallerValue)
		{
			if (num < 0)
			{
				return CacheLastFoundEntry(treeTableEntry, key, highestSmallerValue);
			}
			if (treeTableNode2 != null)
			{
				treeTableNode = treeTableNode2;
				while (!treeTableNode.IsEntry())
				{
					treeTableNode = ((ITreeTableBranch)treeTableNode).Right;
				}
				return CacheLastFoundEntry((ITreeTableEntry)treeTableNode, key, highestSmallerValue);
			}
		}
		lastFoundEntry = null;
		return null;
	}

	public void RemoveAt(int index)
	{
		Remove(this[index]);
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, (ITreeTableNode)value);
	}

	void IList.Remove(object value)
	{
		Remove((ITreeTableNode)value);
	}

	bool IList.Contains(object value)
	{
		return Contains((ITreeTableNode)value);
	}

	public void Clear()
	{
		_root = null;
		lastAddBranch = null;
		lastIndex = -1;
		lastIndexLeaf = null;
		CacheLastFoundEntry(null, null, highestSmallerValue: false);
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((ITreeTableNode)value);
	}

	int IList.Add(object value)
	{
		return Add((ITreeTableNode)value);
	}

	public int GetCount()
	{
		if (_root != null)
		{
			return _root.GetCount();
		}
		return 0;
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((ITreeTableNode[])array, index);
	}

	public void CopyTo(ITreeTableNode[] array, int index)
	{
		int count = GetCount();
		for (int i = 0; i < count; i++)
		{
			array[i + index] = this[i];
		}
		throw new NotImplementedException();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	public TreeTableEnumerator GetEnumerator()
	{
		return new TreeTableEnumerator(this);
	}
}
