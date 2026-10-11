using System;
using System.ComponentModel;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class MenuGridControlCustomizable : MenuGridControlBase, IDndTrackingControl
{
	protected internal CustomizationDndHelper dndHelper;

	private CustomizingPopupMenu customizationPopup;

	internal DragDropEffects allowedDragEffects;

	internal bool allowDropOnSelf;

	protected bool IsCustomizationPopupAvailable => customizationPopup != null;

	protected CustomizingPopupMenu CustomizationPopup
	{
		get
		{
			if (customizationPopup == null)
			{
				customizationPopup = new CustomizingPopupMenu();
			}
			return customizationPopup;
		}
	}

	protected override bool MenuBound
	{
		get
		{
			return base.MenuBound;
		}
		set
		{
			if (base.MenuBound != value)
			{
				if (Application.OleRequired() == ApartmentState.STA)
				{
					AllowDrop = true;
				}
				base.MenuBound = value;
				if (!value && dndHelper != null && !dndHelper.Dragging)
				{
					dndHelper.ParentItem = null;
				}
				if (value)
				{
					if (parentItem.Manager != null && parentItem.Manager.DesignMode)
					{
						CustomizationPopup.dummyManager.SetUseHooksForMenus(useHooks: true);
					}
				}
				else if (customizationPopup != null)
				{
					customizationPopup.dummyManager.SetUseHooksForMenus(useHooks: false);
				}
			}
			else
			{
				if (Application.OleRequired() == ApartmentState.STA)
				{
					AllowDrop = false;
				}
				base.MenuBound = value;
			}
		}
	}

	public new bool DesignMode
	{
		get
		{
			if (parentItem != null && parentItem.Manager != null && parentItem.Manager.DesignMode)
			{
				return true;
			}
			return false;
		}
	}

	public MenuGridControlCustomizable(bool allowDropOnSelf)
	{
		this.allowDropOnSelf = allowDropOnSelf;
		allowedDragEffects = DragDropEffects.Copy | DragDropEffects.Move;
		dndHelper = new CustomizationDndHelper(this);
	}

	protected virtual DragDropEffects GetAllowedDragEffects()
	{
		return allowedDragEffects;
	}

	protected virtual void OnStartDragging()
	{
	}

	protected virtual bool ShouldRemoveItemOnMove()
	{
		return false;
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (mouseDownPoint != Point.Empty && mouseDownPoint == new Point(e.X, e.Y))
		{
			return;
		}
		mouseDownPoint = Point.Empty;
		if (base.Customizing && e.Button == MouseButtons.Left && base.HighlightRange.Top > 0)
		{
			int num = HitTestBarItemIndex(new Point(e.X, e.Y));
			BarItem barItem = parentItem.Items[base.HighlightRange.Top - 1];
			if (mouseDownItem == -1 || num != mouseDownItem || !parentItem.Manager.CanStartDragging(barItem))
			{
				return;
			}
			OnStartDragging();
			ValidateDndHelper();
			dndHelper.Dragging = true;
			BarItemDndData barItemDndData = new BarItemDndData(barItem, parentItem);
			DragDropEffects dragDropEffects = DoDragDrop(new DataObject(typeof(BarItem).FullName, barItemDndData), GetAllowedDragEffects());
			if (dndHelper.Dragging)
			{
				if (dragDropEffects == DragDropEffects.Move && barItemDndData.ItemDestination != barItemDndData.ItemParent && ShouldRemoveItemOnMove())
				{
					dndHelper.RemoveItem(barItem);
				}
				dndHelper.Dragging = false;
			}
			ResetDragging();
		}
		else
		{
			base.OnMouseMove(e);
		}
	}

	protected virtual void ValidateDndHelper()
	{
		dndHelper.ParentItem = parentItem;
	}

	protected virtual void UpdateSelectionOnDragging(Point ptClMouse)
	{
		GridRangeInfo gridRangeInfo = PointToRangeInfo(ptClMouse, -1);
		if (gridRangeInfo.IsEmpty)
		{
			return;
		}
		int top = gridRangeInfo.Top;
		int left = gridRangeInfo.Left;
		if (top > 0 && top <= base.Model.RowCount && parentItem.Items[top - 1] is ParentBarItem && ShouldDrawEnabled(parentItem.Items[top - 1]))
		{
			if (top <= base.Model.RowCount && left <= base.Model.ColCount && IsSelectable(top))
			{
				base.HighlightRange = GridRangeInfo.Rows(top, top);
			}
			else
			{
				base.HighlightRange = GridRangeInfo.Empty;
			}
		}
		else
		{
			base.HighlightRange = GridRangeInfo.Empty;
		}
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		if (base.Customizing && allowDropOnSelf)
		{
			UpdateSelectionOnDragging(PointToClient(new Point(drgevent.X, drgevent.Y)));
			ValidateDndHelper();
			dndHelper.OnDragOver(drgevent);
		}
	}

	protected override void OnDragDrop(DragEventArgs e)
	{
		base.OnDragDrop(e);
		if (base.Customizing && allowDropOnSelf)
		{
			ValidateDndHelper();
			dndHelper.OnDragDrop(e);
			dndHelper.Dragging = false;
		}
	}

	protected override void OnDragLeave(EventArgs e)
	{
		base.OnDragLeave(e);
		if (base.Customizing && allowDropOnSelf && dndHelper != null)
		{
			dndHelper.Reset();
		}
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		if (MenuBound && dndHelper != null)
		{
			dndHelper.PaintCueCursor(pe.Graphics);
		}
	}

	protected override void OnGiveFeedback(GiveFeedbackEventArgs gfbevent)
	{
		switch (gfbevent.Effect)
		{
		case DragDropEffects.Copy:
			Cursor.Current = DragCursors.CopyCursor;
			gfbevent.UseDefaultCursors = false;
			break;
		case DragDropEffects.Move:
			Cursor.Current = DragCursors.DragCursor;
			gfbevent.UseDefaultCursors = false;
			break;
		case DragDropEffects.None:
			Cursor.Current = DragCursors.NodropCursor;
			gfbevent.UseDefaultCursors = false;
			break;
		}
	}

	public Control GetControl()
	{
		return this;
	}

	public bool CanDropItem(BarItem item)
	{
		if (dndHelper.ParentItem is ParentBarItem parentBarItem)
		{
			return parentBarItem.ShouldAddItem(item);
		}
		return true;
	}

	public BarItem HitTestBarItem(Point mousePosition, ref bool beforeOrAfter)
	{
		GridRangeInfo gridRangeInfo = PointToRangeInfo(mousePosition, -1);
		if (gridRangeInfo.IsEmpty)
		{
			return null;
		}
		int top = gridRangeInfo.Top;
		int left = gridRangeInfo.Left;
		if (top > 0 && top <= base.Model.RowCount)
		{
			if (top <= base.Model.RowCount && left <= base.Model.ColCount && IsSelectable(top))
			{
				BarItem barItem = parentItem.Items[top - 1];
				Rectangle boundsOf = GetBoundsOf(barItem);
				if (mousePosition.Y - boundsOf.Top > boundsOf.Bottom - mousePosition.Y)
				{
					beforeOrAfter = false;
				}
				else
				{
					beforeOrAfter = true;
				}
				return barItem;
			}
			if (top == 1 && parentItem.Items[top - 1].Text == "-")
			{
				beforeOrAfter = true;
				return null;
			}
		}
		return null;
	}

	public Rectangle GetCueRect(BarItem barItem, bool beforeOrAfter)
	{
		if (barItem == null && beforeOrAfter)
		{
			return new Rectangle(0, 0, base.Width, 7);
		}
		Rectangle boundsOf = GetBoundsOf(barItem);
		if (beforeOrAfter)
		{
			return new Rectangle(boundsOf.Left, boundsOf.Top, boundsOf.Width, 7);
		}
		return new Rectangle(boundsOf.Left, boundsOf.Bottom - 8, boundsOf.Width, 7);
	}
}
