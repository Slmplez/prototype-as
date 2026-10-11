using System;

namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTableEntry : ITreeTableNode, IDisposable
{
	object Value { get; set; }

	object GetSortKey();

	ITreeTableBranch CreateBranch(TreeTable tree);
}
