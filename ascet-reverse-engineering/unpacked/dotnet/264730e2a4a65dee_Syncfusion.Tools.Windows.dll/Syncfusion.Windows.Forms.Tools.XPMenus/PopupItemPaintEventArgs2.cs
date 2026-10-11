using System.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class PopupItemPaintEventArgs2 : PopupItemPaintEventArgs
{
	private MenuComboBoxCellRenderer m_menuRenderer;

	public override Rectangle Bounds
	{
		get
		{
			Rectangle bounds = base.Bounds;
			bounds.Width -= m_menuRenderer.DropDownButton.Bounds.Width + base.Style.TextMargins.Right;
			return bounds;
		}
	}

	public PopupItemPaintEventArgs2(Graphics g, Rectangle bounds, bool selected, DrawElement element, GridStyleInfo style, MenuComboBoxCellRenderer menuRenderer)
		: base(g, bounds, selected, element, style)
	{
		m_menuRenderer = menuRenderer;
	}
}
