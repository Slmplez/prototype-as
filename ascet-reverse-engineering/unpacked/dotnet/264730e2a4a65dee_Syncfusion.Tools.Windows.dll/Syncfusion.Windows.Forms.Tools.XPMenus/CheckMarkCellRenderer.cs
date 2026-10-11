using System.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class CheckMarkCellRenderer : GridStaticCellRenderer
{
	public CheckMarkCellRenderer(GridControlBase grid, GridCellModelBase model)
		: base(grid, model)
	{
	}

	protected override void OnDraw(Graphics g, Rectangle rect, int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (style.CellValue != null && (int)style.CellValue > 0)
		{
			bool Selected = false;
			MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
			if (menuGridControlBase != null)
			{
				Selected = menuGridControlBase.HighlightRange.Top == rowIndex;
			}
			BarItem barItem = menuGridControlBase.parentItem.Items[rowIndex - 1];
			if (!barItem.ReiseBeforePopupItemPaint(g, rect, ref Selected, DrawElement.CheckMark, style))
			{
				int width = 18;
				int num = 18;
				Rectangle rect2 = new Rectangle(rect.Left + 2, rect.Top + (rect.Height - num) / 2, width, num);
				SolidBrush solidBrush = new SolidBrush(Color.FromArgb(70, MenuColors.SelColor));
				g.FillRectangle(solidBrush, rect2);
				solidBrush.Dispose();
				Pen pen = new Pen(SystemColors.ControlText);
				g.DrawLine(pen, rect2.Left + 5, rect2.Top + 8, rect2.Left + 7, rect2.Top + 10);
				g.DrawLine(pen, rect2.Left + 5, rect2.Top + 9, rect2.Left + 7, rect2.Top + 11);
				g.DrawLine(pen, rect2.Left + 7, rect2.Top + 10, rect2.Left + 11, rect2.Top + 6);
				g.DrawLine(pen, rect2.Left + 7, rect2.Top + 11, rect2.Left + 11, rect2.Top + 7);
				pen.Dispose();
				rect2.Width--;
				rect2.Height--;
				pen = new Pen(MenuColors.SelBorderColor);
				g.DrawRectangle(pen, rect2);
				pen.Dispose();
				barItem.ReiseAfterPopupItemPaint(g, rect, Selected, DrawElement.CheckMark, style);
			}
		}
	}
}
