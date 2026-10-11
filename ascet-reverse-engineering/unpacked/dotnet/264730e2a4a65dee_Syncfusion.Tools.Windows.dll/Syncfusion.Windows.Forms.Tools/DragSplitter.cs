using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Renderers;

namespace Syncfusion.Windows.Forms.Tools;

[DesignTimeVisible(false)]
[ToolboxItem(false)]
[DocumentationExclude]
public class DragSplitter : Control, IDraggable, IDockingManagerDesignerMouseHook
{
	protected const int nSplitOffLt = 20;

	protected const int nCaptionHt = 16;

	protected DragSplitterController dcInternal;

	protected Rectangle rcDrag = Rectangle.Empty;

	protected static int nNamingCount;

	public DockControllerBase InternalController
	{
		get
		{
			return dcInternal;
		}
		set
		{
			dcInternal = value as DragSplitterController;
		}
	}

	public DockInfo DragDockInfo
	{
		get
		{
			return dcInternal.DICurrent;
		}
		set
		{
			dcInternal.DICurrent = value;
		}
	}

	public Rectangle DragRectangle
	{
		get
		{
			return new Rectangle(base.Location.X, base.Location.Y, base.Bounds.Width, base.Bounds.Height);
		}
		set
		{
		}
	}

	public override Cursor Cursor
	{
		get
		{
			Cursor result = base.Cursor;
			if (dcInternal.DockingManager.FreezeResizing || !dcInternal.CanMove)
			{
				result = Cursors.Default;
			}
			return result;
		}
		set
		{
			base.Cursor = value;
		}
	}

	public event SplitterEventHandler DragSplitterMoving;

	public event SplitterEventHandler DragSplitterMoved;

	public DragSplitter(DockingManager dmgr)
	{
		dcInternal = new DragSplitterController(dmgr, this);
		SetStyle(ControlStyles.Selectable, value: false);
		base.TabStop = false;
		CreateControl();
		base.Size = new Size(0, 0);
		base.Visible = true;
		nNamingCount++;
		base.Name = "DragSplitter_" + nNamingCount;
	}

	public void UpdateCursor()
	{
		if (dcInternal == null || dcInternal.DockingManager.FreezeResizing)
		{
			return;
		}
		DockPreference dockingOrder = (dcInternal.ParentController as SizingController).DockingOrder;
		if (dockingOrder == DockPreference.Horizontal)
		{
			if (Cursor != Cursors.VSplit)
			{
				Cursor = Cursors.VSplit;
			}
		}
		else if (Cursor != Cursors.HSplit)
		{
			Cursor = Cursors.HSplit;
		}
	}

	public bool IsSuitableDockTarget(DockControllerBase dc)
	{
		return false;
	}

	public bool InitiateDrag(MouseAction action, Point ptscreen)
	{
		if (action == MouseAction.LBtnDown && base.ClientRectangle.Contains(PointToClient(ptscreen)))
		{
			return true;
		}
		return false;
	}

