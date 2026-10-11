using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class TextBoxCellRenderer : GridTextBoxCellRenderer, IFocusableRenderer
{
	private bool m_bDrawSelectedBackground;

	private TextBoxBarItem m_tbItem;

	public TextBoxCellRenderer(GridControlBase grid, GridCellModelBase model)
		: base(grid, model)
	{
	}

	bool IFocusableRenderer.IsRelatedControl(Control control)
	{
		if (control == base.TextBox)
		{
			return true;
		}
		return false;
	}

	public override void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		bool Selected = false;
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		if (menuGridControlBase != null)
		{
			Selected = (m_bDrawSelectedBackground = menuGridControlBase.HighlightRange.Top == rowIndex);
		}
		m_tbItem = (TextBoxBarItem)menuGridControlBase.parentItem.Items[rowIndex - 1];
		if (!m_tbItem.ReiseBeforePopupItemPaint(g, cellRectangle, ref Selected, DrawElement.TextBox, style))
		{
			base.Draw(g, cellRectangle, rowIndex, colIndex, style);
		}
		m_tbItem.ReiseAfterPopupItemPaint(g, cellRectangle, Selected, DrawElement.TextBox, style);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, GridStyleInfo style, bool fillBackground)
	{
		base.DrawBackground(g, rect, style, fillBackground);
		if (base.Grid is MenuGridControlBase { Style: VisualStyle.Office2007 } menuGridControlBase && (!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS))
		{
			Office2007MenuPainter.DrawMenuTextBoxItem(g, rect, m_bDrawSelectedBackground);
		}
	}

	protected override TextBoxBase CreateTextBox()
	{
		TextBoxBase textBoxBase = base.CreateTextBox();
		textBoxBase.HandleCreated += TextBoxHandleCreated;
		return textBoxBase;
	}

	private void TextBoxHandleCreated(object sender, EventArgs e)
	{
		TextBoxBase textBoxBase = (TextBoxBase)sender;
		m_tbItem.OnTextBoxItemBound(new TextBoxItemBoundEventArgs(textBoxBase));
	}
}
