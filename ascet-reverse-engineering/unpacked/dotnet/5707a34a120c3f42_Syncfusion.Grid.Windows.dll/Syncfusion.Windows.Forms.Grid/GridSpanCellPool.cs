using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
internal class GridSpanCellPool : GridCoveredCellPool
{
	protected GridSpanCellPool(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridSpanCellPool()
	{
	}

	public virtual void InsertRows(int rowIndex, int count)
	{
		innerRows.RemoveRange(rowIndex, innerRows.Count - rowIndex);
	}

	public virtual void RemoveRows(int fromRowIndex, int toRowIndex)
	{
		innerRows.RemoveRange(fromRowIndex, innerRows.Count - fromRowIndex);
	}

	public virtual void MoveRows(int fromRowIndex, int toRowIndex, int nDestRow)
	{
		int num = Math.Min(fromRowIndex, toRowIndex);
		int num2 = Math.Max(toRowIndex, nDestRow + toRowIndex - fromRowIndex);
		for (int i = num; i <= num2; i++)
		{
			innerRows[i] = null;
		}
	}

	public virtual void InsertCols(int colIndex, int nCount)
	{
	}

	public virtual void RemoveCols(int fromColIndex, int toColIndex)
	{
	}

	public virtual void MoveCols(int fromColIndex, int toColIndex, int nDestCol)
	{
	}
}
