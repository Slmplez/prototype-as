using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class FloatingFormController : DockControllerBase
{
	protected FloatingForm ctrlHost;

	protected internal DockControllerBase dcChild;

	protected int m_nImageIndex = -1;

	internal bool bClosingByMouse;

	private bool m_bHideChildCaptions = true;

	public int ImageIndex
	{
		get
		{
			return m_nImageIndex;
		}
		set
		{
			if (m_nImageIndex != value)
			{
				m_nImageIndex = value;
				ctrlHost.UpdateFormBorderStyle();
			}
		}
	}

	public override Control HostControl => ctrlHost;

	public override Rectangle LayoutRect
	{
		get
		{
			return ctrlHost.ClientRectangle;
		}
		set
		{
			if (dcChild != null)
			{
				dcChild.LayoutRect = value;
			}
		}
	}

	internal override bool AllowFloating
	{
		get
		{
			bool result = true;
			if (dcChild != null)
			{
				result = dcChild.AllowFloating;
			}
			return result;
		}
		set
		{
		}
	}

	public override bool Floating
	{
		get
		{
			return true;
		}
		set
		{
		}
	}

	public override int ChildCount
	{
		get
		{
			if (dcChild == null)
			{
				return 0;
			}
			return 1;
		}
	}

	public override int ChildHostCount
	{
		get
		{
			if (dcChild != null && dcChild is DockHostController)
			{
				return 1;
			}
			return 0;
		}
	}

	public override IEnumerator ChildHostEnumerator => new IEnumWrapper(null);

	public override IEnumerator DCR => dcChild.DCR;

	internal bool HideChildCaptions => m_bHideChildCaptions;

	public override ArrayList ChildControllers
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			arrayList.Add(dcChild);
			return arrayList;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			if (dcChild != null)
			{
				return dcChild.MinimumSize;
			}
			return Size.Empty;
		}
	}

	protected internal void ClearSharedFormReferences(DockControllerBase controller)
	{
		if (controller is SizingController sizingController)
		{
			{
				foreach (DockControllerBase childController in sizingController.ChildControllers)
				{
					ClearSharedFormReferences(childController);
				}
				return;
			}
		}
		if (controller is DockStateControllerWrapper)
		{
			DockStateControllerWrapper dockStateControllerWrapper = controller as DockStateControllerWrapper;
			dockStateControllerWrapper.InternalControl.SharedForm = null;
		}
	}

	public FloatingFormController(DockingManager mgr, FloatingForm host)
		: base(mgr)
	{
		if (mgr.HostControl is UserControl)
		{
			Form form = null;
			Form form2 = mgr.HostControl.TopLevelControl as Form;
			if (mgr.HostControl.Parent != null)
			{
				Control parent = mgr.HostControl.Parent;
				while (!(parent is Form) && parent.Parent != null)
				{
					parent = parent.Parent;
				}
				form = parent as Form;
			}
			if (form != null && form2 != null && form != form2)
			{
				form.Resize += hostFrm_Resize;
			}
		}
		ctrlHost = host;
		dockingMgr.AddFFController(this);
		ctrlHost.Resize += OnHostControlResize;
	}

	private void hostFrm_Resize(object sender, EventArgs e)
	{
		MainFormController mainFormController = null;
		if (dockingMgr.alDockAreaControllers.Count > 0)
		{
			mainFormController = dockingMgr.alDockAreaControllers[0] as MainFormController;
		}
		if (mainFormController != null)
		{
			Form form = sender as Form;
			if (form != null && form.WindowState == FormWindowState.Minimized)
			{
				mainFormController.HideAllFloatingForms(fireVisibilityChange: true);
			}
			else if (form != null && form.WindowState != FormWindowState.Minimized)
			{
				mainFormController.ShowAllFloatingForms(fireVisibilityChange: true);
			}
		}
	}

	public void OnHostControlResize(object obj, EventArgs e)
	{
		LayoutRect = ctrlHost.ClientRectangle;
	}

	internal Direction CanResize()
	{
		Direction result = Direction.Both;
		if (dcChild is DockStateControllerBase)
		{
			DockStateControllerBase dockStateControllerBase = dcChild as DockStateControllerBase;
			if (dockStateControllerBase.FreezeResize)
			{
				result = dockStateControllerBase.MustResize;
			}
		}
		else if (dcChild is SizingController)
		{
			SizingController sizingController = dcChild as SizingController;
			result = sizingController.CanResize;
		}
		return result;
	}

	public override void AddChild(DockControllerBase dc, DockingStyle db)
	{
		dcChild = dc;
		dc.DICurrent = new DockInfo(this, DockingStyle.Fill, 0, 0, DICurrent.DP, dc.DICurrent.rcDockArea);
		dc.ParentController = this;
		if (dc is DockHostController || (dc is DockTabController && dc.HostControl != null))
		{
			ctrlHost.Text = dc.HostControl.Text;
		}
		else
		{
			ctrlHost.Text = " ";
		}
		NativeMethodsHelper.RedrawWindow(ctrlHost.Handle, 1025);
	}

	public override void InsertChild(DockControllerBase dc, int i, DockingStyle db)
	{
		AddChild(dc, db);
	}

	public override void RemoveChild(DockControllerBase dc)
	{
		if (dc == dcChild)
		{
			dcChild = null;
			if (dockingMgr.HiddenFFControllers.Contains(this))
			{
				dockingMgr.HiddenFFControllers.Remove(this);
			}
			dc.ParentController = null;
		}
	}

	public override void ReplaceChild(DockControllerBase dccurrent, DockControllerBase dcnew)
	{
		if (dccurrent.Equals(dcChild))
		{
			dcnew.DICurrent = new DockInfo(dccurrent.DICurrent);
			dcChild = dcnew;
			dcnew.ParentController = this;
			if (dcnew is DockHostController || (dcnew is DockTabController && dcnew.HostControl != null))
			{
				ctrlHost.Text = dcnew.HostControl.Text;
			}
			else
			{
				ctrlHost.Text = " ";
			}
		}
	}

	public override DockControllerBase GetChildAt(int index)
	{
		return dcChild;
	}

	public override int GetChildHostIndex(DockControllerBase child)
	{
		if (!dcChild.Equals(child))
		{
			return -1;
		}
		return 1;
	}

	public override void AdjustLayout()
	{
		if (dcChild != null)
		{
			dcChild.LayoutRect = LayoutRect;
		}
	}

	protected internal void RefreshFormCaption()
	{
		if (dcChild is SizingController)
		{
			SizingController sizingController = dcChild as SizingController;
			ArrayList dockControllers = sizingController.GetDockControllers();
			if (dockControllers.Count == 1)
			{
				m_bHideChildCaptions = true;
				DockStateControllerBase captions = dockControllers[0] as DockStateControllerBase;
				SetCaptions(captions);
			}
			else
			{
				HostControl.Text = string.Empty;
				NativeMethodsHelper.RedrawWindow(HostControl.Handle, 1025);
				m_bHideChildCaptions = false;
			}
		}
		else
		{
			m_bHideChildCaptions = true;
			SetCaptions(dcChild as DockStateControllerBase);
		}
		ctrlHost.SetCaption();
	}

	private void SetCaptions(DockStateControllerBase baseController)
	{
		if (baseController == null)
		{
			return;
		}
		if (baseController is DockHostController)
		{
			DockHostController dockHostController = baseController as DockHostController;
			dockHostController.HideCaption = true;
			if (HostControl.Text != dockHostController.DockLabel)
			{
				HostControl.Text = dockHostController.DockLabel;
				NativeMethodsHelper.RedrawWindow(HostControl.Handle, 1025);
				dockHostController.AdjustLayout();
			}
		}
		else
		{
			if (!(baseController is DockTabController))
			{
				return;
			}
			DockHostController hostController = (baseController as DockTabController).HostController;
			foreach (DockTabPage tabPage in (baseController as DockTabController).TabControl.TabPages)
			{
				tabPage.dhcClient.HideCaption = true;
			}
			if (hostController != null)
			{
				hostController.HideCaption = true;
				HostControl.Text = hostController.DockLabel;
			}
			(baseController as DockTabController).AdjustLayout();
		}
	}

	public override void CloseController()
	{
		if (dcChild != null)
		{
			if (dcChild is DockHostController)
			{
				(dcChild as DockHostController).bClosingByMouse = bClosingByMouse;
			}
			else if (dcChild is DockTabController)
			{
				(dcChild as DockTabController).bClosingByMouse = bClosingByMouse;
			}
			dcChild.CloseController();
		}
	}

	public override bool IsTargetController(Point ptscreen)
	{
		Rectangle rectangle = new Rectangle(ctrlHost.Location.X, ctrlHost.Location.Y, ctrlHost.Width, CaptionPainter.CaptionHeight + 4);
		if (ctrlHost.Visible && rectangle.Contains(ptscreen))
		{
			return true;
		}
		return false;
	}

	public override void GetDockInfo(Control ctrl, Point ptscreen, DockInfo di)
	{
		if (dcChild == null)
		{
			return;
		}
		DockStateControllerBase dockStateControllerBase = null;
		if (dcChild is DockHostController)
		{
			dcChild.GetDockInfo(ctrl, ptscreen, di);
		}
		else if (dcChild is DockTabController)
		{
			(dcChild as DockTabController).HostController.GetDockInfo(ctrl, ptscreen, di);
		}
		else if (dcChild is SizingController)
		{
			ArrayList dockControllers = (dcChild as SizingController).GetDockControllers();
			if (dockControllers.Count == 1 && dockControllers[0] != null)
			{
				dockStateControllerBase = dockControllers[0] as DockStateControllerBase;
			}
			if (dockStateControllerBase is DockHostController)
			{
				dockStateControllerBase.GetDockInfo(ctrl, ptscreen, di);
			}
			else if (dockStateControllerBase is DockTabController)
			{
				(dockStateControllerBase as DockTabController).HostController.GetDockInfo(ctrl, ptscreen, di);
			}
		}
	}

	public override bool QueryDropProceedWithDock(Control ctrldrop, DockingStyle style)
	{
		if (dcChild != null)
		{
			DockStateControllerBase dockStateControllerBase = null;
			if (dcChild is DockHostController)
			{
				return dcChild.QueryDropProceedWithDock(ctrldrop, style);
			}
			if (dcChild is DockTabController)
			{
				return (dcChild as DockTabController).HostController.QueryDropProceedWithDock(ctrldrop, style);
			}
			if (dcChild is SizingController)
			{
				ArrayList dockControllers = (dcChild as SizingController).GetDockControllers();
				if (dockControllers.Count == 1 && dockControllers[0] != null)
				{
					dockStateControllerBase = dockControllers[0] as DockStateControllerBase;
				}
				if (dockStateControllerBase is DockHostController)
				{
					return dockStateControllerBase.QueryDropProceedWithDock(ctrldrop, style);
				}
				if (dockStateControllerBase is DockTabController)
				{
					return (dockStateControllerBase as DockTabController).HostController.QueryDropProceedWithDock(ctrldrop, style);
				}
			}
		}
		return false;
	}

	public void InvokeRedocking()
	{
		bool forbidFreeze = dockingMgr.ForbidFreeze;
		dockingMgr.ForbidFreeze = true;
		DockInfo dockInfo = dockInfoCurrent;
		if (dcChild is SizingController)
		{
			DockStateControllerBase dockStateControllerBase = null;
			ArrayList dockControllers = (dcChild as SizingController).GetDockControllers();
			if (dockControllers.Count == 1 && dockControllers[0] != null)
			{
				dockStateControllerBase = dockControllers[0] as DockStateControllerBase;
				dockStateControllerBase.RedockController(dockInfo, bforcenew: false);
			}
			else
			{
				dcChild.RedockController(dockInfo, bforcenew: false);
			}
		}
		else
		{
			dcChild.RedockController(dockInfo, bforcenew: false);
		}
		DICurrent = DockInfo.NullInfo;
		dockingMgr.ForbidFreeze = forbidFreeze;
		if (dockInfo.dController != null)
		{
			dockInfo.dController.AdjustLayout();
		}
	}

	public void InvokeDCRRedocking()
	{
		DoRecDCRRedocking(dcChild);
	}

	protected void DoRecDCRRedocking(DockControllerBase dc)
	{
		DockControllerBase dockControllerBase = null;
		DockControllerBase dockControllerBase2 = null;
		IEnumerator childHostEnumerator = dc.ChildHostEnumerator;
		if (childHostEnumerator == null)
		{
			dc.InvokePrevDockFloatTransition(showFloating: true);
			return;
		}
		if (childHostEnumerator.MoveNext())
		{
			dockControllerBase = childHostEnumerator.Current as DockControllerBase;
		}
		while (dockControllerBase != null)
		{
			if (childHostEnumerator.MoveNext())
			{
				dockControllerBase2 = childHostEnumerator.Current as DockControllerBase;
				if (dockControllerBase2 is DockTabController)
				{
					DockControllerBase dockControllerBase3 = dockControllerBase2;
					dockControllerBase2 = dockControllerBase;
					dockControllerBase = dockControllerBase3;
				}
			}
			if (!(dockControllerBase is DockStateControllerWrapper))
			{
				DoRecDCRRedocking(dockControllerBase);
			}
			dockControllerBase = dockControllerBase2;
			dockControllerBase2 = null;
		}
	}

	internal ControllerWrapper GetWrapper()
	{
		FloatingFormControllerWrapper floatingFormControllerWrapper = null;
		if (dcChild != null)
		{
			floatingFormControllerWrapper = new FloatingFormControllerWrapper();
			floatingFormControllerWrapper.LayoutRect = HostControl.Bounds;
			dcChild.AddWrapper(floatingFormControllerWrapper);
		}
		return floatingFormControllerWrapper;
	}

	public override bool AttemptDCRDocking(DockControllerBase dc, IEnumerator iedcr)
	{
		if (dcChild != null)
		{
			return dcChild.AttemptDCRDocking(dc, iedcr);
		}
		return false;
	}

	protected internal void HandleMouseDownImp(MouseButtons button, Point ptclient)
	{
		if (button != MouseButtons.Left)
		{
			return;
		}
		if (!dockingMgr.DesignProcess && base.DockingManager.DragProvider is BorderDragProvider)
		{
			ctrlHost.Capture = true;
		}
		ctrlHost.RefreshRenderer();
		if (dcChild is DockHostController)
		{
			Point pt = dcChild.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
			(dcChild as DockHostController).HandleMouseDownImp(MouseButtons.Left, pt);
			return;
		}
		if (dcChild is DockTabController)
		{
			Point pt2 = dcChild.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
			DockTabController dockTabController = dcChild as DockTabController;
			dockTabController.HostController.HandleMouseDownImp(MouseButtons.Left, pt2);
			return;
		}
		SizingController sizingController = dcChild as SizingController;
		ArrayList dockControllers = sizingController.GetDockControllers();
		if (dockControllers.Count == 1)
		{
			DockControllerBase dockControllerBase = dockControllers[0] as DockControllerBase;
			if (dockControllerBase is DockHostController dockHostController)
			{
				Point pt3 = dockHostController.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
				dockHostController.HandleMouseDownImp(MouseButtons.Left, pt3);
			}
			else if (dockControllerBase is DockTabController dockTabController2)
			{
				Point pt4 = dockTabController2.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
				dockTabController2.HostController.HandleMouseDownImp(MouseButtons.Left, pt4);
			}
		}
		else
		{
			dockingMgr.DragProvider.ProcessMouseDown(this, ctrlHost, ctrlHost.PointToScreen(ptclient));
		}
	}

	protected internal void HandleMouseUpImp(MouseButtons button, Point ptclient)
	{
		if (button == MouseButtons.Left && dcChild != null)
		{
			if (dcChild is DockHostController)
			{
				Point pt = dcChild.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
				(dcChild as DockHostController).HandleMouseUpImp(MouseButtons.Left, pt);
			}
			else if (dcChild is DockTabController)
			{
				Point pt2 = dcChild.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
				DockTabController dockTabController = dcChild as DockTabController;
				dockTabController.HostController.HandleMouseUpImp(MouseButtons.Left, pt2);
			}
			else
			{
				DockControllerBase dController = DICurrent.dController;
				Point point = Point.Empty;
				SizingController sizingController = dcChild as SizingController;
				ArrayList dockControllers = sizingController.GetDockControllers();
				bool flag = false;
				if (dockControllers.Count == 1)
				{
					DockControllerBase dockControllerBase = dockControllers[0] as DockControllerBase;
					if (dockControllerBase is DockHostController dockHostController)
					{
						Point pt3 = dockHostController.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
						point = dockHostController.DINew.rcDockArea.Location;
						dockHostController.HandleMouseUpImp(MouseButtons.Left, pt3);
					}
					else if (dockControllerBase is DockTabController dockTabController2)
					{
						Point pt4 = dockTabController2.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
						point = dockTabController2.HostController.DINew.rcDockArea.Location;
						dockTabController2.HostController.HandleMouseUpImp(MouseButtons.Left, pt4);
					}
				}
				else
				{
					flag = dockingMgr.DragProvider.DraggingControl == HostControl;
					dockingMgr.DragProvider.ProcessMouseUp(this, ctrlHost, ctrlHost.PointToScreen(ptclient));
				}
				DockControllerBase childControllerWithFocus = GetChildControllerWithFocus(this);
				base.DockingManager.LockActivationEvents++;
				try
				{
					if (DICurrent.dController != null)
					{
						InvokeRedocking();
					}
					if (!base.DockingManager.DesignProcess && childControllerWithFocus != null && ctrlHost.LastActiveControl != null)
					{
						ctrlHost.LastActiveControl.Focus();
					}
				}
				finally
				{
					base.DockingManager.LockActivationEvents--;
				}
				if (dController == null && flag && dockingMgr.DragProvider is BorderDragProvider)
				{
					ctrlHost.Capture = false;
					if (point == Point.Empty)
					{
						point = DICurrent.rcDockArea.Location;
					}
					ctrlHost.Location = point;
				}
			}
		}
		if (button != MouseButtons.Right)
		{
			return;
		}
		int num = ((base.DockingManager.VisualStyle == VisualStyle.Default || base.DockingManager.VisualStyle == VisualStyle.VS2005) ? (SystemInformation.ToolWindowCaptionHeight + 1) : (base.DockingManager.Renderer.CaptionWidth + base.DockingManager.Renderer.BorderWidth));
		if (ptclient.X >= 0 && ptclient.X <= ctrlHost.Width && ptclient.Y >= -num && ptclient.Y <= 0)
		{
			DockControllerBase childControllerWithFocus2 = GetChildControllerWithFocus(this);
			if (childControllerWithFocus2 == null)
			{
				SetChildControlFocus(this);
				childControllerWithFocus2 = GetChildControllerWithFocus(this);
			}
			if (childControllerWithFocus2 != null && childControllerWithFocus2 is DockHostController)
			{
				dockingMgr.ShowMenu(childControllerWithFocus2 as DockHostController, ctrlHost.PointToScreen(ptclient));
			}
		}
	}

	protected internal void HandleMouseMoveImp(MouseButtons button, Point ptclient)
	{
		WindowsAPI.GetSystemMetrics(SystemMetricsCodes.SM_SWAPBUTTON);
		if (button == MouseButtons.Left && dockingMgr.DragProvider.DraggingControl != null && (WindowsAPI.GetKeyState(1) & 0x8000) == 0)
		{
			dockingMgr.DragProvider.ForceStopDrag();
			button = MouseButtons.None;
			Point point = HostControl.PointToScreen(ptclient);
			Syncfusion.Runtime.InteropServices.NativeMethods.PostMessage(HostControl.Handle, 514, IntPtr.Zero, new IntPtr(Syncfusion.Runtime.InteropServices.NativeMethods.MAKELPARAM(point.X, point.Y)));
		}
		if (button != MouseButtons.Left)
		{
			return;
		}
		if (dcChild is DockHostController)
		{
			Point pt = dcChild.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
			(dcChild as DockHostController).HandleMouseMoveImp(MouseButtons.Left, pt);
			return;
		}
		if (dcChild is DockTabController)
		{
			Point pt2 = dcChild.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
			DockTabController dockTabController = dcChild as DockTabController;
			dockTabController.HostController.HandleMouseMoveImp(MouseButtons.Left, pt2);
			return;
		}
		SizingController sizingController = dcChild as SizingController;
		ArrayList dockControllers = sizingController.GetDockControllers();
		if (dockControllers.Count == 1)
		{
			DockControllerBase dockControllerBase = dockControllers[0] as DockControllerBase;
			if (dockControllerBase is DockHostController dockHostController)
			{
				Point pt3 = dockHostController.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
				dockHostController.HandleMouseMoveImp(MouseButtons.Left, pt3);
			}
			else if (dockControllerBase is DockTabController dockTabController2)
			{
				Point pt4 = dockTabController2.HostControl.PointToClient(ctrlHost.PointToScreen(ptclient));
				dockTabController2.HostController.HandleMouseMoveImp(MouseButtons.Left, pt4);
			}
		}
		else
		{
			dockingMgr.DragProvider.ProcessMouseMove(this, ctrlHost, ctrlHost.PointToScreen(ptclient));
		}
	}

	protected internal void HandleDoubleClickImp(Point ptclient)
	{
		if (dcChild.IsFloatOnly())
		{
			return;
		}
		int num = ((dockingMgr.VisualStyle == VisualStyle.Default || dockingMgr.VisualStyle == VisualStyle.VS2005) ? SystemInformation.ToolWindowCaptionHeight : dockingMgr.Renderer.CaptionWidth);
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive)
		{
			num += 4;
		}
		Control control = null;
		if (ctrlHost.ActiveControl is DockHost dockHost)
		{
			control = dockHost.ActiveControl;
		}
		if (ptclient.X < 0 || ptclient.X > ctrlHost.Width || ptclient.Y < -num || ptclient.Y > 0)
		{
			return;
		}
		bool flag = true;
		if (dcChild is DockHostController)
		{
			DragAllowEventArgs e = new DragAllowEventArgs(dcChild.HostControl.Controls[0]);
			dockingMgr.FireDragAllowEvent(e);
			flag = !e.Cancel;
		}
		if (!flag)
		{
			return;
		}
		dockingMgr.DragProvider.ProcessDoubleClick();
		DockControllerBase childControllerWithFocus = GetChildControllerWithFocus(this);
		InvokeDCRRedocking();
		if (!dockingMgr.DesignProcess)
		{
			if (childControllerWithFocus != null && childControllerWithFocus.HostControl.Controls.Count > 0)
			{
				if (control != null)
				{
					control.Focus();
				}
				else if (ctrlHost.LastActiveControl != null)
				{
					ctrlHost.LastActiveControl.Focus();
				}
				else
				{
					childControllerWithFocus.HostControl.Controls[0].Focus();
				}
			}
		}
		else if (dockingMgr.DesignMode)
		{
			dockingMgr.UpdateDesigner();
		}
	}

	protected DockControllerBase GetChildControllerWithFocus(DockControllerBase dc)
	{
		if (dc.ChildCount <= 0)
		{
			if (dc.HostControl != null && dc.HostControl.ContainsFocus)
			{
				return dc;
			}
			return null;
		}
		for (int i = 0; i < dc.ChildCount; i++)
		{
			DockControllerBase childControllerWithFocus = GetChildControllerWithFocus(dc.GetChildAt(i));
			if (childControllerWithFocus != null)
			{
				return childControllerWithFocus;
			}
		}
		return null;
	}

	protected void SetChildControlFocus(DockControllerBase dc)
	{
		if (dc.ChildCount <= 0 && dc.HostControl != null)
		{
			dc.HostControl.Focus();
			return;
		}
		DockControllerBase dockControllerBase = dc.GetChildAt(0);
		if (dockControllerBase.HostControl == null && dcChild is SizingController)
		{
			ArrayList dockControllers = (dcChild as SizingController).GetDockControllers();
			if (dockControllers.Count != 0)
			{
				dockControllerBase = dockControllers[0] as DockControllerBase;
			}
		}
		SetChildControlFocus(dockControllerBase);
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && ctrlHost != null)
		{
			dockingMgr.RemoveFFController(this);
			if (dcChild != null)
			{
				dcChild.Dispose();
				dcChild = null;
			}
			ctrlHost.Resize -= OnHostControlResize;
			ctrlHost.Dispose();
			ctrlHost = null;
		}
		base.Dispose(bdisposing);
	}

	public override void ApplyDockInfo()
	{
		base.ApplyDockInfo();
	}

	internal override bool IsFloatOnly()
	{
		return dcChild.IsFloatOnly();
	}

	public override void DockAsMDIChild()
	{
		dcChild.DockAsMDIChild();
	}

	public override void UpdateControl()
	{
		ctrlHost.UpdateControlBoxVisibility();
		ctrlHost.UpdateFormBorderStyle();
		NativeMethodsHelper.RedrawWindow(ctrlHost.Handle, 1025);
	}
}
