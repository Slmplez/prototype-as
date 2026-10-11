using System.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class ShortcutCellRenderer : GridStaticCellRenderer
{
	public ShortcutCellRenderer(GridControlBase grid, GridCellModelBase model)
		: base(grid, model)
	{
	}

	public override void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		bool Selected = false;
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		if (menuGridControlBase != null)
		{
			Selected = menuGridControlBase.HighlightRange.Top == rowIndex;
		}
		BarItem barItem = menuGridControlBase.parentItem.Items[rowIndex - 1];
		if (!barItem.ReiseBeforePopupItemPaint(g, cellRectangle, ref Selected, DrawElement.Shortcut, style))
		{
			base.Draw(g, cellRectangle, rowIndex, colIndex, style);
		}
		barItem.ReiseAfterPopupItemPaint(g, cellRectangle, Selected, DrawElement.Shortcut, style);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, GridStyleInfo style, bool fillBackground)
	{
		if (base.Grid is MenuGridControlBase { ThemesEnabled: not false, IsVistaOS: not false })
		{
			rect.Inflate(0, -2);
		}
		base.DrawBackground(g, rect, style, fillBackground);
	}
}
