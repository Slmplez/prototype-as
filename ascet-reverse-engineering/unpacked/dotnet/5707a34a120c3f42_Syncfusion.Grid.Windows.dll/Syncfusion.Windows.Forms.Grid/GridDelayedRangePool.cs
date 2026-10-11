using System;
using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[DocumentationExclude]
internal class GridDelayedRangePool : ICloneable
{
	private ArrayList delayedRanges = new ArrayList();

	public void Clear()
	{
		delayedRanges.Clear();
	}

	public void CleanUp()
	{
		ArrayList arrayList = new ArrayList(delayedRanges.Capacity);
		foreach (GridDelayedRange delayedRange in delayedRanges)
		{
			if (!delayedRange.isResolved)
			{
				arrayList.Add(delayedRange);
			}
		}
	}

	public void DelayRange(GridRangeInfo range)
	{
		GridDelayedRange gridDelayedRange = null;
		int count = delayedRanges.Count;
		int num = -1;
		for (int i = 0; i < count; i++)
		{
			gridDelayedRange = (GridDelayedRange)delayedRanges[i];
			if (gridDelayedRange.isResolved)
			{
				num = i;
				continue;
			}
			int right = gridDelayedRange.rangeInfo.Right;
			int bottom = gridDelayedRange.rangeInfo.Bottom;
			if (range.Contains(gridDelayedRange.rangeInfo))
			{
				gridDelayedRange.Clear();
				if (num == -1)
				{
					num = i;
				}
			}
			else if (gridDelayedRange.count == 0)
			{
				GridRangeInfo rangeInfo = gridDelayedRange.rangeInfo;
				if (rangeInfo.Right == range.Left - 1)
				{
					right = range.Right;
				}
				if (rangeInfo.Bottom == range.Top - 1)
				{
					bottom = range.Bottom;
				}
				gridDelayedRange.rangeInfo = GridRangeInfo.Cells(rangeInfo.Top, rangeInfo.Left, bottom, right);
				if (gridDelayedRange.rangeInfo.Contains(range))
				{
					return;
				}
			}
		}
		if (num == -1)
		{
			try
			{
				delayedRanges.Add(gridDelayedRange = new GridDelayedRange());
			}
			catch (OutOfMemoryException)
			{
			}
		}
		else
		{
			gridDelayedRange = (GridDelayedRange)delayedRanges[num];
		}
		gridDelayedRange.isResolved = false;
		gridDelayedRange.rangeInfo = range;
	}

	public void SplitDelayedRange(GridRangeInfo range)
	{
		int count = delayedRanges.Count;
		for (int i = 0; i < count; i++)
		{
			GridDelayedRange gridDelayedRange = (GridDelayedRange)delayedRanges[i];
			if (gridDelayedRange == null || gridDelayedRange.isResolved)
			{
				continue;
			}
			GridRangeInfo gridRangeInfo = GridRangeInfo.IntersectRange(gridDelayedRange.rangeInfo, range);
			if (gridRangeInfo.IsEmpty)
			{
				continue;
			}
			if (gridDelayedRange.rangeInfo.Left < gridRangeInfo.Left)
			{
				GridDelayedRange gridDelayedRange2 = null;
				GridRangeInfo rangeInfo = gridDelayedRange.rangeInfo;
				try
				{
					gridDelayedRange2 = (GridDelayedRange)gridDelayedRange.Clone();
					gridDelayedRange2.rangeInfo = GridRangeInfo.Cells(rangeInfo.Top, rangeInfo.Left, rangeInfo.Bottom, gridRangeInfo.Left - 1);
					gridDelayedRange.rangeInfo = GridRangeInfo.Cells(rangeInfo.Top, gridRangeInfo.Left, rangeInfo.Bottom, rangeInfo.Right);
					delayedRanges.Add(gridDelayedRange2);
				}
				catch (OutOfMemoryException)
				{
				}
			}
			if (gridDelayedRange.rangeInfo.Right > gridRangeInfo.Right)
			{
				GridDelayedRange gridDelayedRange3 = null;
				GridRangeInfo rangeInfo2 = gridDelayedRange.rangeInfo;
				try
				{
					gridDelayedRange3 = (GridDelayedRange)gridDelayedRange.Clone();
					gridDelayedRange3.rangeInfo = GridRangeInfo.Cells(rangeInfo2.Top, gridRangeInfo.Right + 1, rangeInfo2.Bottom, rangeInfo2.Right);
					gridDelayedRange.rangeInfo = GridRangeInfo.Cells(rangeInfo2.Top, rangeInfo2.Left, rangeInfo2.Bottom, gridRangeInfo.Right);
					delayedRanges.Add(gridDelayedRange3);
				}
				catch (OutOfMemoryException)
				{
				}
			}
		}
	}

