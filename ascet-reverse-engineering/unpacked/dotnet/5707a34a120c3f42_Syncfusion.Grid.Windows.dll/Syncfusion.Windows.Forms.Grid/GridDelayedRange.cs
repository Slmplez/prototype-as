using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[DocumentationExclude]
internal class GridDelayedRange : ICloneable
{
	internal GridRangeInfo rangeInfo;

	internal int[] lastRows;

	internal int[] firstRows;

	internal int length;

	internal int count;

	internal bool isResolved;

	public object Clone()
	{
		GridDelayedRange gridDelayedRange = new GridDelayedRange();
		gridDelayedRange.rangeInfo = rangeInfo;
		if (firstRows != null)
		{
			gridDelayedRange.firstRows = (int[])firstRows.Clone();
			gridDelayedRange.lastRows = (int[])lastRows.Clone();
		}
		return gridDelayedRange;
	}

	private void EnsureRowCapacity(int count)
	{
		int num = ((count - 1) / 16 + 1) * 16;
		if (firstRows == null || lastRows == null)
		{
			firstRows = new int[num];
			lastRows = new int[num];
		}
		else if (firstRows.Length < count)
		{
			int[] array = new int[num];
			firstRows.CopyTo(array, 0);
			firstRows = array;
			array = new int[num];
			lastRows.CopyTo(array, 0);
			lastRows = array;
		}
		length = firstRows.Length;
	}

	private void InsertAt(int index, int firstRow, int lastRow)
	{
		EnsureRowCapacity(count + 1);
		for (int num = count - 1; num > index; num--)
		{
			lastRows[num] = lastRows[num - 1];
			firstRows[num] = firstRows[num - 1];
		}
		lastRows[index] = lastRow;
		firstRows[index] = firstRow;
		count++;
	}

	private void Append(int firstRow, int lastRow)
	{
		EnsureRowCapacity(count + 1);
		lastRows[count] = lastRow;
		firstRows[count] = firstRow;
		count++;
	}

	private void RemoveAt(int index)
	{
		if (index < count)
		{
			for (int i = index + 1; i < length; i++)
			{
				lastRows[i - 1] = lastRows[i];
				firstRows[i - 1] = firstRows[i];
			}
			lastRows[length - 1] = 0;
			firstRows[length - 1] = 0;
			count--;
		}
	}

	public bool ResolveRange(GridRangeInfo rg, out int top, out int bottom)
	{
		bool flag = false;
		top = rg.Top;
		bottom = rg.Bottom;
		int num = 0;
		while (!flag && num < count)
		{
			if (lastRows[num] + 1 >= rg.Top)
			{
				if (firstRows[num] > rg.Bottom + 1)
				{
					break;
				}
				if (firstRows[num] <= rg.Top && lastRows[num] >= rg.Bottom)
				{
					return false;
				}
				if (firstRows[num] <= rg.Top && lastRows[num] <= rg.Bottom)
				{
					flag = true;
					top = lastRows[num] + 1;
					lastRows[num] = rg.Bottom;
				}
				else if (firstRows[num] >= rg.Top && lastRows[num] >= rg.Bottom)
				{
					flag = true;
					bottom = firstRows[num] - 1;
					firstRows[num] = rg.Top;
				}
				else if (firstRows[num] >= rg.Top && lastRows[num] <= rg.Bottom)
				{
					flag = true;
					firstRows[num] = rg.Top;
					lastRows[num] = rg.Bottom;
				}
			}
			num++;
		}
		if (!flag)
		{
			try
			{
				if (num < count)
				{
					InsertAt(num, top, bottom);
				}
				else
				{
					Append(top, bottom);
				}
			}
			catch (OutOfMemoryException)
			{
				Clear();
			}
		}
		for (num = 0; num + 1 < count; num++)
		{
			if (lastRows[num] >= firstRows[num + 1])
			{
				lastRows[num] = lastRows[num + 1];
				RemoveAt(num + 1);
			}
		}
		if (count == 1 && firstRows[0] == rangeInfo.Top && lastRows[0] >= rangeInfo.Bottom)
		{
			Clear();
		}
		return true;
	}

	public void Clear()
	{
		lastRows = null;
		firstRows = null;
		length = 0;
		count = 0;
		isResolved = true;
	}
}
