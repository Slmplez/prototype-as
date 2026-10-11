using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class CustomDragProvider : IDragProvider
{
	public static bool ShowDisallowFloatCursor;

	protected bool m_singleTabOperate;

	protected bool bInitiateDrag;

	protected Point ptMoveStart = Point.Empty;

	protected Point ptDelta = Point.Empty;

	protected static DragMessageFilter MessageFilter;

	private IDraggable m_DraggingControl;

	protected DockingManager m_DockingManager;

	protected int m_borderWidth;

	protected bool m_bAllowDrag = true;

	internal IFrameBorderPainter Painter => DockingManager.FramePainter.Painter;

	public virtual bool CanFloatWhenDisallowFloating => false;

	public virtual bool SingleTabOperate
	{
		get
		{
			return m_singleTabOperate;
		}
		set
		{
			if (m_singleTabOperate != value)
			{
				m_singleTabOperate = value;
			}
		}
	}

	public bool AllowDrag
	{
		get
		{
			return m_bAllowDrag;
		}
		set
		{
			if (m_bAllowDrag != value)
			{
				m_bAllowDrag = value;
			}
		}
	}

	public IDraggable DraggingControl
	{
		get
		{
			return m_DraggingControl;
		}
		set
		{
			m_DraggingControl = value;
		}
	}

	public DockingManager DockingManager
	{
		get
		{
			return m_DockingManager;
		}
		set
		{
			m_DockingManager = value;
		}
	}

	public virtual void ProcessCtrlKeyDown()
	{
	}

	public virtual void ProcessCtrlKeyUp()
	{
	}

	public virtual void UpdateColors()
	{
	}

	public virtual void Dispose()
	{
		MessageFilter.Provider.Remove(this);
		m_DockingManager = null;
		m_DraggingControl = null;
		if (MessageFilter.Provider.Count == 0)
		{
			Application.RemoveMessageFilter(MessageFilter);
		}
	}

	protected virtual bool IsDockAllowed(IDraggable ctrl, DockControllerBase targetCtrl)
	{
		bool result = true;
		if (ctrl != null && (targetCtrl == null || targetCtrl.Floating) && (!CanFloat(ctrl.InternalController) || DockingManager.DisallowFloating))
		{
			result = false;
		}
		return result;
	}

	protected virtual bool IsDockAllowed(IDraggable ctrl)
	{
		if (ctrl == null)
		{
			return false;
		}
		return IsDockAllowed(ctrl, ctrl.DragDockInfo.dController);
	}

	protected virtual Point CalculateFormOffset(IDraggable ctrl, Point ptClient)
	{
		Point result = Point.Empty;
		double num = ((DockingManager.VisualStyle != VisualStyle.Default && DockingManager.VisualStyle != VisualStyle.VS2005) ? ((double)DockingManager.Renderer.CaptionWidth) : ((double)SystemInformation.ToolWindowCaptionHeight));
		GetYOffset(out var borderHWidth, ref ptClient);
		Size size = Size.Empty;
		if (ctrl is DockHost)
		{
			size = ((DockHostController)ctrl.InternalController).DIPrevious.rcDockArea.Size;
		}
		int width = ctrl.InternalController.HostControl.Width;
		result = ((ctrl is DockHost && (ctrl as DockHost).InternalController.ParentController is DockTabController && !DockingManager.DesignMode && ((ctrl as DockHost).InternalController.ParentController as DockTabController).dragTabPage != null) ? ((!(size != Size.Empty) || ctrl.InternalController.Floating) ? new Point((int)((float)ptClient.X / (float)width * (float)ctrl.DragRectangle.Width), (int)num / 2) : new Point((int)((float)ptClient.X / (float)width * (float)size.Width), (int)num / 2)) : ((!ctrl.InternalController.Floating || ctrl.InternalController.ParentController is SizingController) ? new Point((int)((float)ptClient.X / (float)width * (float)ctrl.DragRectangle.Width), ptClient.Y) : new Point(ptClient.X, ptClient.Y)));
		if (ctrl is DockHost)
		{
			if (result.X < borderHWidth)
			{
				result.X += borderHWidth;
			}
			if (result.Y < borderHWidth)
			{
				result.Y += borderHWidth;
			}
		}
		int num2 = ((size.Width == 0) ? width : size.Width);
		if (ctrl is DockHost && (double)result.X > (double)num2 - num)
		{
			result.X -= (int)num;
		}
		return result;
	}

	protected virtual DockHostController GetUnderlayingController(Control underlaying)
	{
		Control control = underlaying;
		DockHost dockHost = control as DockHost;
		DockHostController result = null;
		while (dockHost == null)
		{
			control = control.Parent;
			if (control == null)
			{
				break;
			}
			dockHost = control as DockHost;
		}
		if (dockHost != null)
		{
			result = dockHost.InternalController as DockHostController;
		}
		return result;
	}

	protected void GetYOffset(out int borderHWidth, ref Point ptClient)
	{
		if (DockingManager.VisualStyle == VisualStyle.Default || DockingManager.VisualStyle == VisualStyle.VS2005)
		{
			borderHWidth = (m_borderWidth = 4);
		}
		else
		{
			borderHWidth = (m_borderWidth = DockingManager.Renderer.BorderWidth);
		}
		if (ptClient.Y < 0)
		{
			if (DockingManager.VisualStyle == VisualStyle.Default || DockingManager.VisualStyle == VisualStyle.VS2005)
			{
				ptClient.Y = SystemInformation.ToolWindowCaptionHeight - Math.Abs(ptClient.Y) + 1;
				borderHWidth++;
			}
			else
			{
				ptClient.Y = DockingManager.Renderer.CaptionWidth - Math.Abs(ptClient.Y);
			}
		}
	}

	static CustomDragProvider()
	{
		ShowDisallowFloatCursor = true;
		MessageFilter = new DragMessageFilter();
		Application.AddMessageFilter(MessageFilter);
	}

	public CustomDragProvider()
	{
	}

	public CustomDragProvider(DockingManager dockingManager)
	{
		m_DockingManager = dockingManager;
		MessageFilter.Provider.Add(this);
	}

	protected void GetNewDockInfo(IDraggable ctrl, Point ptscreen)
	{
		DockControllerBase dockControllerBase = DockingManager.GetDockController(ptscreen);
		if (dockControllerBase != null)
		{
			if (ctrl.IsSuitableDockTarget(dockControllerBase))
			{
				ctrl.DragDockInfo.rcDockArea = ctrl.DragRectangle;
				Control control = ctrl as Control;
				dockControllerBase.GetDockInfo(control, ptscreen, ctrl.DragDockInfo);
				if (!ctrl.QueryDragProceedWithDock())
				{
					dockControllerBase = null;
				}
				if (dockControllerBase != null && !dockControllerBase.QueryDropProceedWithDock(control, ctrl.DragDockInfo.dStyle))
				{
					dockControllerBase = null;
				}
			}
			else
			{
				dockControllerBase = null;
			}
		}
		Point ptdrag = new Point(ptscreen.X - ptDelta.X, ptscreen.Y - ptDelta.Y);
		Point location = ctrl.DragDockInfo.rcDockArea.Location;
		switch (ctrl.AllowedDragAxis(ref ptdrag, new Point(ptscreen.X - ptMoveStart.X, ptscreen.Y - ptMoveStart.Y)))
		{
		case DragAxis.XY:
			location = ptdrag;
			break;
		case DragAxis.X:
		{
			Control control3 = ctrl as Control;
			location = new Point(ptdrag.X, control3.PointToScreen(control3.ClientRectangle.Location).Y);
			break;
		}
		case DragAxis.Y:
		{
			Control control2 = ctrl as Control;
			location = new Point(control2.PointToScreen(control2.ClientRectangle.Location).X, ptdrag.Y);
			break;
		}
		}
		if (dockControllerBase == null || dockControllerBase.Equals(ctrl.InternalController) || ctrl.DragDockInfo.dController == null)
		{
			if (ctrl.InternalController.Floating)
			{
				if (ctrl.InternalController is DockHostController && (ctrl.InternalController as DockHostController).HideCaption)
				{
					ctrl.DragDockInfo.rcDockArea.Size = (ctrl as Control).Parent.Size;
				}
				else
				{
					ctrl.DragDockInfo.rcDockArea.Size = (ctrl as Control).Bounds.Size;
				}
			}
			else
			{
				Size size = Size.Empty;
				if (ctrl is DockHost)
				{
					size = ((DockHostController)ctrl.InternalController).DIPrevious.rcDockArea.Size;
				}
				if (size != Size.Empty && !(ctrl.InternalController.ParentController is DockTabController))
				{
					ctrl.DragDockInfo.rcDockArea.Size = size;
				}
				else
				{
					ctrl.DragDockInfo.rcDockArea.Size = ctrl.DragRectangle.Size;
				}
			}
			if (ctrl.DragDockInfo.dController != null)
			{
				ctrl.DragDockInfo.dController = null;
				if (ctrl.DragDockInfo.dStyle != DockingStyle.Tabbed)
				{
					ctrl.DragDockInfo.nDockIndex = -1;
				}
			}
			ctrl.DragDockInfo.rcDockArea.Location = location;
		}
		if (ctrl.InternalController.Floating)
		{
			if (ctrl.InternalController is DockHostController && (ctrl.InternalController as DockHostController).HideCaption)
			{
				ctrl.DragDockInfo.rcControlArea.Size = (ctrl as Control).Parent.Size;
			}
			else
			{
				ctrl.DragDockInfo.rcControlArea.Size = (ctrl as Control).Bounds.Size;
			}
		}
		else
		{
			ctrl.DragDockInfo.rcControlArea.Size = ctrl.DragRectangle.Size;
		}
		ctrl.DragDockInfo.rcControlArea.Location = location;
	}

	public virtual void ForceStopDrag()
	{
		IDraggable draggingControl = DraggingControl;
		if (draggingControl != null)
		{
			TerminateDrag(draggingControl, Cursor.Position);
			if ((DockingManager.DisallowFloating || !CanFloat(draggingControl)) && draggingControl.InternalController.Floating)
			{
				TransitToPrevDock(draggingControl);
			}
		}
	}

	protected bool CanFloat(IDraggable draggingControl)
	{
		bool result = true;
		if (draggingControl != null)
		{
			result = CanFloat(draggingControl.InternalController);
		}
		return result;
	}

	protected bool CanFloat(DockControllerBase controller)
	{
		bool result = true;
		if (controller != null)
		{
			result = ((SingleTabOperate || !(controller.ParentController is DockTabController)) ? controller.AllowFloating : controller.ParentController.AllowFloating);
		}
		return result;
	}

	protected virtual void TransitToPrevDock(IDraggable ctrl)
	{
	}

	public virtual void ProcessMouseDown(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
	}

	public virtual void ProcessMouseUp(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
	}

	public virtual void ProcessMouseMove(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
	}

	public virtual void ProcessDoubleClick()
	{
	}

	public virtual void TerminateDrag(IDraggable ctrl, Point ptscreen)
	{
	}

	protected virtual void InitiateDrag(IDraggable ctrl, Point ptscreen)
	{
	}

	public virtual Control GetUnderlyingControl(Point point)
	{
		IntPtr handle = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(point.X, point.Y);
		return Control.FromHandle(handle);
	}

	protected void CorrectDockedLocation(IDraggable ctrl)
	{
		if (ctrl == null)
		{
			throw new ArgumentNullException("ctrl");
		}
		Screen screen = Screen.FromRectangle(ctrl.DragDockInfo.rcDockArea);
		if (!ctrl.DragDockInfo.rcDockArea.IntersectsWith(screen.WorkingArea))
		{
			Rectangle rcDockArea = ctrl.DragDockInfo.rcDockArea;
			if (rcDockArea.Left > screen.WorkingArea.Right)
			{
				rcDockArea.X = screen.WorkingArea.Right - rcDockArea.Width;
			}
			if (rcDockArea.Right < screen.WorkingArea.Left)
			{
				rcDockArea.X = screen.WorkingArea.Left;
			}
			if (rcDockArea.Y < screen.WorkingArea.Top)
			{
				rcDockArea.Y = screen.WorkingArea.Top;
			}
			if (rcDockArea.Y > screen.WorkingArea.Bottom)
			{
				rcDockArea.Y = screen.WorkingArea.Bottom - rcDockArea.Height;
			}
			if (DockingManager.DragProviderStyle == DragProviderStyle.Standard)
			{
				ctrl.DragDockInfo.rcDockArea = rcDockArea;
			}
			else if (ctrl is DockHost { Parent: FloatingForm parent })
			{
				parent.Location = rcDockArea.Location;
			}
		}
	}
}
