using System;
using System.Collections;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TabGroupBehavior : Behavior
{
	internal const string DER_STR_ITEM_DRAGDROP_FORMAT = "ToolStripItemDragDrop";

	private RibbonTabGroup m_control;

	private BehaviorService m_behaviorService;

	private Rectangle m_dragBoxFromMouseDown = Rectangle.Empty;

	private ToolStripItem m_dragDropItem;

	private ToolStripItem m_selectedItem;

	private ToolStripItem m_itemUnderMouse;

	private bool m_bUnderMouse;

	private bool m_bUnderDragDrop;

	private bool m_bDragDropCloserToRight;

	public ToolStripItem SelectedItem
	{
		get
		{
			if (m_control.Items.Count == 0)
			{
				m_selectedItem = null;
			}
			return m_selectedItem;
		}
	}

	public ToolStripItem ItemUnderMouse
	{
		get
		{
			return m_itemUnderMouse;
		}
		private set
		{
			if (m_itemUnderMouse != value)
			{
				m_itemUnderMouse = value;
				m_control.InvalidateWithInnerControl();
			}
		}
	}

	public bool UnderMouse
	{
		get
		{
			return m_bUnderMouse;
		}
		internal set
		{
			if (m_bUnderMouse != value)
			{
				m_bUnderMouse = value;
				m_control.InvalidateWithInnerControl();
			}
		}
	}

	public bool UnderDragDrop => m_bUnderDragDrop;

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
				m_control.InvalidateWithInnerControl();
			}
		}
	}

	public event ToolStripItemEventHandler GroupClicked;

	public event NewItemDroppedAtSingleItemGroupEventHandler NewItemDroppedAtSingleItemGroup;

	public TabGroupBehavior(RibbonTabGroup control, BehaviorService behaviorService)
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
		m_control.ItemAdded += M_control_ItemAdded;
	}

	public override bool OnMouseDown(Glyph g, MouseButtons button, Point mouseLoc)
	{
		Point point = m_control.PointToClient(m_behaviorService.AdornerWindowPointToScreen(mouseLoc));
		ToolStripItem itemAt = m_control.GetItemAt(point);
		ISelectionService selectionService = null;
		if (m_control.Site != null)
		{
			selectionService = m_control.Site.GetService(typeof(ISelectionService)) as ISelectionService;
		}
		IList list = new ArrayList();
		if (itemAt != null)
		{
			if (itemAt is RibbonTabItem)
			{
				((RibbonTabItem)itemAt).Activate();
			}
			list.Add(itemAt);
			m_selectedItem = itemAt;
			Size dragSize = SystemInformation.DragSize;
			Point location = new Point(point.X - dragSize.Width / 2, point.Y - dragSize.Height / 2);
			m_dragBoxFromMouseDown = new Rectangle(location, dragSize);
			m_dragDropItem = itemAt;
		}
		else
		{
			if (!m_control.SingleItem)
			{
				list.Add(m_control);
			}
			m_dragBoxFromMouseDown = Rectangle.Empty;
			m_dragDropItem = null;
		}
		RaiseGroupClicked(itemAt);
		selectionService?.SetSelectedComponents(list);
		return false;
	}

	public override bool OnMouseUp(Glyph g, MouseButtons button)
	{
		m_dragBoxFromMouseDown = Rectangle.Empty;
		m_dragDropItem = null;
		return false;
	}

	public override bool OnMouseMove(Glyph g, MouseButtons button, Point mouseLoc)
	{
		Point point = m_control.PointToClient(m_behaviorService.AdornerWindowPointToScreen(mouseLoc));
		ToolStripItem itemAt = m_control.GetItemAt(point);
		ItemUnderMouse = itemAt;
		if ((button & MouseButtons.Left) == MouseButtons.Left && m_dragBoxFromMouseDown != Rectangle.Empty && !m_dragBoxFromMouseDown.Contains(point.X, point.Y))
		{
			if (m_dragDropItem == null)
			{
				throw new Exception("Drag drop item can't be null at this point of program flow.");
			}
			DataObject data = new DataObject("ToolStripItemDragDrop", m_dragDropItem);
			DragDropEffects dragDropEffects = m_control.DoDragDrop(data, DragDropEffects.All);
			if (m_control.SingleItem && m_control.Items.Count == 0)
			{
				if (m_control.Site != null)
				{
					((IDesignerHost)m_control.Site.GetService(typeof(IDesignerHost)))?.DestroyComponent(m_control);
				}
			}
			else if (dragDropEffects != DragDropEffects.None && m_control.Site != null && m_control.Site.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
			{
				componentChangeService.OnComponentChanged(m_control, null, null, null);
			}
		}
		return false;
	}

	public override void OnDragOver(Glyph g, DragEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		ToolStripItem itemAt = m_control.GetItemAt(m_control.PointToClient(point));
		ToolStripItem toolStripItem = e.Data.GetData("ToolStripItemDragDrop") as ToolStripItem;
		if (itemAt != toolStripItem && toolStripItem != null)
		{
			m_bUnderDragDrop = true;
		}
		else
		{
			m_bUnderDragDrop = false;
		}
		if (m_bUnderDragDrop && itemAt != null)
		{
			DragDropCloserToRight = PointCloserToRightEdge(itemAt, point);
		}
		ItemUnderMouse = itemAt;
		if (toolStripItem == null || itemAt == toolStripItem)
		{
			e.Effect = DragDropEffects.None;
		}
		else
		{
			e.Effect = DragDropEffects.All;
		}
	}

	public override void OnDragDrop(Glyph g, DragEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		ToolStripItem toolStripItem = m_control.GetItemAt(m_control.PointToClient(point));
		if (!e.Data.GetDataPresent("ToolStripItemDragDrop"))
		{
			return;
		}
		ToolStripItem toolStripItem2 = (ToolStripItem)e.Data.GetData("ToolStripItemDragDrop");
		if (e.Effect != DragDropEffects.All)
		{
			return;
		}
		if (!m_control.SingleItem)
		{
			if (toolStripItem != null && PointCloserToRightEdge(toolStripItem, point))
			{
				int num = m_control.Items.IndexOf(toolStripItem);
				toolStripItem = ((m_control.Items.Count != num + 1) ? m_control.Items[num + 1] : null);
			}
			if (toolStripItem != null)
			{
				int num2 = m_control.Items.IndexOf(toolStripItem);
				int num3 = m_control.Items.IndexOf(toolStripItem2);
				if (num3 != -1 && num3 < num2)
				{
					num2--;
				}
				m_control.Items.Insert(num2, toolStripItem2);
			}
			else
			{
				m_control.Items.Add(toolStripItem2);
			}
			m_selectedItem = toolStripItem2;
			RaiseGroupClicked(toolStripItem2);
		}
		else if (this.NewItemDroppedAtSingleItemGroup != null)
		{
			this.NewItemDroppedAtSingleItemGroup(m_control, new NewItemDroppedAtSingleItemGroupEventArgs(toolStripItem2, !DragDropCloserToRight));
			RaiseGroupClicked(toolStripItem2);
		}
		m_bUnderDragDrop = false;
	}

	public override void OnDragLeave(Glyph g, EventArgs e)
	{
		UnderMouse = false;
		m_bUnderDragDrop = false;
	}

	public override void OnDragEnter(Glyph g, DragEventArgs e)
	{
		UnderMouse = true;
	}

	public override bool OnMouseEnter(Glyph g)
	{
		UnderMouse = true;
		return false;
	}

	public override bool OnMouseLeave(Glyph g)
	{
		UnderMouse = false;
		return false;
	}

	private bool PointCloserToRightEdge(ToolStripItem item, Point point)
	{
		Point point2 = m_behaviorService.ScreenToAdornerWindow(m_control.PointToScreen(item.Bounds.Location));
		if (point.X - point2.X > item.Width / 2)
		{
			return true;
		}
		return false;
	}

	private void RaiseGroupClicked(ToolStripItem item)
	{
		if (this.GroupClicked != null)
		{
			this.GroupClicked(m_control, new ToolStripItemEventArgs(item));
		}
	}

	public void M_control_ItemAdded(object sender, ToolStripItemEventArgs e)
	{
		m_selectedItem = e.Item;
		m_control.InvalidateWithInnerControl();
	}
}
