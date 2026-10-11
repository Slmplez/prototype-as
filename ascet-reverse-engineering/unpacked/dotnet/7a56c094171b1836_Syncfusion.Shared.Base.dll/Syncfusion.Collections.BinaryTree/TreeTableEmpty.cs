namespace Syncfusion.Collections.BinaryTree;

internal class TreeTableEmpty : TreeTableNode
{
	public static readonly TreeTableEmpty Empty = new TreeTableEmpty();

	public override int GetCount()
	{
		return 0;
	}

	public override bool IsEntry()
	{
		return true;
	}

	public override string GetNodeInfo()
	{
		return "Empty";
	}
}
