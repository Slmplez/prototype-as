using System;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

public class CalendarModel
{
	private GridModel m_gridModel;

	private int m_columnOffset;

	internal GridModel GridModel => m_gridModel;

	protected internal int ColumnOffset
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

	public GridModelOptions Options => m_gridModel.Options;

	public GridStyleInfo TableStyle => m_gridModel.TableStyle;

	public GridStyleInfo this[int rowIndex, int colIndex]
	{
		get
		{
			return m_gridModel[rowIndex, colIndex + ColumnOffset];
		}
		set
		{
			m_gridModel[rowIndex, colIndex + ColumnOffset] = value;
		}
	}

	public bool IgnoreReadOnly
	{
		get
		{
			return m_gridModel.IgnoreReadOnly;
		}
		set
		{
			m_gridModel.IgnoreReadOnly = value;
		}
	}

	public GridModelRowColSizeIndexer ColWidths => m_gridModel.ColWidths;

	public GridModelRowColSizeIndexer RowHeights => m_gridModel.RowHeights;

	public GridModelRowStylesIndexer RowStyles => m_gridModel.RowStyles;

	public int ColCount
	{
		get
		{
			return m_gridModel.ColCount - ColumnOffset;
		}
		set
		{
			m_gridModel.ColCount = value + ColumnOffset;
		}
	}

	public int RowCount
	{
		get
		{
			return m_gridModel.Model.RowCount;
		}
		set
		{
			m_gridModel.Model.RowCount = value;
		}
	}

	public GridModelRowColOperations Cols => m_gridModel.Cols;

	public GridModelRowColOperations Rows => m_gridModel.Rows;

	public bool ReadOnly
	{
		get
		{
			return m_gridModel.ReadOnly;
		}
		set
		{
			m_gridModel.ReadOnly = value;
		}
	}

	public event GridSelectionChangedEventHandler SelectionChanged;

	public event GridRowColCountEventHandler QueryRowCount;

	public event GridRowColCountEventHandler QueryColCount;

	public event GridQueryCellInfoEventHandler QueryCellInfo;

	public CalendarModel(GridModel model)
	{
		if (model == null)
		{
			throw new ArgumentNullException("model");
		}
		m_gridModel = model;
		m_gridModel.SelectionChanged += M_gridModel_SelectionChanged;
		m_gridModel.QueryRowCount += M_gridModel_QueryRowCount;
		m_gridModel.QueryColCount += M_gridModel_QueryColCount;
		m_gridModel.QueryCellInfo += M_gridModel_QueryCellInfo;
	}

	public bool ChangeCells(GridRangeInfo range, GridStyleInfo cellInfo)
	{
		GridRangeInfo range2 = range.OffsetRange(0, ColumnOffset);
		return m_gridModel.ChangeCells(range2, cellInfo);
	}

	private void M_gridModel_SelectionChanged(object sender, GridSelectionChangedEventArgs e)
	{
		if (this.SelectionChanged != null)
		{
			this.SelectionChanged(sender, e);
		}
	}

	private void M_gridModel_QueryColCount(object sender, GridRowColCountEventArgs e)
	{
		if (this.QueryColCount != null)
		{
			e.Count -= ColumnOffset;
			this.QueryColCount(sender, e);
			e.Count += ColumnOffset;
		}
	}

	private void M_gridModel_QueryRowCount(object sender, GridRowColCountEventArgs e)
	{
		if (this.QueryRowCount != null)
		{
			this.QueryRowCount(sender, e);
		}
	}

	private void M_gridModel_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
	{
		if (this.QueryCellInfo != null)
		{
			GridQueryCellInfoEventArgs e2 = new GridQueryCellInfoEventArgs(e.RowIndex, e.ColIndex - ColumnOffset, e.Style);
			e2.Handled = e.Handled;
			this.QueryCellInfo(sender, e2);
			e.Handled = e2.Handled;
		}
	}
}
