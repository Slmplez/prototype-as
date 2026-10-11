using System;
using System.Collections;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class HeaderControlBehavior : Behavior
{
	internal const string DEF_STR_GROUP_DRAGDROP_FORMAT = "RibbonTabGroupDragDrop";

	private RibbonHeaderControl m_control;

	private BehaviorService m_behaviorService;

	private Rectangle m_dragBoxFromMouseDown = Rectangle.Empty;

	private RibbonTabGroup m_dragDropGroup;

	private RibbonTabGroup m_groupUnderDragDrop;

	private bool m_bDragDropCloserToRight;

	public RibbonTabGroup GroupUnderDragDrop
	{
		get
		{
			return m_groupUnderDragDrop;
		}
		private set
		{
			if (m_groupUnderDragDrop != value)
			{
				m_groupUnderDragDrop = value;
				m_control.Invalidate(invalidateChildren: true);
			}
		}
	}

	public bool DragDropCloserToRight
	{
		get
		{
			return m_bDragDropCloserToRight;
		}
		private set
		{
			if (m_bDragDropCloserToRight != value)
			{
				m_bDragDropCloserToRight = value;
				m_control.Invalidate(invalidateChildren: true);
			}
		}
	}

	public HeaderControlBehavior(RibbonHeaderControl control, BehaviorService behaviorService)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control");
		}
		if (behaviorService == null)
		{
			throw new ArgumentNullException("behaviorService");
		}
		m_control = control;
		m_behaviorService = behaviorService;
	}

	public override bool OnMouseDown(Glyph g, MouseButtons button, Point mouseLoc)
	{
		Point pt = m_control.PointToClient(m_behaviorService.AdornerWindowPointToScreen(mouseLoc));
		RibbonTabGroup ribbonTabGroup = m_control.GetChildAtPoint(pt) as RibbonTabGroup;
		ISelectionService selectionService = GetSelectionService();
		IList list = new ArrayList();
		if (ribbonTabGroup == null)
		{
			m_dragBoxFromMouseDown = Rectangle.Empty;
			m_dragDropGroup = null;
			list.Add(m_control);
		}
		else
		{
			Size dragSize = SystemInformation.DragSize;
			Point location = new Point(pt.X - dragSize.Width / 2, pt.Y - dragSize.Height / 2);
			m_dragBoxFromMouseDown = new Rectangle(location, dragSize);
			m_dragDropGroup = ribbonTabGroup;
			list.Add(ribbonTabGroup);
		}
		selectionService?.SetSelectedComponents(list);
		return false;
	}

	public override bool OnMouseUp(Glyph g, MouseButtons button)
	{
		m_dragBoxFromMouseDown = Rectangle.Empty;
		m_dragDropGroup = null;
		return false;
	}

	public override bool OnMouseMove(Glyph g, MouseButtons button, Point mouseLoc)
	{
		Point pt = m_control.PointToClient(m_behaviorService.AdornerWindowPointToScreen(mouseLoc));
		m_control.GetChildAtPoint(pt);
		if ((button & MouseButtons.Left) == MouseButtons.Left && m_dragBoxFromMouseDown != Rectangle.Empty && !m_dragBoxFromMouseDown.Contains(pt.X, pt.Y))
		{
			if (m_dragDropGroup == null)
			{
				throw new Exception("Drag drop group can't be null at this point of program flow.");
			}
			DataObject data = new DataObject("RibbonTabGroupDragDrop", m_dragDropGroup);
			m_control.DoDragDrop(data, DragDropEffects.All);
			ISelectionService selectionService = GetSelectionService();
			if (selectionService != null)
			{
				IList list = new ArrayList();
				selectionService.SetSelectedComponents(list);
				list.Add(m_dragDropGroup);
				selectionService.SetSelectedComponents(list);
			}
		}
		return false;
	}

	public override void OnDragOver(Glyph g, DragEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		RibbonTabGroup ribbonTabGroup = m_control.GetChildAtPoint(m_control.PointToClient(point)) as RibbonTabGroup;
		RibbonTabGroup groupFromDataObject = GetGroupFromDataObject(e.Data);
		if (ribbonTabGroup != null)
		{
			DragDropCloserToRight = PointCloserToRightEdge(ribbonTabGroup, point);
		}
		if (groupFromDataObject == null || ribbonTabGroup == groupFromDataObject)
		{
			GroupUnderDragDrop = null;
			e.Effect = DragDropEffects.None;
		}
		else
		{
			GroupUnderDragDrop = ribbonTabGroup;
			e.Effect = DragDropEffects.All;
		}
	}

	public override void OnDragDrop(Glyph g, DragEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		RibbonTabGroup ribbonTabGroup = m_control.GetChildAtPoint(m_control.PointToClient(point)) as RibbonTabGroup;
		RibbonTabGroup groupFromDataObject = GetGroupFromDataObject(e.Data);
		if (e.Effect != DragDropEffects.All)
		{
			return;
		}
		if (ribbonTabGroup != null && PointCloserToRightEdge(ribbonTabGroup, point))
		{
			int num = m_control.Groups.IndexOf(ribbonTabGroup);
			ribbonTabGroup = ((m_control.Groups.Count != num + 1) ? ((RibbonTabGroup)m_control.Groups[num + 1]) : null);
		}
		if (ribbonTabGroup != null)
		{
			int num2 = m_control.Groups.IndexOf(ribbonTabGroup);
			int num3 = m_control.Groups.IndexOf(groupFromDataObject);
			if (num3 != -1 && num3 < num2)
			{
				num2--;
			}
			if (groupFromDataObject.Parent is RibbonHeaderControl ribbonHeaderControl)
			{
				ribbonHeaderControl.Groups.Remove(groupFromDataObject);
			}
			m_control.Groups.Insert(num2, groupFromDataObject);
		}
		else
		{
			m_control.Groups.Add(groupFromDataObject);
		}
		if (m_control.Site != null && m_control.Site.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanged(m_control, null, null, null);
		}
		m_control.PerformLayout();
		GroupUnderDragDrop = null;
	}

	private bool PointCloserToRightEdge(RibbonTabGroup group, Point point)
	{
		Point point2 = m_behaviorService.ScreenToAdornerWindow(m_control.PointToScreen(group.Bounds.Location));
		if (point.X - point2.X > group.Width / 2)
		{
			return true;
		}
		return false;
	}

	private ISelectionService GetSelectionService()
	{
		if (m_control.Site != null)
		{
			return m_control.Site.GetService(typeof(ISelectionService)) as ISelectionService;
		}
		return null;
	}

	private RibbonTabGroup GetGroupFromDataObject(IDataObject data)
	{
		RibbonTabGroup ribbonTabGroup = data.GetData("RibbonTabGroupDragDrop") as RibbonTabGroup;
		if (ribbonTabGroup == null && data.GetData("ToolStripItemDragDrop") is ToolStripItem { Owner: RibbonTabGroup { SingleItem: not false } owner })
		{
			ribbonTabGroup = owner;
		}
		return ribbonTabGroup;
	}
}
