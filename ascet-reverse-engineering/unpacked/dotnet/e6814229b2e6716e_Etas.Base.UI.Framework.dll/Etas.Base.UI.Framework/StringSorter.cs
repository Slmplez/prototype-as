using System;
using System.Collections;

namespace Etas.Base.UI.Framework;

internal class StringSorter : IComparer
{
	private bool _ascending;

	public bool Ascending
	{
		get
		{
			return _ascending;
		}
		set
		{
			_ascending = value;
		}
	}

	public StringSorter()
	{
		_ascending = true;
	}

	public int Compare(object x, object y)
	{
		int num = 0;
		int num2 = Convert.ToInt32(x);
		int num3 = Convert.ToInt32(y);
		num = ((num2 > num3) ? 1 : ((num2 < num3) ? (-1) : 0));
		if (_ascending)
		{
			return num;
		}
		return -num;
	}
}
