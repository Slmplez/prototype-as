#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Printing;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridPrintDocument : PrintDocument
{
	private GridControlBase m_grid;

	private int m_nCurPage;

	internal bool m_printPreview;

	private int fromPage;

	private int toPage = int.MaxValue;

	private Rectangle customBounds = Rectangle.Empty;

	private bool isPDFExport;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsPrintPreview => m_printPreview;

	protected Rectangle CustomBounds
	{
		get
		{
			return customBounds;
		}
		set
		{
			customBounds = value;
		}
	}

	protected bool IsPDFExport
	{
		get
		{
			return isPDFExport;
		}
		set
		{
			if (isPDFExport != value)
			{
				isPDFExport = value;
			}
		}
	}

	public GridPrintDocument(GridControlBase grid)
	{
		m_grid = grid;
	}

	public GridPrintDocument(GridControlBase grid, bool printPreview)
	{
		m_grid = grid;
	}

	protected override void OnBeginPrint(PrintEventArgs ev)
	{
		base.OnBeginPrint(ev);
		m_nCurPage = 0;
		GridProperties properties = m_grid.Model.Properties;
		m_grid.Model.PushPrintFloatingCells();
		m_grid.PrintInfo.m_awPageFirstRow = new ArrayList();
		m_grid.PrintInfo.m_awPageFirstCol = new ArrayList();
		_ = m_grid.TopRowIndex;
		_ = m_grid.LeftColIndex;
		int topRowIndex = m_grid.TopRowIndex;
		int leftColIndex = m_grid.LeftColIndex;
		m_grid.PrintInfo.m_bPrintPaintMsg = false;
		m_grid.PrintingMode = true;
		try
		{
			Rectangle bounds = base.DefaultPageSettings.Bounds;
			if (!CustomBounds.IsEmpty)
			{
				bounds = CustomBounds;
			}
			bounds.Width -= base.DefaultPageSettings.Margins.Left + base.DefaultPageSettings.Margins.Right;
			bounds.Height -= base.DefaultPageSettings.Margins.Top + base.DefaultPageSettings.Margins.Bottom;
			m_grid.PrintBounds = bounds;
			_ = m_grid.GridBounds;
			GridRangeInfoList selectedRanges = m_grid.Model.SelectedRanges;
			GridRangeInfo activeRange = selectedRanges.ActiveRange;
			bool flag = activeRange.Width > 1 || activeRange.Height > 1;
			bool flag2 = base.PrinterSettings.PrintRange == PrintRange.Selection;
			bool flag3 = base.PrinterSettings.PrintRange == PrintRange.SomePages;
			fromPage = ((!flag3) ? 1 : base.PrinterSettings.FromPage);
			toPage = (flag3 ? base.PrinterSettings.ToPage : int.MaxValue);
			bool flag4 = flag2 && !flag;
			bool flag5 = flag2 && flag;
			if (flag4)
			{
				m_grid.PrintInfo.m_nPrintTopRow = topRowIndex;
				m_grid.PrintInfo.m_nPrintLeftCol = leftColIndex;
				m_grid.PrintInfo.m_awPageFirstCol.Add(m_grid.PrintInfo.m_nPrintLeftCol);
				m_grid.PrintInfo.m_awPageFirstRow.Add(m_grid.PrintInfo.m_nPrintTopRow);
				m_grid.ViewLayout.Reset();
				int num = m_grid.ViewLayout.LastVisibleCol;
				int num2 = m_grid.ViewLayout.LastVisibleRow;
				if (!m_grid.ViewLayout.HasPartialVisibleCols)
				{
					num++;
				}
				if (!m_grid.ViewLayout.HasPartialVisibleRows)
				{
					num2++;
				}
				m_grid.PrintInfo.m_awPageFirstCol.Add(num);
				m_grid.PrintInfo.m_awPageFirstRow.Add(num2);
				base.PrinterSettings.ToPage = 1;
				base.PrinterSettings.MaximumPage = 1;
			}
			else
			{
				GridRangeInfo gridRangeInfo = ((!flag5) ? GridRangeInfo.Table() : selectedRanges.ActiveRange);
				gridRangeInfo = gridRangeInfo.ExpandRange(m_grid.InternalGetFrozenRows() + 1, m_grid.InternalGetFrozenCols() + 1, m_grid.Model.RowCount, m_grid.Model.ColCount);
				m_grid.PrintInfo.m_nPrintTopRow = Math.Max(m_grid.InternalGetFrozenRows() + 1, gridRangeInfo.Top);
				m_grid.PrintInfo.m_nPrintLeftCol = Math.Max(m_grid.InternalGetFrozenCols() + 1, gridRangeInfo.Left);
				m_grid.PrintInfo.m_awPageFirstCol.Add(m_grid.PrintInfo.m_nPrintLeftCol);
				m_grid.PrintInfo.m_nCurrentPageColIndex = 0;
				m_grid.PrintInfo.m_nCurrentPageRowIndex = 0;
				m_grid.ViewLayout.Reset();
				int num3 = 0;
				bool flag6 = false;
				while (!flag6)
				{
					int num4 = m_grid.ViewLayout.LastVisibleCol;
					flag6 = !m_grid.ViewLayout.HasPartialVisibleCols;
					if (flag6 || num4 == m_grid.PrintInfo.m_nPrintLeftCol)
					{
						num4++;
					}
					if (num4 > gridRangeInfo.Right)
					{
						num4 = gridRangeInfo.Right + 1;
						flag6 = true;
					}
					num3++;
					if (num3 < m_grid.PrintInfo.m_awPageFirstCol.Count)
					{
						m_grid.PrintInfo.m_awPageFirstCol[num3] = num4;
					}
					else
					{
						m_grid.PrintInfo.m_awPageFirstCol.Add(num4);
					}
					m_grid.PrintInfo.m_nPrintLeftCol = num4;
					m_grid.ViewLayout.Reset();
				}
				m_grid.PrintInfo.m_nPrintTopRow = Math.Max(m_grid.InternalGetFrozenRows() + 1, gridRangeInfo.Top);
				m_grid.PrintInfo.m_nPrintLeftCol = Math.Max(m_grid.InternalGetFrozenCols() + 1, gridRangeInfo.Left);
				m_grid.PrintInfo.m_awPageFirstRow.Add(m_grid.PrintInfo.m_nPrintTopRow);
				m_grid.ViewLayout.Reset();
				num3 = 0;
				flag6 = false;
				while (!flag6)
				{
					int num5 = m_grid.ViewLayout.LastVisibleRow;
					flag6 = !m_grid.ViewLayout.HasPartialVisibleRows;
					if (flag6 || num5 == m_grid.PrintInfo.m_nPrintTopRow)
					{
						num5++;
					}
					if (num5 > gridRangeInfo.Bottom)
					{
						num5 = gridRangeInfo.Bottom + 1;
						flag6 = true;
					}
					num3++;
					if (num3 < m_grid.PrintInfo.m_awPageFirstRow.Count)
					{
						m_grid.PrintInfo.m_awPageFirstRow[num3] = num5;
					}
					else
					{
						m_grid.PrintInfo.m_awPageFirstRow.Add(num5);
					}
					m_grid.PrintInfo.m_nPrintTopRow = num5;
					m_grid.ViewLayout.Reset();
				}
				base.PrinterSettings.ToPage = (m_grid.PrintInfo.m_awPageFirstRow.Count - 1) * (m_grid.PrintInfo.m_awPageFirstCol.Count - 1);
				base.PrinterSettings.MaximumPage = base.PrinterSettings.ToPage;
				if (m_printPreview || base.PrintController is PreviewPrintController)
				{
					if (properties.PageOrder == 0)
					{
						m_nCurPage = m_grid.PrintInfo.m_nCurrentPageRowIndex * (m_grid.PrintInfo.m_awPageFirstCol.Count - 1) + m_grid.PrintInfo.m_nCurrentPageColIndex + 1;
					}
					else
					{
						m_nCurPage = m_grid.PrintInfo.m_nCurrentPageColIndex * (m_grid.PrintInfo.m_awPageFirstRow.Count - 1) + m_grid.PrintInfo.m_nCurrentPageRowIndex + 1;
					}
				}
				else
				{
					m_nCurPage = fromPage - 1;
				}
			}
			m_grid.PrintingMode = false;
		}
		finally
		{
			m_grid.PrintingMode = false;
		}
	}

	protected override void OnPrintPage(PrintPageEventArgs ev)
	{
		base.OnPrintPage(ev);
		m_nCurPage++;
		GridProperties properties = m_grid.Model.Properties;
		m_grid.PrintInfo.m_bPrintPaintMsg = false;
		m_grid.PrintingMode = true;
		try
		{
			if (m_grid.PrintInfo.m_awPageFirstRow.Count == 0 || m_grid.PrintInfo.m_awPageFirstCol.Count == 0)
			{
				Trace.WriteLineIf(Switches.Printing.TraceWarning, "Warning! You must call OnBeginPrinting and OnEndPrinting from your derived class!\n");
			}
			m_grid.PrintBounds = ev.MarginBounds;
			int num = 0;
			int num2 = 0;
			if (properties.PageOrder == 0)
			{
				num = (m_nCurPage - 1) / (m_grid.PrintInfo.m_awPageFirstCol.Count - 1);
				num2 = (m_nCurPage - 1) % (m_grid.PrintInfo.m_awPageFirstCol.Count - 1);
			}
			else
			{
				num = (m_nCurPage - 1) % (m_grid.PrintInfo.m_awPageFirstRow.Count - 1);
				num2 = (m_nCurPage - 1) / (m_grid.PrintInfo.m_awPageFirstRow.Count - 1);
			}
			m_grid.PrintInfo.m_nCurrentPageColIndex = num2;
			m_grid.PrintInfo.m_nCurrentPageRowIndex = num;
			m_grid.PrintInfo.m_nPrintTopRow = (int)m_grid.PrintInfo.m_awPageFirstRow[num];
			m_grid.PrintInfo.m_nPrintLeftCol = (int)m_grid.PrintInfo.m_awPageFirstCol[num2];
			m_grid.ViewLayout.Reset();
			_ = m_grid.GridBounds;
			GridRangeInfoList selectedRanges = m_grid.Model.SelectedRanges;
			GridRangeInfo activeRange = selectedRanges.ActiveRange;
			bool flag = activeRange.Width > 1 || activeRange.Height > 1;
			bool flag2 = (base.PrinterSettings.PrintRange == PrintRange.Selection || base.PrintController is PreviewPrintController || m_printPreview) && !flag;
			int num3 = ((num + 1 >= m_grid.PrintInfo.m_awPageFirstRow.Count) ? m_grid.GetClientRow(m_grid.Model.RowCount) : (m_grid.GetClientRow(Math.Min(m_grid.Model.RowCount + 1, (int)m_grid.PrintInfo.m_awPageFirstRow[num + 1])) - 1));
			int num4 = ((num2 + 1 >= m_grid.PrintInfo.m_awPageFirstCol.Count) ? m_grid.GetClientCol(m_grid.Model.ColCount) : (m_grid.GetClientCol(Math.Min(m_grid.Model.ColCount + 1, (int)m_grid.PrintInfo.m_awPageFirstCol[num2 + 1])) - 1));
			Rectangle printBounds = m_grid.PrintBounds;
			Point point = m_grid.ViewLayout.ClientRowColToPoint(num3 + 1, num4 + 1, GridCellSizeKind.ActualSize);
			int num5;
			int num6;
			if (m_grid.IsRightToLeft())
			{
				num5 = Math.Min(printBounds.Width, printBounds.Right - point.X);
				num6 = Math.Min(printBounds.Height, point.Y - printBounds.Top);
			}
			else
			{
				num5 = Math.Min(printBounds.Width, point.X - printBounds.Left);
				num6 = Math.Min(printBounds.Height, point.Y - printBounds.Top);
			}
			int num7 = ((!properties.CenterHorizontal) ? printBounds.Left : (printBounds.Left + (printBounds.Width - num5) / 2));
			int num8 = ((!properties.CenterVertical) ? printBounds.Top : (printBounds.Top + (printBounds.Height - num6) / 2));
			m_grid.PrintBounds = new Rectangle(num7, num8, num5 + 1, num6 + 1);
			m_grid.ViewLayout.Reset();
			printBounds = new Rectangle(num7 - 1, num8 - 1, num5 + 1, num6 + 1);
			Region clip = ev.Graphics.Clip;
			ev.Graphics.IntersectClip(printBounds);
			m_grid.Model.FloatingCells.EvaluateFloatingCells(GridRangeInfo.Cells(m_grid.GetRow(1), m_grid.GetCol(1), m_grid.GetRow(num3), m_grid.GetCol(num4)));
			m_grid.Model.MergeCells.EvaluateMergeCells(GridRangeInfo.Cells(m_grid.GetRow(1), m_grid.GetCol(1), m_grid.GetRow(num3), m_grid.GetCol(num4)));
			int i = 0;
			if (!(m_grid is GridControl) && !(m_grid is GridDataBoundGrid) && IsPDFExport)
			{
				bool flag3 = false;
				for (i = 1; i <= num3; i++)
				{
					GridStyleInfo paintStyleInfo = m_grid.GetPaintStyleInfo(i, 0, forceQueryCellInfo: true);
					if (paintStyleInfo.CellType == "Header")
					{
						using (SolidBrush brush = new SolidBrush(paintStyleInfo.BackColor))
						{
							ev.Graphics.FillRectangle(brush, ev.Graphics.ClipBounds);
							m_grid.OnDrawItem(ev.Graphics, i, 0, ev.MarginBounds, paintStyleInfo);
						}
						flag3 = true;
						break;
					}
				}
				if (flag3)
				{
					i++;
				}
			}
			m_grid.OnDrawClientRowCol(i, 0, num3, num4, ev.Graphics, printBounds);
			ev.HasMorePages = !flag2 && (num + 2 < m_grid.PrintInfo.m_awPageFirstRow.Count || num2 + 2 < m_grid.PrintInfo.m_awPageFirstCol.Count) && m_nCurPage < toPage;
			ev.Graphics.Clip = clip;
			if (properties.PrintFrame)
			{
				Rectangle rect = new Rectangle(num7 - 1, num8 - 1, num5 + 1, num6 + 1);
				int num9 = 2;
				rect.Inflate(num9 - 3, num9 - 3);
				Pen pen = new Pen(Color.Black, num9);
				ev.Graphics.DrawRectangle(pen, rect);
				pen.Dispose();
			}
			m_grid.PrintingMode = false;
		}
		finally
		{
			m_grid.PrintingMode = false;
		}
	}

	protected override void OnEndPrint(PrintEventArgs e)
	{
		m_grid.Model.ResetPrintFloatingCells();
		m_grid.PrintInfo.m_awPageFirstRow = null;
		m_grid.PrintInfo.m_awPageFirstCol = null;
	}
}
