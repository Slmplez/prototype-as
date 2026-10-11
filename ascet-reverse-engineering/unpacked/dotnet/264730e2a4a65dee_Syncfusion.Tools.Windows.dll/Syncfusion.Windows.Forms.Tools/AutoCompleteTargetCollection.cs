using System;
using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class AutoCompleteTargetCollection : CollectionBase
{
	[DocumentationExclude]
	public AutoCompleteTarget this[int index]
	{
		get
		{
			return base.List[index] as AutoCompleteTarget;
		}
		set
		{
			base.List[index] = value;
		}
	}

	[DocumentationExclude]
	public int Add(AutoCompleteTarget column)
	{
		return base.List.Add(column);
	}

	[DocumentationExclude]
	public void AddRange(AutoCompleteTarget[] array)
	{
		foreach (AutoCompleteTarget column in array)
		{
			Add(column);
		}
	}

	[DocumentationExclude]
	public void Remove(AutoCompleteTarget column)
	{
		if (base.List.Contains(column))
		{
			base.List.Remove(column);
		}
	}

	[DocumentationExclude]
	public bool Contains(AutoCompleteTarget column)
	{
		return base.List.Contains(column);
	}

	[DocumentationExclude]
	public int IndexOf(AutoCompleteTarget column)
	{
		return base.List.IndexOf(column);
	}

	[DocumentationExclude]
	public void Insert(int index, AutoCompleteTarget column)
	{
		base.List.Insert(index, column);
	}

	[DocumentationExclude]
	public void CopyTo(AutoCompleteTarget[] array, int index)
	{
		base.List.CopyTo(array, index);
	}
}
