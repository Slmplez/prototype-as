using System;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

public class CalendarCurrentCell
{
	private int m_columnOffset;

	private GridCurrentCell m_currentCell;

	public int ColumnOffset
	{
		get
		{
			return m_columnOffset;
		}
		set
		{
			if (value != m_columnOffset)
			{
				m_columnOffset = value;
			}
		}
	}

	public int RowIndex => m_currentCell.RowIndex;

	public int ColIndex => m_currentCell.ColIndex - ColumnOffset;

	public CalendarCurrentCell(GridCurrentCell currentCell)
	{
		if (currentCell == null)
		{
			throw new ArgumentNullException("currentCell");
		}
		m_currentCell = currentCell;
	}

	public bool MoveTo(int rowIndex, int colIndex)
	{
		return m_currentCell.MoveTo(rowIndex, colIndex + ColumnOffset);
	}

	public bool MoveTo(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
	{
		return m_currentCell.MoveTo(rowIndex, colIndex + ColumnOffset, options);
	}

	public bool Deactivate(bool discardChanges)
	{
		return m_currentCell.Deactivate(discardChanges);
	}

	public bool Activate(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
	{
		return m_currentCell.Activate(rowIndex, colIndex + ColumnOffset, options);
	}
}
