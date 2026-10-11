using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDataBoundTreeCellButton : GridCellButton
{
	public GridDataBoundTreeCellButton(GridCellRendererBase control)
		: base(control)
	{
	}

	public override void Draw(Graphics g, int rowIndex, int colIndex, bool bActive, GridStyleInfo style)
	{
		object cellValue = base.Grid.Model[rowIndex, 1].CellValue;
		if (cellValue.ToString().Length != 0)
		{
			bool flag = IsHovering(rowIndex, colIndex);
			bool flag2 = IsMouseDown(rowIndex, colIndex);
			bool flag3 = (bool)Convert.ChangeType(cellValue, typeof(bool));
			bool flag4 = !style.Clickable;
			Rectangle rectangle = Bounds;
			string empty = string.Empty;
			empty = (flag4 ? "SFEXPANDING.BMP" : ((!flag && !flag2) ? (flag3 ? "SFCOLLAPSE.BMP" : "SFEXPAND.BMP") : (flag3 ? "SFCOLLAPSING.BMP" : "SFEXPANDING.BMP")));
			GridDataBoundIconPaint.Paint.PaintIcon(g, rectangle, Point.Empty, empty, Color.Black);
		}
	}
}