	public bool EvalRows(GridRangeInfo range, out int[] dwColStart, out int[] dwColEnd)
	{
		bool flag = false;
		dwColStart = new int[0];
		dwColEnd = new int[0];
		if (range.Bottom < range.Top || range.Right < range.Left)
		{
			return false;
		}
		try
		{
			dwColStart = new int[range.Height];
			dwColEnd = new int[range.Height];
			for (int i = 0; i < dwColStart.Length; i++)
			{
				dwColEnd[i] = -1;
				dwColStart[i] = int.MaxValue;
			}
		}
		catch (OutOfMemoryException)
		{
			return false;
		}
		SplitDelayedRange(range);
		int count = delayedRanges.Count;
		for (int j = 0; j < count; j++)
		{
			GridDelayedRange gridDelayedRange = (GridDelayedRange)delayedRanges[j];
			if (gridDelayedRange.isResolved)
			{
				continue;
			}
			GridRangeInfo gridRangeInfo = GridRangeInfo.IntersectRange(gridDelayedRange.rangeInfo, range);
			if (gridRangeInfo.IsEmpty || !gridDelayedRange.ResolveRange(gridRangeInfo, out var top, out var bottom))
			{
				continue;
			}
			int num = Math.Max(top, gridDelayedRange.rangeInfo.Top);
			int num2 = Math.Min(bottom, gridDelayedRange.rangeInfo.Bottom);
			int left = gridDelayedRange.rangeInfo.Left;
			int right = gridDelayedRange.rangeInfo.Right;
			int num3 = num - range.Top;
			int num4 = num2 - range.Top;
			for (int k = num3; k <= num4; k++)
			{
				if (dwColStart[k] == -1)
				{
					dwColStart[k] = left;
					dwColEnd[k] = right;
				}
				else
				{
					dwColStart[k] = Math.Min(dwColStart[k], left);
					dwColEnd[k] = Math.Max(dwColEnd[k], right);
				}
			}
			flag = true;
		}
		if (flag)
		{
			CleanUp();
		}
		return flag;
	}

	public void SetRowCount(int nMaxRow)
	{
		int count = delayedRanges.Count;
		for (int i = 0; i < count; i++)
		{
			GridDelayedRange gridDelayedRange = (GridDelayedRange)delayedRanges[i];
			GridRangeInfo rangeInfo = gridDelayedRange.rangeInfo;
			if (rangeInfo.Bottom > nMaxRow)
			{
				gridDelayedRange.rangeInfo = GridRangeInfo.Cells(Math.Min(rangeInfo.Top, nMaxRow), rangeInfo.Left, Math.Min(rangeInfo.Bottom, nMaxRow), rangeInfo.Right);
			}
		}
	}

	public void SetColCount(int nMaxCol)
	{
		int count = delayedRanges.Count;
		for (int i = 0; i < count; i++)
		{
			GridDelayedRange gridDelayedRange = (GridDelayedRange)delayedRanges[i];
			GridRangeInfo rangeInfo = gridDelayedRange.rangeInfo;
			if (rangeInfo.Right > nMaxCol)
			{
				gridDelayedRange.rangeInfo = GridRangeInfo.Cells(rangeInfo.Top, Math.Min(rangeInfo.Left, nMaxCol), rangeInfo.Bottom, Math.Min(rangeInfo.Right, nMaxCol));
			}
		}
	}

	public object Clone()
	{
		CleanUp();
		GridDelayedRangePool gridDelayedRangePool = new GridDelayedRangePool();
		int count = delayedRanges.Count;
		gridDelayedRangePool.delayedRanges = new ArrayList(delayedRanges.Capacity);
		for (int i = 0; i < count; i++)
		{
			gridDelayedRangePool.delayedRanges.Add(((GridDelayedRange)delayedRanges[i]).Clone());
		}
		return gridDelayedRangePool;
	}
}
