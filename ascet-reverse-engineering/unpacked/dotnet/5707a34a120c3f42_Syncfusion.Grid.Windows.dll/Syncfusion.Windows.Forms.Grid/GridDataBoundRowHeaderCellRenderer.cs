using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDataBoundRowHeaderCellRenderer : GridHeaderCellRenderer
{
	public GridDataBoundRowHeaderCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		base.OnDraw(g, clientRectangle, rowIndex, colIndex, style);
	}

	protected override void OnDrawDisplayText(Graphics g, Rectangle textRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (!(base.Grid is GridDataBoundGrid { PrintingMode: false } gridDataBoundGrid) || base.CurrentCell.StaticDrawing)
		{
			return;
		}
		string text = null;
		if (gridDataBoundGrid.binder.RecordEqualsAtRowIndex(gridDataBoundGrid.binder.CurrentRowIndex, rowIndex))
		{
			if (gridDataBoundGrid.IsRightToLeft())
			{
				if (colIndex == 0)
				{
					text = ((rowIndex != gridDataBoundGrid.Model.RowCount || !gridDataBoundGrid.Binder.SupportsAddNew) ? (gridDataBoundGrid.Binder.IsEditing ? "SFPENCILR.BMP" : "SFARROWR.BMP") : "SFSTAR.BMP");
				}
			}
			else if (colIndex == 0)
			{
				text = ((rowIndex != gridDataBoundGrid.Model.RowCount || !gridDataBoundGrid.Binder.SupportsAddNew) ? (gridDataBoundGrid.Binder.IsEditing ? "SFPENCIL.BMP" : "SFARROW.BMP") : "SFSTAR.BMP");
			}
		}
		if (text != null)
		{
			GridDataBoundIconPaint.Paint.PaintIcon(g, textRectangle, Point.Empty, text, style.TextColor);
		}
	}

	protected override void OnClick(int rowIndex, int colIndex, MouseEventArgs e)
	{
	}

	public static Rectangle PaintIcon(Graphics g, Rectangle bounds, Point offset, Bitmap bmp, Color foreColor)
	{
		return GridDataBoundIconPaint.Paint.PaintIcon(g, bounds, offset, bmp, foreColor);
	}

	public static void PaintIcon(Graphics g, Rectangle bounds, Point offset, string bitmapName, Color foreColor)
	{
		GridDataBoundIconPaint.Paint.PaintIcon(g, bounds, offset, bitmapName, foreColor);
	}
}
