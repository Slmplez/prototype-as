using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

public class GridColHiddenCollectionEnumerator : IEnumerator
{
	private int _cursor = -1;

	private int _next = -1;

	private GridColHiddenCollection _coll;

	object IEnumerator.Current => Current;

	public GridColHidden Current => _coll[_cursor];

	public GridColHiddenCollectionEnumerator(GridColHiddenCollection collection)
	{
		_coll = collection;
		_next = ((_coll.Count <= 0) ? (-1) : 0);
	}

	public virtual void Reset()
	{
		_cursor = -1;
		_next = ((_coll.Count <= 0) ? (-1) : 0);
	}

	public bool MoveNext()
	{
		if (_next == -1 || _next >= _coll.Count)
		{
			return false;
		}
		_cursor = _next;
		_next++;
		if (_next >= _coll.Count)
		{
			_next = -1;
		}
		return _cursor != -1;
	}
}
