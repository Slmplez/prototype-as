namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithCounterEnumerator : TreeTableEnumerator
{
	public new TreeTableWithCounterEntry Current => (TreeTableWithCounterEntry)base.Current;

	public TreeTableWithCounterEnumerator(TreeTable tree)
		: base(tree)
	{
	}
}
