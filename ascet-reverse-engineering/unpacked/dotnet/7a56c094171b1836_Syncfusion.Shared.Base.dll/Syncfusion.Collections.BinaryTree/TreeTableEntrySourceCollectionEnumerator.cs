using System.Collections;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableEntrySourceCollectionEnumerator : IEnumerator
{
	private TreeTableEnumerator _inner;

	object IEnumerator.Current => Current;

	public ITreeTableEntrySource Current => (ITreeTableEntrySource)_inner.Current.Value;

	public TreeTableEntrySourceCollectionEnumerator(TreeTableEntrySourceCollection collection)
	{
		_inner = new TreeTableEnumerator(collection._inner);
	}

	public virtual void Reset()
	{
		_inner.Reset();
	}

	public bool MoveNext()
	{
		return _inner.MoveNext();
	}
}
