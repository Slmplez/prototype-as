using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class WhidbeyDragProvider : CustomDragProvider
{
	protected class TargetForm : IDisposable
	{
		private DockingManager m_DockingManager;

		public HelperForm InternalForm;

		public Color BackColor
		{
			get
			{
				return InternalForm.BorderColor;
			}
			set
			{
				InternalForm.BorderColor = value;
			}
		}

		public Color BorderColor
		{
			get
			{
				return InternalForm.BackColor;
			}
			set
			{
				InternalForm.BackColor = value;
			}
		}

		public int BorderWidth
		{
			get
			{
				return InternalForm.BorderWidth;
			}
			set
			{
				if (InternalForm.BorderWidth != value)
				{
					InternalForm.BorderWidth = value;
				}
			}
		}

		public double Opacity
		{
			get
			{
				return InternalForm.Opacity;
			}
			set
			{
				InternalForm.Opacity = value;
			}
		}

		public Rectangle Bounds
		{
			get
			{
				return InternalForm.Bounds;
			}
			set
			{
				InternalForm.Bounds = value;
			}
		}

		public Point Location
		{
			get
			{
				return InternalForm.Location;
			}
			set
			{
				InternalForm.Location = value;
			}
		}

		public bool Visible => InternalForm.Visible;

		public TargetForm(DockingManager dockingManager)
		{
			m_DockingManager = dockingManager;
			InternalForm = new HelperForm();
			InternalForm.StartPosition = FormStartPosition.Manual;
			InternalForm.ShowInTaskbar = false;
			InternalForm.FormBorderStyle = FormBorderStyle.None;
			InternalForm.BackColor = Color.Silver;
			InternalForm.Opacity = 0.4;
		}

		protected virtual void CalculateBoundsScans(DockTabAlignmentStyle alignment, Region region)
		{
			Region region2 = new Region();
			Matrix matrix = new Matrix(1f, 0f, 0f, 1f, 1f, 1f);
			PointF point = new PointF(Bounds.Width / 2, Bounds.Height / 2);
			switch (alignment)
			{
			case DockTabAlignmentStyle.Top:
				matrix.RotateAt(180f, point);
				break;
			case DockTabAlignmentStyle.Right:
				matrix.RotateAt(90f, point);
				break;
			case DockTabAlignmentStyle.Left:
				matrix.RotateAt(270f, point);
				break;
			}
			RectangleF[] regionScans = region.GetRegionScans(matrix);
			regionScans[0].Inflate(-BorderWidth, -BorderWidth);
			if (regionScans.Length > 1)
			{
				regionScans[1].Y -= BorderWidth;
				regionScans[1].Inflate(-BorderWidth, 0f);
				region2 = new Region(regionScans[0]);
				region2.Union(regionScans[1]);
				region2.Translate(-1, -1);
				matrix.Reset();
				switch (alignment)
				{
				case DockTabAlignmentStyle.Top:
					matrix.RotateAt(180f, point);
					break;
				case DockTabAlignmentStyle.Right:
					matrix.RotateAt(270f, point);
					break;
				case DockTabAlignmentStyle.Left:
					matrix.RotateAt(90f, point);
					break;
				}
			}
			InternalForm.BoundsScans = region2.GetRegionScans(matrix);
		}

		public void ShowRegion(DockTabAlignmentStyle alignment)
		{
			Rectangle r = new Rectangle(Bounds.Location, Bounds.Size);
			int num = 0;
			int dockTabHeight = m_DockingManager.DockTabHeight;
			int num2 = 0;
			if (alignment == DockTabAlignmentStyle.Top || alignment == DockTabAlignmentStyle.Bottom)
			{
				num = ((r.Width > 100) ? 45 : (r.Width / 2));
				num2 = (m_DockingManager.IsMirrored ? (r.Right - num - 8) : (r.Left + 8));
			}
			else
			{
				num = ((r.Height > 100) ? 45 : (r.Height / 2));
				num2 = (m_DockingManager.IsMirrored ? (r.Bottom - num - 8) : (r.Top + 8));
			}
			Rectangle r2 = Rectangle.Empty;
			switch (alignment)
			{
			case DockTabAlignmentStyle.Bottom:
				r2 = new Rectangle(num2, r.Bottom - dockTabHeight - 4, num, dockTabHeight + 4);
				r.Size = new Size(r.Width, r.Height - dockTabHeight);
				break;
			case DockTabAlignmentStyle.Top:
				r2 = new Rectangle(num2, r.Y, num, dockTabHeight + 4);
				r.Size = new Size(r.Width, r.Height - dockTabHeight);
				r.Location = new Point(r.Location.X, r.Location.Y + dockTabHeight);
				break;
			case DockTabAlignmentStyle.Left:
				r2 = new Rectangle(r.X, num2, dockTabHeight + 4, num);
				r.Size = new Size(r.Width - dockTabHeight, r.Height);
				r.Location = new Point(r.Location.X + dockTabHeight, r.Location.Y);
				break;
			case DockTabAlignmentStyle.Right:
				r.Size = new Size(r.Width - dockTabHeight, r.Height);
				r2 = new Rectangle(r.X + r.Width, num2, dockTabHeight, num);
				break;
			}
			Region region = new Region(InternalForm.RectangleToClient(r));
			region.Union(InternalForm.RectangleToClient(r2));
			CalculateBoundsScans(alignment, region);
			InternalForm.Region = region;
			InternalForm.Show();
		}

		public void ShowRectangle(Rectangle rectangle)
		{
			InternalForm.Region = null;
			InternalForm.Show();
			InternalForm.Bounds = rectangle;
		}

		public void Hide()
		{
			InternalForm.Hide();
		}

		public void Dispose()
		{
			m_DockingManager = null;
			InternalForm.Dispose();
			InternalForm = null;
		}
	}

	protected DragControl dragControl;

	protected TargetForm targetForm;

	private DockControllerBase m_Controller;

	private bool processedDragControl;

	private bool tabbedMDI;

	private bool subscribedToMoveEvents;

	private DockControllerBase m_DragController;

	private DockControllerBase dcbUnderlaying;

	private bool bProvideTabFeedback;

	protected bool bCtrlKeyPressed;

	private Control underlaying;

	private MainFormController m_mainFormController;

	private bool m_noControl = true;

	private DockControllerBase m_prevUnderlaying;

	protected virtual FocusHolder FocusHolder => base.DockingManager.dcHostForm.FocusHolderControl;

	public override bool CanFloatWhenDisallowFloating => true;

	public override void ForceStopDrag()
	{
		base.ForceStopDrag();
		if (dragControl.Visible)
		{
			dragControl.HideControl();
		}
		if (targetForm.Visible)
		{
			targetForm.Hide();
		}
	}

	protected virtual void CreateTargetForm(DockingManager dockingManager)
	{
		targetForm = new TargetForm(dockingManager);
	}

	public WhidbeyDragProvider(DockingManager dockingManager)
		: base(dockingManager)
	{
		InitializeProvider();
		m_DockingManager = dockingManager;
	}

	public override void Dispose()
	{
		base.Dispose();
		dragControl.OnMouseEnter -= dragControl_OnMouseEnter;
		dragControl.OnMouseLeave -= dragControl_OnMouseLeave;
		dragControl.OnMouseUp -= dragControl_OnMouseUp;
		dragControl.OnAllowHighlight -= dragControl_OnAllowHighlight;
		dragControl.Dispose();
		targetForm.Dispose();
		targetForm = null;
		m_mainFormController = null;
		m_Controller = null;
		m_prevUnderlaying = null;
		underlaying = null;
		dcbUnderlaying = null;
		dragControl = null;
	}

	protected virtual void InitializeProvider()
	{
		dragControl = new DragControl();
		dragControl.OnMouseEnter += dragControl_OnMouseEnter;
		dragControl.OnMouseLeave += dragControl_OnMouseLeave;
		dragControl.OnMouseUp += dragControl_OnMouseUp;
		dragControl.OnAllowHighlight += dragControl_OnAllowHighlight;
		CreateTargetForm(base.DockingManager);
	}

	public override void ProcessCtrlKeyDown()
	{
		base.ProcessCtrlKeyDown();
		if (!bCtrlKeyPressed)
		{
			bCtrlKeyPressed = true;
			dragControl.HideControl();
			if (targetForm.Visible)
			{
				targetForm.Hide();
			}
		}
	}

	public override void ProcessCtrlKeyUp()
	{
		base.ProcessCtrlKeyUp();
		bCtrlKeyPressed = false;
	}

	public override void ProcessMouseDown(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
		base.ProcessMouseDown(controller, ctrl, ptscreen);
		if (!subscribedToMoveEvents)
		{
			m_DockingManager.HostControl.Move += HostControl_Move;
			m_DockingManager.HostControl.Resize += HostControl_Resize;
			subscribedToMoveEvents = true;
		}
		processedDragControl = false;
		tabbedMDI = false;
		bInitiateDrag = false;
		ptMoveStart = Point.Empty;
		if (ctrl.InitiateDrag(MouseAction.LBtnDown, ptscreen))
		{
			bInitiateDrag = true;
			ptMoveStart = ptscreen;
			m_DragController = controller;
			if (!ctrl.DrawHollow())
			{
				InitiateDrag(ctrl, ptscreen);
			}
		}
	}

	protected void UpdateDockAbility(DockControllerBase controller)
	{
		if (dcbUnderlaying != m_mainFormController && controller.HostControl.Controls.Count > 0)
		{
			dragControl.DockAbility = base.DockingManager.GetDockAbility(controller.HostControl.Controls[0]);
		}
		else
		{
			dragControl.DockAbility = dragControl.OuterDockAbility;
		}
	}

	protected void UpdateOuterDockAbility(DockControllerBase controller)
	{
		if (controller is DockHostController)
		{
			dragControl.OuterDockAbility = base.DockingManager.GetOuterDockAbility(controller.HostControl.Controls[0]);
		}
		else
		{
			dragControl.OuterDockAbility = DockAbility.All;
		}
	}

	protected void UpdateDragControlVisibility(Point ptscreen, IDraggable ctrl)
	{
		bool flag = false;
		bool flag2 = false;
		if (underlaying != null)
		{
			flag2 = UpdateInnerControlVisibility(underlaying);
			flag = true;
			DockControllerBase internalController = ctrl.InternalController;
			DockHostController underlayingController = GetUnderlayingController(underlaying);
			if (underlayingController != null && underlayingController.FloatOnly)
			{
				MainFormController mainFormController = GetMainFormController(ptscreen);
				Rectangle displayRectangle = mainFormController.HostControl.DisplayRectangle;
				if (!mainFormController.HostControl.RectangleToScreen(displayRectangle).Contains(ptscreen))
				{
					flag2 = false;
					flag = false;
				}
			}
			if (underlaying == null || m_noControl)
			{
				flag2 = false;
				if (!(underlaying is DragSplitter))
				{
					flag = false;
				}
			}
			if (ctrl.DragDockInfo.DP == DockPreference.Tabbed && ctrl.DragDockInfo.dController != null && (dragControl.DockAbility | DockAbility.Tabbed) == dragControl.DockAbility)
			{
				flag2 = false;
				flag = false;
			}
			else if ((!dragControl.Visible || (!dragControl.InnerVisible && base.DockingManager.GetDockAbility(underlaying) != DockAbility.None)) && !(base.DraggingControl is DragSplitter))
			{
				if (!base.DockingManager.GetFloatOnly(internalController.HostControl.Controls[0]))
				{
					UpdateDockAbility(internalController);
					if (!bCtrlKeyPressed)
					{
						flag = flag;
						if (ShowOuterControlOnly(ptscreen))
						{
							flag2 = false;
						}
					}
				}
				else
				{
					flag2 = false;
					flag = false;
				}
			}
			if (bCtrlKeyPressed || base.DraggingControl is DragSplitter)
			{
				bCtrlKeyPressed = Syncfusion.Runtime.InteropServices.NativeMethods.GetKeyState(17) < 0;
				flag2 = false;
				flag = false;
			}
		}
		else
		{
			MainFormController mainFormController2 = GetMainFormController(ptscreen);
			Rectangle displayRectangle2 = mainFormController2.HostControl.DisplayRectangle;
			displayRectangle2 = mainFormController2.HostControl.RectangleToScreen(displayRectangle2);
			DockHost dockHost = ctrl as DockHost;
			if ((ctrl.DragDockInfo.DP != DockPreference.Tabbed || ctrl.DragDockInfo.dController == null || (dragControl.DockAbility | DockAbility.Tabbed) != dragControl.DockAbility) && ctrl.InternalController.HostControl.Controls.Count > 0 && dockHost != null && dockHost.Parent is FloatingForm && displayRectangle2.Contains(ptscreen) && !base.DockingManager.GetFloatOnly(ctrl.InternalController.HostControl.Controls[0]))
			{
				flag2 = true;
				flag = true;
			}
		}
		if (flag2)
		{
			if (!dragControl.InnerVisible)
			{
				dragControl.ShowInnerControl();
			}
		}
		else if (dragControl.InnerVisible)
		{
			dragControl.HideInnerControl();
		}
		if (flag)
		{
			if (!dragControl.OuterVisible)
			{
				dragControl.ShowOuterControl();
			}
		}
		else if (dragControl.OuterVisible)
		{
			dragControl.HideOuterControl();
		}
	}

	protected bool UpdateInnerControlVisibility(Control underlaying)
	{
		bool flag = false;
		if (underlaying != null)
		{
			Point position = Cursor.Position;
			flag = true;
			DockHostController underlayingController = GetUnderlayingController(underlaying);
			if (underlayingController != null && underlayingController.FloatOnly)
			{
				MainFormController mainFormController = GetMainFormController(position);
				Rectangle clientRectangle = mainFormController.HostControl.ClientRectangle;
				if (!mainFormController.HostControl.RectangleToScreen(clientRectangle).Contains(position))
				{
					flag = false;
				}
			}
			if (base.DockingManager.GetDockAbility(underlaying) != DockAbility.None && flag)
			{
				bool flag2 = true;
				if (base.DraggingControl.InternalController is DockHostController { FloatOnly: not false })
				{
					flag2 = false;
				}
				if (!(underlaying is DragSplitter) && !(base.DraggingControl is DragSplitter) && flag2 && base.DockingManager.GetEnableDocking(underlaying) && !dragControl.InnerVisible && !bProvideTabFeedback && !bCtrlKeyPressed)
				{
					flag = true;
				}
			}
			else
			{
				flag = false;
			}
		}
		return flag;
	}

	protected bool ShowOuterControlOnly(Point ptscreen)
	{
		FloatingForm floatingForm = (base.DraggingControl as Control).TopLevelControl as FloatingForm;
		IntPtr handle = IntPtr.Zero;
		if (floatingForm != null)
		{
			floatingForm.PassbyHitTest = true;
			handle = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(new Syncfusion.Runtime.InteropServices.NativeMethods.POINT(ptscreen.X, ptscreen.Y));
			floatingForm.PassbyHitTest = false;
		}
		Control control = Control.FromHandle(handle);
		if (control is DragSplitter)
		{
			return true;
		}
		return false;
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
			if (ptscreen.X > ptMoveStart.X || ptscreen.X < ptMoveStart.X || ptscreen.Y > ptMoveStart.Y || ptscreen.Y < ptMoveStart.Y || controller is FloatingFormController)
			{
				InitiateDrag(ctrl, ptscreen);
			}
			return;
		}
		DockInfo dockInfo = new DockInfo(ctrl.DragDockInfo);
		GetNewDockInfo(ctrl, ptscreen);
		m_mainFormController = GetMainFormController(ptscreen);
		dcbUnderlaying = GetUnderlayingController(m_mainFormController, ptscreen);
		if (m_prevUnderlaying != dcbUnderlaying)
		{
			m_prevUnderlaying = dcbUnderlaying;
			UpdateDockAbility(controller);
		}
		if (controller.Floating)
		{
			bool flag = true;
			FloatingFormController floatingFormController = controller.ToplevelController as FloatingFormController;
			if ((controller.ParentController == floatingFormController && !(controller is DockTabController)) || controller is DragSplitterController)
			{
				flag = false;
			}
			else if (floatingFormController.dcChild is SizingController sizingController && sizingController.GetDockControllers().Count == 1 && !(controller is DockTabController))
			{
				flag = false;
			}
			if (flag)
			{
				if (controller is DockTabController { dragTabPage: not null } dockTabController)
				{
					if (dockTabController.dragTabPage.dhcClient.DINew.dController == null)
					{
						controller.ApplyDockInfo();
						InitiateFormDragging(controller, ctrl, ptscreen);
						if (!bInitiateDrag && base.DraggingControl == null)
						{
							return;
						}
					}
				}
				else if (controller.ParentController is SizingController && ctrl.DragDockInfo.dController == null)
				{
					controller.ApplyDockInfo();
					InitiateFormDragging(controller, ctrl, ptscreen);
					if (!bInitiateDrag && base.DraggingControl == null)
					{
						return;
					}
				}
				if (controller.ParentController is DockTabController && ctrl.DragDockInfo.dController == null && controller.ParentController.ParentController is SizingController)
				{
					controller.ApplyDockInfo();
					InitiateFormDragging(controller, ctrl, ptscreen);
					if (!bInitiateDrag && base.DraggingControl == null)
					{
						return;
					}
				}
			}
		}
		else if (ctrl.DragDockInfo.dController == null)
		{
			controller.HostControl.PointToClient(ptscreen);
			controller.ApplyDockInfo();
			InitiateFormDragging(controller, ctrl, ptscreen);
			if (!bInitiateDrag && base.DraggingControl == null)
			{
				return;
			}
			SetDragCursor();
		}
		if (!(ctrl is DragSplitter))
		{
			UpdateDragControlPosition(ptscreen);
		}
		UpdateOuterDockAbility(controller);
		UpdateDragControlVisibility(ptscreen, ctrl);
		if (dockInfo.rcDockArea != ctrl.DragDockInfo.rcDockArea || ctrl.DragDockInfo.rcDockArea.Width < 0 || ctrl.DragDockInfo.rcDockArea.Height < 0 || dockInfo.DP != ctrl.DragDockInfo.DP)
		{
			if (ctrl.DrawHollow())
			{
				if (dockInfo.DP == DockPreference.Tabbed && dockInfo.dController != null && dockInfo.dController.HostControl is ITabFeedback tabFeedback)
				{
					if (tabFeedback.ProvideTabFeedback(ctrl, MouseAction.MouseLeave))
					{
						ctrl.DragDockInfo.rcDockArea = Rectangle.Empty;
					}
					targetForm.Hide();
					processedDragControl = false;
					bProvideTabFeedback = false;
				}
				if (ctrl.DragDockInfo.DP == DockPreference.Tabbed && ctrl.DragDockInfo.dController != null && (dragControl.DockAbility | DockAbility.Tabbed) == dragControl.DockAbility)
				{
					dragControl.HideControl();
					bProvideTabFeedback = true;
					ITabFeedback tabFeedback2 = ctrl.DragDockInfo.dController.HostControl as ITabFeedback;
					tabFeedback2.ProvideTabFeedback(ctrl, MouseAction.MouseMove);
					targetForm.Bounds = ctrl.DragDockInfo.rcDockArea;
					targetForm.ShowRegion(base.DockingManager.DockTabAlignment);
					processedDragControl = true;
					SetDragCursor();
				}
			}
			else if (controller is DragSplitterController)
			{
				base.Painter.DrawRectangle(dockInfo.rcDockArea);
				base.Painter.DrawRectangle(ctrl.DragDockInfo.rcDockArea);
			}
		}
		if (!processedDragControl && ctrl.DragDockInfo.dController != null)
		{
			ctrl.DragDockInfo.dController = null;
			SetDragCursor();
		}
		bool flag2 = false;
		if (ctrl is DockHost dockHost && dockHost.Controls[0] != null)
		{
			flag2 = base.DockingManager.GetFloatOnly(dockHost.Controls[0]);
		}
		if (!(controller is DragSplitterController))
		{
			if (!flag2)
			{
				dragControl.ProcessMouseMove(ptscreen);
			}
			else
			{
				dragControl.ProcessMouseMove(Point.Empty);
			}
		}
	}

	protected void InitiateFormDragging(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
		if (!(controller is DragSplitterController))
		{
			if (!(controller is DockTabController { TabControl: not null } dockTabController))
			{
				(ctrl as Control).Capture = false;
			}
			else
			{
				dockTabController.TabControl.Capture = false;
			}
		}
		if (ctrl.InternalController.ToplevelController is FloatingFormController floatingFormController)
		{
			FloatingForm floatForm = floatingFormController.HostControl as FloatingForm;
			base.DockingManager.InitiateFormDrag(floatForm, ptscreen, ptDelta);
		}
	}

	public override void ProcessMouseUp(DockControllerBase controller, IDraggable ctrl, Point ptscreen)
	{
		m_DragController = null;
		if (base.DraggingControl != null)
		{
			dragControl.ProcessMouseUp(ptscreen);
			TerminateDrag(ctrl, ptscreen);
			bool flag = false;
			DockHost dockHost = ctrl as DockHost;
			if (dockHost != null && dockHost.InternalController is DockHostController dockHostController)
			{
				flag = dockHostController.DINew.DP == DockPreference.Tabbed;
			}
			if (ctrl is DragSplitter)
			{
				return;
			}
			bool flag2 = true;
			if (controller is DockHostController dockHostController2)
			{
				DockControllerBase dController = dockHostController2.DINew.dController;
				Control ctrltarget = null;
				if (dController != null)
				{
					if (dController is DockHostController)
					{
						ctrltarget = dController.HostControl.Controls[0];
					}
					else if (dController is MainFormController || dController is DockTabController)
					{
						ctrltarget = dController.HostControl;
					}
					Control ctrldrag = null;
					if (dockHost != null)
					{
						ctrldrag = dockHost.Controls[0];
					}
					else if (ctrl is FloatingForm { InternalController: var internalController })
					{
						ctrldrag = internalController.HostControl.Controls[0];
					}
					DockingStyle dockingStyle = dockHostController2.DINew.dStyle;
					if (base.DockingManager.HostForm != null && base.DockingManager.HostForm.RightToLeftLayout && base.DockingManager.HostForm.RightToLeft == RightToLeft.Yes)
					{
						switch (dockingStyle)
						{
						case DockingStyle.Left:
							dockingStyle = DockingStyle.Right;
							break;
						case DockingStyle.Right:
							dockingStyle = DockingStyle.Left;
							break;
						}
					}
					DockAllowEventArgs e = new DockAllowEventArgs(ctrldrag, ctrltarget, dockingStyle);
					base.DockingManager.FireDockAllowEvent(e);
					flag2 = !e.Cancel;
					if (!IsDockAllowed(ctrl))
					{
						flag2 = false;
					}
				}
			}
			if (flag2)
			{
				if (!ctrl.InternalController.IsFloatOnly())
				{
					if (processedDragControl)
					{
						if (tabbedMDI)
						{
							if (controller is FloatingFormController floatingFormController)
							{
								if (floatingFormController.dcChild is SizingController sizingController)
								{
									ArrayList alDockHosts = new ArrayList();
									sizingController.GetChildDockHosts(ref alDockHosts);
									foreach (DockHost item in alDockHosts)
									{
										base.DockingManager.SetAsMDIChild(item.Controls[0], bsetmdi: true);
									}
								}
							}
							else if (flag)
							{
								controller.DockAsMDIChild(((DockStateControllerBase)controller).DINew);
							}
							else
							{
								controller.ApplyDockInfo();
							}
						}
						else
						{
							controller.ApplyDockInfo();
						}
					}
					else if (!IsDockAllowed(ctrl) && controller.Floating)
					{
						TransitToPrevDock(ctrl);
					}
				}
				else if (ctrl.InternalController is DockHostController dockHostController3)
				{
					dockHostController3.DINew.rcDockArea = dockHostController3.DINew.rcControlArea;
				}
			}
			else if (!IsDockAllowed(ctrl) && controller.Floating)
			{
				TransitToPrevDock(ctrl);
			}
			dragControl.HideControl();
			targetForm.Hide();
		}
		else
		{
			bInitiateDrag = false;
			ptMoveStart = Point.Empty;
		}
	}

	protected override void TransitToPrevDock(IDraggable ctrl)
	{
		if (ctrl is DockHost { InternalController: DockHostController internalController })
		{
			if (internalController.ParentController is DockTabController dockTabController)
			{
				dockTabController.TransitToPrevDock();
			}
			else
			{
				internalController.TransitToPrevDock();
			}
		}
	}

	public override void TerminateDrag(IDraggable ctrl, Point ptscreen)
	{
		base.TerminateDrag(ctrl, ptscreen);
		if (Cursor.Current != Cursors.Default)
		{
			Cursor.Current = Cursors.Default;
		}
		base.DraggingControl = null;
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
		if (ctrl.DrawHollow())
		{
			if (ctrl.DragDockInfo.dController != null && ctrl.DragDockInfo.DP == DockPreference.Tabbed && ctrl.DragDockInfo.dController.HostControl is ITabFeedback tabFeedback)
			{
				tabFeedback.ProvideTabFeedback(ctrl, MouseAction.LBtnUp);
			}
		}
		else
		{
			base.Painter.DrawRectangle(ctrl.DragDockInfo.rcDockArea);
		}
		CorrectDockedLocation(ctrl);
		if (!(ctrl is DragSplitter) || base.DockingManager.DragFeedbackEventsOnSplitters)
		{
			base.DockingManager.FireDragFeedbackEvent("DragFeedbackStop");
		}
		if (FocusHolder.LastActiveControl != null)
		{
			if (FocusHolder.LastActiveControl.Parent != null)
			{
				FocusHolder.LastActiveControl.Parent.Focus();
			}
			FocusHolder.LastActiveControl = null;
			FocusHolder.Visible = false;
		}
		base.DockingManager.StopActivationEvents = false;
	}

	protected void ParentForm_Deactivate(object sender, EventArgs e)
	{
		(sender as Form).Deactivate -= ParentForm_Deactivate;
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
		base.DockingManager.StopActivationEvents = true;
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
		GetNewDockInfo(ctrl, ptscreen);
		if (ctrl.DrawHollow())
		{
			if (ctrl.DragDockInfo.dController != null && ctrl.DragDockInfo.DP == DockPreference.Tabbed)
			{
				ITabFeedback tabFeedback = ctrl.DragDockInfo.dController.HostControl as ITabFeedback;
				tabFeedback.ProvideTabFeedback(ctrl, MouseAction.LBtnUp);
			}
		}
		else
		{
			base.DockingManager.FramePainter.Painter.DrawRectangle(ctrl.DragDockInfo.rcDockArea);
		}
		base.DraggingControl = ctrl;
		if (!(ctrl is DragSplitter))
		{
			UpdateDragControlPosition(ptscreen);
			FocusHolder.Visible = true;
			FocusHolder.LastActiveControl = base.DockingManager.ActiveControl;
			FocusHolder.Focus();
		}
		SetDragCursor();
	}

	private void SetDragCursor()
	{
		if (!IsDockAllowed(base.DraggingControl) && (base.DraggingControl == null || base.DraggingControl.DrawHollow()))
		{
			if (Cursor.Current != Cursors.No)
			{
				Cursor.Current = Cursors.No;
			}
		}
		else if (Cursor.Current != Cursors.Default)
		{
			Cursor.Current = Cursors.Default;
		}
	}

	public override Control GetUnderlyingControl(Point point)
	{
		IntPtr handle = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(new Syncfusion.Runtime.InteropServices.NativeMethods.POINT(point.X, point.Y));
		Control control = Control.FromHandle(handle);
		if (control != null)
		{
			DockHostController dockHostController = base.DockingManager.GetDockHostController(control);
			if (control is FloatingForm || control is DockHost || (dockHostController != null && dockHostController.Floating))
			{
				IntPtr zero = IntPtr.Zero;
				Control hostControl = base.DockingManager.dcHostForm.HostControl;
				hostControl.PointToScreen(point);
				if (control is FloatingForm)
				{
					((FloatingForm)control).PassbyHitTest = true;
					zero = ((!base.DockingManager.IsDefaultRendering()) ? Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(new Syncfusion.Runtime.InteropServices.NativeMethods.POINT(point.X, point.Y)) : Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(new Syncfusion.Runtime.InteropServices.NativeMethods.POINT(point.X, point.Y - 20)));
					((FloatingForm)control).PassbyHitTest = false;
				}
				else
				{
					zero = base.DockingManager.GetFloatingWindow(control, point);
				}
				if (zero == IntPtr.Zero)
				{
					Point point2 = hostControl.PointToClient(point);
					zero = Syncfusion.Runtime.InteropServices.NativeMethods.ChildWindowFromPoint(hostControl.Handle, new Syncfusion.Runtime.InteropServices.NativeMethods.POINT(point2.X, point2.Y));
				}
				Control control2 = Control.FromHandle(zero);
				while (control2 == null && zero != IntPtr.Zero)
				{
					zero = Syncfusion.Runtime.InteropServices.NativeMethods.GetParent(zero);
					control2 = Control.FromHandle(zero);
				}
				if (control2 != base.DraggingControl)
				{
					underlaying = ((control2 is FloatingForm) ? null : control2);
				}
				return control2;
			}
		}
		return base.GetUnderlyingControl(point);
	}

	private void UpdateDragControlPosition(Point ptscreen)
	{
		try
		{
			if (m_mainFormController == null)
			{
				m_mainFormController = GetMainFormController(ptscreen);
			}
			Control hostControl = m_mainFormController.HostControl;
			if (hostControl != null)
			{
				Point pos = ((base.DockingManager.HostForm == null || base.DockingManager.HostForm.RightToLeft != RightToLeft.Yes || !base.DockingManager.HostForm.RightToLeftLayout) ? hostControl.PointToScreen(new Point(0, 0)) : hostControl.PointToScreen(new Point(m_mainFormController.LayoutRect.Width, 0)));
				Rectangle layoutRect = m_mainFormController.LayoutRect;
				layoutRect.Offset(pos);
				dragControl.OuterControllerRect = layoutRect;
			}
			DockControllerBase dockController = base.DockingManager.GetDockController(ptscreen);
			if (dockController != null && !(dockController is DragSplitterController))
			{
				if (dockController is DockHostController { AutoHideMode: not false })
				{
					m_Controller = m_DockingManager.dcHostForm;
				}
				else
				{
					m_Controller = dockController;
				}
				if (base.DraggingControl == null || m_Controller == base.DraggingControl.InternalController || m_Controller.ParentController == base.DraggingControl.InternalController)
				{
					return;
				}
				if (m_Controller != null && base.DockingManager.GetFloatOnly(m_Controller.HostControl.Controls[0]))
				{
					m_Controller = ((dcbUnderlaying == null) ? m_mainFormController : dcbUnderlaying);
				}
				Control hostControl2 = m_Controller.HostControl;
				if (base.DockingManager.HostForm != null && base.DockingManager.HostForm.RightToLeftLayout && base.DockingManager.HostForm.RightToLeft == RightToLeft.Yes)
				{
					Point point = hostControl2.PointToScreen(new Point(hostControl2.Width, 0));
				}
				else
				{
					Point point = hostControl2.PointToScreen(new Point(0, 0));
				}
				if (m_Controller is MainFormController)
				{
					dragControl.InnerControllerRect = hostControl.RectangleToScreen(m_mainFormController.rcClientPool);
					if (dragControl.DockAbility != dragControl.OuterDockAbility)
					{
						dragControl.DockAbility = dragControl.OuterDockAbility;
					}
				}
				else if ((m_Controller.ToplevelController != base.DraggingControl.InternalController && m_Controller.ChildControllers == null) || (m_Controller.ToplevelController != base.DraggingControl.InternalController && !(m_Controller.ChildControllers[0] as DockHostController).FloatOnly))
				{
					if (m_Controller is FloatingFormController && m_Controller.ChildControllers.Count > 0)
					{
						m_Controller = m_Controller.ChildControllers[0] as DockControllerBase;
					}
					ContainerControl containerControl = m_Controller.HostControl as ContainerControl;
					Point point = containerControl.Controls[0].PointToScreen(new Point(0, 0));
					dragControl.DockAbility = base.DockingManager.GetDockAbility(containerControl.Controls[0]);
					dragControl.InnerControllerRect = new Rectangle(point, containerControl.Controls[0].Size);
				}
				m_noControl = false;
			}
			else
			{
				m_noControl = true;
			}
		}
		catch (Exception)
		{
		}
	}

	private DockControllerBase GetUnderlayingController(MainFormController mfc, Point ptscreen)
	{
		DockControllerBase dockControllerBase = null;
		if (mfc != null && mfc.HostControl != null)
		{
			Control hostControl = mfc.HostControl;
			for (int i = 0; i < base.DockingManager.ControlsArray.Length; i++)
			{
				DockHostController dockHostController = base.DockingManager.GetDockHostController(base.DockingManager.ControlsArray[i]);
				if (dockHostController != null && dockHostController.DockVisibility && (dockHostController.Floating ? dockHostController.HostControl.TopLevelControl.RectangleToScreen(dockHostController.HostControl.Bounds) : hostControl.RectangleToScreen(dockHostController.HostControl.Bounds)).Contains(ptscreen) && dockHostController != m_DragController && !base.DockingManager.GetFloatOnly(base.DockingManager.ControlsArray[i]))
				{
					dockControllerBase = dockHostController;
					break;
				}
			}
			if (dockControllerBase == null && hostControl.Bounds.Contains(ptscreen))
			{
				dockControllerBase = mfc;
			}
		}
		return dockControllerBase;
	}

	private MainFormController GetMainFormController(Point ptscreen)
	{
		DockingManager managerFromPoint = base.DockingManager.GetManagerFromPoint(ptscreen);
		MainFormController mainFormController = null;
		mainFormController = ((m_Controller is MainFormController) ? (m_Controller as MainFormController) : ((m_Controller != null) ? m_Controller.DockingManager.dcHostForm : ((managerFromPoint == null) ? base.DockingManager.dcHostForm : managerFromPoint.dcHostForm)));
		if (mainFormController.HostControl == null)
		{
			return null;
		}
		if (!mainFormController.HostControl.Visible)
		{
			DockingManager visibleDockingManager = base.DockingManager.GetVisibleDockingManager();
			if (visibleDockingManager != null)
			{
				mainFormController = visibleDockingManager.dcHostForm;
			}
		}
		return mainFormController;
	}

	protected void dragControl_OnAllowHighlight(object sender, AllowHighlightEventArgs e)
	{
		_ = base.DockingManager.HostForm;
		e.AllowHighlight = IsDockAllowed(e.DragTarget);
	}

	private bool IsDockAllowed(DragTarget dragTarget)
	{
		if (m_Controller is DockHostController { HostControl: not null } dockHostController && base.DockingManager.GetFloatOnly(dockHostController.HostControl.Controls[0]))
		{
			return false;
		}
		if (base.DraggingControl is DockHost dockHost && base.DockingManager.GetFloatOnly(dockHost.Controls[0]))
		{
			return false;
		}
		Control hostControl = base.DockingManager.HostControl;
		bool flag = true;
		if (!m_Controller.Floating & (m_Controller.ToplevelController.HostControl is ContainerControl) & (m_Controller is MainFormController))
		{
			flag = m_Controller.ToplevelController.HostControl is Form && ((Form)m_Controller.ToplevelController.HostControl).IsMdiContainer;
		}
		if (hostControl == null || !flag)
		{
			return dragTarget != DragTarget.InnerTab;
		}
		return true;
	}

	private void HostControl_Move(object sender, EventArgs e)
	{
		if (m_DockingManager != null && m_DockingManager.HostControl != null)
		{
			UpdateDragControlPosition(Cursor.Position);
		}
	}

	private void HostControl_Resize(object sender, EventArgs e)
	{
		if (m_DockingManager != null && m_DockingManager.HostControl != null)
		{
			UpdateDragControlPosition(Cursor.Position);
		}
	}

	protected void dragControl_OnMouseEnter(object sender, DragControlEventArgs e)
	{
		if (!(base.DraggingControl is IDockable dockable))
		{
			return;
		}
		processedDragControl = true;
		Rectangle rectangle = Rectangle.Empty;
		DockControllerBase controller = dockable.GetController();
		if (dockable is DockHost dockHost && base.DockingManager.GetFloatOnly(dockHost.Controls[0]))
		{
			return;
		}
		if (e.DragTarget == DragTarget.InnerTab && m_Controller is DockHostController)
		{
			rectangle = (m_Controller as DockHostController).GetTabDockTargetRectangle();
		}
		if (rectangle == Rectangle.Empty)
		{
			rectangle = e.HostDockArea;
		}
		DragDockInfo dragDockInfo = GetDragDockInfo(rectangle, controller, e.DragTarget);
		if (IsDockAllowed(base.DraggingControl, dragDockInfo.Controller))
		{
			Cursor.Current = Cursors.Default;
		}
		targetForm.Bounds = dragDockInfo.DockArea;
		if (e.DragTarget == DragTarget.InnerTab)
		{
			if (dragDockInfo.Controller is DockHostController)
			{
				targetForm.ShowRegion(base.DockingManager.DockTabAlignment);
			}
		}
		else
		{
			targetForm.ShowRectangle(dragDockInfo.DockArea);
		}
	}

	protected void dragControl_OnMouseLeave(object sender, DragControlEventArgs e)
	{
		SetDragCursor();
		targetForm.Hide();
		processedDragControl = false;
	}

	protected void dragControl_OnMouseUp(object sender, DragControlEventArgs e)
	{
		if (base.DraggingControl == null)
		{
			return;
		}
		DockControllerBase dockControllerBase = null;
		DockHost dockHost = base.DraggingControl as DockHost;
		if (dockHost != null)
		{
			dockControllerBase = dockHost.InternalController;
		}
		FloatingForm floatingForm = base.DraggingControl as FloatingForm;
		if (floatingForm != null)
		{
			dockControllerBase = floatingForm.InternalController;
		}
		if (dockControllerBase != null)
		{
			DragDockInfo dragDockInfo = GetDragDockInfo(e.HostDockArea, dockControllerBase, e.DragTarget);
			if (dragDockInfo.Controller.HostControl is Form form && e.DragTarget == DragTarget.InnerTab && form.IsMdiContainer)
			{
				tabbedMDI = true;
			}
			DockingStyle dockingStyle = dragDockInfo.DockingStyle;
			if ((dragDockInfo.Controller == null || !dragDockInfo.Controller.Floating) && 0 == 0 && base.DockingManager.HostForm != null && base.DockingManager.HostForm.RightToLeftLayout && base.DockingManager.HostForm.RightToLeft == RightToLeft.Yes)
			{
				switch (dockingStyle)
				{
				case DockingStyle.Left:
					dockingStyle = DockingStyle.Right;
					break;
				case DockingStyle.Right:
					dockingStyle = DockingStyle.Left;
					break;
				}
			}
			if (dockHost != null)
			{
				DockHostController dockHostController = dockHost.InternalController as DockHostController;
				dockHostController.DINew.dController = dragDockInfo.Controller;
				dockHostController.DINew.dStyle = dockingStyle;
				dockHostController.DINew.DP = dragDockInfo.DockPreference;
				dockHostController.DINew.nPriority = dragDockInfo.Priority;
				dockHostController.DINew.rcDockArea = dragDockInfo.DockArea;
				if (dragDockInfo.DockingStyle == DockingStyle.Tabbed)
				{
					dockHostController.DINew.nDockIndex = 0;
				}
			}
			if (floatingForm != null)
			{
				FloatingFormController floatingFormController = floatingForm.InternalController as FloatingFormController;
				floatingFormController.DICurrent.dController = dragDockInfo.Controller;
				floatingFormController.DICurrent.dStyle = dockingStyle;
				floatingFormController.DICurrent.DP = dragDockInfo.DockPreference;
				floatingFormController.DICurrent.nPriority = dragDockInfo.Priority;
				floatingFormController.DICurrent.rcDockArea = dragDockInfo.DockArea;
				if (dragDockInfo.DockingStyle == DockingStyle.Tabbed)
				{
					floatingFormController.DICurrent.nDockIndex = 0;
				}
			}
		}
		targetForm.Hide();
	}

	public DragDockInfo GetDragDockInfo(Rectangle hostRectangle, DockControllerBase dockController, DragTarget dragTarget)
	{
		DragDockInfo dragDockInfo = new DragDockInfo();
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		Point point = m_mainFormController.HostControl.PointToClient(hostRectangle.Location);
		num = point.X;
		num2 = point.Y;
		int childLength = ((!(dockController is DockStateControllerBase dockStateControllerBase)) ? (dockController.LayoutRect.Height + CaptionPainter.CaptionHeight) : dockStateControllerBase.DINew.rcDockArea.Height);
		switch (dragTarget)
		{
		case DragTarget.OuterLeft:
			dragDockInfo.DockPreference = DockPreference.Horizontal;
			dragDockInfo.DockingStyle = DockingStyle.Left;
			dragDockInfo.Priority = 0;
			dragDockInfo.Controller = m_mainFormController;
			num3 = EstimateLength(hostRectangle.Width, dockController.LayoutRect.Width);
			num4 = hostRectangle.Height;
			break;
		case DragTarget.OuterTop:
			dragDockInfo.DockPreference = DockPreference.Vertical;
			dragDockInfo.DockingStyle = DockingStyle.Top;
			dragDockInfo.Priority = 0;
			dragDockInfo.Controller = m_mainFormController;
			num3 = hostRectangle.Width;
			num4 = EstimateLength(hostRectangle.Height, childLength);
			break;
		case DragTarget.OuterRight:
			dragDockInfo.DockPreference = DockPreference.Horizontal;
			dragDockInfo.DockingStyle = DockingStyle.Right;
			dragDockInfo.Priority = 0;
			dragDockInfo.Controller = m_mainFormController;
			num3 = EstimateLength(hostRectangle.Width, dockController.LayoutRect.Width);
			num += hostRectangle.Width - num3;
			num4 = hostRectangle.Height;
			break;
		case DragTarget.OuterBottom:
			dragDockInfo.DockPreference = DockPreference.Vertical;
			dragDockInfo.DockingStyle = DockingStyle.Bottom;
			dragDockInfo.Priority = 0;
			dragDockInfo.Controller = m_mainFormController;
			num3 = hostRectangle.Width;
			num4 = EstimateLength(hostRectangle.Height, childLength);
			num2 += hostRectangle.Height - num4;
			break;
		case DragTarget.InnerLeft:
			dragDockInfo.DockPreference = DockPreference.Horizontal;
			dragDockInfo.DockingStyle = DockingStyle.Left;
			dragDockInfo.Priority = -1;
			dragDockInfo.Controller = m_Controller;
			num3 = EstimateLength(hostRectangle.Width, dockController.LayoutRect.Width);
			num4 = hostRectangle.Height;
			break;
		case DragTarget.InnerTop:
			dragDockInfo.DockPreference = DockPreference.Vertical;
			dragDockInfo.DockingStyle = DockingStyle.Top;
			dragDockInfo.Priority = -1;
			dragDockInfo.Controller = m_Controller;
			num3 = hostRectangle.Width;
			num4 = EstimateLength(hostRectangle.Height, childLength);
			break;
		case DragTarget.InnerRight:
			dragDockInfo.DockPreference = DockPreference.Horizontal;
			dragDockInfo.DockingStyle = DockingStyle.Right;
			dragDockInfo.Priority = -1;
			dragDockInfo.Controller = m_Controller;
			num3 = EstimateLength(hostRectangle.Width, dockController.LayoutRect.Width);
			num += hostRectangle.Width - num3;
			num4 = hostRectangle.Height;
			break;
		case DragTarget.InnerBottom:
			dragDockInfo.DockPreference = DockPreference.Vertical;
			dragDockInfo.DockingStyle = DockingStyle.Bottom;
			dragDockInfo.Priority = -1;
			dragDockInfo.Controller = m_Controller;
			num3 = hostRectangle.Width;
			num4 = EstimateLength(hostRectangle.Height, childLength);
			num2 += hostRectangle.Height - num4;
			break;
		case DragTarget.InnerTab:
			dragDockInfo.DockPreference = DockPreference.Tabbed;
			dragDockInfo.DockingStyle = DockingStyle.Tabbed;
			dragDockInfo.Priority = 0;
			dragDockInfo.Controller = m_Controller;
			num3 = hostRectangle.Width;
			num4 = hostRectangle.Height;
			break;
		}
		Control hostControl = m_mainFormController.HostControl;
		Rectangle r = new Rectangle(num, num2, num3, num4);
		r = hostControl.RectangleToScreen(r);
		if (base.DockingManager.HostForm != null && base.DockingManager.HostForm.RightToLeft == RightToLeft.Yes && base.DockingManager.HostForm.RightToLeftLayout)
		{
			r.X = r.Right + 2 * (hostRectangle.X - r.Right);
		}
		dragDockInfo.DockArea = r;
		return dragDockInfo;
	}

	private int EstimateLength(int parentLength, int childLength)
	{
		if (2 * childLength <= parentLength)
		{
			return childLength;
		}
		return parentLength / 2;
	}
}
