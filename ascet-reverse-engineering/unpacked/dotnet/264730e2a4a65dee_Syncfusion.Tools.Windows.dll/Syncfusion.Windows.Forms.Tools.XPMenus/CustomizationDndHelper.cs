using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class CustomizationDndHelper
{
	private static readonly bool Before = true;

	private bool dragging;

	private bool allowRecord = true;

	private IBarItemContainer parentItem;

	private IDndTrackingControl control;

	private Rectangle cueRect = Rectangle.Empty;

	private BarItem barItemLastHit;

	private bool latestBeforeOrAfterState;

	public IBarItemContainer ParentItem
	{
		get
		{
			return parentItem;
		}
		set
		{
			parentItem = value;
		}
	}

	public bool AllowRecord
	{
		get
		{
			return allowRecord;
		}
		set
		{
			allowRecord = value;
		}
	}

	public bool Dragging
	{
		get
		{
			return dragging;
		}
		set
		{
			dragging = value;
			if (!value)
			{
				Reset();
			}
		}
	}

	protected Rectangle CueRect
	{
		get
		{
			return cueRect;
		}
		set
		{
			if (cueRect != value)
			{
				if (cueRect != Rectangle.Empty)
				{
					control.GetControl().Invalidate(cueRect, invalidateChildren: false);
				}
				cueRect = value;
				if (cueRect != Rectangle.Empty)
				{
					control.GetControl().Invalidate(cueRect, invalidateChildren: false);
				}
			}
		}
	}

	public CustomizationDndHelper(IDndTrackingControl control)
	{
		this.control = control;
	}

	~CustomizationDndHelper()
	{
		if (control != null)
		{
			Reset();
			control = null;
		}
	}

	public void Reset()
	{
		CueRect = Rectangle.Empty;
		barItemLastHit = null;
		latestBeforeOrAfterState = false;
	}

	internal void ComputeDropEffect(DragEventArgs drgevent, BarItem draggedItem, ref BarItem hitItem, ref bool beforeOrAfter)
	{
		if (!control.CanDropItem(draggedItem))
		{
			drgevent.Effect = DragDropEffects.None;
			return;
		}
		hitItem = control.HitTestBarItem(control.GetControl().PointToClient(new Point(drgevent.X, drgevent.Y)), ref beforeOrAfter);
		GetUpdatedHitItem(ref hitItem, ref beforeOrAfter);
		if (draggedItem != null && CanDropItem(draggedItem, drgevent) && ((hitItem == null && beforeOrAfter) || (hitItem != null && hitItem.Text != "-")))
		{
			drgevent.Effect = GetDropEffect(drgevent);
		}
		else
		{
			drgevent.Effect = DragDropEffects.None;
		}
	}

	public void OnDragOver(DragEventArgs drgevent)
	{
		BarItemDndData barItemDndData = drgevent.Data.GetData(typeof(BarItem).FullName) as BarItemDndData;
		BarItem itemDragged = barItemDndData.ItemDragged;
		BarItem hitItem = null;
		bool beforeOrAfter = false;
		ComputeDropEffect(drgevent, itemDragged, ref hitItem, ref beforeOrAfter);
		UpdateInsertionCue(drgevent.Effect, hitItem, beforeOrAfter);
	}

	protected virtual void GetUpdatedHitItem(ref BarItem hitItem, ref bool beforeOrAfter)
	{
		if (hitItem == null && !beforeOrAfter && (barItemLastHit != null || latestBeforeOrAfterState))
		{
			hitItem = barItemLastHit;
			beforeOrAfter = latestBeforeOrAfterState;
		}
	}

	private DragDropEffects GetDropEffect(DragEventArgs drgevent)
	{
		int num = 8;
		if ((drgevent.AllowedEffect & DragDropEffects.Move) == 0 || (drgevent.KeyState & num) > 0)
		{
			return DragDropEffects.Copy;
		}
		return DragDropEffects.Move;
	}

	public void OnDragDrop(DragEventArgs e)
	{
		BarItemDndData barItemDndData = e.Data.GetData(typeof(BarItem).FullName) as BarItemDndData;
		BarItem barItem = barItemDndData?.ItemDragged;
		BarItem hitItem = null;
		bool beforeOrAfter = false;
		ComputeDropEffect(e, barItem, ref hitItem, ref beforeOrAfter);
		if (barItem == null || e.Effect == DragDropEffects.None)
		{
			return;
		}
		if (barItem is NewMenuItem)
		{
			InsertNewItem(barItem as NewMenuItem, e);
			return;
		}
		barItemDndData.ItemDestination = parentItem;
		IPopupParent popupParent = control as IPopupParent;
		if (control != null && popupParent != null && popupParent.IsRightToLeft)
		{
			beforeOrAfter = !beforeOrAfter;
		}
		InsertItem(hitItem, barItem, beforeOrAfter);
	}

	public virtual void InsertNewItem(NewMenuItem newMenuItem, DragEventArgs e)
	{
		string text = SR.GetString("NewMenu");
		string text2 = text;
		while (!newMenuItem.Manager.Items.IsValidItemID(null, text2))
		{
			text2 = IDGenerator.GetNextID(text2);
		}
		if (AllowRecord && !control.DesignMode)
		{
			MainFrameBarManager mainFrameBarManager = parentItem.Manager.MainFrameBarManager;
			mainFrameBarManager.RecordAddCustomParentMenu(text2);
			BarItemID barItemID = new BarItemID(text2, BarManager.GetFormTypeName(mainFrameBarManager));
			if (mainFrameBarManager.GetBarItemFromBarItemID(barItemID) is ParentBarItem droppedItem)
			{
				bool beforeOrAfter = Before;
				BarItem hitItem = control.HitTestBarItem(control.GetControl().PointToClient(new Point(e.X, e.Y)), ref beforeOrAfter);
				BarItemDndData barItemDndData = e.Data.GetData(typeof(BarItem).FullName) as BarItemDndData;
				barItemDndData.ItemDestination = parentItem;
				InsertItem(hitItem, droppedItem, beforeOrAfter);
			}
		}
	}

	public void ResetItem(BarItem itemToReset, bool messageboxshow)
	{
		if (parentItem.Manager.MainFrameBarManager != null)
		{
			messageboxshow &= !parentItem.Manager.MainFrameBarManager.ResetBarItem(itemToReset);
			parentItem.Manager.MainFrameBarManager.OnResetBarItem(itemToReset);
			if (messageboxshow)
			{
				MessageBox.Show(SR.GetString("NotifyCustomizationReset"), SR.GetString("NotifyCustomizationResetTitle"), MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			}
		}
	}

	public virtual void RemoveItem(BarItem itemToRemove)
	{
		BarManager manager = itemToRemove.Manager;
		if (ParentItem != null)
		{
			manager = ParentItem.Manager;
		}
		bool record = false;
		if (manager != null)
		{
			MainFrameBarManager mainFrameBarManager = manager.MainFrameBarManager;
			record = mainFrameBarManager != null && !mainFrameBarManager.DesignMode && mainFrameBarManager.NeedSaveCustomData;
		}
		RemoveItem(itemToRemove, record);
	}

	public virtual void RemoveItem(BarItem itemToRemove, bool record)
	{
		int num = parentItem.Items.IndexOf(itemToRemove);
		if (num == -1)
		{
			return;
		}
		if (AllowRecord && record && ((control != null && !control.DesignMode) || !parentItem.Manager.DesignMode))
		{
			if (itemToRemove is CustomParentMenuItem)
			{
				CustomParentMenuItem customParentMenuItem = (CustomParentMenuItem)itemToRemove;
				customParentMenuItem.RefrenceCount--;
				if (customParentMenuItem.RefrenceCount == 0)
				{
					record = false;
					parentItem.Manager.MainFrameBarManager.RemoveCustomParentMenu(customParentMenuItem);
				}
			}
			if (record)
			{
				parentItem.Manager.MainFrameBarManager.RecordRemove(itemToRemove, parentItem);
				return;
			}
		}
		if (parentItem == null)
		{
			return;
		}
		if (parentItem.IsGroupBeginning(itemToRemove))
		{
			parentItem.RemoveGroupAt(itemToRemove);
			BarItem barItem = null;
			num = parentItem.Items.IndexOf(itemToRemove);
			for (int i = num + 1; i < parentItem.Items.Count; i++)
			{
				BarItem barItem2 = parentItem.Items[i];
				if (barItem2.Text != "-")
				{
					barItem = barItem2;
					break;
				}
			}
			if (barItem != null && parentItem.IsGroupBeginning(barItem))
			{
				parentItem.BeginGroupAt(barItem);
			}
		}
		parentItem.RemoveItem(itemToRemove);
	}

	internal void RemoveItem(BarItem hitItem, BarItem itemToRemove, bool record)
	{
		int num = parentItem.Items.IndexOf(itemToRemove);
		if (num == -1)
		{
			return;
		}
		if (hitItem == null)
		{
			RemoveItem(itemToRemove, record);
			return;
		}
		int num2 = parentItem.Items.IndexOf(hitItem);
		if (num2 == num - 1 || (num2 == num - 2 && parentItem.Items[num - 1] is SeparatorItem))
		{
			RemoveItem(itemToRemove, record);
		}
	}

	public virtual void InsertItem(BarItem hitItem, BarItem droppedItem, bool beforeOrAfter)
	{
		InsertItem(hitItem, droppedItem, beforeOrAfter, record: true);
	}

	public virtual void InsertItem(BarItem hitItem, BarItem droppedItem, bool beforeOrAfter, bool record)
	{
		if (hitItem == droppedItem)
		{
			return;
		}
		if (AllowRecord && record && !control.DesignMode)
		{
			parentItem.Manager.MainFrameBarManager.RecordInsert(droppedItem, hitItem, parentItem, beforeOrAfter);
			return;
		}
		if (droppedItem is CustomParentMenuItem)
		{
			((CustomParentMenuItem)droppedItem).RefrenceCount++;
		}
		int num = -1;
		if (hitItem != null)
		{
			num = parentItem.Items.IndexOf(hitItem);
			if (num == -1)
			{
				return;
			}
		}
		parentItem.Items.SuspendEvents();
		bool flag = parentItem.Items.IndexOf(droppedItem) != -1;
		IBarItemContainer barItemContainer = parentItem;
		bool flag2 = flag && barItemContainer.IsGroupBeginning(droppedItem);
		RemoveItem(droppedItem, (flag && droppedItem.Manager.Customizing) ? true : false);
		parentItem = barItemContainer;
		if (droppedItem.Manager.Customizing)
		{
			int num2 = barItemContainer.Items.IndexOf(droppedItem);
			if (num2 >= 0)
			{
				if (barItemContainer.IsGroupBeginning(droppedItem))
				{
					barItemContainer.RemoveGroupAt(droppedItem);
					num2--;
					barItemContainer.Items.RemoveAt(num2);
					if (num2 < barItemContainer.Items.Count)
					{
						barItemContainer.BeginGroupAt(barItemContainer.Items[num2]);
					}
				}
				else
				{
					barItemContainer.Items.RemoveAt(num2);
				}
			}
		}
		num = parentItem.Items.IndexOf(hitItem);
		if (hitItem == null && beforeOrAfter)
		{
			parentItem.Items.Insert(0, droppedItem);
		}
		else if (beforeOrAfter == Before)
		{
			bool flag3 = false;
			if (parentItem.IsGroupBeginning(hitItem))
			{
				parentItem.RemoveGroupAt(hitItem);
				flag3 = true;
				if (num >= parentItem.Items.Count)
				{
					num--;
				}
			}
			num = SkipPastMergedItems(num, beforeOrAfter);
			parentItem.Items.Insert(num, droppedItem);
			if (flag3)
			{
				parentItem.BeginGroupAt(droppedItem);
			}
		}
		else
		{
			if (hitItem != null)
			{
				num = SkipPastMergedItems(num, beforeOrAfter);
				num++;
			}
			else
			{
				num = parentItem.Items.FindMergePosition(droppedItem.MergeOrder);
			}
			parentItem.Items.Insert(num, droppedItem);
			if (flag2)
			{
				parentItem.BeginGroupAt(droppedItem);
			}
		}
		parentItem.Items.ResumeEvents(throwEvent: true);
		if (!flag)
		{
			parentItem.Items.RaiseCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, droppedItem));
		}
	}

	private int SkipPastMergedItems(int index, bool beforeOrAfter)
	{
		if (index == -1)
		{
			return -1;
		}
		int result = index;
		BarItem item = parentItem.Items[index];
		string mergeId = MergedStateTracker.GetMergeId(item);
		if (beforeOrAfter == Before)
		{
			for (int num = index - 1; num >= 0; num--)
			{
				BarItem item2 = parentItem.Items[num];
				if (MergedStateTracker.GetMergeId(item2) == mergeId)
				{
					result = num;
				}
			}
		}
		else
		{
			for (int i = index + 1; i < parentItem.Items.Count; i++)
			{
				BarItem item3 = parentItem.Items[i];
				if (MergedStateTracker.GetMergeId(item3) == mergeId)
				{
					result = i;
				}
			}
		}
		return result;
	}

	protected virtual bool CanDropItem(BarItem item, DragEventArgs e)
	{
		if (item != parentItem)
		{
			CanDragDropEventArgs e2 = new CanDragDropEventArgs(parentItem, cancel: false);
			item.OnCanDragDrop(e2);
			if (!e2.Cancel)
			{
				if (!dragging)
				{
					return true;
				}
				if ((e.AllowedEffect & DragDropEffects.Move) > DragDropEffects.None)
				{
					return true;
				}
			}
		}
		return false;
	}

	protected void UpdateInsertionCue(DragDropEffects effect, BarItem barItem, bool beforeOrAfter)
	{
		if (effect == DragDropEffects.None)
		{
			CueRect = Rectangle.Empty;
			return;
		}
		if (barItem != barItemLastHit || beforeOrAfter != latestBeforeOrAfterState)
		{
			CueRect = control.GetCueRect(barItem, beforeOrAfter);
		}
		barItemLastHit = barItem;
		latestBeforeOrAfterState = beforeOrAfter;
	}

	public void PaintCueCursor(Graphics g)
	{
		if (control != null && parentItem != null && cueRect != Rectangle.Empty && g.ClipBounds.IntersectsWith(cueRect))
		{
			bool flag = ((cueRect.Width > cueRect.Height) ? true : false);
			if (flag)
			{
				DrawLeftAndRightCorners(g);
			}
			else
			{
				DrawTopAndBottomCorners(g);
			}
			Rectangle empty = Rectangle.Empty;
			g.FillRectangle(rect: (!flag) ? new Rectangle(cueRect.Left + 2, cueRect.Top + 3, 3, cueRect.Height - 6) : new Rectangle(cueRect.Left + 3, cueRect.Top + 2, cueRect.Width - 6, 3), brush: new SolidBrush(SystemColors.ControlText));
		}
	}

	private void DrawTopAndBottomCorners(Graphics g)
	{
		Pen pen = new Pen(SystemColors.ControlText);
		int top = cueRect.Top;
		int left = cueRect.Left;
		g.DrawLine(pen, new Point(left, top), new Point(left + 6, top));
		g.DrawLine(pen, new Point(left + 1, top + 1), new Point(left + 5, top + 1));
		g.DrawLine(pen, new Point(left + 2, top + 2), new Point(left + 4, top + 2));
		int num = cueRect.Bottom - 1;
		g.DrawLine(pen, new Point(left, num), new Point(left + 6, num));
		g.DrawLine(pen, new Point(left + 1, num - 1), new Point(left + 5, num - 1));
		g.DrawLine(pen, new Point(left + 2, num - 2), new Point(left + 4, num - 2));
	}

	private void DrawLeftAndRightCorners(Graphics g)
	{
		Pen pen = new Pen(SystemColors.ControlText, 1f);
		int top = cueRect.Top;
		int left = cueRect.Left;
		g.DrawLine(pen, new Point(left, top), new Point(left, top + 7));
		g.DrawLine(pen, new Point(left + 1, top + 1), new Point(left + 1, top + 6));
		g.DrawLine(pen, new Point(left + 2, top + 2), new Point(left + 2, top + 5));
		int num = cueRect.Right - 1;
		g.DrawLine(pen, new Point(num, top), new Point(num, top + 7));
		g.DrawLine(pen, new Point(num - 1, top + 1), new Point(num - 1, top + 6));
		g.DrawLine(pen, new Point(num - 2, top + 2), new Point(num - 2, top + 5));
	}
}
