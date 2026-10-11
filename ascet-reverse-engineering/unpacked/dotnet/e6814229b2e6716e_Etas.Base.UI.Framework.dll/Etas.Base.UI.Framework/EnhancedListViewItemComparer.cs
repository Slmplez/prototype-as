using System.Collections;
using System.Windows.Forms;

namespace Etas.Base.UI.Framework;

internal class EnhancedListViewItemComparer : IComparer
{
	private int _col;

	private bool _ascending;

	public EnhancedListViewItemComparer()
	{
		_col = 0;
		_ascending = true;
	}

	public EnhancedListViewItemComparer(int column)
	{
		_col = column;
		_ascending = true;
	}

	public EnhancedListViewItemComparer(int column, bool ascending)
	{
		_col = column;
		_ascending = ascending;
	}

	public virtual int Compare(object x, object y)
	{
		string text = ((ListViewItem)x).SubItems[_col].Text;
		string text2 = ((ListViewItem)y).SubItems[_col].Text;
		if (_ascending)
		{
			return string.Compare(text, text2);
		}
		return -string.Compare(text, text2);
	}
}
