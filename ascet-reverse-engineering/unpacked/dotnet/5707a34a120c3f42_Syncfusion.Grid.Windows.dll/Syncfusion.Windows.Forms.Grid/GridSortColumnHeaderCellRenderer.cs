using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridSortColumnHeaderCellRenderer : GridHeaderCellRenderer
{
	public GridSortColumnHeaderCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
	}

	protected override void OnDrawDisplayText(Graphics g, Rectangle textRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		object obj = style.Tag;
		if (base.Grid.PrintingMode || !(obj is ListSortDirection))
		{
			obj = null;
		}
		ListSortDirection listSortDirection = ListSortDirection.Ascending;
		int num = 0;
		if (obj != null)
		{
			listSortDirection = (ListSortDirection)obj;
			num = 12;
		}
		bool flag = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
		if (flag)
		{
			GridUtil.OffsetLeft(ref textRectangle, num);
		}
		else
		{
			textRectangle.Width -= num;
		}
		base.OnDrawDisplayText(g, textRectangle, rowIndex, colIndex, style);
		if (obj != null)
		{
			Rectangle rect = ((!flag) ? new Rectangle(textRectangle.Right, textRectangle.Y, 10, textRectangle.Height) : new Rectangle(textRectangle.Left - num, textRectangle.Y, 10, textRectangle.Height));
			rect = GridUtil.CenterInRect(rect, new Size(8, 8));
			Brush brush = null;
			Pen pen = null;
			base.Grid.Model.Options.GridVisualStylesDrawing.GetSortIconBrush(out brush, out pen);
			int num2 = Math.Max(0, (rect.Height - 3) / 2);
			rect.Inflate(-num2, -num2);
			Pen pen2 = new Pen(SystemColors.Control);
			GridTriangleDirection dir = ((listSortDirection != ListSortDirection.Ascending) ? GridTriangleDirection.Down : GridTriangleDirection.Up);
			GridPaintTriangle.Paint(g, rect, dir, brush, pen, opaque: true);
			pen.Dispose();
			pen2.Dispose();
			brush.Dispose();
		}
	}

	protected override void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
	}
}