	public DragAxis AllowedDragAxis(ref Point ptdrag, Point ptdelta)
	{
		Point point = dcInternal.ParentController.HostControl.PointToClient(ptdrag);
		int nDockIndex = dcInternal.DICurrent.nDockIndex;
		DockControllerBase dockControllerBase = null;
		DockControllerBase dockControllerBase2 = null;
		if (dcInternal.ParentController.ParentController.MainFormController && (dcInternal.ParentController.DICurrent.dStyle == DockingStyle.Right || dcInternal.ParentController.DICurrent.dStyle == DockingStyle.Bottom))
		{
			if (dcInternal.ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase = dcInternal.ParentController.GetChildAt(nDockIndex + 1);
			}
			dockControllerBase2 = dcInternal.ParentController.GetChildAt(nDockIndex - 1);
		}
		else
		{
			dockControllerBase = dcInternal.ParentController.GetChildAt(nDockIndex - 1);
			if (dcInternal.ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase2 = dcInternal.ParentController.GetChildAt(nDockIndex + 1);
			}
		}
		if (dockControllerBase == null)
		{
			dockControllerBase = dcInternal.DockingManager.GetDockController(GetContainerControl() as ContainerControl);
		}
		else if (dockControllerBase2 == null)
		{
			dockControllerBase2 = dcInternal.DockingManager.GetDockController(GetContainerControl() as ContainerControl);
		}
		if (Cursor == Cursors.VSplit)
		{
			if (point.X > dockControllerBase.LayoutRect.Left + 20 && point.X < dockControllerBase2.LayoutRect.Right - 20)
			{
				int num = Math.Abs(ptdelta.X);
				if (dockControllerBase.MainFormController)
				{
					if (point.X < dockControllerBase2.LayoutRect.Left)
					{
						if (!(dockControllerBase as MainFormController).AllowSplitterSizing(dockControllerBase2.ParentController, -num))
						{
							return DragAxis.None;
						}
					}
					else if (point.X > dockControllerBase2.LayoutRect.Left && !(dockControllerBase as MainFormController).AllowSplitterSizing(dockControllerBase2.ParentController, num))
					{
						return DragAxis.None;
					}
				}
				else if (dockControllerBase2.MainFormController)
				{
					if (point.X > dockControllerBase.LayoutRect.Right)
					{
						if (!(dockControllerBase2 as MainFormController).AllowSplitterSizing(dockControllerBase.ParentController, -num))
						{
							return DragAxis.None;
						}
					}
					else if (point.X < dockControllerBase.LayoutRect.Right && !(dockControllerBase2 as MainFormController).AllowSplitterSizing(dockControllerBase.ParentController, num))
					{
						return DragAxis.None;
					}
				}
				if (point.X > dockControllerBase.LayoutRect.Left && point.X < dockControllerBase.LayoutRect.Right && dockControllerBase.MinimumSize.Width != 0)
				{
					int num2 = dockControllerBase.LayoutRect.Width - 2;
					if (num2 - num < dockControllerBase.MinimumSize.Width)
					{
						ptdrag.Offset(dockControllerBase.MinimumSize.Width - num2 + num, 0);
					}
				}
				if (point.X + base.Width > dockControllerBase2.LayoutRect.Left && point.X + base.Width < dockControllerBase2.LayoutRect.Right && dockControllerBase2.MinimumSize.Width != 0)
				{
					int num3 = dockControllerBase2.LayoutRect.Width - 2;
					if (num3 - num < dockControllerBase2.MinimumSize.Width)
					{
						ptdrag.Offset(-dockControllerBase2.MinimumSize.Width + num3 - num, 0);
					}
				}
				return DragAxis.X;
			}
		}
		else
		{
			int num4 = 0;
			if (point.Y > dockControllerBase.LayoutRect.Top && point.Y < dockControllerBase.LayoutRect.Bottom)
			{
				try
				{
					if (dockControllerBase is SizingController)
					{
						if ((dockControllerBase as SizingController).GetDockControllers().Count > 1)
						{
							bool flag = false;
							for (int i = 0; i < dockControllerBase.ChildControllers.Count; i++)
							{
								if (dockControllerBase.ChildControllers[i] is SizingController)
								{
									flag = true;
									break;
								}
							}
							if (!flag)
							{
								int val = SystemInformation.ToolWindowCaptionHeight;
								DockingManagerRenderer renderer = InternalController.DockingManager.Renderer;
								if (renderer != null && (InternalController.DockingManager.VisualStyle != VisualStyle.Default || !InternalController.DockingManager.ThemesEnabled))
								{
									val = renderer.CaptionWidth + renderer.BorderWidth * 2 + 8;
								}
								num4 = Math.Max(dockControllerBase.MinimumSize.Height, val);
							}
						}
					}
					else if (dockControllerBase is DockTabController && (dockControllerBase as DockTabController).ChildControllers.Count > 1)
					{
						DockTabAlignmentStyle dockTabAlignment = (dockControllerBase as DockTabController).DockingManager.DockTabAlignment;
						if (dockTabAlignment == DockTabAlignmentStyle.Bottom || dockTabAlignment == DockTabAlignmentStyle.Top)
						{
							num4 = (dockControllerBase as DockTabController).DockingManager.DockTabHeight + 2;
						}
					}
				}
				catch
				{
				}
			}
			if (point.Y >= dockControllerBase.LayoutRect.Top + (16 + num4) && point.Y < dockControllerBase2.LayoutRect.Bottom - 20)
			{
				int num5 = Math.Abs(ptdelta.Y);
				if (dockControllerBase.MainFormController)
				{
					if (point.Y < dockControllerBase2.LayoutRect.Top)
					{
						if (!(dockControllerBase as MainFormController).AllowSplitterSizing(dockControllerBase2.ParentController, -num5))
						{
							return DragAxis.None;
						}
					}
					else if (point.Y > dockControllerBase2.LayoutRect.Top && !(dockControllerBase as MainFormController).AllowSplitterSizing(dockControllerBase2.ParentController, num5))
					{
						return DragAxis.None;
					}
				}
				else if (dockControllerBase2.MainFormController)
				{
					if (point.Y > dockControllerBase.LayoutRect.Bottom)
					{
						if (!(dockControllerBase2 as MainFormController).AllowSplitterSizing(dockControllerBase.ParentController, -num5))
						{
							return DragAxis.None;
						}
					}
					else if (point.Y < dockControllerBase.LayoutRect.Bottom && !(dockControllerBase2 as MainFormController).AllowSplitterSizing(dockControllerBase.ParentController, num5))
					{
						return DragAxis.None;
					}
				}
				if (point.Y > dockControllerBase.LayoutRect.Top && point.Y < dockControllerBase.LayoutRect.Bottom && dockControllerBase.MinimumSize.Height != 0)
				{
					int num6 = dockControllerBase.LayoutRect.Height - (CaptionPainter.CaptionHeight + 5);
					if (num6 - num5 < dockControllerBase.MinimumSize.Height)
					{
						ptdrag.Offset(0, dockControllerBase.MinimumSize.Height - num6 + num5);
					}
				}
				if (point.Y > dockControllerBase2.LayoutRect.Top && point.Y < dockControllerBase2.LayoutRect.Bottom && dockControllerBase2.MinimumSize.Height != 0)
				{
					int num7 = dockControllerBase2.LayoutRect.Height - (CaptionPainter.CaptionHeight + 5);
					if (num7 - num5 < dockControllerBase2.MinimumSize.Height)
					{
						ptdrag.Offset(0, -dockControllerBase2.MinimumSize.Height + num7 - num5);
					}
				}
				return DragAxis.Y;
			}
		}
		return DragAxis.None;
	}

