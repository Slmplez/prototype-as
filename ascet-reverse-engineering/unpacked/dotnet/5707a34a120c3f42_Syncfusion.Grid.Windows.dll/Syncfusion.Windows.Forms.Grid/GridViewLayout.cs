using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridViewLayout : GridSubComponent
{
	private class LowestValueComparer : IComparer
	{
		public int Compare(object x, object y)
		{
			IComparable obj = x as IComparable;
			IComparable comparable = y as IComparable;
			return comparable.CompareTo(obj);
		}
	}

	private const int defaultArraySize = 100;

	private int nxMax;

	private int nyMax;

	private int[] anHeights = new int[100];

	private int[] anWidths = new int[100];

	private int[] anYOffset = new int[100];

	private int[] anXOffset = new int[100];

	private int[] anVisibleXOffset = new int[100];

	private int[] anVisibleYOffset = new int[100];

	private int[] anRows = new int[100];

	private int[] anCols = new int[100];

	private int nRows;

	private int nCols;

	private Rectangle bounds;

	private int nfr;

	private int nfc;

	private int frozenClientCols;

	private int frozenClientRows;

	private int nTopRow;

	private int nLeftCol;

	private int nLastRow;

	private int nLastCol;

	private Rectangle scrollAreaBounds;

	private Rectangle hscrollAreaBounds;

	private Rectangle vscrollAreaBounds;

	private GridControlBase grid;

	private GridRangeInfo rgFrozenTL;

	private GridRangeInfo rgFrozenTop;

	private GridRangeInfo rgFrozenLeft;

	private GridRangeInfo rgCells;

	private GridRangeInfo rgVisible;

	private bool initialized;

	private Hashtable visibleRowsList;

	private Hashtable visibleColumnsList;

	private bool locked;

	private bool inDemandInitialize;

	private bool wasPrintintMode;

	private int savedTopRow;

	private int savedLeftCol;

	public Hashtable VisibleRowsList
	{
		get
		{
			if (visibleRowsList == null)
			{
				visibleRowsList = new Hashtable();
				for (int i = 0; i < nRows; i++)
				{
					visibleRowsList.Add(anRows[i], i);
				}
			}
			return visibleRowsList;
		}
	}

	public Hashtable VisibleColumnsList
	{
		get
		{
			if (visibleColumnsList == null)
			{
				visibleColumnsList = new Hashtable();
				for (int i = 0; i < nCols; i++)
				{
					visibleColumnsList.Add(anCols[i], i);
				}
			}
			return visibleColumnsList;
		}
	}

	public GridRangeInfo VisibleCellsRange
	{
		get
		{
			DemandInitialize();
			return rgVisible;
		}
	}

	public GridRangeInfo ScrollCellsRange
	{
		get
		{
			DemandInitialize();
			return rgCells;
		}
	}

	public Rectangle ScrollAreaBounds
	{
		get
		{
			DemandInitialize();
			return scrollAreaBounds;
		}
	}

	public Rectangle HscrollAreaBounds
	{
		get
		{
			DemandInitialize();
			return hscrollAreaBounds;
		}
	}

	public Rectangle VscrollAreaBounds
	{
		get
		{
			DemandInitialize();
			return vscrollAreaBounds;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public Rectangle InternalVscrollAreaBounds => vscrollAreaBounds;

	public int LastVisibleCol
	{
		get
		{
			DemandInitialize();
			return nLastCol;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public int InternalLastVisibleRow => nLastRow;

	public int LastVisibleRow
	{
		get
		{
			DemandInitialize();
			return nLastRow;
		}
	}

	public bool HasPartialVisibleRows
	{
		get
		{
			DemandInitialize();
			return nyMax > bounds.Bottom;
		}
	}

	public bool HasPartialVisibleCols
	{
		get
		{
			DemandInitialize();
			if (!isRightToLeft())
			{
				return nxMax > bounds.Right;
			}
			return nxMax < bounds.Left;
		}
	}

	public Point Corner
	{
		get
		{
			DemandInitialize();
			return new Point(nxMax, nyMax);
		}
	}

	public int VisibleRows
	{
		get
		{
			DemandInitialize();
			return nRows;
		}
	}

	public int VisibleCols
	{
		get
		{
			DemandInitialize();
			return nCols;
		}
	}

	public event EventHandler LayoutChanged;

	public GridViewLayout(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
		grid.WindowScrolling += GridWindowScrolling;
	}

	public void Lock()
	{
		locked = true;
	}

	public void Unlock()
	{
		locked = false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			grid.WindowScrolling -= GridWindowScrolling;
		}
		base.Dispose(disposing);
	}

	private void GridWindowScrolling(object sender, ScrollWindowEventArgs e)
	{
		locked = false;
		Reset();
	}

	private int[] RedimArray(int[] array, int length)
	{
		int[] array2 = new int[length];
		array.CopyTo(array2, 0);
		return array2;
	}

	public void Reset()
	{
		if (!locked)
		{
			initialized = false;
			grid.currentHScrollPixelPosSaved = -1;
			grid.hScrollPixelWidthSaved = -1;
			grid.currentVScrollPixelPosSaved = -1;
			grid.vScrollPixelHeightSaved = -1;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void InternalSetTopRow(int topRowIndex)
	{
		if (initialized)
		{
			nTopRow = topRowIndex;
			for (int i = 0; i <= nRows; i++)
			{
				anRows[i] = grid.GetRow(i);
			}
			nLastRow = ((nRows != 0) ? anRows[nRows - 1] : 0);
			rgFrozenTop = GridRangeInfo.InternalCells(0, nLeftCol, nfr, nLastCol);
			rgFrozenLeft = GridRangeInfo.InternalCells(nTopRow, 0, nLastRow, nfc);
			rgCells = GridRangeInfo.InternalCells(nTopRow, nLeftCol, nLastRow, nLastCol);
			rgVisible = GridRangeInfo.InternalCells(rgVisible.Top, rgVisible.Left, nLastRow, nLastCol);
		}
	}

	internal void DemandInitialize()
	{
		if (!inDemandInitialize)
		{
			inDemandInitialize = true;
			if (nTopRow != grid.TopRowIndex || nLeftCol != grid.LeftColIndex)
			{
				initialized = false;
			}
			if (!initialized)
			{
				Initialize();
			}
			inDemandInitialize = false;
		}
	}

	private bool isRightToLeft()
	{
		return base.Grid.IsRightToLeft();
	}

	private Point ReverseRightToLeft(Point pt)
	{
		if (!isRightToLeft())
		{
			return pt;
		}
		return new Point(bounds.Right - pt.X, pt.Y);
	}

	private void Initialize()
	{
		inDemandInitialize = true;
		bounds = grid.GridBounds;
		if (grid.PrintingMode && !grid.IsWindowless)
		{
			if (grid.ScrollGrid.m_nTopRow != grid.PrintInfo.m_nPrintTopRow)
			{
				grid.ScrollGrid.m_nTopRow = grid.PrintInfo.m_nPrintTopRow;
			}
			if (grid.ScrollGrid.m_nLeftCol != grid.PrintInfo.m_nPrintLeftCol)
			{
				grid.ScrollGrid.m_nLeftCol = grid.PrintInfo.m_nPrintLeftCol;
			}
			if (!wasPrintintMode)
			{
				savedTopRow = grid.ScrollGrid.m_nTopRow;
				savedLeftCol = grid.ScrollGrid.m_nLeftCol;
				wasPrintintMode = true;
			}
		}
		else if (wasPrintintMode)
		{
			wasPrintintMode = false;
			if (grid.ScrollGrid.m_nTopRow != savedTopRow)
			{
				grid.ScrollGrid.m_nTopRow = savedTopRow;
			}
			if (grid.ScrollGrid.m_nLeftCol != savedLeftCol)
			{
				grid.ScrollGrid.m_nLeftCol = savedLeftCol;
			}
		}
		if (grid.Model.Options.DisplayEmptyRows)
		{
			nRows = 2147483645;
		}
		else
		{
			int rowCount = grid.Model.RowCount;
			if (rowCount == 0 && grid.Model.HideRows[0])
			{
				nRows = -1;
			}
			else
			{
				nRows = grid.GetClientRow(rowCount);
			}
		}
		if (grid.Model.Options.DisplayEmptyColumns)
		{
			nCols = 2147483645;
		}
		else
		{
			int colCount = grid.Model.ColCount;
			if (colCount == 0 && grid.Model.HideCols[0])
			{
				nCols = -1;
			}
			else
			{
				nCols = grid.GetClientCol(colCount);
			}
		}
		nfr = grid.InternalGetFrozenRows();
		nfc = grid.InternalGetFrozenCols();
		frozenClientRows = grid.GetVisibleFrozenRows();
		frozenClientCols = grid.GetVisibleFrozenCols();
		if (!grid.PrintingMode && GridControlBase.UseOldHiddenScrollLogic)
		{
			grid.ScrollGrid.m_nTopRow = Math.Max(grid.TopRowIndex, grid.GetFirstScrollableRow());
			grid.ScrollGrid.m_nLeftCol = Math.Max(grid.LeftColIndex, grid.GetFirstScrollableCol());
		}
		nTopRow = grid.TopRowIndex;
		nLeftCol = grid.LeftColIndex;
		nyMax = bounds.Top;
		scrollAreaBounds = bounds;
		hscrollAreaBounds = bounds;
		vscrollAreaBounds = bounds;
		bool flag = false;
		int i;
		for (i = 0; i <= nRows; i++)
		{
			if (nyMax > bounds.Bottom)
			{
				break;
			}
			anRows[i] = grid.GetRow(i);
			anVisibleYOffset[i] = nyMax;
			if (anRows[i] == nTopRow)
			{
				flag = true;
				for (int j = 0; j < i; j++)
				{
					if (anYOffset[j] > nyMax)
					{
						anYOffset[j] = nyMax - 1;
					}
				}
				if (nyMax > scrollAreaBounds.Top)
				{
					GridUtil.SetTop(ref scrollAreaBounds, nyMax);
					GridUtil.SetTop(ref vscrollAreaBounds, nyMax);
				}
				nyMax -= grid.vScrollPixelDelta;
			}
			anHeights[i] = grid.GetRowHeight(anRows[i]);
			anYOffset[i] = nyMax;
			nyMax += anHeights[i];
			if (i == anHeights.Length - 1)
			{
				anRows = RedimArray(anRows, anRows.Length * 2);
				anHeights = RedimArray(anHeights, anHeights.Length * 2);
				anYOffset = RedimArray(anYOffset, anYOffset.Length * 2);
				anVisibleYOffset = RedimArray(anVisibleYOffset, anVisibleYOffset.Length * 2);
			}
		}
		if (!flag)
		{
			vscrollAreaBounds = new Rectangle(scrollAreaBounds.Left, scrollAreaBounds.Top, scrollAreaBounds.Width, 0);
			scrollAreaBounds = new Rectangle(scrollAreaBounds.Left, scrollAreaBounds.Top, scrollAreaBounds.Width, 0);
		}
		for (nRows = i; i < frozenClientRows; i++)
		{
			anRows[i] = int.MaxValue;
			anHeights[i] = 0;
			anYOffset[i] = nyMax;
			anVisibleYOffset[i] = nyMax;
			if (i == anHeights.Length - 1)
			{
				anRows = RedimArray(anRows, anRows.Length * 2);
				anHeights = RedimArray(anHeights, anHeights.Length * 2);
				anYOffset = RedimArray(anYOffset, anYOffset.Length * 2);
				anVisibleYOffset = RedimArray(anVisibleYOffset, anVisibleYOffset.Length * 2);
			}
		}
		for (int k = i; k < anRows.Length; k++)
		{
			anRows[k] = int.MaxValue;
			anHeights[k] = 0;
			anYOffset[k] = int.MaxValue;
			anVisibleYOffset[k] = int.MaxValue;
		}
		anYOffset[nRows] = nyMax;
		anVisibleYOffset[nRows] = nyMax;
		if (isRightToLeft())
		{
			bool flag2 = false;
			nxMax = bounds.Right;
			int l;
			for (l = 0; l <= nCols; l++)
			{
				if (nxMax < bounds.Left)
				{
					break;
				}
				anCols[l] = grid.GetCol(l);
				anVisibleXOffset[l] = nxMax;
				if (anCols[l] == nLeftCol)
				{
					flag2 = true;
					for (int m = 0; m < l; m++)
					{
						if (anXOffset[m] < nxMax)
						{
							anXOffset[m] = nxMax + 1;
						}
					}
					if (nxMax < scrollAreaBounds.Right)
					{
						GridUtil.SetRight(ref scrollAreaBounds, nxMax);
						GridUtil.SetRight(ref hscrollAreaBounds, nxMax);
					}
					nxMax += grid.hScrollPixelDelta;
				}
				anWidths[l] = grid.GetColWidth(anCols[l]);
				anXOffset[l] = nxMax;
				nxMax -= anWidths[l];
				if (l == anWidths.Length - 1)
				{
					anCols = RedimArray(anCols, anCols.Length * 2);
					anWidths = RedimArray(anWidths, anWidths.Length * 2);
					anXOffset = RedimArray(anXOffset, anXOffset.Length * 2);
					anVisibleXOffset = RedimArray(anVisibleXOffset, anVisibleXOffset.Length * 2);
				}
			}
			if (!flag2)
			{
				hscrollAreaBounds = new Rectangle(scrollAreaBounds.Right, scrollAreaBounds.Top, 0, scrollAreaBounds.Height);
				scrollAreaBounds = new Rectangle(scrollAreaBounds.Right, scrollAreaBounds.Top, 0, scrollAreaBounds.Height);
			}
			for (nCols = l; l < frozenClientCols; l++)
			{
				anCols[l] = int.MaxValue;
				anWidths[l] = 0;
				anXOffset[l] = nxMax;
				anVisibleXOffset[l] = nxMax;
				if (l == anWidths.Length - 1)
				{
					anCols = RedimArray(anCols, anCols.Length * 2);
					anWidths = RedimArray(anWidths, anWidths.Length * 2);
					anXOffset = RedimArray(anXOffset, anXOffset.Length * 2);
					anVisibleXOffset = RedimArray(anVisibleXOffset, anVisibleXOffset.Length * 2);
				}
			}
			for (int n = l; n < anCols.Length; n++)
			{
				anCols[n] = int.MaxValue;
				anWidths[n] = 0;
				anXOffset[n] = int.MaxValue;
				anVisibleXOffset[n] = int.MaxValue;
			}
			anXOffset[nCols] = nxMax;
			anVisibleXOffset[nCols] = nxMax;
		}
		else
		{
			nxMax = bounds.Left;
			bool flag3 = false;
			int l;
			for (l = 0; l <= nCols; l++)
			{
				if (nxMax > bounds.Right)
				{
					break;
				}
				anCols[l] = grid.GetCol(l);
				anVisibleXOffset[l] = nxMax;
				if (anCols[l] == nLeftCol)
				{
					flag3 = true;
					for (int num = 0; num < l; num++)
					{
						if (anXOffset[num] > nxMax)
						{
							anXOffset[num] = nxMax - 1;
						}
					}
					if (nxMax > scrollAreaBounds.Left)
					{
						GridUtil.SetLeft(ref scrollAreaBounds, nxMax);
						GridUtil.SetLeft(ref hscrollAreaBounds, nxMax);
					}
					nxMax -= grid.hScrollPixelDelta;
				}
				anWidths[l] = grid.GetColWidth(anCols[l]);
				anXOffset[l] = nxMax;
				nxMax += anWidths[l];
				if (l == anWidths.Length - 1)
				{
					anCols = RedimArray(anCols, anCols.Length * 2);
					anWidths = RedimArray(anWidths, anWidths.Length * 2);
					anXOffset = RedimArray(anXOffset, anXOffset.Length * 2);
					anVisibleXOffset = RedimArray(anVisibleXOffset, anVisibleXOffset.Length * 2);
				}
			}
			if (!flag3)
			{
				hscrollAreaBounds = new Rectangle(scrollAreaBounds.Left, scrollAreaBounds.Top, 0, scrollAreaBounds.Height);
				scrollAreaBounds = new Rectangle(scrollAreaBounds.Left, scrollAreaBounds.Top, 0, scrollAreaBounds.Height);
			}
			for (nCols = l; l < frozenClientCols; l++)
			{
				anCols[l] = int.MaxValue;
				anWidths[l] = 0;
				anXOffset[l] = nxMax;
				anVisibleXOffset[l] = nxMax;
				if (l == anWidths.Length - 1)
				{
					anCols = RedimArray(anCols, anCols.Length * 2);
					anWidths = RedimArray(anWidths, anWidths.Length * 2);
					anXOffset = RedimArray(anXOffset, anXOffset.Length * 2);
					anVisibleXOffset = RedimArray(anVisibleXOffset, anVisibleXOffset.Length * 2);
				}
			}
			for (int num2 = l; num2 < anCols.Length; num2++)
			{
				anCols[num2] = int.MaxValue;
				anWidths[num2] = 0;
				anXOffset[num2] = int.MaxValue;
				anVisibleXOffset[num2] = int.MaxValue;
			}
			anXOffset[nCols] = nxMax;
			anVisibleXOffset[nCols] = nxMax;
		}
		nLastRow = ((nRows != 0) ? anRows[nRows - 1] : 0);
		nLastCol = ((nCols != 0) ? anCols[nCols - 1] : 0);
		rgFrozenTL = GridRangeInfo.InternalCells(0, 0, nfr, nfc);
		rgFrozenTop = GridRangeInfo.InternalCells(0, nLeftCol, nfr, nLastCol);
		rgFrozenLeft = GridRangeInfo.InternalCells(nTopRow, 0, nLastRow, nfc);
		rgCells = GridRangeInfo.InternalCells(nTopRow, nLeftCol, nLastRow, nLastCol);
		rgVisible = GridRangeInfo.InternalCells(grid.GetRow(frozenClientRows), grid.GetCol(frozenClientCols), nLastRow, nLastCol);
		initialized = true;
		inDemandInitialize = false;
		visibleRowsList = null;
		visibleColumnsList = null;
		if (!grid.PrintingMode && grid.Model.VolatileData is IGridVisibleCellLists gridVisibleCellLists)
		{
			gridVisibleCellLists.SetVisibleColumnsList(grid, VisibleColumnsList);
			gridVisibleCellLists.SetVisibleRowsList(grid, VisibleRowsList);
		}
		OnLayoutChanged(EventArgs.Empty);
	}

	private void OnLayoutChanged(EventArgs e)
	{
		if (this.LayoutChanged != null)
		{
			this.LayoutChanged(this, e);
		}
	}

	public int PointToClientCol(Point pt, bool fixBackHidden, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		int[] array = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleXOffset : anXOffset);
		int i = (isRightToLeft() ? SearchLowestValue(array, nCols + 1, pt.X) : SearchHighestValue(array, nCols + 1, pt.X));
		if (i >= 0)
		{
			if (fixBackHidden)
			{
				while (i > 0 && array[i - 1] == array[i])
				{
					i--;
				}
			}
			else
			{
				for (; i + 1 < array.Length && array[i + 1] == array[i]; i++)
				{
				}
			}
		}
		return i;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int PointToClientCol(Point pt, bool fixBackHidden)
	{
		return PointToClientCol(pt, fixBackHidden, GridCellSizeKind.ActualSize);
	}

	public int PointToClientCol(Point pt, GridCellSizeKind sizeKind)
	{
		return PointToClientCol(pt, fixBackHidden: false, sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int PointToClientCol(Point pt)
	{
		return PointToClientCol(pt, GridCellSizeKind.ActualSize);
	}

	public int PointToClientRow(Point pt, bool fixBackHidden, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		int[] array = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleYOffset : anYOffset);
		int i = SearchHighestValue(array, nRows + 1, pt.Y);
		if (i >= 0)
		{
			if (fixBackHidden)
			{
				while (i > 0 && array[i - 1] == array[i])
				{
					i--;
				}
			}
			else
			{
				for (; i + 1 < array.Length && array[i + 1] == array[i]; i++)
				{
				}
			}
		}
		return i;
	}

	public int PointToClientRow(Point pt, GridCellSizeKind sizeKind)
	{
		return PointToClientRow(pt, fixBackHidden: false, sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int PointToClientRow(Point pt, bool fixBackHidden)
	{
		return PointToClientRow(pt, fixBackHidden, GridCellSizeKind.ActualSize);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int PointToClientRow(Point pt)
	{
		return PointToClientRow(pt, fixBackHidden: false, GridCellSizeKind.ActualSize);
	}

	private int SearchHighestValue(int[] offset, int length, int max)
	{
		int num = Array.BinarySearch(offset, 0, length, max);
		if (num >= 0)
		{
			return num;
		}
		return ~num - 1;
	}

	private int SearchLowestValue(int[] offset, int length, int max)
	{
		int num = Array.BinarySearch(offset, 0, length, max, new LowestValueComparer());
		if (num >= 0)
		{
			return num;
		}
		return ~num - 1;
	}

	public void RectangleToClientRowCol(Rectangle rect, out int topRow, out int leftCol, out int bottomRow, out int rightCol, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		if (isRightToLeft())
		{
			PointToClientRowCol(new Point(rect.Right, rect.Top), out topRow, out leftCol, fixBackHidden: true, sizeKind);
			PointToClientRowCol(new Point(rect.Left + 1, rect.Bottom - 1), out bottomRow, out rightCol, fixBackHidden: false, sizeKind);
		}
		else
		{
			PointToClientRowCol(rect.Location, out topRow, out leftCol, fixBackHidden: true, sizeKind);
			PointToClientRowCol(new Point(rect.Right - 1, rect.Bottom - 1), out bottomRow, out rightCol, fixBackHidden: false, sizeKind);
		}
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public void RectangleToClientRowCol(Rectangle rect, out int topRow, out int leftCol, out int bottomRow, out int rightCol)
	{
		RectangleToClientRowCol(rect, out topRow, out leftCol, out bottomRow, out rightCol, GridCellSizeKind.ActualSize);
	}

	public void PointToClientRowCol(Point point, out int row, out int col, bool fixBackHidden, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		row = PointToClientRow(point, fixBackHidden, sizeKind);
		col = PointToClientCol(point, fixBackHidden, sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public void PointToClientRowCol(Point point, out int row, out int col, bool fixBackHidden)
	{
		PointToClientRowCol(point, out row, out col, fixBackHidden, GridCellSizeKind.ActualSize);
	}

	public int RowIndexToVisibleClient(int row)
	{
		DemandInitialize();
		if (row > nfr)
		{
			row = ((row >= grid.TopRowIndex) ? grid.GetClientRow(row) : (frozenClientRows + 1));
		}
		return Math.Max(0, Math.Min(nRows - 1, row));
	}

	public int ColIndexToVisibleClient(int col)
	{
		DemandInitialize();
		if (col > nfc)
		{
			col = ((col >= grid.LeftColIndex) ? grid.GetClientCol(col) : (frozenClientCols + 1));
		}
		return Math.Max(0, Math.Min(nCols - 1, col));
	}

	public int RowIndexToVisibleClient(int row, out bool hidden)
	{
		DemandInitialize();
		hidden = false;
		if (row > nfr)
		{
			if (row < grid.TopRowIndex)
			{
				hidden = true;
				row = frozenClientRows + 1;
			}
			else
			{
				row = grid.GetClientRow(row);
			}
		}
		return Math.Min(nRows - 1, row);
	}

	public int ColIndexToVisibleClient(int col, out bool hidden)
	{
		DemandInitialize();
		hidden = false;
		if (col > nfc)
		{
			if (col < grid.LeftColIndex)
			{
				hidden = true;
				col = frozenClientCols + 1;
			}
			else
			{
				col = grid.GetClientCol(col);
			}
		}
		return Math.Min(nCols - 1, col);
	}

	public Rectangle RectangleRightOfCol(int col, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		Rectangle result;
		if (isRightToLeft())
		{
			Point point = RowColToPoint(0, col, ignoreOutsideClientRectangle: true, sizeKind);
			result = Rectangle.FromLTRB(grid.GridBounds.Left, point.Y, point.X, grid.GridBounds.Bottom);
		}
		else
		{
			result = new Rectangle(RowColToPoint(0, col, ignoreOutsideClientRectangle: true, sizeKind), grid.GridBounds.Size);
		}
		result.Intersect(grid.GridBounds);
		return result;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public Rectangle RectangleRightOfCol(int col)
	{
		return RectangleRightOfCol(col, GridCellSizeKind.ActualSize);
	}

	public Rectangle RectangleBottomOfRow(int row, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		Point point = RowColToPoint(row, 0, ignoreOutsideClientRectangle: true, sizeKind);
		Rectangle result = new Rectangle(new Point(grid.GridBounds.Left, point.Y), grid.GridBounds.Size);
		result.Intersect(grid.GridBounds);
		return result;
	}

	public Rectangle RectangleBottomOfRow(int row)
	{
		return RectangleBottomOfRow(row, GridCellSizeKind.ActualSize);
	}

	public Point RowColToPoint(int row, int col, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		return RowColToPoint(row, col, ignoreOutsideClientRectangle: false, sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public Point RowColToPoint(int row, int col)
	{
		return RowColToPoint(row, col, GridCellSizeKind.ActualSize);
	}

	public Point ClientRowColToPoint(int row, int col, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		int[] array = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleXOffset : anXOffset);
		int[] array2 = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleYOffset : anYOffset);
		if (col <= nCols + 1 && row <= nRows + 1)
		{
			return new Point(array[col], array2[row]);
		}
		return Point.Empty;
	}

	public Point ClientRowColToPoint(int row, int col)
	{
		return ClientRowColToPoint(row, col, GridCellSizeKind.ActualSize);
	}

	public Point RowColToPoint(int row, int col, bool ignoreOutsideClientRectangle, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		int[] array = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleXOffset : anXOffset);
		int[] array2 = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleYOffset : anYOffset);
		if (nRows == 0)
		{
			return Point.Empty;
		}
		Point result = default(Point);
		int num = ((!GridControlBase.UseOldHiddenScrollLogic) ? grid.ScrollGrid.RowIndexToScrollPosition(row) : row);
		if (row <= nfr)
		{
			result.Y = array2[num];
		}
		else if (row < grid.TopRowIndex)
		{
			result.Y = array2[frozenClientRows];
			if (!ignoreOutsideClientRectangle)
			{
				if (sizeKind == GridCellSizeKind.VisibleSize)
				{
					for (int num2 = grid.TopRowIndex - 1; num2 >= row; num2--)
					{
						result.Y -= GetRowHeight(num2, sizeKind);
					}
				}
				else
				{
					result.Y -= GetRowRangeHeight(row, grid.TopRowIndex - 1, sizeKind);
				}
			}
		}
		else
		{
			int clientRow = grid.GetClientRow(row);
			if (clientRow < nRows)
			{
				result.Y = array2[clientRow];
			}
			else if (ignoreOutsideClientRectangle)
			{
				result.Y = nyMax + 1;
			}
			else
			{
				result.Y = nyMax;
				if (sizeKind == GridCellSizeKind.VisibleSize)
				{
					int rowCount = grid.Model.RowCount;
					int rowIndex = LastVisibleRow + 1;
					while (rowIndex <= rowCount && rowIndex < row)
					{
						result.Y += GetRowHeight(rowIndex, sizeKind);
						if (!grid.ScrollGrid.GetNextRowIndex(ref rowIndex))
						{
							break;
						}
					}
				}
				else
				{
					result.Y += GetRowRangeHeight(LastVisibleRow + 1, row - 1, sizeKind);
				}
			}
		}
		int num3 = ((!GridControlBase.UseOldHiddenScrollLogic) ? grid.ScrollGrid.ColIndexToScrollPosition(col) : col);
		if (isRightToLeft())
		{
			if (col <= nfc)
			{
				result.X = array[num3];
			}
			else if (col < grid.LeftColIndex)
			{
				result.X = array[frozenClientCols];
				if (!ignoreOutsideClientRectangle)
				{
					for (int num4 = grid.LeftColIndex - 1; num4 >= col; num4--)
					{
						result.X += GetColWidth(num4, sizeKind);
					}
				}
			}
			else
			{
				int clientCol = grid.GetClientCol(col);
				if (clientCol < nCols)
				{
					result.X = array[clientCol];
				}
				else if (ignoreOutsideClientRectangle)
				{
					result.X = nxMax - 1;
				}
				else
				{
					result.X = nxMax;
					int colCount = grid.Model.ColCount;
					int colIndex = LastVisibleCol + 1;
					while (colIndex <= colCount && colIndex < col)
					{
						result.X -= GetColWidth(colIndex, sizeKind);
						if (!grid.ScrollGrid.GetNextColIndex(ref colIndex))
						{
							break;
						}
					}
				}
			}
		}
		else if (col <= nfc)
		{
			result.X = array[num3];
		}
		else if (col < grid.LeftColIndex)
		{
			result.X = array[frozenClientCols];
			if (!ignoreOutsideClientRectangle)
			{
				if (sizeKind == GridCellSizeKind.VisibleSize)
				{
					for (int num5 = grid.LeftColIndex - 1; num5 >= col; num5--)
					{
						result.X -= GetColWidth(num5, sizeKind);
					}
				}
				else
				{
					result.X -= GetColRangeWidth(col, grid.LeftColIndex - 1, sizeKind);
				}
			}
		}
		else
		{
			int clientCol2 = grid.GetClientCol(col);
			if (clientCol2 < nCols)
			{
				result.X = array[clientCol2];
			}
			else if (ignoreOutsideClientRectangle)
			{
				result.X = nxMax + 1;
			}
			else
			{
				result.X = nxMax;
				if (sizeKind == GridCellSizeKind.VisibleSize)
				{
					int colCount2 = grid.Model.ColCount;
					int colIndex2 = LastVisibleCol + 1;
					while (colIndex2 <= colCount2 && colIndex2 < col)
					{
						result.X += GetColWidth(colIndex2, sizeKind);
						if (!grid.ScrollGrid.GetNextColIndex(ref colIndex2))
						{
							break;
						}
					}
				}
				else
				{
					result.X += GetColRangeWidth(LastVisibleCol + 1, col - 1, sizeKind);
				}
			}
		}
		return result;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public Point RowColToPoint(int row, int col, bool ignoreOutsideClientRectangle)
	{
		return RowColToPoint(row, col, ignoreOutsideClientRectangle, GridCellSizeKind.ActualSize);
	}

	public Rectangle RangeInfoToRectangle(GridRangeInfo range, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		return RangeInfoToRectangle(range, ignoreOutsideClientRectangle: false, sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public Rectangle RangeInfoToRectangle(GridRangeInfo range)
	{
		return RangeInfoToRectangle(range, GridCellSizeKind.ActualSize);
	}

	public int GetColWidth(int absoluteColIndex, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		int num = grid.GetColWidth(absoluteColIndex);
		if (sizeKind == GridCellSizeKind.VisibleSize && absoluteColIndex == grid.LeftColIndex)
		{
			num -= grid.hScrollPixelDelta;
		}
		return num;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetColWidth(int absoluteColIndex)
	{
		return GetColWidth(absoluteColIndex, GridCellSizeKind.ActualSize);
	}

	public int GetClientColWidth(int clientColIndex, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		return GetColWidth(grid.GetCol(clientColIndex), sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetClientColWidth(int clientColIndex)
	{
		return GetClientColWidth(clientColIndex, GridCellSizeKind.ActualSize);
	}

	public int GetRowHeight(int absoluteRowIndex, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		int num = grid.GetRowHeight(absoluteRowIndex);
		if (sizeKind == GridCellSizeKind.VisibleSize && absoluteRowIndex == grid.TopRowIndex)
		{
			num -= grid.vScrollPixelDelta;
		}
		return num;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetRowHeight(int absoluteRowIndex)
	{
		return GetRowHeight(absoluteRowIndex, GridCellSizeKind.ActualSize);
	}

	public int GetClientRowHeight(int clientRowIndex, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		return GetRowHeight(grid.GetRow(clientRowIndex), sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetClientRowHeight(int clientRowIndex)
	{
		return GetClientRowHeight(clientRowIndex, GridCellSizeKind.ActualSize);
	}

	public Rectangle RangeInfoToRectangle(GridRangeInfo range, bool ignoreOutsideClientRectangle, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		if (nRows == 0 || !IsRangeVisible(range))
		{
			return Rectangle.Empty;
		}
		Point point = RowColToPoint(range.Top, range.Left, ignoreOutsideClientRectangle, sizeKind);
		Point point2 = RowColToPoint(range.Bottom, range.Right, ignoreOutsideClientRectangle, sizeKind);
		if (isRightToLeft())
		{
			if (range.IsRows || range.IsTable)
			{
				point.X = bounds.Right;
				point2.X = Corner.X;
			}
			else if (point2.X != int.MaxValue)
			{
				point2.X -= GetColWidth(range.Right, sizeKind);
			}
			if (range.IsCols || range.IsTable)
			{
				point.Y = bounds.Top;
				point2.Y = Corner.Y;
			}
			else if (point2.Y != int.MaxValue)
			{
				point2.Y += GetRowHeight(range.Bottom, sizeKind);
			}
			return Rectangle.FromLTRB(point2.X, point.Y, point.X, point2.Y);
		}
		if (range.IsRows || range.IsTable)
		{
			point.X = bounds.Left;
			point2.X = Corner.X;
		}
		else if (point2.X != int.MaxValue)
		{
			point2.X += GetColWidth(range.Right, sizeKind);
		}
		if (range.IsCols || range.IsTable)
		{
			point.Y = bounds.Top;
			point2.Y = Corner.Y;
		}
		else if (point2.Y != int.MaxValue)
		{
			point2.Y += GetRowHeight(range.Bottom, sizeKind);
		}
		return Rectangle.FromLTRB(point.X, point.Y, point2.X, point2.Y);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public Rectangle RangeInfoToRectangle(GridRangeInfo range, bool ignoreOutsideClientRectangle)
	{
		return RangeInfoToRectangle(range, ignoreOutsideClientRectangle, GridCellSizeKind.ActualSize);
	}

	public bool IsRowVisible(int row)
	{
		DemandInitialize();
		RowIndexToVisibleClient(row, out var hidden);
		if (!hidden)
		{
			return row <= nLastRow;
		}
		return false;
	}

	public bool IsColVisible(int col)
	{
		DemandInitialize();
		ColIndexToVisibleClient(col, out var hidden);
		if (!hidden)
		{
			return col <= nLastCol;
		}
		return false;
	}

	public bool IsRangeVisible(GridRangeInfo range)
	{
		DemandInitialize();
		if (range.IsEmpty)
		{
			return false;
		}
		if (range.IsTable)
		{
			return true;
		}
		if (range.IsRows)
		{
			if (range.Top < base.Grid.TopRowIndex && range.Bottom >= base.Grid.TopRowIndex)
			{
				return true;
			}
			if (!IsRowVisible(range.Top))
			{
				return IsRowVisible(range.Bottom);
			}
			return true;
		}
		if (range.IsCols)
		{
			if (range.Left < base.Grid.LeftColIndex && range.Right >= base.Grid.LeftColIndex)
			{
				return true;
			}
			if (!IsColVisible(range.Left))
			{
				return IsColVisible(range.Right);
			}
			return true;
		}
		if ((range.Top < base.Grid.TopRowIndex && range.Bottom >= base.Grid.TopRowIndex) || (range.Left < base.Grid.LeftColIndex && range.Right >= base.Grid.LeftColIndex))
		{
			return true;
		}
		if (IsRowVisible(range.Top) || IsRowVisible(range.Bottom))
		{
			if (!IsColVisible(range.Left))
			{
				return IsColVisible(range.Right);
			}
			return true;
		}
		return false;
	}

	public GridRangeInfo CombineSpannedRanges(GridRangeInfo range)
	{
		DemandInitialize();
		return VisitVisibleCells(range, new GridRowColRangeInfoHandler[4]
		{
			grid.Model.CoveredRanges.FindRange,
			grid.Model.FloatingCells.FindRange,
			grid.Model.MergeCells.FindRange,
			grid.Model.BanneredRanges.FindRange
		});
	}

	public GridRangeInfo VisitVisibleCells(GridRangeInfo range, GridRowColRangeInfoHandler[] handler)
	{
		DemandInitialize();
		if (nRows > 0)
		{
			bool hidden = false;
			bool hidden2 = false;
			GridRangeInfo gridRangeInfo = range.ExpandRange(0, 0, nLastRow, nLastCol);
			int num;
			int num2;
			int num3;
			int num4;
			if (range.IsCols)
			{
				num = RowIndexToVisibleClient(gridRangeInfo.Top);
				num2 = RowIndexToVisibleClient(gridRangeInfo.Bottom, out hidden);
				num3 = range.Left;
				num4 = range.Right;
			}
			else if (range.IsRows)
			{
				num3 = ColIndexToVisibleClient(gridRangeInfo.Left);
				num4 = ColIndexToVisibleClient(gridRangeInfo.Right, out hidden2);
				num = range.Top;
				num2 = range.Bottom;
			}
			else
			{
				num = RowIndexToVisibleClient(gridRangeInfo.Top);
				num2 = RowIndexToVisibleClient(gridRangeInfo.Bottom, out hidden);
				num3 = ColIndexToVisibleClient(gridRangeInfo.Left);
				num4 = ColIndexToVisibleClient(gridRangeInfo.Right, out hidden2);
			}
			for (int i = num; i <= num2; i++)
			{
				int row = i;
				if (!range.IsRows)
				{
					row = ((!hidden) ? anRows[i] : (nTopRow - 1));
				}
				for (int j = num3; j <= num4; j++)
				{
					try
					{
						int col = j;
						if (!range.IsCols)
						{
							col = ((!hidden2) ? anCols[j] : (nLeftCol - 1));
						}
						for (int k = 0; k < handler.Length; k++)
						{
							if (handler[k] != null)
							{
								GridRangeInfo gridRangeInfo2 = handler[k](row, col);
								if (!gridRangeInfo2.IsEmpty)
								{
									range = GridRangeInfo.UnionRange(gridRangeInfo2, range);
									j = Math.Max(j, ColIndexToVisibleClient(gridRangeInfo2.Right));
								}
							}
						}
					}
					catch (Exception ex)
					{
						TraceUtil.TraceExceptionCatched(ex);
						if (!ExceptionManager.RaiseExceptionCatched(grid, ex))
						{
							throw;
						}
					}
				}
			}
		}
		return range;
	}

	public int[] GetRowHeights(int fromRowIndex, int toRowIndex, GridCellSizeKind sizeKind)
	{
		toRowIndex = Math.Max(fromRowIndex, toRowIndex);
		int num = toRowIndex - fromRowIndex + 1;
		int[] array = new int[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = GetRowHeight(fromRowIndex + i, sizeKind);
		}
		return array;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int[] GetRowHeights(int fromRowIndex, int toRowIndex)
	{
		return GetRowHeights(fromRowIndex, toRowIndex, GridCellSizeKind.ActualSize);
	}

	private int[] GetColWidths(int fromColIndex, int toColIndex, GridCellSizeKind sizeKind)
	{
		toColIndex = Math.Max(fromColIndex, toColIndex);
		int num = toColIndex - fromColIndex + 1;
		int[] array = new int[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = GetColWidth(fromColIndex + i, sizeKind);
		}
		return array;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int[] GetColWidths(int fromColIndex, int toColIndex)
	{
		return GetColWidths(fromColIndex, toColIndex, GridCellSizeKind.ActualSize);
	}

	public int GetRowRangeHeight(int fromRowIndex, int toRowIndex, GridCellSizeKind sizeKind)
	{
		return GetRowRangeHeight(fromRowIndex, toRowIndex, 0, sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetRowRangeHeight(int fromRowIndex, int toRowIndex)
	{
		return GetRowRangeHeight(fromRowIndex, toRowIndex, 0, GridCellSizeKind.ActualSize);
	}

	public int GetRowRangeHeight(int fromRowIndex, int toRowIndex, int maxSize, GridCellSizeKind sizeKind)
	{
		if (sizeKind == GridCellSizeKind.VisibleSize)
		{
			int num = 0;
			int rowIndex = fromRowIndex;
			while (rowIndex <= toRowIndex && (maxSize == 0 || num <= maxSize))
			{
				num += GetRowHeight(rowIndex, sizeKind);
				if (!grid.ScrollGrid.GetNextRowIndex(ref rowIndex))
				{
					break;
				}
			}
			return num;
		}
		return grid.GetRowRangeHeight(fromRowIndex, toRowIndex, maxSize);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetRowRangeHeight(int fromRowIndex, int toRowIndex, int maxSize)
	{
		return GetRowRangeHeight(fromRowIndex, toRowIndex, maxSize, GridCellSizeKind.ActualSize);
	}

	public int GetColRangeWidth(int fromColIndex, int toColIndex, GridCellSizeKind sizeKind)
	{
		return GetColRangeWidth(fromColIndex, toColIndex, 0, sizeKind);
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetColRangeWidth(int fromColIndex, int toColIndex)
	{
		return GetColRangeWidth(fromColIndex, toColIndex, GridCellSizeKind.ActualSize);
	}

	public int GetColRangeWidth(int fromColIndex, int toColIndex, int maxSize, GridCellSizeKind sizeKind)
	{
		int num = 0;
		int colIndex = fromColIndex;
		while (colIndex <= toColIndex && (maxSize == 0 || num <= maxSize))
		{
			num += GetColWidth(colIndex, sizeKind);
			if (!grid.ScrollGrid.GetNextColIndex(ref colIndex))
			{
				break;
			}
		}
		return num;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetColRangeWidth(int fromColIndex, int toColIndex, int maxSize)
	{
		return GetColRangeWidth(fromColIndex, toColIndex, maxSize, GridCellSizeKind.ActualSize);
	}

	public int GetClientRowRangeHeight(int fromRowIndex, int toRowIndex, GridCellSizeKind sizeKind)
	{
		int[] array = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleYOffset : anYOffset);
		fromRowIndex = Math.Min(fromRowIndex, VisibleRows);
		toRowIndex = Math.Min(toRowIndex, VisibleRows);
		return array[toRowIndex + 1] - array[fromRowIndex];
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetClientRowRangeHeight(int fromRowIndex, int toRowIndex)
	{
		return GetClientRowRangeHeight(fromRowIndex, toRowIndex, GridCellSizeKind.ActualSize);
	}

	public int GetClientRowRangeHeight(int fromRowIndex, int toRowIndex, int maxSize, GridCellSizeKind sizeKind)
	{
		int num = 0;
		if (fromRowIndex > grid.Model.Rows.FrozenCount)
		{
			return grid.GetRowRangeHeight(fromRowIndex, toRowIndex, maxSize);
		}
		for (int i = fromRowIndex; i <= toRowIndex; i++)
		{
			if (maxSize != 0 && num > maxSize)
			{
				break;
			}
			num += GetRowHeight(grid.GetRow(i), sizeKind);
		}
		return num;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when VScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetClientRowRangeHeight(int fromRowIndex, int toRowIndex, int maxSize)
	{
		return GetClientRowRangeHeight(fromRowIndex, toRowIndex, maxSize, GridCellSizeKind.ActualSize);
	}

	public int GetClientColRangeWidth(int fromColIndex, int toColIndex, GridCellSizeKind sizeKind)
	{
		DemandInitialize();
		int[] array = ((sizeKind == GridCellSizeKind.VisibleSize) ? anVisibleXOffset : anXOffset);
		fromColIndex = Math.Min(fromColIndex, VisibleCols);
		toColIndex = Math.Min(toColIndex, VisibleCols);
		if (base.Grid.IsRightToLeft())
		{
			return array[fromColIndex] - array[toColIndex + 1];
		}
		return array[toColIndex + 1] - array[fromColIndex];
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetClientColRangeWidth(int fromColIndex, int toColIndex)
	{
		return GetClientColRangeWidth(fromColIndex, toColIndex, GridCellSizeKind.ActualSize);
	}

	public int GetClientColRangeWidth(int fromColIndex, int toColIndex, int maxSize, GridCellSizeKind sizeKind)
	{
		int num = 0;
		for (int i = fromColIndex; i <= toColIndex; i++)
		{
			if (maxSize != 0 && num > maxSize)
			{
				break;
			}
			num += GetColWidth(grid.GetCol(i), sizeKind);
		}
		return num;
	}

	[Obsolete("It is recommended that the sizeKind parameter is specified for pixel scrolling (when HScrollPixel = true). GridCellSizeKind.ActualSize is specified as default.")]
	public int GetClientColRangeWidth(int fromColIndex, int toColIndex, int maxSize)
	{
		return GetClientColRangeWidth(fromColIndex, toColIndex, maxSize, GridCellSizeKind.ActualSize);
	}
}
