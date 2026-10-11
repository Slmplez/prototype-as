using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Collections;

[TypeConverter(typeof(IntListConverter))]
[DocumentationExclude]
public class IntListDesignTime : IntList
{
	public IntListDesignTime()
	{
	}

	public IntListDesignTime(int[] items)
	{
		foreach (int num in items)
		{
			Add(num);
		}
	}
}
