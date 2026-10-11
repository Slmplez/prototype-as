using System.Drawing;
using System.Drawing.Drawing2D;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MenuGlyphCellRenderer : GridStaticCellRenderer
{
	private const int c_iGlyphHeight = 7;

	private const int c_iGlyphWidth = 4;

	public MenuGlyphCellRenderer(GridControlBase grid, GridCellModelBase model)
		: base(grid, model)
	{
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, GridStyleInfo style, bool fillBackground)
	{
		if (base.Grid is MenuGridControlBase { ThemesEnabled: not false, IsVistaOS: not false })
		{
			rect.Inflate(0, -2);
			rect.Width -= 2;
		}
		base.DrawBackground(g, rect, style, fillBackground);
	}

	protected override void OnDraw(Graphics g, Rectangle rect, int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (style.CellValue == null || (int)style.CellValue <= 0)
		{
			return;
		}
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		bool Selected = false;
		if (menuGridControlBase != null && menuGridControlBase.SelectedIndex != -1 && menuGridControlBase.SelectedIndex == rowIndex - 1)
		{
			Selected = true;
		}
		BarItem barItem = menuGridControlBase.parentItem.Items[rowIndex - 1];
		if (barItem.ReiseBeforePopupItemPaint(g, rect, ref Selected, DrawElement.Glyph, style))
		{
			return;
		}
		if (menuGridControlBase.Style == VisualStyle.Office2007 && (!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS))
		{
			bool bRTL = base.Grid.IsRightToLeft();
			if (menuGridControlBase.IsItemDropDownStyle(barItem))
			{
				Office2007MenuPainter.DrawMenuDropDownBarItem(g, rect, Selected, bRTL);
			}
			else
			{
				Office2007MenuPainter.DrawMenuParentBarItem(g, rect, bRTL);
			}
		}
		else
		{
			if (menuGridControlBase.IsItemDropDownStyle(barItem))
			{
				Pen pen = ((!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS) ? (Selected ? GetLinePen(menuGridControlBase.Style) : new Pen(Color.FromArgb(75, SystemColors.ControlDarkDark))) : (Selected ? new Pen(VistaMenuColors.SelBorderColor) : new Pen(VistaMenuColors.BorderColor)));
				if (base.Grid.IsRightToLeft())
				{
					g.DrawLine(pen, rect.Right, rect.Top, rect.Right, rect.Bottom);
				}
				else
				{
					g.DrawLine(pen, rect.Left, rect.Top, rect.Left, rect.Bottom);
				}
				pen.Dispose();
			}
			DrawGlyph(g, rect, barItem.Enabled, style);
		}
		barItem.ReiseAfterPopupItemPaint(g, rect, Selected, DrawElement.Glyph, style);
	}

	private void DrawGlyph(Graphics g, Rectangle rect, bool enabled, GridStyleInfo style)
	{
		int num = 7;
		int num2 = 4;
		Rectangle rectangle = new Rectangle(rect.Left + (rect.Width - num2) / 2, rect.Top + (rect.Height - num) / 2, num2, num);
		Pen pen = new Pen(style.TextColor);
		int top = rectangle.Top;
		int left = rectangle.Left;
		int y = top + num + 1;
		Point pt = new Point(left + 1, top + 1);
		Point pt2 = new Point(left + 1, y);
		bool flag = base.Grid.IsRightToLeft();
		Matrix transform = null;
		if (flag)
		{
			transform = g.Transform;
			g.Transform = new Matrix(-1f, 0f, 0f, 1f, 2 * left + rectangle.Width, 0f);
		}
		while (pt.Y <= pt2.Y)
		{
			g.DrawLine(pen, pt, pt2);
			pt.X++;
			pt.Y++;
			pt2.X++;
			pt2.Y--;
		}
		if (flag)
		{
			g.Transform = transform;
		}
		pen.Dispose();
	}

	private Pen GetLinePen(VisualStyle style)
	{
		Pen pen = null;
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.SelBorderColor), 
			VisualStyle.Office2007Outlook => new Pen(Office2007OutlookColors.MenuSelectedItemBorderColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.MenuSelectedItemBorderColor), 
			_ => new Pen(MenuColors.SelBorderColor), 
		};
	}
}
