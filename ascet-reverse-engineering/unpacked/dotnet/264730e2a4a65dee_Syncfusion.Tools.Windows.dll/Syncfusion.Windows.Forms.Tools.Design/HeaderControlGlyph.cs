using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class HeaderControlGlyph : Glyph
{
	internal const int DEF_GROUP_DROP_HIGHLIGHT_WIDTH = 4;

	private RibbonHeaderControl m_control;

	private BehaviorService m_behaviorService;

	private HeaderControlBehavior m_behavior;

	private static Brush _dropHighlightingBrush = new HatchBrush(HatchStyle.Percent50, Color.Black, Color.Gray);

	public override Rectangle Bounds
	{
		get
		{
			Point point = m_behaviorService.ControlToAdornerWindow(m_control);
			return new Rectangle(point.X, point.Y, m_control.ClientSize.Width - 1, m_control.ClientSize.Height - 1);
		}
	}

	public HeaderControlGlyph(RibbonHeaderControl control, BehaviorService behaviorService, HeaderControlBehavior headerControlBehavior)
		: base(headerControlBehavior)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		if (behaviorService == null)
		{
			throw new ArgumentNullException("behaviorService");
		}
		if (headerControlBehavior == null)
		{
			throw new ArgumentNullException("tabGroupBehavior");
		}
		m_control = control;
		m_behaviorService = behaviorService;
		m_behavior = headerControlBehavior;
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
		RibbonTabGroup groupUnderDragDrop = m_behavior.GroupUnderDragDrop;
		if (groupUnderDragDrop != null)
		{
			Point location = groupUnderDragDrop.Bounds.Location;
			Point point = m_behaviorService.ScreenToAdornerWindow(m_control.PointToScreen(location));
			if (m_behavior.DragDropCloserToRight)
			{
				int num = point.X + groupUnderDragDrop.Width - 1;
				pe.Graphics.FillRectangle(_dropHighlightingBrush, num - 4 + 1, point.Y, 4, groupUnderDragDrop.Height - 1);
			}
			else
			{
				pe.Graphics.FillRectangle(_dropHighlightingBrush, point.X, point.Y, 4, groupUnderDragDrop.Height - 1);
			}
		}
	}
}
