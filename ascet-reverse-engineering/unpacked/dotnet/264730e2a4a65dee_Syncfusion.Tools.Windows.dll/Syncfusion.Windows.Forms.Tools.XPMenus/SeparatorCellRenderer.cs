using System.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class SeparatorCellRenderer : GridStaticCellRenderer
{
	public SeparatorCellRenderer(GridControlBase grid, GridCellModelBase model)
		: base(grid, model)
	{
	}

	protected override void OnDraw(Graphics g, Rectangle rect, int rowIndex, int colIndex, GridStyleInfo style)
	{
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		bool Selected = false;
		if (menuGridControlBase != null)
		{
			Selected = menuGridControlBase.HighlightRange.Top == rowIndex;
		}
		BarItem barItem = menuGridControlBase.parentItem.Items[rowIndex - 1];
		if (!barItem.ReiseBeforePopupItemPaint(g, rect, ref Selected, DrawElement.Separator, style))
		{
			Pen pen = ((!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS) ? GetSeparatorPen(menuGridControlBase.Style) : new Pen(VistaMenuColors.SeparatorColor));
			pen.Width = 1f;
			Point pt;
			Point pt2;
			if (menuGridControlBase.IsRightToLeft())
			{
				pt = new Point(rect.X, rect.Y + rect.Height / 2);
				pt2 = new Point(rect.Right - 7, rect.Y + rect.Height / 2);
			}
			else
			{
				pt = new Point(rect.X + 7, rect.Y + rect.Height / 2);
				pt2 = new Point(rect.Right, rect.Y + rect.Height / 2);
			}
			g.DrawLine(pen, pt, pt2);
			if (menuGridControlBase.ThemesEnabled && menuGridControlBase.IsVistaOS)
			{
				pt.Y++;
				pt2.Y++;
				g.DrawLine(new Pen(Color.White), pt, pt2);
			}
			pen.Dispose();
			barItem.ReiseAfterPopupItemPaint(g, rect, Selected, DrawElement.Separator, style);
		}
	}

	private Pen GetSeparatorPen(VisualStyle style)
	{
		Pen pen = null;
		if (base.Grid is MenuGridControlBase { ThemesEnabled: not false, IsVistaOS: not false })
		{
			return new Pen(VistaMenuColors.SeparatorColor);
		}
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.SeparatorColor), 
			VisualStyle.Office2007Outlook => new Pen(Office2007OutlookColors.MenuSeparatorColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.MenuSeparatorColor), 
			VisualStyle.Office2007 => new Pen(Office2007Colors.Default.MenuSeparatorColor), 
			_ => new Pen(Color.FromArgb(75, SystemColors.ControlDarkDark)), 
		};
	}
}
