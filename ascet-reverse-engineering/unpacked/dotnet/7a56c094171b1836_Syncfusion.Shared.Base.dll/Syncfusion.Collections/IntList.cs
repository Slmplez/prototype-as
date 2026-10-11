namespace Syncfusion.Collections;

public class IntList : ArrayListExt
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

	public IntList()
	{
	}

	public IntList(int[] items)
	{
		foreach (int num in items)
		{
			Add(num);
		}
	}

	public void AddRange(int[] value)
	{
		foreach (int num in value)
		{
			Add(num);
		}
	}
}
