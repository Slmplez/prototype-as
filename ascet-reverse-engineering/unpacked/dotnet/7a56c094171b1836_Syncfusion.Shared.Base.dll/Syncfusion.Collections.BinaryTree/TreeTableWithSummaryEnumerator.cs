namespace Syncfusion.Collections.BinaryTree;

public class TreeTableWithSummaryEnumerator : TreeTableEnumerator
{
	public new TreeTableWithSummaryEntry Current => (TreeTableWithSummaryEntry)base.Current;

	public TreeTableWithSummaryEnumerator(TreeTable tree)
		: base(tree)
	{
	}
}
