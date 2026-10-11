using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Collections;

[Serializable]
public class SFTable : ICloneable, ISerializable
{
	private int rowCount;

	private int colCount;

	private SFArrayList rows;

	private int cellCount;

	public SFArrayList Rows
	{
		get
		{
			if (rows == null)
			{
				rows = CreateRowsCollection();
			}
			return rows;
		}
	}

	public int RowCount
	{
		get
		{
			return rowCount;
		}
		set
		{
			if (value < rowCount)
			{
				RemoveRows(value, rowCount - value);
			}
			else if (value > rowCount)
			{
				InsertRows(rowCount, value - rowCount);
			}
		}
	}

	public int ColCount
	{
		get
		{
			return colCount;
		}
		set
		{
			if (value < colCount)
			{
				RemoveCols(value, colCount - value);
			}
			else if (value > colCount)
			{
				InsertCols(colCount, value - colCount);
			}
		}
	}

	public object this[int rowIndex, int colIndex]
	{
		get
		{
			if (rowIndex >= rowCount || rowIndex < 0 || colIndex >= colCount || colIndex < 0)
			{
				return null;
			}
			SFArrayList sFArrayList = null;
			if (rowIndex < Rows.Count)
			{
				sFArrayList = Rows[rowIndex] as SFArrayList;
			}
			return sFArrayList?[colIndex];
		}
		set
		{
			if (rowIndex >= rowCount || rowIndex < 0)
			{
				throw new ArgumentOutOfRangeException("rowIndex");
			}
			if (colIndex >= colCount || colIndex < 0)
			{
				throw new ArgumentOutOfRangeException("colIndex");
			}
			SFArrayList sFArrayList = Rows[rowIndex] as SFArrayList;
			if (sFArrayList == null)
			{
				if (value == null)
				{
					return;
				}
				sFArrayList = (SFArrayList)(Rows[rowIndex] = CreateCellCollection());
			}
			object obj = sFArrayList[colIndex];
			if (obj != null)
			{
				if (value == null)
				{
					cellCount--;
				}
				else
				{
					cellCount++;
				}
			}
			else if (value != null)
			{
				cellCount++;
			}
			sFArrayList[colIndex] = value;
		}
	}

	protected SFTable(SerializationInfo info, StreamingContext context)
	{
		rowCount = info.GetInt32("RowCount");
		colCount = info.GetInt32("ColCount");
		rows = (SFArrayList)info.GetValue("Rows", typeof(SFArrayList));
		cellCount = info.GetInt32("CellCount");
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("RowCount", rowCount);
		info.AddValue("ColCount", colCount);
		info.AddValue("Rows", rows);
		info.AddValue("CellCount", cellCount);
	}

	public SFTable()
	{
	}

	protected SFTable(SFTable data, bool clone)
	{
		rowCount = data.rowCount;
		colCount = data.colCount;
		if (data.rows != null && clone)
		{
			rows = (SFArrayList)data.rows.Clone();
		}
	}

	public virtual object Clone()
	{
		return new SFTable(this, clone: true);
	}

	public void Clear()
	{
		rowCount = 0;
		colCount = 0;
		rows = null;
	}

	private SFArrayList CreateRowsCollection()
	{
		return new SFArrayList();
	}

	public virtual SFArrayList CreateCellCollection()
	{
		return new SFArrayList();
	}

	public bool InsertRows(int rowIndex, int count)
	{
		if (rowIndex > rowCount + 1)
		{
			throw new ArgumentOutOfRangeException("rowIndex");
		}
		Rows.InsertRange(rowIndex, count);
		rowCount = Math.Max(rowIndex, rowCount) + count;
		return true;
	}

	public bool InsertCols(int colIndex, int count)
	{
		if (colIndex > colCount + 1)
		{
			throw new ArgumentOutOfRangeException("colIndex");
		}
		foreach (object row in Rows)
		{
			if (row is SFArrayList sFArrayList)
			{
				sFArrayList.InsertRange(colIndex, count);
			}
		}
		colCount = Math.Max(colIndex, colCount) + count;
		return true;
	}

	public bool RemoveRows(int rowIndex, int count)
	{
		if (rowIndex >= rowCount || rowIndex < 0)
		{
			throw new ArgumentOutOfRangeException("rowIndex");
		}
		if (rowIndex + count > rowCount)
		{
			throw new ArgumentOutOfRangeException("count");
		}
		Rows.RemoveRange(rowIndex, count);
		rowCount -= count;
		return true;
	}

	public bool RemoveCols(int colIndex, int count)
	{
		if (colIndex >= colCount || colIndex < 0)
		{
			throw new ArgumentOutOfRangeException("colIndex");
		}
		if (colIndex + count > colCount)
		{
			throw new ArgumentOutOfRangeException("count");
		}
		foreach (object row in Rows)
		{
			if (row is SFArrayList sFArrayList)
			{
				sFArrayList.RemoveRange(colIndex, count);
			}
		}
		colCount -= count;
		return true;
	}

	public bool MoveRows(int rowIndex, int count, int target)
	{
		if (rowIndex >= rowCount && target >= rowCount)
		{
			return false;
		}
		Rows.MoveRange(rowIndex, count, target);
		return true;
	}

	public bool MoveCols(int colIndex, int count, int target)
	{
		if (colIndex >= colCount && target >= colCount)
		{
			return false;
		}
		foreach (object row in Rows)
		{
			if (row is SFArrayList sFArrayList)
			{
				sFArrayList.MoveRange(colIndex, count, target);
			}
		}
		return true;
	}

	public bool Contains(int rowIndex, int colIndex)
	{
		if (!(Rows[rowIndex] is SFArrayList sFArrayList))
		{
			return false;
		}
		return sFArrayList[colIndex] != null;
	}
}
