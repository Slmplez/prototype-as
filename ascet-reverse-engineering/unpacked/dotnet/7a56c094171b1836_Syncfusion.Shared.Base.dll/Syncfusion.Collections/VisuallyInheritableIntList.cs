using Syncfusion.ComponentModel;

namespace Syncfusion.Collections;

public class VisuallyInheritableIntList : VisuallyInheritableList
{
	public new int this[int index]
	{
		get
		{
			return (int)base[index];
		}
		set
		{
			base[index] = value;
		}
	}

	public VisuallyInheritableIntList()
	{
	}

	public VisuallyInheritableIntList(int[] items)
	{
		foreach (int num in items)
		{
			Add(num);
		}
	}

	public VisuallyInheritableIntList(IDesignable parent)
		: base(parent)
	{
	}

	public void AddRange(int[] value)
	{
		foreach (int num in value)
		{
			Add(num);
		}
	}

	protected override bool IsIdenticalObjects(object item1, object item2)
	{
		if ((int)item1 == (int)item2)
		{
			return true;
		}
		return false;
	}
}
