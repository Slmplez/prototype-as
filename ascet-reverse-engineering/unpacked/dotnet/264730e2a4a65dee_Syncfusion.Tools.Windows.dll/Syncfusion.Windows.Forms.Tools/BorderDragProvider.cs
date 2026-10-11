using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class BorderDragProvider : CustomDragProvider
{
	public BorderDragProvider(DockingManager dockingManager)
		: base(dockingManager)
	{
	}

	public override void ProcessMouseDown(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
		base.ProcessMouseDown(controller, ctrl, ptscreen);
		bInitiateDrag = false;
		ptMoveStart = Point.Empty;
		if (ctrl.InitiateDrag(MouseAction.LBtnDown, ptscreen))
		{
			bInitiateDrag = true;
			ptMoveStart = ptscreen;
			if (!ctrl.DrawHollow())
			{
				InitiateDrag(ctrl, ptscreen);
			}
		}
	}

	public override Control GetUnderlyingControl(Point point)
	{
		Control control = null;
		IntPtr zero = IntPtr.Zero;
		if (base.DraggingControl != null)
		{
			FloatingForm control2 = null;
			if (base.DraggingControl.InternalController is DockHostController dockHostController)
			{
				control2 = dockHostController.ParentController.HostControl as FloatingForm;
			}
			zero = base.DockingManager.GetFloatingWindow(control2, point);
			control = Control.FromHandle(zero);
		}
		if (control == null)
		{
			control = base.DockingManager.HostControl;
			DockingManager managerFromPoint = base.DockingManager.GetManagerFromPoint(point);
			if (managerFromPoint != null && managerFromPoint != base.DockingManager)
			{
				zero = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(point.X, point.Y);
				control = Control.FromHandle(zero);
				DockHostController dockHostController2 = base.DockingManager.GetDockHostController(control);
				if (dockHostController2 != null && managerFromPoint != null && dockHostController2.ToplevelController == base.DraggingControl.InternalController.ToplevelController)
				{
					control = managerFromPoint.HostControl;
				}
			}
		}
		return control;
	}

	public override void ProcessMouseMove(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
		base.ProcessMouseMove(controller, ctrl, ptscreen);
		if (!bInitiateDrag)
		{
			return;
		}
		if (base.DraggingControl == null)
		{
			if (ptscreen.X > ptMoveStart.X || ptscreen.X < ptMoveStart.X || ptscreen.Y > ptMoveStart.Y || ptscreen.Y < ptMoveStart.Y)
			{
				InitiateDrag(ctrl, ptscreen);
			}
			return;
		}
		DockInfo dockInfo = new DockInfo(ctrl.DragDockInfo);
		GetNewDockInfo(ctrl, ptscreen);
		if (CustomDragProvider.ShowDisallowFloatCursor)
		{
			if (!IsDockAllowed(ctrl) && ctrl.DrawHollow())
			{
				if (Cursor.Current != Cursors.No)
				{
					Cursor.Current = Cursors.No;
				}
			}
			else if (Cursor.Current == Cursors.No)
			{
				Cursor.Current = Cursors.Default;
			}
		}
		if (!(dockInfo.rcDockArea != ctrl.DragDockInfo.rcDockArea) && ctrl.DragDockInfo.rcDockArea.Width > 0 && ctrl.DragDockInfo.rcDockArea.Height > 0 && (dockInfo.DP != DockPreference.Tabbed || ctrl.DragDockInfo.nDockIndex == dockInfo.nDockIndex) && dockInfo.DP == ctrl.DragDockInfo.DP)
		{
			return;
		}
		if (ctrl.DrawHollow())
		{
			if (dockInfo.DP == DockPreference.Tabbed && dockInfo.dController != null)
			{
				ITabFeedback tabFeedback = dockInfo.dController.HostControl as ITabFeedback;
				if (tabFeedback.ProvideTabFeedback(ctrl, MouseAction.MouseLeave))
				{
					ctrl.DragDockInfo.rcDockArea = Rectangle.Empty;
				}
				else
				{
					base.Painter.DrawTabFrame(dockInfo.rcDockArea, base.DockingManager.DockTabAlignment);
				}
			}
			else
			{
				base.Painter.DrawFrame(dockInfo.rcDockArea);
			}
			if (ctrl.DragDockInfo.DP == DockPreference.Tabbed && ctrl.DragDockInfo.dController != null)
			{
				ITabFeedback tabFeedback2 = ctrl.DragDockInfo.dController.HostControl as ITabFeedback;
				if (!tabFeedback2.ProvideTabFeedback(ctrl, MouseAction.MouseMove))
				{
					base.Painter.DrawTabFrame(ctrl.DragDockInfo.rcDockArea, base.DockingManager.DockTabAlignment);
				}
			}
			else
			{
				base.Painter.DrawFrame(ctrl.DragDockInfo.rcDockArea);
			}
		}
		else
		{
			base.Painter.DrawRectangle(dockInfo.rcDockArea);
			base.Painter.DrawRectangle(ctrl.DragDockInfo.rcDockArea);
		}
	}

	public override void ProcessMouseUp(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
		if (base.DraggingControl != null)
		{
			TerminateDrag(ctrl, ptscreen);
			if (IsDockAllowed(ctrl))
			{
				controller.ApplyDockInfo();
			}
		}
		else
		{
			bInitiateDrag = false;
			ptMoveStart = Point.Empty;
		}
	}

	public override void ProcessDoubleClick()
	{
		if (bInitiateDrag)
		{
			bInitiateDrag = false;
			ptMoveStart = Point.Empty;
		}
	}

	protected override Point CalculateFormOffset(IDraggable ctrl, Point ptClient)
	{
		Point result = Point.Empty;
		GetYOffset(out var _, ref ptClient);
		Size size = Size.Empty;
		if (ctrl is DockHost)
		{
			size = ((DockHostController)ctrl.InternalController).DIPrevious.rcDockArea.Size;
		}
		result = ((!(size != Size.Empty) || ctrl.InternalController.Floating) ? new Point((int)((float)ptClient.X / (float)ctrl.InternalController.HostControl.Width * (float)ctrl.DragRectangle.Width), (int)((float)ptClient.Y / (float)ctrl.InternalController.HostControl.Height * (float)ctrl.DragRectangle.Height)) : new Point((int)((float)ptClient.X / (float)ctrl.InternalController.HostControl.Width * (float)size.Width), (int)((float)ptClient.Y / (float)ctrl.InternalController.HostControl.Height * (float)size.Height)));
		return result;
	}

	protected override void InitiateDrag(IDraggable ctrl, Point ptscreen)
	{
		if (!base.AllowDrag)
		{
			return;
		}
		if (!(ctrl is DragSplitter) || base.DockingManager.DragFeedbackEventsOnSplitters)
		{
			base.DockingManager.FireDragFeedbackEvent("DragFeedbackStart");
		}
		Point ptClient = ctrl.InternalController.HostControl.PointToClient(ptMoveStart);
		ptDelta = CalculateFormOffset(ctrl, ptClient);
		Form form = null;
		if (ctrl is DockHost)
		{
			form = (ctrl as DockHost).ParentForm;
		}
		else if (ctrl is FloatingForm)
		{
			form = ctrl as FloatingForm;
		}
		else
		{
			ContainerControl containerControl = (ctrl as Control).GetContainerControl() as ContainerControl;
			form = ((!(containerControl is Form)) ? containerControl.ParentForm : (containerControl as Form));
		}
		if (form != null)
		{
			form.Deactivate += ParentForm_Deactivate;
		}
		base.Painter.StartPaint();
		(ctrl as Control).Update();
		GetNewDockInfo(ctrl, ptscreen);
		if (ctrl.DrawHollow())
		{
			if (ctrl.DragDockInfo.dController != null && ctrl.DragDockInfo.DP == DockPreference.Tabbed)
			{
				ITabFeedback tabFeedback = ctrl.DragDockInfo.dController.HostControl as ITabFeedback;
				if (!tabFeedback.ProvideTabFeedback(ctrl, MouseAction.LBtnUp))
				{
					base.Painter.DrawTabFrame(ctrl.DragDockInfo.rcDockArea, base.DockingManager.DockTabAlignment);
				}
			}
			else
			{
				base.Painter.DrawFrame(ctrl.DragDockInfo.rcDockArea);
			}
		}
		else
		{
			base.Painter.DrawRectangle(ctrl.DragDockInfo.rcDockArea);
		}
		base.DraggingControl = ctrl;
	}

	public override void TerminateDrag(IDraggable ctrl, Point ptscreen)
	{
		base.TerminateDrag(ctrl, ptscreen);
		if (bInitiateDrag)
		{
			bInitiateDrag = false;
			ptMoveStart = Point.Empty;
		}
		Form form = null;
		if (ctrl is DockHost)
		{
			form = (ctrl as DockHost).ParentForm;
		}
		else if (ctrl is FloatingForm)
		{
			form = ctrl as FloatingForm;
		}
		else
		{
			ContainerControl containerControl = (ctrl as Control).GetContainerControl() as ContainerControl;
			form = ((!(containerControl is Form)) ? containerControl.ParentForm : (containerControl as Form));
		}
		if (form != null)
		{
			form.Deactivate -= ParentForm_Deactivate;
		}
		if (base.DraggingControl != null)
		{
			if (ctrl.DrawHollow())
			{
				if (ctrl.DragDockInfo.dController != null && ctrl.DragDockInfo.DP == DockPreference.Tabbed)
				{
					ITabFeedback tabFeedback = ctrl.DragDockInfo.dController.HostControl as ITabFeedback;
					if (!tabFeedback.ProvideTabFeedback(ctrl, MouseAction.LBtnUp))
					{
						base.Painter.DrawTabFrame(ctrl.DragDockInfo.rcDockArea, base.DockingManager.DockTabAlignment);
					}
				}
				else
				{
					base.Painter.DrawFrame(ctrl.DragDockInfo.rcDockArea);
				}
			}
			else
			{
				base.Painter.DrawRectangle(ctrl.DragDockInfo.rcDockArea);
			}
		}
		base.DraggingControl = null;
		base.Painter.EndPaint();
		CorrectDockedLocation(ctrl);
		if (!(ctrl is DragSplitter) || base.DockingManager.DragFeedbackEventsOnSplitters)
		{
			base.DockingManager.FireDragFeedbackEvent("DragFeedbackStop");
		}
	}

	protected void ParentForm_Deactivate(object sender, EventArgs e)
	{
		(sender as Form).Deactivate -= ParentForm_Deactivate;
		if (base.DraggingControl != null)
		{
			base.DraggingControl.AbortDrag();
		}
	}
}
