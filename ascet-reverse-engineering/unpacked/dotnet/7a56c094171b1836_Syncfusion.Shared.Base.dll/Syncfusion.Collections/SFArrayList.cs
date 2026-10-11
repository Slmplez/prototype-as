using System;
using System.Collections;

namespace Syncfusion.Collections;

[Serializable]
public class SFArrayList : ArrayList
{
	public override object this[int index]
	{
		get
		{
			if (index >= Count)
			{
				return null;
			}
			return base[index];
		}
		set
		{
			EnsureCount(index + 1);
			base[index] = value;
		}
	}

	public SFArrayList()
	{
	}

	public SFArrayList(ICollection c)
		: base(c)
	{
	}

	public override object Clone()
	{
		SFArrayList sFArrayList = new SFArrayList();
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				object current = enumerator.Current;
				if (current is ICloneable)
				{
					sFArrayList.Add(((ICloneable)current).Clone());
				}
				else
				{
					sFArrayList.Add(current);
				}
			}
			return sFArrayList;
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public void MoveRange(int index, int count, int dest)
	{
		if (dest != index && count != 0 && (Count >= index || Count >= dest))
		{
			object[] array = new object[count];
			for (int i = 0; i < count && i + index < Count; i++)
			{
				array[i] = this[i + index];
			}
			if (dest < index)
			{
				index += count;
			}
			else if (dest > index)
			{
				dest += count;
			}
			EnsureCount(dest);
			InsertRange(dest, array);
			if (index < Count)
			{
				RemoveRange(index, Math.Min(count, Count - index));
			}
		}
	}

	public void EnsureCount(int value)
	{
		if (Count < value)
		{
			AddRange(new object[value - Count]);
		}
	}

	public override void RemoveRange(int index, int count)
	{
		if (index < Count)
		{
			base.RemoveRange(index, Math.Min(count, Count - index));
		}
	}

	public void InsertRange(int index, int count)
	{
		if (index < Count)
		{
			InsertRange(index, new object[count]);
		}
	}
}
