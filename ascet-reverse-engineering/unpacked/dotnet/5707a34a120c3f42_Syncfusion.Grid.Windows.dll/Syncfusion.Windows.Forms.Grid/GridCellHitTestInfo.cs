using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellHitTestInfo : ICloneable
{
	private Point point = Point.Empty;

	private int rowIndex;

	private int colIndex;

	private GridCellRendererBase cellRenderer;

	private Rectangle cellBounds = Rectangle.Empty;

	private GridCellButton cellButtonElement;

	private Rectangle cellButtonBounds = Rectangle.Empty;

	private int cellButtonIndex;

	public Point Point
	{
		get
		{
			return point;
		}
		set
		{
			point = value;
		}
	}

	public int RowIndex
	{
		get
		{
			return rowIndex;
		}
		set
		{
			rowIndex = value;
		}
	}

	public int ColIndex
	{
		get
		{
			return colIndex;
		}
		set
		{
			colIndex = value;
		}
	}

	public GridCellRendererBase CellRenderer
	{
		get
		{
			return cellRenderer;
		}
		set
		{
			cellRenderer = value;
		}
	}

	public Rectangle CellBounds
	{
		get
		{
			return cellBounds;
		}
		set
		{
			cellBounds = value;
		}
	}

	public GridCellButton CellButtonElement
	{
		get
		{
			return cellButtonElement;
		}
		set
		{
			cellButtonElement = value;
		}
	}

	public Rectangle CellButtonBounds
	{
		get
		{
			return cellButtonBounds;
		}
		set
		{
			cellButtonBounds = value;
		}
	}

	public int CellButtonIndex
	{
		get
		{
			return cellButtonIndex;
		}
		set
		{
			cellButtonIndex = value;
		}
	}

	public object Clone()
	{
		GridCellHitTestInfo gridCellHitTestInfo = new GridCellHitTestInfo();
		gridCellHitTestInfo.point = point;
		gridCellHitTestInfo.rowIndex = rowIndex;
		gridCellHitTestInfo.colIndex = colIndex;
		gridCellHitTestInfo.cellRenderer = cellRenderer;
		gridCellHitTestInfo.cellBounds = cellBounds;
		gridCellHitTestInfo.cellButtonElement = cellButtonElement;
		gridCellHitTestInfo.cellButtonBounds = cellButtonBounds;
		gridCellHitTestInfo.cellButtonIndex = cellButtonIndex;
		return gridCellHitTestInfo;
	}

	public override string ToString()
	{
		return string.Concat("row = ", rowIndex.ToString(), "col = ", colIndex.ToString(), "index = ", cellButtonIndex.ToString(), " cellButtonBounds = ", cellButtonBounds, "cellButton = ", cellButtonElement.ToString());
	}
}
