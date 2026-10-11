using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TabGroupGlyph : Glyph
{
	internal const int DEF_ITEM_DROP_HIGHLIGHT_WIDTH = 2;

	private RibbonTabGroup m_control;

	private BehaviorService m_behaviorService;

	private TabGroupBehavior m_behavior;

	private static Pen _itemHighlightingPen;

	private static Brush _dropHighlightingBrush;

	public override Rectangle Bounds
	{
		get
		{
			Point point = m_behaviorService.ControlToAdornerWindow(m_control);
			return new Rectangle(point.X, point.Y + RibbonTabGroup.CaptionHeight, m_control.ClientSize.Width, m_control.ClientSize.Height);
		}
	}

	static TabGroupGlyph()
	{
		_itemHighlightingPen = new Pen(Color.Gray);
		_dropHighlightingBrush = new HatchBrush(HatchStyle.Percent50, Color.Black, Color.Gray);
		_itemHighlightingPen.DashStyle = DashStyle.Dot;
	}

	public TabGroupGlyph(RibbonTabGroup control, BehaviorService behaviorService, TabGroupBehavior tabGroupBehavior)
		: base(tabGroupBehavior)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		if (behaviorService == null)
		{
			throw new ArgumentNullException("behaviorService");
		}
		if (tabGroupBehavior == null)
		{
			throw new ArgumentNullException("tabGroupBehavior");
		}
		m_control = control;
		m_behaviorService = behaviorService;
		m_behavior = tabGroupBehavior;
	}

	public override Cursor GetHitTest(Point p)
	{
		if (Bounds.Contains(p))
		{
			return Cursors.Default;
		}
		return null;
	}

	public override void Paint(PaintEventArgs pe)
	{
		ToolStripItem selectedItem = m_behavior.SelectedItem;
		if (selectedItem != null && m_control.Active)
		{
			Point location = selectedItem.Bounds.Location;
			Point location2 = m_behaviorService.ScreenToAdornerWindow(m_control.PointToScreen(location));
			pe.Graphics.DrawRectangle(Pens.Black, new Rectangle(location2, new Size(selectedItem.Bounds.Width - 1, selectedItem.Bounds.Height - 1)));
		}
		if (!m_behavior.UnderMouse)
		{
			return;
		}
		selectedItem = m_behavior.ItemUnderMouse;
		if (selectedItem != null)
		{
			Point location3 = selectedItem.Bounds.Location;
			Point location4 = m_behaviorService.ScreenToAdornerWindow(m_control.PointToScreen(location3));
			if (m_behavior.UnderDragDrop)
			{
				int num = (m_control.SingleItem ? 4 : 2);
				if (m_behavior.DragDropCloserToRight)
				{
					int num2 = location4.X + selectedItem.Width - 1;
					pe.Graphics.FillRectangle(_dropHighlightingBrush, num2 - num - 1, location4.Y, num, selectedItem.Height - 1);
				}
				else
				{
					pe.Graphics.FillRectangle(_dropHighlightingBrush, location4.X, location4.Y, num, selectedItem.Height - 1);
				}
			}
			else
			{
				pe.Graphics.DrawRectangle(_itemHighlightingPen, new Rectangle(location4, new Size(selectedItem.Bounds.Width - 1, selectedItem.Bounds.Height - 1)));
			}
		}
		else if (!m_control.SingleItem)
		{
			Point p = new Point(m_control.Bounds.Location.X, m_control.Bounds.Location.Y + RibbonTabGroup.CaptionHeight);
			Point location5 = m_behaviorService.ScreenToAdornerWindow(m_control.Parent.PointToScreen(p));
			pe.Graphics.DrawRectangle(_itemHighlightingPen, new Rectangle(location5, new Size(m_control.Bounds.Width - 1, m_control.Bounds.Height - 1 - RibbonTabGroup.CaptionHeight)));
		}
	}
}
