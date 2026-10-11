using System;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridCoveredCellPool : ISerializable
{
	internal SFArrayList innerRows = new SFArrayList();

	public GridCoveredCellPool()
	{
	}

	protected GridCoveredCellPool(SerializationInfo info, StreamingContext context)
	{
		innerRows = (SFArrayList)info.GetValue("Rows", typeof(SFArrayList));
	}

	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Rows", innerRows);
	}

	public bool ResetSpanCells(GridRangeInfo range)
	{
		return ResetSpanCells(range, checkContainment: true);
	}

	public bool ResetSpanCells(GridRangeInfo range, bool checkContainment)
	{
		if (range == null || !range.IsCells)
		{
			throw new ArgumentException();
		}
		bool result = false;
		for (int i = range.Top; i <= range.Bottom; i++)
		{
			SFArrayList sFArrayList = (SFArrayList)innerRows[i];
			if (sFArrayList == null)
			{
				continue;
			}
			int num = Math.Min(range.Right, sFArrayList.Count - 1);
			bool flag = range.Right >= sFArrayList.Count - 1;
			if (!flag || checkContainment)
			{
				for (int j = range.Left; j <= num; j++)
				{
					object obj = sFArrayList[j];
					if (obj != null && (!checkContainment || GridRangeInfo.IntersectRange((GridRangeInfo)obj, range).Equals(obj)))
					{
						sFArrayList[j] = null;
						result = true;
					}
				}
			}
			if (flag)
			{
				sFArrayList.RemoveRange(range.Left, sFArrayList.Count - 1 - range.Left);
			}
		}
		return result;
	}

	public bool StoreSpanCells(GridRangeInfo range)
	{
		bool result = false;
		GridNonImmutableRangeInfo value = new GridNonImmutableRangeInfo(range);
		if (range == null || !range.IsCells)
		{
			throw new ArgumentException();
		}
		if (range.Width == 1 && range.Height == 1)
		{
			return false;
		}
		for (int i = range.Top; i <= range.Bottom; i++)
		{
			SFArrayList sFArrayList = (SFArrayList)innerRows[i];
			if (sFArrayList == null)
			{
				sFArrayList = (SFArrayList)(innerRows[i] = new SFArrayList());
			}
			sFArrayList.EnsureCount(range.Right + 1);
			for (int j = range.Left; j <= range.Right; j++)
			{
				object obj = sFArrayList[j];
				if (obj == null)
				{
					sFArrayList[j] = value;
					result = true;
				}
			}
		}
		return result;
	}

	public bool GetSpanCellsRowCol(int rowIndex, int colIndex, out GridRangeInfo range)
	{
		object obj = null;
		SFArrayList sFArrayList = (SFArrayList)innerRows[rowIndex];
		if (sFArrayList != null && colIndex < sFArrayList.Count)
		{
			obj = sFArrayList[colIndex];
		}
		if (obj == null)
		{
			range = GridRangeInfo.Cell(rowIndex, colIndex);
			return false;
		}
		range = (GridRangeInfo)obj;
		return true;
	}

	public void Clear()
	{
		innerRows.Clear();
	}

	public void InitFromRangeList(GridRangeInfoList ranges)
	{
		Clear();
		ranges.RemoveEmptyRanges();
		foreach (GridRangeInfo range in ranges)
		{
			StoreSpanCells(range);
		}
	}
}
