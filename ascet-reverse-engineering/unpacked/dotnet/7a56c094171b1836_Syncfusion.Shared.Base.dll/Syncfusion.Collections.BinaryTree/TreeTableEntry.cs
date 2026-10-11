using System;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableEntry : TreeTableNode, ITreeTableEntry, ITreeTableNode, IDisposable
{
	private object _value;

	public virtual object Value
	{
		get
		{
			return _value;
		}
		set
		{
			_value = value;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (_value is IDisposable)
			{
				((IDisposable)_value).Dispose();
			}
			_value = null;
		}
		base.Dispose(disposing);
	}

	public virtual object GetSortKey()
	{
		return Value;
	}

	public override object GetMinimum()
	{
		return GetSortKey();
	}

	public override int GetCount()
	{
		return 1;
	}

	public virtual ITreeTableBranch CreateBranch(TreeTable tree)
	{
		return new TreeTableBranch(tree);
	}

	public override string GetNodeInfo()
	{
		return base.GetNodeInfo() + ", " + ((Value != null) ? Value.ToString() : "null");
	}

	public override bool IsEntry()
	{
		return true;
	}
}
