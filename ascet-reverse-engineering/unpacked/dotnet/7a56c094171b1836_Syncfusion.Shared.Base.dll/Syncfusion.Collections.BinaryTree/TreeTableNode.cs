using Syncfusion.ComponentModel;

namespace Syncfusion.Collections.BinaryTree;

public abstract class TreeTableNode : Disposable, ITreeTableNode
{
	private ITreeTableBranch _parent;

	internal TreeTable _tree;

	internal static readonly object emptyMin = new object();

	public TreeTable Tree
	{
		get
		{
			return _tree;
		}
		set
		{
			_tree = value;
		}
	}

	public ITreeTableBranch Parent
	{
		get
		{
			return _parent;
		}
		set
		{
			_parent = value;
		}
	}

	public virtual int GetPosition()
	{
		if (Parent == null)
		{
			return 0;
		}
		return Parent.GetEntryPositionOfChild(this);
	}

	public virtual object GetMinimum()
	{
		return emptyMin;
	}

	public virtual bool IsEmpty()
	{
		return GetCount() == 0;
	}

	public abstract bool IsEntry();

	public abstract int GetCount();

	public int GetLevel()
	{
		int result = 0;
		if (Parent != null)
		{
			result = Parent.GetLevel() + 1;
		}
		return result;
	}

	public virtual string GetNodeInfo()
	{
		string text = "_";
		if (Parent != null)
		{
			text = ((!object.ReferenceEquals(Parent.Left, this)) ? "R" : "L");
		}
		return GetLevel() + "," + text + "," + GetPosition() + ", " + GetCount();
	}

	public override string ToString()
	{
		return GetType().Name + "{" + GetNodeInfo() + "}";
	}

	public virtual void InvalidateCounterBottomUp(bool notifyParentRecordSource)
	{
	}

	public virtual void InvalidateSummariesBottomUp(bool notifyParentRecordSource)
	{
	}
}
