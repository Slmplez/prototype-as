namespace Syncfusion.Windows.Forms.Grid;

public struct GridCellPos
{
	internal int _rowNumber;

	internal int _columnNumber;

	public int ColumnNumber
	{
		get
		{
			return _columnNumber;
		}
		set
		{
			_columnNumber = value;
		}
	}

	public int RowNumber
	{
		get
		{
			return _rowNumber;
		}
		set
		{
			_rowNumber = value;
		}
	}

	public string Info => ToString();

	public GridCellPos(int r, int c)
	{
		_rowNumber = r;
		_columnNumber = c;
	}

	public override int GetHashCode()
	{
		return (int)(_rowNumber * 2654435761u + _columnNumber);
	}

	public override string ToString()
	{
		return "GridCellPos {RowNumber = " + RowNumber + ", ColumnNumber = " + ColumnNumber + "}";
	}
}
