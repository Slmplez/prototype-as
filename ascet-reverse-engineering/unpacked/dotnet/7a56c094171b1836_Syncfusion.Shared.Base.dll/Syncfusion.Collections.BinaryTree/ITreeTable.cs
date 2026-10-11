using System;
using System.Collections;

namespace Syncfusion.Collections.BinaryTree;

public interface ITreeTable : IList, ICollection, IEnumerable, IDisposable
{
	bool Sorted { get; }

	IComparer Comparer { get; set; }

	ITreeTableNode Root { get; }

	bool IsInitializing { get; }

	void BeginInit();

	void EndInit();

	ITreeTableEntry GetNextEntry(ITreeTableEntry current);

	ITreeTableEntry GetPreviousEntry(ITreeTableEntry current);
}
