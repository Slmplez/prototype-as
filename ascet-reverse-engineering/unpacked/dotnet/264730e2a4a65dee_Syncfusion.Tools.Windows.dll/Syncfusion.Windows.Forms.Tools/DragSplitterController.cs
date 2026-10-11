using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DragSplitterController : DockControllerBase, IResizable
{
	protected DragSplitter ctrlHost;

	public override Control HostControl => ctrlHost;

	public override Rectangle LayoutRect
	{
		get
		{
			return ctrlHost.Bounds;
		}
		set
		{
			ctrlHost.Bounds = value;
			if (ctrlHost.Parent != null)
			{
				DICurrent.rcDockArea = ctrlHost.Parent.RectangleToScreen(value);
			}
		}
	}

	public override bool Floating
	{
		get
		{
			return ParentController.Floating;
		}
		set
		{
		}
	}

	public override int ChildCount => -1;

	public override int ChildHostCount => 0;

	public override IEnumerator DCR => new IEnumWrapper(null);

	internal bool CanMove
	{
		get
		{
			bool flag = true;
			DockPreference dockingOrder = (ParentController as SizingController).DockingOrder;
			foreach (DockControllerBase childController in ParentController.ChildControllers)
			{
				SizingController sizingController = childController as SizingController;
				DockStateControllerBase dockStateControllerBase = childController as DockStateControllerBase;
				if (sizingController != null)
				{
					Direction canResize = sizingController.CanResize;
					if (dockingOrder == DockPreference.Vertical && (canResize & Direction.Vertical) != Direction.Vertical)
					{
						flag = false;
					}
					if (dockingOrder == DockPreference.Horizontal && (canResize & Direction.Horizontal) != Direction.Horizontal)
					{
						flag = false;
					}
				}
				if (dockStateControllerBase != null && dockStateControllerBase.FreezeResize)
				{
					flag = false;
				}
				if (!flag)
				{
					break;
				}
			}
			return flag;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			if (DICurrent.DP == DockPreference.Vertical)
			{
				return new Size(0, 10);
			}
			return new Size(10, 0);
		}
	}

	public DragSplitterController(DockingManager mgr, DragSplitter host)
		: base(mgr)
	{
		ctrlHost = host;
	}

	public override void AddChild(DockControllerBase dc, DockingStyle db)
	{
	}

	public override void InsertChild(DockControllerBase dc, int i, DockingStyle db)
	{
	}

	public override void RemoveChild(DockControllerBase dc)
	{
	}

	public override DockControllerBase GetChildAt(int index)
	{
		return null;
	}

	public override int GetChildHostIndex(DockControllerBase child)
	{
		return -1;
	}

	public override void AdjustLayout()
	{
	}

	public override void GetDockInfo(Control ctrl, Point pt, DockInfo di)
	{
		SizingController sizingController = (SizingController)(di.dController = ParentController as SizingController);
		di.nPriority = sizingController.DICurrent.nPriority;
		if (sizingController.ParentController is MainFormController)
		{
			di.nDockIndex = dockInfoCurrent.nDockIndex + 1;
		}
		else
		{
			di.nDockIndex = dockInfoCurrent.nDockIndex;
		}
		di.dStyle = dockInfoCurrent.dStyle;
		di.DP = dockInfoCurrent.DP;
		DragSplitter dragSplitter = HostControl as DragSplitter;
		int nDockIndex = dockInfoCurrent.nDockIndex;
		DockControllerBase dockControllerBase = null;
		DockControllerBase dockControllerBase2 = null;
		if (ParentController.DICurrent.dStyle == DockingStyle.Right || ParentController.DICurrent.dStyle == DockingStyle.Bottom)
		{
			if (ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase = ParentController.GetChildAt(nDockIndex + 1);
			}
			dockControllerBase2 = ParentController.GetChildAt(nDockIndex - 1);
		}
		else
		{
			dockControllerBase = ParentController.GetChildAt(nDockIndex - 1);
			if (ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase2 = ParentController.GetChildAt(nDockIndex + 1);
			}
		}
		int num = 0;
		int num2 = 0;
		if (dockInfoCurrent.DP == DockPreference.Horizontal)
		{
			if (dockControllerBase == null)
			{
				dockControllerBase = dockingMgr.GetDockController(HostControl.GetContainerControl() as ContainerControl);
				num = dockControllerBase.LayoutRect.Width;
				num2 = ((ctrl.Width < num / 2) ? ctrl.Width : (num / 2));
				if (dockControllerBase.LayoutRect.Left + num2 > dragSplitter.Left)
				{
					num2 = dragSplitter.Left - dockControllerBase.LayoutRect.Left;
				}
				di.rcDockArea = dragSplitter.Parent.RectangleToScreen(new Rectangle(dragSplitter.Left - num2, dragSplitter.Top, num2, dragSplitter.Height));
			}
			else if (dockControllerBase2 == null)
			{
				dockControllerBase2 = dockingMgr.GetDockController(HostControl.GetContainerControl() as ContainerControl);
				num = dockControllerBase2.LayoutRect.Width;
				num2 = ((ctrl.Width < num / 2) ? ctrl.Width : (num / 2));
				if (dockControllerBase2.LayoutRect.Right - num2 < dragSplitter.Right)
				{
					num2 = dockControllerBase2.LayoutRect.Right - dragSplitter.Right;
				}
				di.rcDockArea = dragSplitter.Parent.RectangleToScreen(new Rectangle(dragSplitter.Right, dragSplitter.Top, num2, dragSplitter.Height));
			}
			else
			{
				num = dockControllerBase.LayoutRect.Width + dragSplitter.Width + dockControllerBase2.LayoutRect.Width;
				num2 = ((ctrl.Width < num / 2) ? ctrl.Width : (num / 2));
				int num3 = dockControllerBase.LayoutRect.Width - (int)((float)dockControllerBase.LayoutRect.Width / (float)num * ((float)num - (float)num2));
				_ = dockControllerBase2.LayoutRect.Width;
				_ = (float)dockControllerBase2.LayoutRect.Width / (float)num;
				di.rcDockArea = dragSplitter.Parent.RectangleToScreen(new Rectangle(dragSplitter.Left - num3, dragSplitter.Top, num2, dragSplitter.Height));
			}
		}
		else if (dockControllerBase == null)
		{
			dockControllerBase = dockingMgr.GetDockController(HostControl.GetContainerControl() as ContainerControl);
			num = dockControllerBase.LayoutRect.Height;
			num2 = ((ctrl.Height < num / 2) ? ctrl.Height : (num / 2));
			if (dockControllerBase.LayoutRect.Top + num2 > dragSplitter.Top)
			{
				num2 = dragSplitter.Top - dockControllerBase.LayoutRect.Top;
			}
			di.rcDockArea = dragSplitter.Parent.RectangleToScreen(new Rectangle(dragSplitter.Left, dragSplitter.Top - num2, dragSplitter.Width, num2));
		}
		else if (dockControllerBase2 == null)
		{
			dockControllerBase2 = dockingMgr.GetDockController(HostControl.GetContainerControl() as ContainerControl);
			num = dockControllerBase2.LayoutRect.Height;
			num2 = ((ctrl.Height < num / 2) ? ctrl.Height : (num / 2));
			if (dockControllerBase2.LayoutRect.Bottom - num2 < dragSplitter.Bottom)
			{
				num2 = dockControllerBase2.LayoutRect.Bottom - dragSplitter.Bottom;
			}
			di.rcDockArea = dragSplitter.Parent.RectangleToScreen(new Rectangle(dragSplitter.Left, dragSplitter.Bottom, dragSplitter.Width, num2));
		}
		else
		{
			num = dockControllerBase.LayoutRect.Height + dragSplitter.Height + dockControllerBase2.LayoutRect.Height;
			num2 = ((ctrl.Height < num / 2) ? ctrl.Height : (num / 2));
			int num4 = dockControllerBase.LayoutRect.Height - (int)((float)dockControllerBase.LayoutRect.Height / (float)num * ((float)num - (float)num2));
			_ = dockControllerBase2.LayoutRect.Height;
			_ = (float)dockControllerBase2.LayoutRect.Height / (float)num;
			di.rcDockArea = dragSplitter.Parent.RectangleToScreen(new Rectangle(dragSplitter.Left, dragSplitter.Top - num4, dragSplitter.Width, num2));
		}
	}

	protected internal override DockControllerBase QueryController(string uniqueName)
	{
		return null;
	}

	public override bool QueryDropProceedWithDock(Control ctrldrop, DockingStyle style)
	{
		DockControllerBase dockControllerBase = null;
		DockControllerBase dockControllerBase2 = null;
		int nDockIndex = dockInfoCurrent.nDockIndex;
		if (ParentController.DICurrent.dStyle == DockingStyle.Right || ParentController.DICurrent.dStyle == DockingStyle.Bottom)
		{
			if (ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase = ParentController.GetChildAt(nDockIndex + 1);
			}
			dockControllerBase2 = ParentController.GetChildAt(nDockIndex - 1);
		}
		else
		{
			dockControllerBase = ParentController.GetChildAt(nDockIndex - 1);
			if (ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase2 = ParentController.GetChildAt(nDockIndex + 1);
			}
		}
		if (dockControllerBase is DockStateControllerWrapper || (dockControllerBase != null && dockControllerBase.HostControl.Equals(ctrldrop)))
		{
			return false;
		}
		if (dockControllerBase2 is DockStateControllerWrapper || (dockControllerBase2 != null && dockControllerBase2.HostControl.Equals(ctrldrop)))
		{
			return false;
		}
		if (dockControllerBase == null || dockControllerBase2 == null)
		{
			DockControllerBase parentController = ParentController.ParentController;
			return parentController.QueryDropProceedWithDock(ctrldrop, style);
		}
		if (dockInfoCurrent.DP == DockPreference.Horizontal)
		{
			return dockControllerBase.QueryDropProceedWithDock(ctrldrop, DockingStyle.Right);
		}
		return dockControllerBase.QueryDropProceedWithDock(ctrldrop, DockingStyle.Bottom);
	}

	protected internal void HandleMouseDownImp(MouseButtons button, Point ptclient)
	{
		if (button == MouseButtons.Left && !dockingMgr.FreezeResizing && CanMove)
		{
			dockingMgr.DragProvider.ProcessMouseDown(this, ctrlHost, ctrlHost.PointToScreen(ptclient));
		}
	}

	protected internal void HandleMouseUpImp(MouseButtons button, Point ptclient)
	{
		if (button == MouseButtons.Left && dockingMgr.DragProvider.DraggingControl != null)
		{
			if (ToplevelController is FloatingFormController)
			{
				ToplevelController.HostControl.Invalidate(invalidateChildren: true);
			}
			base.DockingManager.dcHostForm.HostControl.Invalidate(invalidateChildren: true);
			ResizeTargetPanes();
			dockingMgr.DragProvider.ProcessMouseUp(this, ctrlHost, ctrlHost.PointToScreen(ptclient));
			ParentController.AdjustLayout();
			ctrlHost.OnSplitterMoved(new SplitterEventArgs(ctrlHost.Left, ctrlHost.Top, ptclient.X, ptclient.Y));
			if (dockingMgr.DesignMode)
			{
				dockingMgr.UpdateDesigner();
			}
		}
	}

	protected internal void HandleMouseMoveImp(MouseButtons button, Point ptclient)
	{
		if (button != MouseButtons.Left || dockingMgr.FreezeResizing || !CanMove)
		{
			return;
		}
		dockingMgr.DragProvider.ProcessMouseMove(this, ctrlHost, ctrlHost.PointToScreen(ptclient));
		ctrlHost.OnSplitterMoving(new SplitterEventArgs(ctrlHost.Left, ctrlHost.Top, ptclient.X, ptclient.Y));
		foreach (DockControllerBase childController in ParentController.ChildControllers)
		{
			if (!childController.Maximized && childController.Minimized == Minimization.None)
			{
				continue;
			}
			ParentController.Minimized = Minimization.None;
			{
				foreach (DockControllerBase childController2 in ParentController.ChildControllers)
				{
					childController2.Maximized = false;
				}
				break;
			}
		}
	}

	public void ResizeTargetPanes()
	{
		int nDockIndex = dockInfoCurrent.nDockIndex;
		DockControllerBase dockControllerBase = null;
		DockControllerBase dockControllerBase2 = null;
		if (ParentController.ParentController.MainFormController && (ParentController.DICurrent.dStyle == DockingStyle.Right || ParentController.DICurrent.dStyle == DockingStyle.Bottom))
		{
			if (ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase = ParentController.GetChildAt(nDockIndex + 1);
			}
			dockControllerBase2 = ParentController.GetChildAt(nDockIndex - 1);
		}
		else
		{
			dockControllerBase = ParentController.GetChildAt(nDockIndex - 1);
			if (ParentController.ChildCount > nDockIndex + 1)
			{
				dockControllerBase2 = ParentController.GetChildAt(nDockIndex + 1);
			}
		}
		Rectangle rectangle = ctrlHost.Parent.RectangleToClient(dockInfoCurrent.rcDockArea);
		if (ctrlHost.Cursor == Cursors.VSplit)
		{
			if (ctrlHost.Bounds.Left > rectangle.Left)
			{
				int num = ctrlHost.Bounds.Left - rectangle.Left;
				if (dockControllerBase == null)
				{
					Rectangle rcDockArea = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left - num, dockControllerBase2.LayoutRect.Top, dockControllerBase2.LayoutRect.Width + num, dockControllerBase2.LayoutRect.Height));
					dockControllerBase2.DITransient.rcDockArea = rcDockArea;
					DockControllerBase parentController = dockControllerBase2.ParentController;
					parentController.LayoutRect = new Rectangle(parentController.LayoutRect.Left - num, parentController.LayoutRect.Top, parentController.LayoutRect.Width + num, parentController.LayoutRect.Height);
					parentController.ParentController.AdjustLayout();
				}
				else if (dockControllerBase2 == null)
				{
					Rectangle rcDockArea2 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width - num, dockControllerBase.LayoutRect.Height));
					dockControllerBase.DITransient.rcDockArea = rcDockArea2;
					DockControllerBase parentController2 = dockControllerBase.ParentController;
					parentController2.LayoutRect = new Rectangle(parentController2.LayoutRect.Left, parentController2.LayoutRect.Top, parentController2.LayoutRect.Width - num, parentController2.LayoutRect.Height);
					parentController2.ParentController.AdjustLayout();
				}
				else
				{
					Rectangle rcDockArea3 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width - num, dockControllerBase.LayoutRect.Height));
					dockControllerBase.DITransient.rcDockArea = rcDockArea3;
					Rectangle rcDockArea4 = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left - num, dockControllerBase2.LayoutRect.Top, dockControllerBase2.LayoutRect.Width + num, dockControllerBase2.LayoutRect.Height));
					dockControllerBase2.DITransient.rcDockArea = rcDockArea4;
				}
			}
			else if (rectangle.Right > ctrlHost.Bounds.Right)
			{
				int num2 = rectangle.Right - ctrlHost.Bounds.Right;
				if (dockControllerBase == null)
				{
					Rectangle rcDockArea5 = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left + num2, dockControllerBase2.LayoutRect.Top, dockControllerBase2.LayoutRect.Width - num2, dockControllerBase2.LayoutRect.Height));
					dockControllerBase2.DITransient.rcDockArea = rcDockArea5;
					DockControllerBase parentController3 = dockControllerBase2.ParentController;
					parentController3.LayoutRect = new Rectangle(parentController3.LayoutRect.Left + num2, parentController3.LayoutRect.Top, parentController3.LayoutRect.Width - num2, parentController3.LayoutRect.Height);
					parentController3.ParentController.AdjustLayout();
				}
				else if (dockControllerBase2 == null)
				{
					Rectangle rcDockArea6 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width + num2, dockControllerBase.LayoutRect.Height));
					dockControllerBase.DITransient.rcDockArea = rcDockArea6;
					DockControllerBase parentController4 = dockControllerBase.ParentController;
					parentController4.LayoutRect = new Rectangle(parentController4.LayoutRect.Left, parentController4.LayoutRect.Top, parentController4.LayoutRect.Width + num2, parentController4.LayoutRect.Height);
					parentController4.ParentController.AdjustLayout();
				}
				else
				{
					Rectangle rcDockArea7 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width + num2, dockControllerBase.LayoutRect.Height));
					dockControllerBase.DITransient.rcDockArea = rcDockArea7;
					Rectangle rcDockArea8 = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left + num2, dockControllerBase2.LayoutRect.Top, dockControllerBase2.LayoutRect.Width - num2, dockControllerBase2.LayoutRect.Height));
					dockControllerBase2.DITransient.rcDockArea = rcDockArea8;
				}
			}
		}
		else if (ctrlHost.Bounds.Top > rectangle.Top)
		{
			int num3 = ctrlHost.Bounds.Top - rectangle.Top;
			if (dockControllerBase == null)
			{
				Rectangle rcDockArea9 = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left, dockControllerBase2.LayoutRect.Top - num3, dockControllerBase2.LayoutRect.Width, dockControllerBase2.LayoutRect.Height + num3));
				dockControllerBase2.DITransient.rcDockArea = rcDockArea9;
				DockControllerBase parentController5 = dockControllerBase2.ParentController;
				parentController5.LayoutRect = new Rectangle(parentController5.LayoutRect.Left, parentController5.LayoutRect.Top - num3, parentController5.LayoutRect.Width, parentController5.LayoutRect.Height + num3);
				parentController5.ParentController.AdjustLayout();
			}
			else if (dockControllerBase2 == null)
			{
				Rectangle rcDockArea10 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width, dockControllerBase.LayoutRect.Height - num3));
				dockControllerBase.DITransient.rcDockArea = rcDockArea10;
				DockControllerBase parentController6 = dockControllerBase.ParentController;
				parentController6.LayoutRect = new Rectangle(parentController6.LayoutRect.Left, parentController6.LayoutRect.Top, parentController6.LayoutRect.Width, parentController6.LayoutRect.Height - num3);
				parentController6.ParentController.AdjustLayout();
			}
			else
			{
				Rectangle rcDockArea11 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width, dockControllerBase.LayoutRect.Height - num3));
				dockControllerBase.DITransient.rcDockArea = rcDockArea11;
				Rectangle rcDockArea12 = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left, dockControllerBase2.LayoutRect.Top - num3, dockControllerBase2.LayoutRect.Width, dockControllerBase2.LayoutRect.Height + num3));
				dockControllerBase2.DITransient.rcDockArea = rcDockArea12;
			}
		}
		else if (rectangle.Bottom > ctrlHost.Bounds.Bottom)
		{
			int num4 = rectangle.Bottom - ctrlHost.Bounds.Bottom;
			if (dockControllerBase == null)
			{
				Rectangle rcDockArea13 = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left, dockControllerBase2.LayoutRect.Top + num4, dockControllerBase2.LayoutRect.Width, dockControllerBase2.LayoutRect.Height - num4));
				dockControllerBase2.DITransient.rcDockArea = rcDockArea13;
				DockControllerBase parentController7 = dockControllerBase2.ParentController;
				parentController7.LayoutRect = new Rectangle(parentController7.LayoutRect.Left, parentController7.LayoutRect.Top + num4, parentController7.LayoutRect.Width, parentController7.LayoutRect.Height - num4);
				parentController7.ParentController.AdjustLayout();
			}
			else if (dockControllerBase2 == null)
			{
				Rectangle rcDockArea14 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width, dockControllerBase.LayoutRect.Height + num4));
				dockControllerBase.DITransient.rcDockArea = rcDockArea14;
				DockControllerBase parentController8 = dockControllerBase.ParentController;
				parentController8.LayoutRect = new Rectangle(parentController8.LayoutRect.Left, parentController8.LayoutRect.Top, parentController8.LayoutRect.Width, parentController8.LayoutRect.Height + num4);
				parentController8.ParentController.AdjustLayout();
			}
			else
			{
				Rectangle rcDockArea15 = (dockControllerBase.LayoutRect = new Rectangle(dockControllerBase.LayoutRect.Left, dockControllerBase.LayoutRect.Top, dockControllerBase.LayoutRect.Width, dockControllerBase.LayoutRect.Height + num4));
				dockControllerBase.DITransient.rcDockArea = rcDockArea15;
				Rectangle rcDockArea16 = (dockControllerBase2.LayoutRect = new Rectangle(dockControllerBase2.LayoutRect.Left, dockControllerBase2.LayoutRect.Top + num4, dockControllerBase2.LayoutRect.Width, dockControllerBase2.LayoutRect.Height - num4));
				dockControllerBase2.DITransient.rcDockArea = rcDockArea16;
			}
		}
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && ctrlHost != null)
		{
			ctrlHost.Dispose();
			ctrlHost = null;
			base.DockingManager.alDockAreaControllers.Remove(this);
		}
		base.Dispose(bdisposing);
	}

	internal override void AddWrapper(ControllerWrapper cw)
	{
		DragSplitterControllerWrapper dragSplitterControllerWrapper = new DragSplitterControllerWrapper();
		dragSplitterControllerWrapper.LayoutRect = LayoutRect;
		cw.Children.Add(dragSplitterControllerWrapper);
	}

	internal override void StoreControllers(ArrayList controllers)
	{
		base.StoreControllers(controllers);
		ParentController.RemoveChild(this);
		controllers.Add(this);
	}

	internal override bool IsEqual(ControllerWrapper cw)
	{
		return cw is DragSplitterControllerWrapper;
	}

	internal override void ResizeControllers(ControllerWrapper cw)
	{
		DragSplitterControllerWrapper dragSplitterControllerWrapper = (DragSplitterControllerWrapper)cw;
		LayoutRect = dragSplitterControllerWrapper.LayoutRect;
		base.DITransient.rcDockArea = Rectangle.Empty;
	}

	internal override bool IsFloatOnly()
	{
		return false;
	}

	public Size CalculateSize(Size parentSize, Size newParentSize)
	{
		if (DICurrent.DP == DockPreference.Horizontal)
		{
			return new Size(LayoutRect.Width, newParentSize.Height);
		}
		if (DICurrent.DP == DockPreference.Vertical)
		{
			return new Size(newParentSize.Width, LayoutRect.Height);
		}
		return LayoutRect.Size;
	}

	public bool IsVerticallyResizable()
	{
		return false;
	}

	public bool IsHorizontallyResizable()
	{
		return false;
	}

	public override void DockAsMDIChild()
	{
	}

	public override void UpdateControl()
	{
		ctrlHost.Invalidate();
	}
}
