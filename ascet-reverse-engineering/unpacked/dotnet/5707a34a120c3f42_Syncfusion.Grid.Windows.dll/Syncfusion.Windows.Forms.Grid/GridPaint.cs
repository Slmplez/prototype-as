using System;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridPaint
{
	[DocumentationExclude]
	internal class DrawCellFlags
	{
		public const int Selected = 16;

		public const int Color = 32;

		public const int Spanned = 64;

		public const int Covered = 128;

		public const int SpannedCont = 256;

		public const int HorzLine = 512;

		public const int VertLine = 1024;

		public const int FixedVertLine = 2048;

		public const int FixedHorzLine = 4096;

		public const int Merged = 8192;

		public const int Bannered = 16384;

		public const int BanneredHCont = 32768;

		public const int BanneredVCont = 65536;
	}

	[DocumentationExclude]
	internal class DrawStruct
	{
		public int nRows;

		public int nCols;

		public int gridTopRow;

		public int gridLeftCol;

		public int gridFrozenCols;

		public int gridFrozenRows;

		public int gridHeaderCols;

		public int gridHeaderRows;

		public Rectangle rectEdit;

		public Rectangle rectItem;

		public int nxMin;

		public int nyMin;

		public int nxMax;

		public int nyMax;

		public int[] anHeights;

		public int[] anWidths;

		public int[] anYOffset;

		public int[] anXOffset;

		public int[] anRows;

		public int[] anCols;

		public GridStyleInfo[] apStyles;

		public BrushInfo[] apInterior;

		public GridBordersInfo[] apBorders;

		public int[] abBits;

		public GridCellRendererBase pCurrentControl;

		public bool bAnyCellCovered;

		public bool bAnyCellSelected;

		public bool bColor;

		public Color rgbStandard;

		public int TopRow;

		public int LeftCol;

		public int BottomRow;

		public int RightCol;

		public Graphics graphics;

		public Rectangle rectClip;

		public Rectangle scrollRect;

		public Rectangle hscrollRect;

		public Rectangle vscrollRect;

		public bool selectionAlphaBlend;

		public Brush selectionBrush;

		public GridStyleInfo standardStyle;

		public void Dispose(GridControlBase grid)
		{
			apBorders = null;
			apInterior = null;
			if (apStyles != null)
			{
				for (int i = 0; i < apStyles.Length; i++)
				{
					if (apStyles[i] != null && (abBits[i] & 0x100) == 0)
					{
						grid.DisposePaintStyle(apStyles[i]);
					}
				}
			}
			selectionBrush.Dispose();
			pCurrentControl = null;
			standardStyle = null;
			anHeights = null;
			anHeights = null;
			anWidths = null;
			anYOffset = null;
			anXOffset = null;
			anRows = null;
			anCols = null;
			apStyles = null;
			abBits = null;
			GC.SuppressFinalize(this);
		}
	}

	private GridControlBase m_grid;

	internal int m_nNestedDraw;

	internal DrawStruct m_pDrawStruct;

	internal DrawStruct m_pOldDrawStruct;

	internal BrushInfo m_tempBrush;

	private GridBorder m_tempPen = new GridBorder();

	public GridPaint(GridControlBase grid)
	{
		m_grid = grid;
	}

	public void DrawGrid(PaintEventArgs pe)
	{
		Graphics graphics = pe.Graphics;
		DrawGrid(graphics, shouldClip: true);
	}

	public void DrawGrid(Graphics g, bool shouldClip)
	{
		Rectangle rectClip = Rectangle.Ceiling(g.ClipBounds);
		DrawGrid(g, shouldClip, rectClip);
	}

	public void DrawGrid(Graphics g, bool shouldClip, Rectangle rectClip)
	{
		if (rectClip.IsEmpty)
		{
			rectClip = m_grid.GridBounds;
		}
		else if (!rectClip.IntersectsWith(m_grid.GridBounds))
		{
			return;
		}
		rectClip = Rectangle.Intersect(m_grid.GridBounds, rectClip);
		Region clip = null;
		if (shouldClip)
		{
			clip = g.Clip;
			g.SetClip(rectClip);
		}
		m_grid.ViewLayout.RectangleToClientRowCol(rectClip, out var topRow, out var leftCol, out var bottomRow, out var rightCol, GridCellSizeKind.VisibleSize);
		topRow = Math.Max(0, topRow);
		leftCol = Math.Max(0, leftCol);
		m_grid.OnDrawClientRowCol(topRow, leftCol, bottomRow, rightCol, g, rectClip);
		if (shouldClip)
		{
			g.Clip = clip;
		}
	}

	private bool isRightToLeft()
	{
		return m_grid.IsRightToLeft();
	}

	public void DrawClientRowCol(int topRow, int leftCol, int bottomRow, int rightCol, Graphics g, Rectangle rectClip)
	{
		Rectangle clip = Rectangle.Ceiling(g.ClipBounds);
		if (m_grid.HasGridBounds)
		{
			g.IntersectClip(m_grid.GridBounds);
		}
		try
		{
			GridRangeInfoList ranges = m_grid.Model.Selections.Ranges;
			m_nNestedDraw++;
			m_pOldDrawStruct = m_pDrawStruct;
			DrawStruct drawStruct = (m_pDrawStruct = new DrawStruct());
			if (!m_grid.CurrentCell.IsInMoveTo)
			{
				m_grid.ViewLayout.Reset();
			}
			_ = m_grid.ViewLayout.VisibleRows;
			drawStruct.TopRow = Math.Max(0, Math.Min(topRow, m_grid.ViewLayout.VisibleRows - 1));
			drawStruct.LeftCol = Math.Max(0, Math.Min(leftCol, m_grid.ViewLayout.VisibleCols - 1));
			drawStruct.BottomRow = Math.Max(0, Math.Min(bottomRow, m_grid.ViewLayout.VisibleRows - 1));
			drawStruct.RightCol = Math.Max(0, Math.Min(rightCol, m_grid.ViewLayout.VisibleCols - 1));
			drawStruct.graphics = g;
			if (rectClip.IsEmpty)
			{
				drawStruct.rectClip = Rectangle.Ceiling(g.ClipBounds);
			}
			else
			{
				drawStruct.rectClip = rectClip;
			}
			if (!m_grid.PrintingMode && m_grid.IsWindowless)
			{
				drawStruct.rectClip.Intersect(m_grid.GetWindow().ClientRectangle);
			}
			if (topRow < m_grid.ViewLayout.VisibleRows && leftCol < m_grid.ViewLayout.VisibleCols)
			{
				drawStruct.nRows = drawStruct.BottomRow - drawStruct.TopRow + 1;
				drawStruct.nCols = drawStruct.RightCol - drawStruct.LeftCol + 1;
			}
			else
			{
				drawStruct.nRows = (drawStruct.nCols = 0);
			}
			drawStruct.gridTopRow = m_grid.TopRowIndex;
			drawStruct.gridLeftCol = m_grid.LeftColIndex;
			drawStruct.gridFrozenCols = m_grid.InternalGetFrozenCols();
			drawStruct.gridFrozenRows = m_grid.InternalGetFrozenRows();
			drawStruct.gridHeaderCols = m_grid.InternalGetHeaderCols();
			drawStruct.gridHeaderRows = m_grid.InternalGetHeaderRows();
			Point point = m_grid.ViewLayout.ClientRowColToPoint(drawStruct.TopRow, drawStruct.LeftCol, GridCellSizeKind.VisibleSize);
			drawStruct.nxMin = point.X;
			drawStruct.nyMin = point.Y;
			drawStruct.nxMax = drawStruct.nxMin;
			drawStruct.nyMax = drawStruct.nyMin;
			drawStruct.anHeights = new int[drawStruct.nRows];
			drawStruct.anWidths = new int[drawStruct.nCols];
			drawStruct.anYOffset = new int[drawStruct.nRows];
			drawStruct.anXOffset = new int[drawStruct.nCols];
			drawStruct.anRows = new int[drawStruct.nRows + 1];
			drawStruct.anCols = new int[drawStruct.nCols + 1];
			int num = drawStruct.nRows * drawStruct.nCols;
			drawStruct.apStyles = new GridStyleInfo[num];
			drawStruct.apInterior = new BrushInfo[num];
			drawStruct.apBorders = new GridBordersInfo[num];
			drawStruct.abBits = new int[num];
			drawStruct.pCurrentControl = null;
			drawStruct.bAnyCellCovered = false;
			drawStruct.bAnyCellSelected = ranges.Count > 0;
			drawStruct.standardStyle = m_grid.Model.BaseStylesMap["Standard"].StyleInfo;
			drawStruct.selectionAlphaBlend = (m_grid.Model.Options.AllowSelection & GridSelectionFlags.AlphaBlend) != 0;
			drawStruct.selectionBrush = new SolidBrush(m_grid.Model.Options.AlphaBlendSelectionColor);
			drawStruct.bColor = !m_grid.PrintingMode || !m_grid.Model.Properties.BlackWhite;
			drawStruct.rgbStandard = (drawStruct.bColor ? drawStruct.standardStyle.Interior.BackColor : Color.White);
			int num2 = 1;
			int num3 = -1;
			int num4 = -1;
			int i;
			for (i = 0; i < drawStruct.nRows; i++)
			{
				drawStruct.anRows[i] = m_grid.GetRow(drawStruct.TopRow + i);
				if (drawStruct.anRows[i] == drawStruct.gridTopRow)
				{
					drawStruct.vscrollRect = Rectangle.FromLTRB(0, drawStruct.nyMax, m_grid.GridBounds.Width, m_grid.GridBounds.Height);
					if (m_grid.vScrollPixelDelta != 0)
					{
						drawStruct.nyMax -= m_grid.vScrollPixelDelta;
						num4 = i - 1;
					}
					num2 = 4;
				}
				drawStruct.anHeights[i] = m_grid.GetRowHeight(drawStruct.anRows[i]);
				drawStruct.anYOffset[i] = drawStruct.nyMax;
				drawStruct.nyMax += drawStruct.anHeights[i];
			}
			drawStruct.anRows[i] = m_grid.GetRow(drawStruct.TopRow + i);
			if (drawStruct.anRows[i] >= m_grid.Model.RowCount)
			{
				drawStruct.anRows[i] = 0;
			}
			if (isRightToLeft())
			{
				int j;
				for (j = 0; j < drawStruct.nCols; j++)
				{
					drawStruct.anCols[j] = m_grid.GetCol(drawStruct.LeftCol + j);
					if (drawStruct.anCols[j] == drawStruct.gridLeftCol)
					{
						drawStruct.hscrollRect = Rectangle.FromLTRB(0, 0, drawStruct.nxMax, m_grid.GridBounds.Height);
						if (m_grid.hScrollPixelDelta != 0)
						{
							drawStruct.nxMax += m_grid.hScrollPixelDelta;
							num3 = j - 1;
						}
						num2 = 4;
					}
					drawStruct.anWidths[j] = m_grid.GetColWidth(drawStruct.anCols[j]);
					drawStruct.anXOffset[j] = drawStruct.nxMax;
					drawStruct.nxMax -= drawStruct.anWidths[j];
				}
				drawStruct.anCols[j] = m_grid.GetCol(drawStruct.LeftCol + j);
				if (drawStruct.anCols[j] >= m_grid.Model.ColCount)
				{
					drawStruct.anCols[j] = 0;
				}
			}
			else
			{
				int j;
				for (j = 0; j < drawStruct.nCols; j++)
				{
					drawStruct.anCols[j] = m_grid.GetCol(drawStruct.LeftCol + j);
					if (drawStruct.anCols[j] == drawStruct.gridLeftCol)
					{
						drawStruct.hscrollRect = Rectangle.FromLTRB(drawStruct.nxMax, 0, m_grid.GridBounds.Width, m_grid.GridBounds.Height);
						if (m_grid.hScrollPixelDelta != 0)
						{
							drawStruct.nxMax -= m_grid.hScrollPixelDelta;
							num3 = j - 1;
						}
						num2 = 4;
					}
					drawStruct.anWidths[j] = m_grid.GetColWidth(drawStruct.anCols[j]);
					drawStruct.anXOffset[j] = drawStruct.nxMax;
					drawStruct.nxMax += drawStruct.anWidths[j];
				}
				drawStruct.anCols[j] = m_grid.GetCol(drawStruct.LeftCol + j);
				if (drawStruct.anCols[j] >= m_grid.Model.ColCount)
				{
					drawStruct.anCols[j] = 0;
				}
			}
			drawStruct.scrollRect = Rectangle.Intersect(drawStruct.hscrollRect, drawStruct.vscrollRect);
			int rowIndex = -1;
			int colIndex = -1;
			if (m_grid.CurrentCell.HasCurrentCell)
			{
				m_grid.CurrentCell.GetCurrentCell(out rowIndex, out colIndex);
			}
			if (m_grid.Model.Options.DrawOrder == GridDrawOrder.Columns)
			{
				for (int j = 0; j < drawStruct.nCols; j++)
				{
					for (i = 0; i < drawStruct.nRows; i++)
					{
						int num5 = i * drawStruct.nCols + j;
						drawStruct.apStyles[num5] = m_grid.GetPaintStyleInfo(drawStruct.anRows[i], drawStruct.anCols[j], forceQueryCellInfo: true);
						drawStruct.apInterior[num5] = drawStruct.apStyles[num5].Interior;
						drawStruct.apBorders[num5] = drawStruct.apStyles[num5].ReadOnlyBorders;
					}
				}
			}
			for (i = 0; i < drawStruct.nRows; i++)
			{
				for (int j = 0; j < drawStruct.nCols; j++)
				{
					try
					{
						if (drawStruct.anRows[i] == rowIndex && drawStruct.anCols[j] == colIndex)
						{
							drawStruct.pCurrentControl = m_grid.GetCellRenderer(rowIndex, colIndex);
						}
						InternalLoadCell(drawStruct, i, j);
					}
					catch (Exception e)
					{
						TraceUtil.TraceExceptionCatched(e);
					}
				}
			}
			drawStruct.pCurrentControl = null;
			bool flag = false;
			for (i = 0; i < drawStruct.nRows; i++)
			{
				for (int j = 0; j < drawStruct.nCols; j++)
				{
					drawStruct.abBits[i * drawStruct.nCols + j] |= 32;
				}
			}
			for (int k = 0; k < num2; k++)
			{
				int num6 = k;
				int num7 = 0;
				int num8 = drawStruct.nCols - 1;
				int num9 = 0;
				int num10 = drawStruct.nRows - 1;
				Region region = null;
				switch (num6)
				{
				case 0:
					if (num3 != -1)
					{
						num8 = num3;
					}
					if (num4 != -1)
					{
						num10 = num4;
					}
					break;
				case 1:
					if (num4 == -1)
					{
						continue;
					}
					num9 = num4 + 1;
					if (num3 != -1)
					{
						num8 = num3;
					}
					region = drawStruct.graphics.Clip;
					drawStruct.graphics.IntersectClip(drawStruct.vscrollRect);
					break;
				case 2:
					if (num3 == -1)
					{
						continue;
					}
					num7 = num3 + 1;
					if (num4 != -1)
					{
						num10 = num4;
					}
					region = drawStruct.graphics.Clip;
					drawStruct.graphics.IntersectClip(drawStruct.hscrollRect);
					break;
				case 3:
					if (num4 == -1 || num3 == -1)
					{
						continue;
					}
					num7 = num3 + 1;
					num9 = num4 + 1;
					region = drawStruct.graphics.Clip;
					drawStruct.graphics.IntersectClip(drawStruct.scrollRect);
					break;
				}
				for (i = num9; i <= num10; i++)
				{
					InternalDrawBackground(drawStruct, i, num9, num7, num10, num8);
					for (int j = num7; j <= num8; j++)
					{
						drawStruct.rectItem = GetCellRectangle(drawStruct.anXOffset[j], drawStruct.anYOffset[i], drawStruct.anWidths[j], drawStruct.anHeights[i]);
						InternalDrawCell(drawStruct, i, j, spannedOnly: true);
					}
					for (int j = num7; j <= num8; j++)
					{
						drawStruct.rectItem = GetCellRectangle(drawStruct.anXOffset[j], drawStruct.anYOffset[i], drawStruct.anWidths[j], drawStruct.anHeights[i]);
						InternalDrawCell(drawStruct, i, j, spannedOnly: false);
					}
					if (drawStruct.pCurrentControl != null && !drawStruct.rectEdit.IsEmpty && !flag)
					{
						if (drawStruct.pCurrentControl.Initalized)
						{
							drawStruct.pCurrentControl.RaiseOutlineCurrentCell(drawStruct.graphics, drawStruct.rectEdit);
						}
						flag = true;
					}
					InternalDrawHorzBorders(drawStruct, i, num7, num8);
				}
				for (int j = num7; j <= num8; j++)
				{
					InternalDrawVertBorders(drawStruct, j, num9, num10);
				}
				if (!m_grid.PrintingMode && drawStruct.bAnyCellSelected && !m_grid.IsPrinting())
				{
					InternalInvertCells(drawStruct, num7, num8, num9, num10);
				}
				if (region != null)
				{
					drawStruct.graphics.Clip = region;
				}
			}
			Color white = Color.White;
			if (m_grid.PrintingMode || m_grid.Model.Options.TransparentBackground)
			{
				return;
			}
			white = m_grid.GetBackgroundColor();
			white = m_grid.GetBackColor(white);
			if (m_grid.ViewLayout.VisibleCols > 0 && m_grid.ViewLayout.VisibleRows > 0)
			{
				int colCount = m_grid.Model.ColCount;
				if (!m_grid.ViewLayout.HasPartialVisibleCols && m_grid.ScrollGrid.ColIndexToScrollPosition(m_grid.GetCol(drawStruct.RightCol)) == m_grid.ScrollGrid.ColIndexToScrollPosition(colCount))
				{
					Rectangle rectangle;
					if (isRightToLeft())
					{
						Point point2 = m_grid.ViewLayout.ClientRowColToPoint(0, drawStruct.RightCol + 1, GridCellSizeKind.VisibleSize);
						rectangle = Rectangle.FromLTRB(m_grid.GridBounds.X, m_grid.GridBounds.Y, point2.X, m_grid.GridBounds.Bottom);
					}
					else
					{
						rectangle = new Rectangle(m_grid.ViewLayout.ClientRowColToPoint(0, drawStruct.RightCol + 1, GridCellSizeKind.VisibleSize), m_grid.GridBounds.Size);
					}
					rectangle.Intersect(rectClip);
					if (rectangle.Width > 0)
					{
						GridFillRectangleHookEventArgs e2 = new GridFillRectangleHookEventArgs(g, rectangle, new BrushInfo(white));
						m_grid.RaiseFillRectangleHook(e2);
						if (!e2.Cancel)
						{
							BrushPaint.FillRectangle(g, rectangle, white);
						}
					}
					if (rectangle.Left > rectClip.Left)
					{
						rectClip.Width = rectangle.Left - rectClip.Left;
					}
				}
				int rowCount = m_grid.Model.RowCount;
				if (m_grid.ViewLayout.HasPartialVisibleRows || m_grid.ScrollGrid.RowIndexToScrollPosition(m_grid.GetRow(drawStruct.BottomRow)) != m_grid.ScrollGrid.RowIndexToScrollPosition(rowCount))
				{
					return;
				}
				Point point3 = m_grid.ViewLayout.ClientRowColToPoint(drawStruct.BottomRow + 1, 0, GridCellSizeKind.VisibleSize);
				Rectangle rectangle2 = new Rectangle(new Point(m_grid.GridBounds.X, point3.Y), m_grid.GridBounds.Size);
				rectangle2.Intersect(rectClip);
				if (rectangle2.Height > 0)
				{
					GridFillRectangleHookEventArgs e3 = new GridFillRectangleHookEventArgs(g, rectangle2, new BrushInfo(white));
					m_grid.RaiseFillRectangleHook(e3);
					if (!e3.Cancel)
					{
						BrushPaint.FillRectangle(g, rectangle2, white);
					}
				}
				return;
			}
			Rectangle gridBounds = m_grid.GridBounds;
			gridBounds.Intersect(rectClip);
			if (gridBounds.Height > 0)
			{
				GridFillRectangleHookEventArgs e4 = new GridFillRectangleHookEventArgs(g, gridBounds, new BrushInfo(white));
				m_grid.RaiseFillRectangleHook(e4);
				if (!e4.Cancel)
				{
					BrushPaint.FillRectangle(g, gridBounds, white);
				}
			}
		}
		catch (Exception e5)
		{
			TraceUtil.TraceExceptionCatched(e5);
			throw;
		}
		finally
		{
			m_nNestedDraw--;
			m_pDrawStruct.Dispose(m_grid);
			m_pDrawStruct = m_pOldDrawStruct;
			if (m_grid.HasGridBounds)
			{
				g.SetClip(clip);
			}
		}
	}

	private Rectangle GetCellRectangle(int xOffset, int yOffset, int width, int height)
	{
		if (isRightToLeft())
		{
			return new Rectangle(xOffset - width, yOffset, width, height);
		}
		return new Rectangle(xOffset, yOffset, width, height);
	}

	private Rectangle GetCellRectangle(Rectangle r)
	{
		return GetCellRectangle(r.Left, r.Top, r.Width, r.Height);
	}

	private void InternalLoadCell(DrawStruct ds, int rowIndex, int colIndex)
	{
		GridRangeInfoList ranges = m_grid.Model.Selections.Ranges;
		int num = rowIndex * ds.nCols + colIndex;
		int num2;
		int num3;
		if (true)
		{
			num2 = 2;
			num3 = 8;
		}
		else
		{
			num2 = 1;
			num3 = 4;
		}
		if ((ds.abBits[num] & 0x40) == 0)
		{
			bool flag = false;
			flag = LoadSpannedCell(m_grid, ds, rowIndex, colIndex);
			LoadBannerCell(m_grid, ds, rowIndex, colIndex);
			if (!flag)
			{
				if (ds.apStyles[num] == null)
				{
					ds.apStyles[num] = m_grid.GetPaintStyleInfo(ds.anRows[rowIndex], ds.anCols[colIndex], forceQueryCellInfo: true);
				}
				if (ds.apInterior[num] == null)
				{
					ds.apInterior[num] = ds.apStyles[num].Interior;
				}
				ds.apBorders[num] = ds.apStyles[num].ReadOnlyBorders;
				if (ds.anHeights[rowIndex] > 0 && ds.anWidths[colIndex] > 0)
				{
					if ((ds.abBits[num] & 0x4000) != 0 || ds.standardStyle.Interior != ds.apInterior[num])
					{
						ds.abBits[num] |= 32;
					}
					GridBordersInfo gridBordersInfo = ds.apBorders[num];
					if (gridBordersInfo.Left.Style != GridBorderStyle.Standard)
					{
						ds.abBits[num] |= 1;
					}
					if (gridBordersInfo.Right.Style != GridBorderStyle.Standard)
					{
						ds.abBits[num] |= 2;
					}
					if (gridBordersInfo.Top.Style != GridBorderStyle.Standard)
					{
						ds.abBits[num] |= 4;
					}
					if (gridBordersInfo.Bottom.Style != GridBorderStyle.Standard)
					{
						ds.abBits[num] |= 8;
					}
					if ((ds.abBits[num] & num2) == 0)
					{
						ds.abBits[num] |= 1024;
						if (ds.anCols[colIndex] > ds.gridHeaderCols && ds.anCols[colIndex] == ds.gridFrozenCols)
						{
							ds.abBits[num] |= 2048;
						}
					}
					if ((ds.abBits[num] & num3) == 0)
					{
						ds.abBits[num] |= 512;
						if (ds.anRows[rowIndex] > ds.gridHeaderRows && ds.anRows[rowIndex] == ds.gridFrozenRows)
						{
							ds.abBits[num] |= 4096;
						}
					}
				}
			}
		}
		if (ds.bAnyCellSelected && ranges.AnyRangeContains(GridRangeInfo.Cell(ds.anRows[rowIndex], ds.anCols[colIndex])))
		{
			ds.abBits[num] |= 16;
		}
	}

	private void DrawBanneredCells(DrawStruct ds, int rowIndex, int colIndex, int i, BrushInfo brInterior, ref int nxWidth, ref int nyHeight)
	{
		int j = colIndex + 1;
		int num = rowIndex * ds.nCols + j;
		for (; j < ds.nCols; j++)
		{
			if ((ds.abBits[num] & 0x8000) == 0)
			{
				break;
			}
			ds.abBits[num] &= -33;
			nxWidth += ds.anWidths[j];
			num++;
		}
		j--;
		int num2 = rowIndex + 1;
		bool flag = true;
		while (flag && nxWidth > 0 && num2 < ds.nRows)
		{
			num = num2 * ds.nCols + colIndex;
			int num3 = colIndex;
			while (flag && num3 <= j)
			{
				flag &= (ds.abBits[num] & 0x10000) != 0;
				num++;
				num3++;
			}
			if (flag)
			{
				num = num2 * ds.nCols + colIndex;
				int num4 = colIndex;
				while (flag && num4 <= j)
				{
					ds.abBits[num] &= -33;
					num++;
					num4++;
				}
				nyHeight += ds.anHeights[num2];
				num++;
				num2++;
			}
		}
		num2--;
		if (nxWidth > 0 && nyHeight > 0)
		{
			ds.abBits[i] &= -33;
			Rectangle cellRectangle = GetCellRectangle(ds.rectItem.Left, ds.rectItem.Top, nxWidth, nyHeight);
			GridRangeInfo gridRangeInfo = m_grid.Model.BanneredRanges.FindRange(ds.anRows[rowIndex], ds.anCols[colIndex]);
			GridStyleInfo paintStyleInfo = m_grid.GetPaintStyleInfo(gridRangeInfo.Top, gridRangeInfo.Left, forceQueryCellInfo: true);
			Point point = m_grid.ViewLayout.RowColToPoint(gridRangeInfo.Top, gridRangeInfo.Left, ignoreOutsideClientRectangle: false, GridCellSizeKind.ActualSize);
			int colRangeWidth = m_grid.ViewLayout.GetColRangeWidth(gridRangeInfo.Left, gridRangeInfo.Right, GridCellSizeKind.ActualSize);
			int rowRangeHeight = m_grid.ViewLayout.GetRowRangeHeight(gridRangeInfo.Top, gridRangeInfo.Bottom, GridCellSizeKind.ActualSize);
			Rectangle cellRectangle2 = GetCellRectangle(point.X, point.Y, colRangeWidth, rowRangeHeight);
			bool flag2 = cellRectangle2 != cellRectangle;
			Region clip = null;
			if (flag2)
			{
				clip = ds.graphics.Clip;
				ds.graphics.IntersectClip(cellRectangle);
			}
			GridDrawCellBackgroundEventArgs e = new GridDrawCellBackgroundEventArgs(ds.graphics, gridRangeInfo, isBannered: true, ds.bColor, paintStyleInfo, cellRectangle2, cellRectangle, flag2);
			m_grid.RaiseDrawCellBackground(e);
			if (!e.Cancel)
			{
				GridCellRendererBase gridCellRendererBase = m_grid.CellRenderers[paintStyleInfo.CellType];
				gridCellRendererBase.RaiseDrawCellBackground(e);
			}
			if (flag2)
			{
				ds.graphics.Clip = clip;
			}
			m_grid.DisposePaintStyle(paintStyleInfo);
		}
	}

	private void InternalDrawBackground(DrawStruct ds, int rowIndex, int top, int left, int bottom, int right)
	{
		_ = Color.White;
		if (m_grid.Model.Options.TransparentBackground || !m_grid.OptimizeDrawBackground)
		{
			return;
		}
		_ = ds.rectClip;
		ds.rectItem.Y = ds.anYOffset[rowIndex];
		ds.rectItem.Height = ds.anHeights[rowIndex];
		for (int i = left; i <= right; i++)
		{
			ds.rectItem.X = ds.anXOffset[i];
			ds.rectItem.Width = ds.anWidths[i];
			int num;
			if (((ds.abBits[num = rowIndex * ds.nCols + i] & 0x40) == 0 || (ds.abBits[num] & 0x4000) != 0) && (ds.abBits[num] & 0x20) > 0 && (ds.abBits[num] & 0x8000) == 0)
			{
				if (ds.apStyles[num] == null)
				{
					ds.rectItem.X = ds.anXOffset[i];
					ds.rectItem.Width = 0;
					continue;
				}
				int nyHeight = ds.anHeights[rowIndex];
				int nxWidth = ds.anWidths[i];
				BrushInfo brushInfo = ds.apInterior[num];
				if ((ds.abBits[num] & 0x4000) != 0)
				{
					DrawBanneredCells(ds, rowIndex, i, num, brushInfo, ref nxWidth, ref nyHeight);
				}
				else if (brushInfo.Style != BrushStyle.Gradient && brushInfo.Style != BrushStyle.None && ds.apStyles[num].BackgroundImage == null)
				{
					int j = i + 1;
					int num2 = rowIndex * ds.nCols + j;
					for (; j <= right; j++)
					{
						if ((ds.abBits[num2] & 0x40) != 0)
						{
							break;
						}
						if ((ds.abBits[num2] & 0x4000) != 0)
						{
							break;
						}
						if ((ds.abBits[num2] & 0x20) == 0)
						{
							break;
						}
						if (!ds.apInterior[num2].Equals(brushInfo))
						{
							break;
						}
						ds.abBits[num2] &= -33;
						nxWidth += ds.anWidths[j];
						num2++;
					}
					j--;
					int num3 = rowIndex + 1;
					bool flag = true;
					while (flag && nxWidth > 0 && num3 <= bottom)
					{
						num2 = num3 * ds.nCols + i;
						int num4 = i;
						while (flag && num4 <= j)
						{
							flag &= (ds.abBits[num2] & 0x40) == 0 && (ds.abBits[num2] & 0x4000) == 0 && (ds.abBits[num2] & 0x20) > 0 && ds.apInterior[num2] != null && ds.apInterior[num2].Equals(brushInfo);
							num2++;
							num4++;
						}
						if (flag)
						{
							num2 = num3 * ds.nCols + i;
							int num5 = i;
							while (flag && num5 <= j)
							{
								ds.abBits[num2] &= -33;
								num2++;
								num5++;
							}
							nyHeight += ds.anHeights[num3];
							num2++;
							num3++;
						}
					}
					num3--;
					if (nxWidth > 0 && nyHeight > 0 && (j > i || num3 > rowIndex))
					{
						ds.abBits[num] &= -33;
						Rectangle cellRectangle = GetCellRectangle(ds.rectItem.Left, ds.rectItem.Top, nxWidth, nyHeight);
						GridFillRectangleHookEventArgs e = new GridFillRectangleHookEventArgs(ds.graphics, cellRectangle, brushInfo);
						m_grid.RaiseFillRectangleHook(e);
						if (!e.Cancel)
						{
							if (ds.bColor)
							{
								BrushPaint.FillRectangle(ds.graphics, cellRectangle, m_grid.GetInterior(brushInfo));
							}
							else
							{
								BrushPaint.FillRectangle(ds.graphics, cellRectangle, brushInfo.MakeBlackAndWhite());
							}
						}
					}
				}
			}
			if (isRightToLeft())
			{
				ds.rectItem.X = ds.rectItem.X - ds.rectItem.Width;
			}
			else
			{
				ds.rectItem.X = ds.rectItem.Right;
			}
			ds.rectItem.Width = 0;
		}
	}

	private void InternalDrawCell(DrawStruct ds, int rowIndex, int colIndex, bool spannedOnly)
	{
		int num = rowIndex * ds.nCols + colIndex;
		int num2 = 320;
		bool flag = ds.apStyles[num] != null && (ds.abBits[num] & num2) != 0;
		if (flag != spannedOnly || DrawSpannedCell(m_grid, ds, rowIndex, colIndex) || ds.apStyles[num] == null)
		{
			return;
		}
		Rectangle rectItem = ds.rectItem;
		if (ds.rectItem.Width > 0 && ds.rectItem.Height > 0)
		{
			if ((ds.abBits[num] & 0x20) > 0)
			{
				m_grid.m_bForceDrawBackground = true;
			}
			if ((ds.abBits[num] & 0x4000) > 0)
			{
				m_grid.m_bDrawBannerCell = true;
			}
			m_grid.OnDrawItem(ds.graphics, ds.anRows[rowIndex], ds.anCols[colIndex], rectItem, ds.apStyles[num]);
			m_grid.m_bForceDrawBackground = false;
			m_grid.m_bDrawBannerCell = false;
		}
		if (m_grid.CurrentCell.HasCurrentCellAt(ds.anRows[rowIndex], ds.anCols[colIndex]))
		{
			ds.pCurrentControl = m_grid.CellRenderers[ds.apStyles[num].CellType];
			ds.rectEdit = m_grid.Model.SubtractBorders(rectItem, ds.apStyles[num], isRightToLeft());
		}
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	private void InternalDrawVertBorders(DrawStruct ds, int colIndex, int top, int bottom)
	{
		bool flag = true;
		bool flag2 = (m_grid.PrintingMode ? m_grid.Model.Properties.PrintVertLines : m_grid.Model.Properties.DisplayVertLines);
		bool flag3 = false;
		if (flag2)
		{
			m_tempPen = m_grid.Model.GetGridLineBorder();
			flag3 = m_grid.Model.Options.HighlightFrozenLine && !m_grid.PrintingMode && ds.anCols[colIndex] > ds.gridHeaderCols && ds.anCols[colIndex] == ds.gridFrozenCols;
		}
		else
		{
			m_tempPen = GridBorder.Empty;
		}
		GridBorderSide gridBorderSide = ((!flag) ? GridBorderSide.Left : GridBorderSide.Right);
		for (int num = 1; num <= 2; num *= 2)
		{
			GridBorderSide gridBorderSide2;
			GridBorderSide borderSide;
			if (num == 1)
			{
				gridBorderSide2 = GridBorderSide.Left;
				borderSide = GridBorderSide.Left;
			}
			else
			{
				gridBorderSide2 = GridBorderSide.Right;
				borderSide = GridBorderSide.Right;
			}
			for (int i = top; i <= bottom; i++)
			{
				int num2 = i * ds.nCols + colIndex;
				bool flag4 = ds.apStyles[num2] != null && (ds.abBits[num2] & num) > 0;
				bool flag5 = !flag4 && flag2 && ((flag3 && gridBorderSide2 == GridBorderSide.Right && (ds.abBits[num2] & 0x800) > 0) || (gridBorderSide2 == gridBorderSide && (ds.abBits[num2] & 0x400) > 0));
				if (!flag4 && !flag5)
				{
					continue;
				}
				ds.rectItem = new Rectangle(ds.anXOffset[colIndex], ds.anYOffset[i], ds.anWidths[colIndex], ds.anHeights[i]);
				GetCellRectangle(ds.rectItem.X, ds.rectItem.Y, ds.rectItem.Width, ds.rectItem.Height);
				int num3 = ds.anHeights[i];
				int j = i + 1;
				GridBorder gridBorder = ((gridBorderSide2 == GridBorderSide.Right) ? ds.apBorders[num2].Right : ds.apBorders[num2].Left);
				if (flag4 && gridBorder.Style == GridBorderStyle.None)
				{
					continue;
				}
				GridBorder gridBorder2 = ((flag4 && ds.bColor) ? gridBorder : ((!flag4) ? m_tempPen : gridBorder.MakeBlackAndWhite()));
				Color color = Color.White;
				if (ds.bColor)
				{
					color = ds.apInterior[num2].BackColor;
				}
				if (gridBorder2.Style != GridBorderStyle.Solid)
				{
					for (; j <= bottom; j++)
					{
						int num4 = j * ds.nCols + colIndex;
						bool flag6 = ds.apStyles[num4] != null && (ds.abBits[num4] & num) > 0;
						bool flag7 = !flag4 && flag2 && ((flag3 && gridBorderSide2 == GridBorderSide.Right && (ds.abBits[num4] & 0x800) > 0) || (gridBorderSide2 == gridBorderSide && (ds.abBits[num4] & 0x400) > 0));
						if (!flag6 && !flag7)
						{
							break;
						}
						GridBorder gridBorder3 = ((!flag6) ? m_tempPen : ((gridBorderSide2 == GridBorderSide.Right) ? ds.apBorders[num4].Right : ds.apBorders[num4].Left));
						Color color2 = Color.White;
						if (ds.bColor)
						{
							color2 = ds.apInterior[num4].BackColor;
						}
						if (!gridBorder3.Equals(gridBorder2) || color2 != color)
						{
							break;
						}
						if (flag6)
						{
							ds.abBits[num4] &= ~num;
						}
						if (!flag6 || num == (int)gridBorderSide)
						{
							ds.abBits[num4] &= -3073;
						}
						num3 += ds.anHeights[j];
					}
				}
				else
				{
					for (; j <= bottom; j++)
					{
						int num4 = j * ds.nCols + colIndex;
						bool flag8 = ds.apStyles[num4] != null && (ds.abBits[num4] & num) > 0;
						bool flag9 = !flag4 && flag2 && ((flag3 && gridBorderSide2 == GridBorderSide.Right && (ds.abBits[num4] & 0x800) > 0) || (gridBorderSide2 == gridBorderSide && (ds.abBits[num4] & 0x400) > 0));
						if (!flag8 && !flag9)
						{
							break;
						}
						GridBorder gridBorder3 = ((!flag8) ? m_tempPen : ((gridBorderSide2 == GridBorderSide.Right) ? ds.apBorders[num4].Right : ds.apBorders[num4].Left));
						if (!gridBorder3.Equals(gridBorder2))
						{
							break;
						}
						if (flag8)
						{
							ds.abBits[num4] &= ~num;
						}
						if (!flag8 || num == (int)gridBorderSide)
						{
							ds.abBits[num4] &= -3073;
						}
						num3 += ds.anHeights[j];
					}
				}
				Rectangle cellRectangle = GetCellRectangle(ds.rectItem.Left, ds.rectItem.Top, ds.rectItem.Width, num3);
				if (isRightToLeft())
				{
					borderSide = ((gridBorderSide2 != GridBorderSide.Left) ? GridBorderSide.Left : GridBorderSide.Right);
				}
				GridBorderPaint.DrawRectangle(ds.graphics, gridBorder2, cellRectangle, color, borderSide, m_grid.PrintingMode);
			}
			if (flag3 && flag2)
			{
				m_tempPen = m_grid.Model.GetFixedLineBorder();
			}
		}
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	private void InternalDrawHorzBorders(DrawStruct ds, int rowIndex, int leftCol, int rightCol)
	{
		bool flag = true;
		bool flag2 = (m_grid.PrintingMode ? m_grid.Model.Properties.PrintHorzLines : m_grid.Model.Properties.DisplayHorzLines);
		bool flag3 = false;
		if (flag2)
		{
			m_tempPen = m_grid.Model.GetGridLineBorder();
			flag3 = m_grid.Model.Options.HighlightFrozenLine && !m_grid.PrintingMode && ds.anRows[rowIndex] > ds.gridHeaderRows && ds.anRows[rowIndex] == ds.gridFrozenRows;
		}
		else
		{
			m_tempPen = GridBorder.Empty;
		}
		GridBorderSide gridBorderSide = ((!flag) ? GridBorderSide.Top : GridBorderSide.Bottom);
		for (int num = 4; num <= 8; num *= 2)
		{
			GridBorderSide gridBorderSide2;
			GridBorderSide borderSide;
			if (num == 4)
			{
				gridBorderSide2 = GridBorderSide.Top;
				borderSide = GridBorderSide.Top;
			}
			else
			{
				gridBorderSide2 = GridBorderSide.Bottom;
				borderSide = GridBorderSide.Bottom;
			}
			for (int i = leftCol; i <= rightCol; i++)
			{
				ds.rectItem = new Rectangle(ds.anXOffset[i], ds.anYOffset[rowIndex], ds.anWidths[i], ds.anHeights[rowIndex]);
				int num2 = rowIndex * ds.nCols + i;
				bool flag4 = ds.apStyles[num2] != null && (ds.abBits[num2] & num) > 0;
				bool flag5 = !flag4 && flag2 && ((flag3 && gridBorderSide2 == GridBorderSide.Bottom && (ds.abBits[num2] & 0x1000) > 0) || (gridBorderSide2 == gridBorderSide && (ds.abBits[num2] & 0x200) > 0));
				if (!flag4 && !flag5)
				{
					continue;
				}
				int num3 = ds.anWidths[i];
				int j = i + 1;
				GridBorder gridBorder = ((gridBorderSide2 == GridBorderSide.Bottom) ? ds.apBorders[num2].Bottom : ds.apBorders[num2].Top);
				if (flag4 && gridBorder.Style == GridBorderStyle.None)
				{
					continue;
				}
				GridBorder gridBorder2 = ((flag4 && ds.bColor) ? gridBorder : ((!flag4) ? m_tempPen : gridBorder.MakeBlackAndWhite()));
				Color color = Color.White;
				if (ds.bColor)
				{
					color = ds.apInterior[num2].BackColor;
				}
				if (gridBorder2.Style != GridBorderStyle.Solid)
				{
					for (; j <= rightCol; j++)
					{
						int num4 = rowIndex * ds.nCols + j;
						bool flag6 = ds.apStyles[num4] != null && (ds.abBits[num4] & num) > 0;
						bool flag7 = !flag4 && flag2 && ((flag3 && gridBorderSide2 == GridBorderSide.Bottom && (ds.abBits[num4] & 0x1000) > 0) || (gridBorderSide2 == gridBorderSide && (ds.abBits[num4] & 0x200) > 0));
						if (!flag6 && !flag7)
						{
							break;
						}
						GridBorder gridBorder3 = ((!flag6) ? m_tempPen : ((gridBorderSide2 == GridBorderSide.Bottom) ? ds.apBorders[num4].Bottom : ds.apBorders[num4].Top));
						Color color2 = Color.White;
						if (ds.bColor)
						{
							color2 = ds.apInterior[num4].BackColor;
						}
						if (!gridBorder3.Equals(gridBorder2) || color2 != color)
						{
							break;
						}
						if (flag6)
						{
							ds.abBits[num4] &= ~num;
						}
						if (!flag6 || num == (int)gridBorderSide)
						{
							ds.abBits[num4] &= -4609;
						}
						num3 += ds.anWidths[j];
					}
				}
				else
				{
					for (; j <= rightCol; j++)
					{
						int num4 = rowIndex * ds.nCols + j;
						bool flag8 = ds.apStyles[num4] != null && (ds.abBits[num4] & num) > 0;
						bool flag9 = !flag4 && flag2 && ((flag3 && gridBorderSide2 == GridBorderSide.Bottom && (ds.abBits[num4] & 0x1000) > 0) || (gridBorderSide2 == gridBorderSide && (ds.abBits[num4] & 0x200) > 0));
						if (!flag8 && !flag9)
						{
							break;
						}
						GridBorder gridBorder3 = ((!flag8) ? m_tempPen : ((gridBorderSide2 == GridBorderSide.Bottom) ? ds.apBorders[num4].Bottom : ds.apBorders[num4].Top));
						if (!gridBorder3.Equals(gridBorder2))
						{
							break;
						}
						if (flag8)
						{
							ds.abBits[num4] &= ~num;
						}
						if (!flag8 || num == (int)gridBorderSide)
						{
							ds.abBits[num4] &= -4609;
						}
						num3 += ds.anWidths[j];
					}
				}
				Rectangle cellRectangle = GetCellRectangle(ds.rectItem.Left, ds.rectItem.Top, num3, ds.rectItem.Height);
				GridBorderPaint.DrawRectangle(ds.graphics, gridBorder2, cellRectangle, color, borderSide, m_grid.PrintingMode);
			}
			if (flag3 && flag2)
			{
				m_tempPen = m_grid.Model.GetFixedLineBorder();
			}
		}
	}

	private void InternalInvertCells(DrawStruct ds, int leftCol, int rightCol, int topRow, int bottomRow)
	{
		ds.rectItem.Y = ds.nyMin;
		for (int i = topRow; i <= bottomRow; i++)
		{
			ds.rectItem.Y = ds.anYOffset[i];
			ds.rectItem.Height = ds.anHeights[i];
			for (int j = leftCol; j <= rightCol; j++)
			{
				ds.rectItem.X = ds.anXOffset[j];
				ds.rectItem.Width = ds.anWidths[j];
				Rectangle cellRectangle = GetCellRectangle(ds.rectItem.Left, ds.rectItem.Top, ds.rectItem.Width, ds.rectItem.Height);
				if ((ds.abBits[i * ds.nCols + j] & 0x10) > 0)
				{
					m_grid.IntDrawInvertCell(ds.graphics, ds.anRows[i], ds.anCols[j], cellRectangle, inPaint: true);
				}
			}
		}
	}

	private void InternalInvertCells(DrawStruct ds, int rowIndex)
	{
		ds.rectItem.Y = ds.anYOffset[rowIndex];
		ds.rectItem.Height = ds.anHeights[rowIndex];
		for (int i = 0; i < ds.nCols; i++)
		{
			ds.rectItem.X = ds.anXOffset[i];
			ds.rectItem.Width = ds.anWidths[i];
			if ((ds.abBits[rowIndex * ds.nCols + i] & 0x10) > 0)
			{
				int j;
				for (j = i + 1; j < ds.nCols && (ds.abBits[rowIndex * ds.nCols + j] & 0x10) > 0; j++)
				{
					ds.rectItem.Width += ds.anWidths[j];
				}
				Rectangle cellRectangle = GetCellRectangle(ds.rectItem.Left, ds.rectItem.Top, ds.rectItem.Width, ds.rectItem.Height);
				m_grid.IntDrawInvertCell(ds.graphics, ds.anRows[rowIndex], ds.anCols[i], cellRectangle, inPaint: true);
				i = j - 1;
			}
		}
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public void OnDrawBorders(Graphics g, Rectangle rectItem, GridStyleInfo style)
	{
		Color backColor = m_grid.GetBackColor(style.Interior.BackColor);
		GridBordersInfo readOnlyBorders = style.ReadOnlyBorders;
		GridBorderPaint.DrawRectangle(g, readOnlyBorders.Top, rectItem, backColor, GridBorderSide.Top, m_grid.PrintingMode);
		GridBorderPaint.DrawRectangle(g, readOnlyBorders.Bottom, rectItem, backColor, GridBorderSide.Bottom, m_grid.PrintingMode);
		if (isRightToLeft())
		{
			GridBorderPaint.DrawRectangle(g, readOnlyBorders.Right, rectItem, backColor, GridBorderSide.Left, m_grid.PrintingMode);
			GridBorderPaint.DrawRectangle(g, readOnlyBorders.Left, rectItem, backColor, GridBorderSide.Right, m_grid.PrintingMode);
		}
		else
		{
			GridBorderPaint.DrawRectangle(g, readOnlyBorders.Left, rectItem, backColor, GridBorderSide.Left, m_grid.PrintingMode);
			GridBorderPaint.DrawRectangle(g, readOnlyBorders.Right, rectItem, backColor, GridBorderSide.Right, m_grid.PrintingMode);
		}
	}

	public void DrawBrushRect(Graphics g, Rectangle rect, BrushInfo brush)
	{
		GridFillRectangleHookEventArgs e = new GridFillRectangleHookEventArgs(g, rect, brush);
		m_grid.RaiseFillRectangleHook(e);
		if (!e.Cancel)
		{
			BrushPaint.FillRectangle(g, rect, m_grid.GetInterior(brush));
		}
	}

	public void DrawInvertCell(Graphics g, int rowIndex, int colIndex, Rectangle rectItem, bool inPaint)
	{
		if (!inPaint && m_grid.Updating)
		{
			m_grid.Invalidate(rectItem);
			return;
		}
		if ((m_grid.Model.Options.AllowSelection & GridSelectionFlags.AlphaBlend) == 0)
		{
			m_grid.CurrentCell.AdjustRowColIfCoveredCell(ref rowIndex, ref colIndex);
			if (!m_grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex) || m_grid.m_bInvertRect || m_grid.Model.Options.ShowCurrentCellBorderBehavior == GridShowCurrentCellBorder.HideAlways)
			{
				InvertRect(g, rectItem);
			}
		}
		else if (!inPaint)
		{
			m_grid.Invalidate(rectItem);
		}
		else
		{
			DrawStruct pDrawStruct = m_pDrawStruct;
			if (pDrawStruct != null)
			{
				g.FillRectangle(pDrawStruct.selectionBrush, rectItem);
			}
		}
		m_grid.m_bInvertRect = false;
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public void InvertRect(Graphics g, Rectangle r)
	{
		IntPtr hdc = g.GetHdc();
		r.Intersect(m_grid.GridBounds);
		NativeMethods.RECT lpRect = new NativeMethods.RECT(r);
		NativeMethods.InvertRect(hdc, ref lpRect);
		g.ReleaseHdc(hdc);
	}

	public static void Draw3dFrame(Graphics g, int x0, int y0, int x1, int y1, int w, Color rgbTopLeft, Color rgbBottomRight)
	{
		for (int i = 0; i < w; i++)
		{
			Brush brush = new SolidBrush(rgbTopLeft);
			Rectangle rect = Rectangle.FromLTRB(x0, y0, x1, y0 + 1);
			g.FillRectangle(brush, rect);
			rect = Rectangle.FromLTRB(x0, y0, x0 + 1, y1);
			g.FillRectangle(brush, rect);
			brush.Dispose();
			Brush brush2 = new SolidBrush(rgbBottomRight);
			rect = Rectangle.FromLTRB(x0, y1, x1 + 1, y1 + 1);
			g.FillRectangle(brush2, rect);
			rect = Rectangle.FromLTRB(x1, y0, x1 + 1, y1);
			g.FillRectangle(brush2, rect);
			brush2.Dispose();
			if (i < w - 1)
			{
				x0++;
				y0++;
				x1--;
				y1--;
			}
		}
	}

	public bool LoadBannerCell(GridControlBase pGrid, object pds, int rowIndex, int colIndex)
	{
		DrawStruct drawStruct = (DrawStruct)pds;
		int num = rowIndex * drawStruct.nCols + colIndex;
		if ((drawStruct.abBits[num] & 0x4000) != 0)
		{
			return false;
		}
		GridRangeInfo range;
		bool flag = pGrid.Model.BanneredRanges.Find(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex], out range);
		if (flag)
		{
			if (drawStruct.apInterior[num] == null)
			{
				GridStyleInfo paintStyleInfo = m_grid.GetPaintStyleInfo(range.Top, range.Left, forceQueryCellInfo: true);
				if (drawStruct.bColor)
				{
					drawStruct.apInterior[num] = paintStyleInfo.Interior;
				}
				else
				{
					drawStruct.apInterior[num] = paintStyleInfo.Interior.MakeBlackAndWhite();
				}
				m_grid.DisposePaintStyle(paintStyleInfo);
			}
			try
			{
				int num2 = range.Right;
				int num3 = range.Bottom;
				if (num3 < drawStruct.gridTopRow && num3 > drawStruct.gridFrozenRows)
				{
					num3 = drawStruct.gridFrozenRows;
				}
				if (num2 < drawStruct.gridLeftCol && num2 > drawStruct.gridFrozenCols)
				{
					num2 = drawStruct.gridFrozenCols;
				}
				int num4 = Math.Min(pGrid.GetClientRow(num3) - drawStruct.TopRow, drawStruct.nRows - 1);
				int num5 = Math.Min(pGrid.GetClientCol(num2) - drawStruct.LeftCol, drawStruct.nCols - 1);
				drawStruct.abBits[rowIndex * drawStruct.nCols + colIndex] |= 16384;
				int num6 = 0;
				int num7 = 0;
				for (int i = rowIndex; i <= num4; i++)
				{
					num6 = 0;
					for (int j = colIndex; j <= num5; j++)
					{
						int num8 = i * drawStruct.nCols + j;
						drawStruct.apInterior[num8] = drawStruct.apInterior[num];
						if (flag)
						{
							drawStruct.abBits[num8] |= 0x4000 | (num6 * 32768) | (num7 * 65536);
						}
						num6 = 1;
					}
					num7 = 1;
				}
			}
			catch (Exception e)
			{
				TraceUtil.TraceExceptionCatched(e);
			}
			if (drawStruct.bColor)
			{
				drawStruct.abBits[num] |= 32;
			}
			return true;
		}
		return false;
	}

	public bool LoadSpannedCell(GridControlBase pGrid, object pds, int rowIndex, int colIndex)
	{
		DrawStruct drawStruct = (DrawStruct)pds;
		int num = rowIndex * drawStruct.nCols + colIndex;
		bool flag = true;
		int num2;
		int num3;
		GridBorderSide side;
		GridBorderSide side2;
		if (flag)
		{
			num2 = 2;
			num3 = 8;
			side = GridBorderSide.Right;
			side2 = GridBorderSide.Bottom;
		}
		else
		{
			num2 = 1;
			num3 = 4;
			side = GridBorderSide.Left;
			side2 = GridBorderSide.Top;
		}
		GridRangeInfo range;
		bool flag2 = pGrid.Model.CoveredRanges.Find(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex], out range);
		bool flag3 = flag2;
		bool flag4 = false;
		if (!flag2)
		{
			GridCurrentCell currentCell = pGrid.CurrentCell;
			bool flag5 = drawStruct.pCurrentControl != null && currentCell.HasCurrentCellAt(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex]) && currentCell.Renderer.HasFocusControl;
			flag3 |= pGrid.Model.FloatingCells.Find(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex], out range) && (drawStruct.anCols[colIndex] == range.Left || !flag5);
			if (!flag3)
			{
				flag4 = pGrid.Model.MergeCells.Find(GridMergeCellDirection.Both, drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex], out range) && ((drawStruct.anCols[colIndex] == range.Left && drawStruct.anRows[rowIndex] == range.Top) || !flag5);
				flag3 = flag3 || flag4;
			}
		}
		if (flag3)
		{
			if (drawStruct.apStyles[num] == null)
			{
				drawStruct.apStyles[num] = m_grid.GetPaintStyleInfo(range.Top, range.Left, forceQueryCellInfo: true);
				if (drawStruct.bColor)
				{
					if (drawStruct.apInterior[num] == null)
					{
						drawStruct.apInterior[num] = drawStruct.apStyles[num].Interior;
					}
					drawStruct.apBorders[num] = drawStruct.apStyles[num].ReadOnlyBorders;
				}
				else
				{
					if (drawStruct.apInterior[num] == null)
					{
						drawStruct.apInterior[num] = drawStruct.apStyles[num].Interior.MakeBlackAndWhite();
					}
					drawStruct.apBorders[num] = drawStruct.apStyles[num].ReadOnlyBorders;
				}
			}
			try
			{
				int num4 = range.Right;
				int num5 = range.Bottom;
				if (num5 < drawStruct.gridTopRow && num5 > drawStruct.gridFrozenRows)
				{
					num5 = drawStruct.gridFrozenRows;
				}
				if (num4 < drawStruct.gridLeftCol && num4 > drawStruct.gridFrozenCols)
				{
					num4 = drawStruct.gridFrozenCols;
				}
				int num6 = Math.Min(pGrid.GetClientRow(num5) - drawStruct.TopRow, drawStruct.nRows - 1);
				if (num6 < 0)
				{
					pGrid.Model.CoveredRanges.Find(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex], out range);
					num4 = range.Right;
					num5 = range.Bottom;
					if (num5 < drawStruct.gridTopRow && num5 > drawStruct.gridFrozenRows)
					{
						num5 = drawStruct.gridFrozenRows;
					}
					if (num4 < drawStruct.gridLeftCol && num4 > drawStruct.gridFrozenCols)
					{
						num4 = drawStruct.gridFrozenCols;
					}
					num6 = Math.Min(pGrid.GetClientRow(num5) - drawStruct.TopRow, drawStruct.nRows - 1);
				}
				int num7 = Math.Min(pGrid.GetClientCol(num4) - drawStruct.LeftCol, drawStruct.nCols - 1);
				if (num6 >= rowIndex && num7 >= colIndex)
				{
					drawStruct.abBits[rowIndex * drawStruct.nCols + colIndex] |= 64;
					int num8 = 0;
					for (int i = rowIndex; i <= num6; i++)
					{
						for (int j = colIndex; j <= num7; j++)
						{
							int num9 = i * drawStruct.nCols + j;
							drawStruct.apStyles[num9] = drawStruct.apStyles[num];
							if (drawStruct.apInterior[num9] == null)
							{
								drawStruct.apInterior[num9] = drawStruct.apInterior[num];
							}
							drawStruct.apBorders[num9] = drawStruct.apBorders[num];
							if (flag2)
							{
								drawStruct.abBits[num9] |= 0xC0 | (num8 * 256);
							}
							else if (!pGrid.CurrentCell.HasCurrentCellAt(drawStruct.anRows[i], drawStruct.anCols[j]) || !pGrid.CurrentCell.Renderer.HasFocusControl)
							{
								drawStruct.abBits[num9] |= 0x40 | (num8 * 256);
							}
							if (flag4)
							{
								drawStruct.abBits[num9] |= 8192;
							}
							num8 = 1;
						}
					}
					if (flag)
					{
						if (drawStruct.anCols[num7] == range.Right)
						{
							for (int i = rowIndex; i <= num6; i++)
							{
								int num10 = i * drawStruct.nCols + num7;
								if (drawStruct.apStyles[num10] != null)
								{
									if (drawStruct.apBorders[num10][side].Style != GridBorderStyle.Standard)
									{
										drawStruct.abBits[num10] |= num2;
									}
									if ((drawStruct.abBits[num10] & num2) == 0)
									{
										drawStruct.abBits[num10] |= 1024;
									}
								}
							}
						}
						if (drawStruct.anRows[num6] == range.Bottom)
						{
							for (int j = colIndex; j <= num7; j++)
							{
								int num11 = num6 * drawStruct.nCols + j;
								if (drawStruct.apStyles[num11] != null)
								{
									if (drawStruct.apBorders[num11][side2].Style != GridBorderStyle.Standard)
									{
										drawStruct.abBits[num11] |= num3;
									}
									if ((drawStruct.abBits[num11] & num3) == 0)
									{
										drawStruct.abBits[num11] |= 512;
									}
								}
							}
						}
					}
					else
					{
						if (drawStruct.anCols[colIndex] == range.Left)
						{
							for (int i = rowIndex; i <= num6; i++)
							{
								int num12 = i * drawStruct.nCols + colIndex;
								if (drawStruct.apStyles[num12] != null)
								{
									if (drawStruct.apBorders[num12][side].Style != GridBorderStyle.Standard)
									{
										drawStruct.abBits[num12] |= num2;
									}
									if ((drawStruct.abBits[num12] & num2) == 0)
									{
										drawStruct.abBits[num12] |= 1024;
									}
								}
							}
						}
						if (drawStruct.anRows[rowIndex] == range.Top)
						{
							for (int j = colIndex; j <= num7; j++)
							{
								int num13 = rowIndex * drawStruct.nCols + j;
								if (drawStruct.apStyles[num13] != null)
								{
									if (drawStruct.apBorders[num13][side2].Style != GridBorderStyle.Standard)
									{
										drawStruct.abBits[num13] |= num3;
									}
									if ((drawStruct.abBits[num13] & num3) == 0)
									{
										drawStruct.abBits[num13] |= 512;
									}
								}
							}
						}
					}
					if (drawStruct.anCols[num7] > drawStruct.gridHeaderCols && drawStruct.anCols[num7] == drawStruct.gridFrozenCols && drawStruct.anCols[num7] == range.Right)
					{
						for (int i = rowIndex; i <= num6; i++)
						{
							int num14 = i * drawStruct.nCols + num7;
							if (drawStruct.apStyles[num14] != null && drawStruct.apBorders[num14].Right.Style != GridBorderStyle.Standard)
							{
								drawStruct.abBits[num14] |= 2048;
							}
						}
					}
					if (drawStruct.anRows[num6] > drawStruct.gridHeaderRows && drawStruct.anRows[num6] == drawStruct.gridFrozenRows && drawStruct.anRows[num6] == range.Bottom)
					{
						for (int j = colIndex; j <= num7; j++)
						{
							int num15 = num6 * drawStruct.nCols + j;
							if (drawStruct.apStyles[num15] != null && drawStruct.apBorders[num15].Bottom.Style != GridBorderStyle.Standard)
							{
								drawStruct.abBits[num15] |= 4096;
							}
						}
					}
				}
			}
			catch (Exception e)
			{
				TraceUtil.TraceExceptionCatched(e);
			}
			drawStruct.bAnyCellCovered = true;
			if (drawStruct.bColor)
			{
				drawStruct.abBits[num] |= 32;
			}
			return true;
		}
		return false;
	}

	public bool DrawSpannedCell(GridControlBase pGrid, object pds, int rowIndex, int colIndex)
	{
		GridDataBoundGrid gridDataBoundGrid = pGrid as GridDataBoundGrid;
		DrawStruct drawStruct = (DrawStruct)pds;
		int num;
		if (drawStruct.apStyles[num = rowIndex * drawStruct.nCols + colIndex] != null && (drawStruct.abBits[num] & 0x100) != 0)
		{
			if ((drawStruct.abBits[num] & 0x80) == 0 && drawStruct.rectItem.Width > 0 && drawStruct.rectItem.Height > 0)
			{
				GridCellRendererBase gridCellRendererBase = null;
				if (pGrid.CurrentCell.HasCurrentCellAt(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex]))
				{
					gridCellRendererBase = pGrid.CurrentCell.Renderer;
					if (gridCellRendererBase != null)
					{
						if (gridCellRendererBase.InitalizedAt(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex]))
						{
							drawStruct.pCurrentControl = gridCellRendererBase;
						}
						drawStruct.rectEdit = GetCellRectangle(drawStruct.rectItem);
						GridStyleInfo paintStyleInfo = pGrid.GetPaintStyleInfo(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex], forceQueryCellInfo: false);
						drawStruct.rectEdit = pGrid.Model.SubtractBorders(drawStruct.rectEdit, paintStyleInfo, m_grid.IsRightToLeft());
						m_grid.DisposePaintStyle(paintStyleInfo);
					}
				}
			}
			return true;
		}
		if (drawStruct.apStyles[num] != null && (drawStruct.abBits[num] & 0x40) != 0)
		{
			pGrid.Model.GetSpannedRangeInfo(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex], out var range);
			GridRangeInfo gridRangeInfo = range;
			GridRangeInfo[] array = new GridRangeInfo[4];
			int row = pGrid.GetRow(pGrid.InternalGetFrozenRows());
			int col = pGrid.GetCol(pGrid.InternalGetFrozenCols());
			array[0] = GridRangeInfo.InternalCells(gridRangeInfo.Top, gridRangeInfo.Left, Math.Min(row, gridRangeInfo.Bottom), Math.Min(col, gridRangeInfo.Right));
			array[1] = GridRangeInfo.InternalCells(Math.Max(pGrid.TopRowIndex, gridRangeInfo.Top), gridRangeInfo.Left, gridRangeInfo.Bottom, Math.Min(col, gridRangeInfo.Right));
			array[2] = GridRangeInfo.InternalCells(gridRangeInfo.Top, Math.Max(pGrid.LeftColIndex, gridRangeInfo.Left), Math.Min(row, gridRangeInfo.Bottom), gridRangeInfo.Right);
			array[3] = GridRangeInfo.InternalCells(Math.Max(pGrid.TopRowIndex, gridRangeInfo.Top), Math.Max(pGrid.LeftColIndex, gridRangeInfo.Left), gridRangeInfo.Bottom, gridRangeInfo.Right);
			GridCellRendererBase gridCellRendererBase2 = null;
			GridStyleInfo paintStyleInfo2 = pGrid.GetPaintStyleInfo(gridRangeInfo.Top, gridRangeInfo.Left, forceQueryCellInfo: true);
			if (pGrid.CurrentCell.HasCurrentCellAt(drawStruct.anRows[rowIndex], drawStruct.anCols[colIndex]) || ((drawStruct.abBits[num] & 0x80) != 0 && pGrid.CurrentCell.HasCurrentCellAt(gridRangeInfo.Top, gridRangeInfo.Left)))
			{
				gridCellRendererBase2 = pGrid.CellRenderers[paintStyleInfo2.CellType];
			}
			bool flag = false;
			for (int i = 0; i <= 3; i++)
			{
				int num2 = i;
				if (array[num2].IsEmpty || array[num2].Bottom < drawStruct.anRows[rowIndex] || array[num2].Right < drawStruct.anCols[colIndex])
				{
					continue;
				}
				bool flag2 = false;
				Rectangle r = ((gridDataBoundGrid == null || !gridDataBoundGrid.DrawIndividualSpannedCellBorders) ? pGrid.ViewLayout.RangeInfoToRectangle(array[num2], ignoreOutsideClientRectangle: false, GridCellSizeKind.ActualSize) : GetCellRectangle(drawStruct.rectItem));
				Rectangle r2 = pGrid.ViewLayout.RangeInfoToRectangle(array[num2], ignoreOutsideClientRectangle: false, GridCellSizeKind.VisibleSize);
				r2.Intersect(pGrid.GridBounds);
				if (num2 >= 2)
				{
					if (isRightToLeft())
					{
						if (r2.Right < drawStruct.scrollRect.Right)
						{
							flag2 = true;
							GridUtil.SetRight(ref r2, drawStruct.scrollRect.Right);
						}
					}
					else if (r2.Left < drawStruct.scrollRect.Left)
					{
						flag2 = true;
						GridUtil.SetLeft(ref r2, drawStruct.scrollRect.Left);
					}
				}
				if ((num2 == 1 || num2 == 3) && r2.Top < drawStruct.scrollRect.Top)
				{
					flag2 = true;
					GridUtil.SetTop(ref r2, drawStruct.scrollRect.Top);
				}
				r2.Intersect(Rectangle.Ceiling(drawStruct.graphics.ClipBounds));
				RectangleF rectangleF = RectangleF.Empty;
				try
				{
					bool coveredCellFullRect = paintStyleInfo2.CellModel.coveredCellFullRect;
					if (coveredCellFullRect)
					{
						if (gridRangeInfo.Top < array[num2].Top)
						{
							flag2 = true;
							GridUtil.OffsetTop(ref r, -pGrid.ViewLayout.GetRowRangeHeight(gridRangeInfo.Top, array[num2].Top - 1, GridCellSizeKind.ActualSize));
						}
						if (gridRangeInfo.Bottom > array[num2].Bottom)
						{
							flag2 = true;
							r.Height += pGrid.ViewLayout.GetRowRangeHeight(array[num2].Bottom + 1, gridRangeInfo.Bottom, GridCellSizeKind.ActualSize);
						}
					}
					else
					{
						r.Y = Math.Max(drawStruct.nyMin, r.Top);
						r.Height = Math.Min(r.Height, drawStruct.nyMax - r.Top + 1);
					}
					if (gridRangeInfo.Left < array[num2].Left)
					{
						flag2 = true;
						if (isRightToLeft())
						{
							r.Width += pGrid.ViewLayout.GetColRangeWidth(gridRangeInfo.Left, array[num2].Left - 1, GridCellSizeKind.ActualSize);
						}
						else
						{
							GridUtil.OffsetLeft(ref r, -pGrid.ViewLayout.GetColRangeWidth(gridRangeInfo.Left, array[num2].Left - 1, GridCellSizeKind.ActualSize));
						}
					}
					if (gridRangeInfo.Right > array[num2].Right)
					{
						flag2 = true;
						if (isRightToLeft())
						{
							GridUtil.OffsetLeft(ref r, -pGrid.ViewLayout.GetColRangeWidth(array[num2].Right + 1, gridRangeInfo.Right, GridCellSizeKind.ActualSize));
						}
						else
						{
							r.Width += pGrid.ViewLayout.GetColRangeWidth(array[num2].Right + 1, gridRangeInfo.Right, GridCellSizeKind.ActualSize);
						}
					}
					flag2 |= !r2.Contains(r);
					pGrid.m_bDrawCoveredCell = (drawStruct.abBits[num] & 0x4000) == 0;
					if (r.Width > 0 && r.Height > 0)
					{
						if (flag2)
						{
							rectangleF = drawStruct.graphics.ClipBounds;
							Rectangle rect = Rectangle.Intersect(r2, drawStruct.rectClip);
							if (rect.IsEmpty)
							{
								rectangleF = RectangleF.Empty;
							}
							else
							{
								drawStruct.graphics.IntersectClip(rect);
								pGrid.OnDrawItem(drawStruct.graphics, coveredCellFullRect ? gridRangeInfo.Top : drawStruct.anRows[rowIndex], gridRangeInfo.Left, r, paintStyleInfo2);
							}
						}
						else
						{
							pGrid.OnDrawItem(drawStruct.graphics, coveredCellFullRect ? gridRangeInfo.Top : drawStruct.anRows[rowIndex], gridRangeInfo.Left, r, paintStyleInfo2);
						}
					}
					pGrid.m_bDrawCoveredCell = false;
					if (r.Height > 0 && r.Width > 0)
					{
						pGrid.OnDrawBorders(drawStruct.graphics, r, paintStyleInfo2);
					}
					if (gridCellRendererBase2 == null)
					{
						continue;
					}
					if (!gridCellRendererBase2.HasFocusControl && !flag)
					{
						if ((drawStruct.abBits[num] & 0x80) == 0)
						{
							r = drawStruct.rectItem;
						}
						r = pGrid.Model.SubtractBorders(r, paintStyleInfo2, m_grid.IsRightToLeft());
						if (!r.IsEmpty)
						{
							gridCellRendererBase2.RaiseOutlineCurrentCell(drawStruct.graphics, r);
						}
						if ((drawStruct.abBits[num] & 0x80) == 0)
						{
							flag = true;
						}
					}
					else
					{
						drawStruct.pCurrentControl = gridCellRendererBase2;
						if ((drawStruct.abBits[num] & 0x2000) != 0)
						{
							drawStruct.rectEdit = pGrid.Model.SubtractBorders(GetCellRectangle(drawStruct.rectItem), drawStruct.apStyles[num], m_grid.IsRightToLeft());
						}
						else
						{
							drawStruct.rectEdit = pGrid.Model.SubtractBorders(r, drawStruct.apStyles[num], m_grid.IsRightToLeft());
						}
					}
				}
				catch (Exception e)
				{
					TraceUtil.TraceExceptionCatched(e);
					throw;
				}
				finally
				{
					if (rectangleF != RectangleF.Empty)
					{
						drawStruct.graphics.SetClip(rectangleF);
					}
					if (gridDataBoundGrid != null && gridDataBoundGrid.DrawIndividualSpannedCellBorders)
					{
						pGrid.Invalidate(pGrid.ViewLayout.RangeInfoToRectangle(array[num2], GridCellSizeKind.VisibleSize), invalidateChildren: true);
					}
				}
			}
			m_grid.DisposePaintStyle(paintStyleInfo2);
			return true;
		}
		return false;
	}
}