	public bool DrawHollow()
	{
		return false;
	}

	public void AbortDrag()
	{
		if (dcInternal.DockingManager.DragProvider.DraggingControl == this)
		{
			if (base.Capture)
			{
				base.Capture = false;
			}
			dcInternal.DockingManager.DragProvider.TerminateDrag(this, Point.Empty);
			if (dcInternal.DockingManager.DesignMode)
			{
				dcInternal.DockingManager.UpdateDesigner();
			}
		}
	}

	public bool QueryDragProceedWithDock()
	{
		return true;
	}

	public void HandleMouseDown(MouseButtons button, Point ptscreen)
	{
		dcInternal.HandleMouseDownImp(button, PointToClient(ptscreen));
	}

	public void HandleMouseMove(MouseButtons button, Point ptscreen)
	{
		dcInternal.HandleMouseMoveImp(button, PointToClient(ptscreen));
	}

	public void HandleMouseUp(MouseButtons button, Point ptscreen)
	{
		dcInternal.HandleMouseUpImp(button, PointToClient(ptscreen));
	}

	public void HandleDoubleClick(Point ptscreen)
	{
	}

	public void HandleMouseLeave()
	{
	}

	public void InitiateFloatingResize(Point ptscreen, int nchittest)
	{
	}

	public bool GetDesignMode()
	{
		return dcInternal.DockingManager.DesignMode;
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		base.OnMouseEnter(e);
		if (dcInternal != null && dcInternal.DockingManager.DesignProcess && !dcInternal.DockingManager.DesignMode && Cursor != Cursors.Default)
		{
			Cursor = Cursors.Default;
		}
		else
		{
			UpdateCursor();
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess)
		{
			dcInternal.HandleMouseDownImp(e.Button, new Point(e.X, e.Y));
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		IDraggable draggingControl = dcInternal.DockingManager.DragProvider.DraggingControl;
		if (draggingControl == null || (draggingControl != null && draggingControl == this))
		{
			dcInternal.HandleMouseUpImp(e.Button, new Point(e.X, e.Y));
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess)
		{
			IDraggable draggingControl = dcInternal.DockingManager.DragProvider.DraggingControl;
			if (draggingControl == null || (draggingControl != null && draggingControl == this))
			{
				dcInternal.HandleMouseMoveImp(e.Button, new Point(e.X, e.Y));
			}
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (dcInternal.DockingManager.Renderer.VisualStyle != VisualStyle.Default)
		{
			Orientation orientation = Orientation.Horizontal;
			if (dcInternal.DICurrent.DP == DockPreference.Horizontal)
			{
				orientation = Orientation.Vertical;
			}
			dcInternal.DockingManager.Renderer.PaintSplitter(e.Graphics, base.ClientRectangle, orientation);
		}
		base.OnPaint(e);
	}

	protected override void OnResize(EventArgs e)
	{
		base.OnResize(e);
		Invalidate();
	}

	protected internal virtual void OnSplitterMoving(SplitterEventArgs splitevent)
	{
		if (this.DragSplitterMoving != null)
		{
			this.DragSplitterMoving(this, splitevent);
		}
	}

	protected internal virtual void OnSplitterMoved(SplitterEventArgs splitevent)
	{
		if (this.DragSplitterMoved != null)
		{
			this.DragSplitterMoved(this, splitevent);
		}
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && dcInternal != null)
		{
			dcInternal = null;
		}
		base.Dispose(bdisposing);
	}
}
