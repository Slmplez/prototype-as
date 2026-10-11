using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridPaintExcelLikeSelection : GridSubComponent, IGridDrawSelectionFrame
{
	private bool isLockedDrawSelectionFrame;

	private GridRangeInfo m_rgLastSelectionFrame = GridRangeInfo.Empty;

	private GridSelectionMarkerLocation m_nLastSelectionFrameMarker;

	private bool inScroll;

	private GridControlBase grid;

	public override string ToString()
	{
		return "GPE(" + (isLockedDrawSelectionFrame ? "L " : string.Empty) + m_rgLastSelectionFrame.ToString() + " " + m_nLastSelectionFrameMarker.ToString() + ")" + grid.ToString();
	}

	public GridPaintExcelLikeSelection(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
		grid.SelectionFrameChanging += GridSelectionFrameChanging;
		grid.SelectionFrameChanged += GridSelectionFrameChanged;
		grid.LeftColChanging += GridBeforeScrolling;
		grid.TopRowChanging += GridBeforeScrolling;
		grid.LeftColChanged += GridAfterScrolled;
		grid.TopRowChanged += GridAfterScrolled;
		grid.Paint += GridPaint;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			grid.SelectionFrameChanging -= GridSelectionFrameChanging;
			grid.SelectionFrameChanged -= GridSelectionFrameChanged;
			grid.LeftColChanging -= GridBeforeScrolling;
			grid.TopRowChanging -= GridBeforeScrolling;
			grid.LeftColChanged -= GridAfterScrolled;
			grid.TopRowChanged -= GridAfterScrolled;
			grid.Paint -= GridPaint;
		}
		base.Dispose(disposing);
	}

	internal static void GridInvertRect(GridControlBase pGrid, Graphics g, Rectangle rect, Rectangle rectClip)
	{
		if (!rectClip.IsEmpty)
		{
			rect = Rectangle.Intersect(rect, rectClip);
		}
		if (!rect.IsEmpty)
		{
			pGrid.InvertRect(g, rect);
		}
	}

	private void DrawInvertFrame(GridControlBase pGrid, Graphics g, Rectangle rc, Rectangle rectClip, bool bTopVisible, bool bLeftVisible, GridSelectionMarkerLocation nMarker, bool bOnlyMarker)
	{
		Rectangle rectangle = rc;
		rectClip.Intersect(Rectangle.Ceiling(g.ClipBounds));
		if (rectClip.IsEmpty || rectClip.Height == 0 || rectClip.Width == 0)
		{
			return;
		}
		int num = ((!bTopVisible) ? 1 : 0);
		rectangle.Offset(-1, -1);
		if (!bOnlyMarker)
		{
			if (bTopVisible)
			{
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 1, rectangle.Top - 1, rectangle.Right + 2, rectangle.Top + 1), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 2, rectangle.Top + 2, rectangle.Right - 2, rectangle.Top + 3), rectClip);
			}
			else if (bLeftVisible && rectangle.Bottom > rectangle.Top)
			{
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 2, rectangle.Top, rectangle.Left + 3, rectangle.Top + 3), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 2, rectangle.Top, rectangle.Right - 1, rectangle.Top + 1), rectClip);
			}
			if (bLeftVisible)
			{
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 1, rectangle.Top + 1, rectangle.Left + 1, rectangle.Bottom + 2), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 2, rectangle.Top + 3, rectangle.Left + 3, rectangle.Bottom - 2), rectClip);
			}
			else if (bTopVisible && rectangle.Right > rectangle.Left)
			{
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left, rectangle.Bottom - 2, rectangle.Left + 2, rectangle.Bottom - 1), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left, rectangle.Top + 2, rectangle.Left + 2, rectangle.Top + 3), rectClip);
			}
			GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 1, rectangle.Bottom, rectangle.Right + 1, rectangle.Bottom + 2), rectClip);
			GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right, rectangle.Top + 1, rectangle.Right + 2, rectangle.Bottom + 2), rectClip);
			GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 2, rectangle.Bottom - 2, rectangle.Right - 2, rectangle.Bottom - 1), rectClip);
			GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 2, rectangle.Top + 2 - num, rectangle.Right - 1, rectangle.Bottom - 1), rectClip);
		}
		if (inScroll)
		{
			return;
		}
		if (base.Grid.IsRightToLeft())
		{
			switch (nMarker)
			{
			case GridSelectionMarkerLocation.Left:
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 7, rectangle.Bottom - 1, rectangle.Right - 2, rectangle.Bottom + 2), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 7, rectangle.Bottom - 3, rectangle.Right - 3, rectangle.Bottom - 2), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 6, rectangle.Bottom - 2, rectangle.Right - 1, rectangle.Bottom + 3), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 2, rectangle.Bottom + 2, rectangle.Right - 1, rectangle.Bottom + 3), rectClip);
				break;
			case GridSelectionMarkerLocation.Top:
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 2, rectangle.Top + 2, rectangle.Left + 1, rectangle.Top + 7), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 2, rectangle.Top + 3, rectangle.Left + 3, rectangle.Top + 7), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 3, rectangle.Top + 1, rectangle.Left + 2, rectangle.Top + 6), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 3, rectangle.Top + 1, rectangle.Left - 2, rectangle.Top + 2), rectClip);
				break;
			default:
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 2, rectangle.Bottom - 2, rectangle.Left + 1, rectangle.Bottom + 3), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 3, rectangle.Bottom - 1, rectangle.Left + 2, rectangle.Bottom + 3), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left - 3, rectangle.Bottom + 2, rectangle.Left + 2, rectangle.Bottom + 3), rectClip);
				break;
			}
		}
		else
		{
			switch (nMarker)
			{
			case GridSelectionMarkerLocation.Left:
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 2, rectangle.Bottom - 1, rectangle.Left + 7, rectangle.Bottom + 2), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 3, rectangle.Bottom - 3, rectangle.Left + 7, rectangle.Bottom - 2), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 1, rectangle.Bottom - 2, rectangle.Left + 6, rectangle.Bottom + 3), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Left + 1, rectangle.Bottom + 2, rectangle.Left + 2, rectangle.Bottom + 3), rectClip);
				break;
			case GridSelectionMarkerLocation.Top:
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 1, rectangle.Top + 2, rectangle.Right + 2, rectangle.Top + 7), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 3, rectangle.Top + 3, rectangle.Right - 2, rectangle.Top + 7), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 2, rectangle.Top + 1, rectangle.Right + 3, rectangle.Top + 6), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right + 2, rectangle.Top + 1, rectangle.Right + 3, rectangle.Top + 2), rectClip);
				break;
			default:
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 1, rectangle.Bottom - 2, rectangle.Right + 2, rectangle.Bottom + 3), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right - 2, rectangle.Bottom - 1, rectangle.Right + 3, rectangle.Bottom + 2), rectClip);
				GridInvertRect(pGrid, g, Rectangle.FromLTRB(rectangle.Right + 2, rectangle.Bottom + 2, rectangle.Right + 3, rectangle.Bottom + 3), rectClip);
				break;
			}
		}
	}

	private void DrawSelectionRangeFrame(GridControlBase pGrid, Graphics g, GridRangeInfo rg, GridSelectionMarkerLocation nMarker, bool bOnlyMarker)
	{
		int num = pGrid.InternalGetFrozenCols();
		int num2 = pGrid.InternalGetFrozenRows();
		int leftColIndex = pGrid.LeftColIndex;
		int topRowIndex = pGrid.TopRowIndex;
		int num3 = topRowIndex - 1;
		while (num3 > num2 && pGrid.GetRowHeight(num3) == 0)
		{
			num3--;
		}
		int num4 = leftColIndex - 1;
		while (num4 > num && pGrid.GetColWidth(num4) == 0)
		{
			num4--;
		}
		bool flag = rg.Left <= num || (rg.Right >= num4 && rg.Left <= pGrid.ViewLayout.LastVisibleCol);
		bool flag2 = rg.Top <= num2 || (rg.Bottom >= num3 && rg.Top <= pGrid.ViewLayout.LastVisibleRow);
		if (!flag || !flag2)
		{
			return;
		}
		bool flag3 = rg.Bottom >= topRowIndex;
		bool flag4 = rg.Right >= leftColIndex;
		bool flag5 = (!flag3 && rg.Bottom >= num3 && rg.Bottom < topRowIndex) || (rg.Bottom == num2 && rg.Bottom + 1 == topRowIndex);
		bool flag6 = (!flag4 && rg.Right >= num4 && rg.Right < leftColIndex) || (rg.Right == num && rg.Right + 1 == leftColIndex);
		bool flag7 = rg.Top <= num2 || rg.Top > topRowIndex || (rg.Top == topRowIndex && num2 + 1 == topRowIndex);
		bool flag8 = rg.Left <= num || rg.Left > leftColIndex || (rg.Left == leftColIndex && num + 1 == leftColIndex);
		bool flag9 = !flag7 && rg.Top == topRowIndex;
		bool flag10 = !flag8 && rg.Left == leftColIndex;
		Rectangle gridBounds = pGrid.GridBounds;
		int height = gridBounds.Height;
		int width = gridBounds.Width;
		int colRangeWidth = pGrid.ViewLayout.GetColRangeWidth(0, num, width, GridCellSizeKind.VisibleSize);
		int rowRangeHeight = pGrid.ViewLayout.GetRowRangeHeight(0, num2, height, GridCellSizeKind.VisibleSize);
		Rectangle[] array = new Rectangle[4];
		Rectangle[] array2 = new Rectangle[4];
		bool[] array3 = new bool[4];
		bool[] array4 = new bool[4];
		for (int i = 0; i < 4; i++)
		{
			ref Rectangle reference = ref array2[i];
			reference = Rectangle.Empty;
			ref Rectangle reference2 = ref array[i];
			reference2 = Rectangle.Empty;
			array3[i] = (array4[i] = false);
		}
		if (rg.Left <= num && rg.Top < topRowIndex)
		{
			int num5 = ((rg.Top > 0) ? pGrid.ViewLayout.GetRowRangeHeight(0, rg.Top - 1, height, GridCellSizeKind.ActualSize) : 0);
			int num6 = ((rg.Left > 0) ? pGrid.ViewLayout.GetColRangeWidth(0, rg.Left - 1, width, GridCellSizeKind.ActualSize) : 0);
			int bottom = num5 + pGrid.ViewLayout.GetRowRangeHeight(rg.Top, Math.Min(num2, rg.Bottom), height, GridCellSizeKind.VisibleSize);
			int right = num6 + pGrid.ViewLayout.GetColRangeWidth(rg.Left, Math.Min(num, rg.Right), width, GridCellSizeKind.VisibleSize);
			ref Rectangle reference3 = ref array[0];
			reference3 = Rectangle.FromLTRB(num6, num5, right, bottom);
			ref Rectangle reference4 = ref array2[0];
			reference4 = Rectangle.FromLTRB(0, 0, colRangeWidth, rowRangeHeight);
			array3[0] = (array4[0] = true);
		}
		if (rg.Left <= num && rg.Bottom >= topRowIndex)
		{
			int top = ((!flag7 && !flag9) ? rowRangeHeight : (gridBounds.Y + pGrid.ViewLayout.GetClientRowRangeHeight(0, pGrid.GetClientRow(rg.Top) - 1, height, GridCellSizeKind.ActualSize)));
			int num7 = ((rg.Left > 0) ? pGrid.ViewLayout.GetColRangeWidth(0, rg.Left - 1, width, GridCellSizeKind.ActualSize) : 0);
			int bottom2 = rowRangeHeight + pGrid.ViewLayout.GetRowRangeHeight(topRowIndex, rg.Bottom, height, GridCellSizeKind.VisibleSize);
			int right2 = num7 + pGrid.ViewLayout.GetColRangeWidth(rg.Left, rg.Right, width, GridCellSizeKind.VisibleSize);
			ref Rectangle reference5 = ref array[1];
			reference5 = Rectangle.FromLTRB(num7, top, right2, bottom2);
			ref Rectangle reference6 = ref array2[1];
			reference6 = Rectangle.FromLTRB(0, rowRangeHeight, colRangeWidth, gridBounds.Height);
			array4[1] = true;
			array3[1] = rg.Top >= topRowIndex;
		}
		if (rg.Top <= num2 && rg.Right >= leftColIndex)
		{
			int num8 = ((rg.Top > 0) ? pGrid.ViewLayout.GetRowRangeHeight(0, rg.Top - 1, height, GridCellSizeKind.ActualSize) : 0);
			int left = ((!flag8 && !flag10) ? colRangeWidth : (gridBounds.X + pGrid.ViewLayout.GetClientColRangeWidth(0, pGrid.GetClientCol(rg.Left) - 1, GridCellSizeKind.ActualSize)));
			int bottom3 = num8 + pGrid.ViewLayout.GetRowRangeHeight(rg.Top, rg.Bottom, height, GridCellSizeKind.VisibleSize);
			int right3 = colRangeWidth + pGrid.ViewLayout.GetColRangeWidth(leftColIndex, rg.Right, width, GridCellSizeKind.VisibleSize);
			ref Rectangle reference7 = ref array[2];
			reference7 = Rectangle.FromLTRB(left, num8, right3, bottom3);
			ref Rectangle reference8 = ref array2[2];
			reference8 = Rectangle.FromLTRB(colRangeWidth, 0, gridBounds.Width, rowRangeHeight);
			array4[2] = rg.Left >= leftColIndex;
			array3[2] = true;
		}
		if ((rg.Bottom >= topRowIndex || flag5) && (rg.Right >= leftColIndex || flag6))
		{
			int top2 = ((!flag7 && !flag9) ? rowRangeHeight : pGrid.ViewLayout.GetClientRowRangeHeight(0, pGrid.GetClientRow(rg.Top) - 1, GridCellSizeKind.ActualSize));
			int left2 = ((!flag8 && !flag10) ? colRangeWidth : pGrid.ViewLayout.GetClientColRangeWidth(0, pGrid.GetClientCol(rg.Left) - 1, GridCellSizeKind.ActualSize));
			int bottom4 = rowRangeHeight + pGrid.ViewLayout.GetRowRangeHeight(topRowIndex, rg.Bottom, height, GridCellSizeKind.VisibleSize);
			int right4 = colRangeWidth + pGrid.ViewLayout.GetColRangeWidth(leftColIndex, rg.Right, width, GridCellSizeKind.VisibleSize);
			ref Rectangle reference9 = ref array[3];
			reference9 = Rectangle.FromLTRB(left2, top2, right4, bottom4);
			ref Rectangle reference10 = ref array2[3];
			reference10 = Rectangle.FromLTRB(colRangeWidth, rowRangeHeight, gridBounds.Width, gridBounds.Height);
			array3[3] = rg.Top >= topRowIndex;
			array4[3] = rg.Left >= leftColIndex;
		}
		for (int j = 0; j < 4; j++)
		{
			if (!array2[j].IsEmpty)
			{
				if (base.Grid.IsRightToLeft())
				{
					ref Rectangle reference11 = ref array[j];
					reference11 = new Rectangle(pGrid.GridBounds.Right - array[j].Right, array[j].Top, array[j].Width, array[j].Height);
					ref Rectangle reference12 = ref array2[j];
					reference12 = new Rectangle(pGrid.GridBounds.Right - array2[j].Right, array2[j].Top, array2[j].Width, array2[j].Height);
					array[j].Offset(0, pGrid.GridBounds.Location.Y);
					array2[j].Offset(0, pGrid.GridBounds.Location.Y);
				}
				else
				{
					array[j].Offset(pGrid.GridBounds.Location);
					array2[j].Offset(pGrid.GridBounds.Location);
				}
				DrawInvertFrame(pGrid, g, array[j], array2[j], array3[j], array4[j], nMarker, bOnlyMarker);
			}
		}
	}

	[DocumentationExclude]
	public void DrawSelectionFrame(GridControlBase pGrid, Graphics g, bool bDrawOld, GridRangeInfo pNewRange)
	{
		if (!pGrid.Model.Options.ExcelLikeSelectionFrame || isLockedDrawSelectionFrame)
		{
			return;
		}
		_ = pGrid.GridBounds;
		if (bDrawOld && !m_rgLastSelectionFrame.IsEmpty && g != null)
		{
			DrawSelectionRangeFrame(pGrid, g, m_rgLastSelectionFrame, m_nLastSelectionFrameMarker, bOnlyMarker: false);
		}
		m_rgLastSelectionFrame = GridRangeInfo.Empty;
		if (!(pNewRange != null) || pNewRange.IsEmpty)
		{
			return;
		}
		GridRangeInfo gridRangeInfo = pNewRange;
		gridRangeInfo = ((gridRangeInfo.Top == 0 && gridRangeInfo.Left == 0) ? GridRangeInfo.Table() : ((gridRangeInfo.Left == 0) ? GridRangeInfo.Rows(gridRangeInfo.Top, gridRangeInfo.Bottom) : ((gridRangeInfo.Top != 0) ? GridRangeInfo.Cells(gridRangeInfo.Top, gridRangeInfo.Left, gridRangeInfo.Bottom, gridRangeInfo.Right) : GridRangeInfo.Cols(gridRangeInfo.Left, gridRangeInfo.Right))));
		if ((gridRangeInfo.IsTable && (grid.Model.Options.AllowSelection & GridSelectionFlags.Table) != GridSelectionFlags.None) || (gridRangeInfo.IsRows && (grid.Model.Options.AllowSelection & GridSelectionFlags.Row) != GridSelectionFlags.None) || (gridRangeInfo.IsCols && (grid.Model.Options.AllowSelection & GridSelectionFlags.Column) != GridSelectionFlags.None) || (gridRangeInfo.IsCells && (grid.Model.Options.AllowSelection & GridSelectionFlags.Cell) != GridSelectionFlags.None))
		{
			GridSelectionMarkerLocation gridSelectionMarkerLocation = (gridRangeInfo.IsCols ? GridSelectionMarkerLocation.Top : ((!gridRangeInfo.IsRows) ? GridSelectionMarkerLocation.Default : GridSelectionMarkerLocation.Left));
			m_rgLastSelectionFrame = gridRangeInfo.ExpandRange(pGrid.InternalGetHeaderRows() + 1, pGrid.InternalGetHeaderCols() + 1, pGrid.Model.RowCount, pGrid.Model.ColCount);
			m_nLastSelectionFrameMarker = gridSelectionMarkerLocation;
			if (g != null)
			{
				DrawSelectionRangeFrame(pGrid, g, m_rgLastSelectionFrame, gridSelectionMarkerLocation, bOnlyMarker: false);
			}
		}
	}

	private void ToggleSelectionFrameMarker(GridControlBase pGrid)
	{
		if (m_nLastSelectionFrameMarker != GridSelectionMarkerLocation.None && !m_rgLastSelectionFrame.IsEmpty)
		{
			Graphics graphics = pGrid.CreateGridGraphics();
			DrawSelectionRangeFrame(pGrid, graphics, m_rgLastSelectionFrame, m_nLastSelectionFrameMarker, bOnlyMarker: true);
			graphics.Dispose();
		}
	}

	private void GridSelectionFrameChanging(object sender, GraphicsEventArgs e)
	{
		ResetSelectionFrame(e.Graphics);
	}

	private void GridSelectionFrameChanged(object sender, GraphicsEventArgs e)
	{
		DrawSelectionFrame(e.Graphics);
	}

	private void GridAfterScrolled(object sender, GridRowColIndexChangedEventArgs e)
	{
		inScroll = false;
		ToggleSelectionFrameMarker(grid);
	}

	private void GridBeforeScrolling(object sender, GridRowColIndexChangingEventArgs e)
	{
		ToggleSelectionFrameMarker(grid);
		inScroll = true;
	}

	private void GridPaint(object sender, PaintEventArgs e)
	{
		DrawSelectionFrame(e.Graphics);
	}

	private bool LockSelectionFrame(GridControlBase pGrid, bool bLock)
	{
		if (!pGrid.Model.Options.ExcelLikeSelectionFrame)
		{
			return false;
		}
		bool flag = isLockedDrawSelectionFrame;
		if (bLock != flag)
		{
			Graphics graphics = null;
			if (pGrid.ShouldPrepareUpdate() && pGrid.Visible)
			{
				graphics = pGrid.CreateGridGraphics();
			}
			isLockedDrawSelectionFrame = false;
			if (bLock)
			{
				ResetSelectionFrame(graphics);
			}
			else
			{
				DrawSelectionFrame(graphics);
			}
			isLockedDrawSelectionFrame = bLock;
			graphics?.Dispose();
		}
		return flag;
	}

	private void DrawSelectionFrame(Graphics g)
	{
		if (!grid.Model.Selections.Ranges.ActiveRange.IsEmpty)
		{
			if (g == null)
			{
				g = grid.CreateGraphics();
				g.SetClip(grid.GridBounds);
				DrawSelectionFrame(grid, g, bDrawOld: false, grid.Model.Selections.Ranges.ActiveRange);
				g.Dispose();
			}
			else
			{
				DrawSelectionFrame(grid, g, bDrawOld: false, grid.Model.Selections.Ranges.ActiveRange);
			}
		}
	}

	private void ResetSelectionFrame(Graphics g)
	{
		if (g == null)
		{
			g = grid.CreateGraphics();
			g.SetClip(grid.GridBounds);
			DrawSelectionFrame(grid, g, bDrawOld: true, GridRangeInfo.Empty);
			g.Dispose();
		}
		else
		{
			DrawSelectionFrame(grid, g, bDrawOld: true, GridRangeInfo.Empty);
		}
	}
}
