using System.Collections;

namespace Etas.Base.UI.Framework;

internal class IndexSorter : IComparer
{
	public int Compare(object a, object b)
	{
		DictionaryEntry dictionaryEntry = (DictionaryEntry)a;
		DictionaryEntry dictionaryEntry2 = (DictionaryEntry)b;
		int num = (int)dictionaryEntry.Value;
		int num2 = (int)dictionaryEntry2.Value;
		if (num > num2)
		{
			return 1;
		}
		if (num < num2)
		{
			return -1;
		}
		return 0;
	}
}
