using System;
using System.Collections;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class MainFormController : DockControllerBase
{
	protected ContainerControl ctrlHost;

	protected Rectangle rcLayout = Rectangle.Empty;

	protected ArrayList alChildren = new ArrayList();

	protected ArrayList alVisibleFloatingForms = new ArrayList();

	protected DockControllerBase dcPriority;

	protected internal Rectangle rcClientPool = Rectangle.Empty;

	protected Control ctrlFormClient;

	protected Form frmTopLevelSubscribed;

	protected internal AHTabControl ahTabCtrlL;

	protected internal AHTabControl ahTabCtrlT;

	protected internal AHTabControl ahTabCtrlR;

	protected internal AHTabControl ahTabCtrlB;

	protected bool m_bInLayout;

	public bool bOverlapSizing = true;

	private bool m_EventSubscribed;

	protected FocusHolder fhCtrl;

	public override Control HostControl => ctrlHost;

	public DockControllerBase PriorityController
	{
		get
		{
			return dcPriority;
		}
		set
		{
			dcPriority = value;
		}
	}

	public override Rectangle LayoutRect
	{
		get
		{
			return rcLayout;
		}
		set
		{
			if (rcLayout != value)
			{
				rcLayout = value;
				AdjustLayout();
			}
		}
	}

	public override bool Floating
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	public override IEnumerator ChildEnumerator => alChildren.GetEnumerator();

	public override int ChildCount => alChildren.Count;

	public override int ChildHostCount
	{
		get
		{
			int num = 0;
			foreach (DockControllerBase alChild in alChildren)
			{
				if (alChild is DockHostController)
				{
					num++;
				}
			}
			return num;
		}
	}

	public override IEnumerator DCR => new IEnumWrapper(null);

	public FocusHolder FocusHolderControl => fhCtrl;

	public override ArrayList ChildControllers => alChildren;

	public MainFormController(DockingManager mgr, ContainerControl host)
		: base(mgr)
	{
		ctrlHost = host;
		InitializeComponent();
		AdjustLayoutDockArea();
	}

	protected void InitializeComponent()
	{
		ctrlHost.Paint += HostControl_Paint;
		ctrlHost.VisibleChanged += HostControl_VisibleChanged;
		ctrlHost.ParentChanged += HostControl_ParentChanged;
		ctrlHost.Layout += HostControl_Layout;
		if (ctrlHost.AutoScroll)
		{
			rcLayout = ctrlHost.ClientRectangle;
			rcClientPool = ctrlHost.ClientRectangle;
		}
		else
		{
			rcLayout = ctrlHost.DisplayRectangle;
			rcClientPool = ctrlHost.DisplayRectangle;
		}
		ahTabCtrlL = new AHTabControl(dockingMgr, DockingStyle.Left);
		ahTabCtrlL.Alignment = TabAlignment.Right;
		ahTabCtrlL.RotateText180WhenLeftAligned = true;
		ahTabCtrlL.VerticalAlignment = TabVerticalAlignment.Top;
		ahTabCtrlT = new AHTabControl(dockingMgr, DockingStyle.Top);
		ahTabCtrlT.Alignment = TabAlignment.Bottom;
		ahTabCtrlT.RotateText180WhenLeftAligned = true;
		ahTabCtrlR = new AHTabControl(dockingMgr, DockingStyle.Right);
		ahTabCtrlR.Alignment = TabAlignment.Left;
		ahTabCtrlR.RotateText180WhenLeftAligned = true;
		ahTabCtrlR.VerticalAlignment = TabVerticalAlignment.Top;
		ahTabCtrlB = new AHTabControl(dockingMgr, DockingStyle.Bottom);
		ahTabCtrlB.Alignment = TabAlignment.Top;
		ahTabCtrlB.RotateText180WhenLeftAligned = true;
		fhCtrl = new FocusHolder();
		if (!dockingMgr.DesignProcess)
		{
			ctrlHost.Controls.AddRange(new Control[4] { ahTabCtrlL, ahTabCtrlT, ahTabCtrlR, ahTabCtrlB });
			ctrlHost.Controls.Add(fhCtrl);
		}
		ctrlHost.ControlAdded += HostControl_ChildControlAdded;
		ctrlHost.ControlRemoved += HostControl_ChildControlRemoved;
		foreach (Control control in ctrlHost.Controls)
		{
			if (!(control is DockHost) && !(control is DragSplitter) && !(control is AHTabControl) && !(control is FocusHolder))
			{
				control.DockChanged += ChildControl_DockChanged;
				control.SizeChanged += ChildControl_SizeChanged;
				control.VisibleChanged += ChildControl_VisibleChanged;
			}
		}
		if (ctrlHost is Form)
		{
			(ctrlHost as Form).MdiChildActivate += MainForm_MdiChildActivate;
		}
	}

	public void UpdateFormClientSetting()
	{
		if (ctrlFormClient != null)
		{
			return;
		}
		foreach (Control control in ctrlHost.Controls)
		{
			if (control is MdiClient)
			{
				ctrlFormClient = control;
				ctrlFormClient.Anchor = AnchorStyles.Top | AnchorStyles.Left;
				break;
			}
			if (control is DockingClientPanel)
			{
				ctrlFormClient = control;
				if (base.DockingManager.DesignProcess)
				{
					ctrlFormClient.SuspendLayout();
				}
				ctrlFormClient.Anchor = AnchorStyles.Top | AnchorStyles.Left;
				ctrlFormClient.ResumeLayout(performLayout: false);
				break;
			}
		}
	}

	internal override void RemoveDockController()
	{
	}

	protected void HostControl_Layout(object sender, LayoutEventArgs e)
	{
		if (!m_bInLayout)
		{
			m_bInLayout = true;
			AdjustLayoutDockArea();
			m_bInLayout = false;
		}
	}

	private void HostControl_Resize(object obj, EventArgs e)
	{
		if (dockingMgr.ahTabAnimate != null && dockingMgr.ahTabAnimate.AnimationState != AutoHideAnimationState.None)
		{
			AdjustLayoutDockArea();
		}
		if (dockingMgr.DesignMode)
		{
			dockingMgr.SaveToStream();
		}
	}

	protected void HostControl_Paint(object obj, PaintEventArgs e)
	{
		if (dockingMgr.Office2007Theme == Office2007Theme.Managed && (dockingMgr.Renderer.VisualStyle == VisualStyle.Office2007 || dockingMgr.Renderer.VisualStyle == VisualStyle.Office2007Outlook))
		{
			dockingMgr.Renderer.RefreshOffice2007Theme(dockingMgr.Office2007Theme);
		}
		if (ctrlFormClient == null && e.ClipRectangle.IntersectsWith(rcClientPool))
		{
			DrawDockEdgeBorders(e.Graphics);
		}
		if (!m_EventSubscribed)
		{
			ctrlHost.Resize += HostControl_Resize;
			m_EventSubscribed = true;
		}
	}

	protected void HostControl_VisibleChanged(object sender, EventArgs e)
	{
		if (HostControl == null)
		{
			return;
		}
		bool flag = true;
		for (Control control = HostControl; control != null; control = control.Parent)
		{
			if (!control.Visible)
			{
				flag = false;
				break;
			}
		}
		if (flag)
		{
			ShowAllFloatingForms();
		}
		else
		{
			HideAllFloatingForms();
		}
	}

	protected void HostControl_ParentChanged(object sender, EventArgs e)
	{
		if (ctrlHost == null)
		{
			return;
		}
		if (ctrlHost.TopLevelControl is Form form)
		{
			if (form.IsMdiContainer)
			{
				frmTopLevelSubscribed = ctrlHost.TopLevelControl as Form;
				frmTopLevelSubscribed.Resize += TopLevelControl_Resize;
			}
		}
		else if (frmTopLevelSubscribed != null)
		{
			frmTopLevelSubscribed.Resize -= TopLevelControl_Resize;
		}
	}

	protected void TopLevelControl_Resize(object sender, EventArgs e)
	{
		if (sender is Form { WindowState: FormWindowState.Minimized })
		{
			HideAllFloatingForms(fireVisibilityChange: true);
			return;
		}
		Form form2 = ctrlHost as Form;
		if (form2 == null && ctrlHost is UserControl)
		{
			Control parent = ctrlHost.Parent;
			if (parent != null)
			{
				while (!(parent is Form) && parent.Parent != null)
				{
					parent = parent.Parent;
				}
				form2 = parent as Form;
			}
		}
		if (form2 != null && form2.WindowState != FormWindowState.Minimized)
		{
			ShowAllFloatingForms(fireVisibilityChange: true);
		}
	}

	protected void HostControl_ChildControlAdded(object obj, ControlEventArgs e)
	{
		if (e.Control is MdiClient)
		{
			if (dockingMgr.DesignMode)
			{
				if (ctrlFormClient != null)
				{
					throw new ApplicationException("Error - An MdiContainer form should not contain a DockingClientPanel control.");
				}
				if (dockingMgr.DockToFill)
				{
					dockingMgr.DockToFill = false;
					MessageBox.Show("The DockingManager.DockToFill property has been reset as this is an invalid option when the host form is an MDIContainer.", "Essential Tools DockingManager", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
				}
				if (dockingMgr.GetServiceFromMgr(typeof(IDesignerLoaderService)) is IDesignerLoaderService designerLoaderService)
				{
					designerLoaderService.Reload();
				}
			}
			else
			{
				UpdateFormClientSetting();
				AdjustLayoutDockArea();
			}
		}
		else if (e.Control is DockingClientPanel)
		{
			if (dockingMgr.DesignMode)
			{
				if (ctrlFormClient != null)
				{
					throw new ApplicationException("Error - The form should contain only one DockingClientPanel instance.");
				}
				if (dockingMgr.DockToFill)
				{
					dockingMgr.DockToFill = false;
					MessageBox.Show("The DockingManager.DockToFill property has been reset as this is an invalid option when using the DockingClientPanel control.", "Essential Tools Docking Windows", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
				}
				UpdateFormClientSetting();
			}
			else
			{
				UpdateFormClientSetting();
				AdjustLayoutDockArea();
			}
		}
		if (e.Control != null && !(e.Control is DockHost) && !(e.Control is DragSplitter) && !(e.Control is AHTabControl) && !(e.Control is FocusHolder))
		{
			if (e.Control.Dock != DockStyle.None)
			{
				AdjustLayoutDockArea();
			}
			e.Control.DockChanged += ChildControl_DockChanged;
			e.Control.SizeChanged += ChildControl_SizeChanged;
			e.Control.VisibleChanged += ChildControl_VisibleChanged;
		}
	}

	protected void HostControl_ChildControlRemoved(object obj, ControlEventArgs e)
	{
		if (e.Control is MdiClient || e.Control is DockingClientPanel)
		{
			ctrlFormClient = null;
		}
		if (e.Control != null && !(e.Control is DockHost) && !(e.Control is DragSplitter) && !(e.Control is AHTabControl) && !(e.Control is FocusHolder))
		{
			e.Control.DockChanged -= ChildControl_DockChanged;
			e.Control.SizeChanged -= ChildControl_SizeChanged;
			e.Control.VisibleChanged -= ChildControl_VisibleChanged;
		}
	}

	protected void MainForm_MdiChildActivate(object sender, EventArgs e)
	{
		Form form = ctrlHost as Form;
		if (form.IsMdiContainer && form.ActiveMdiChild != null)
		{
			form.ActiveMdiChild.TabIndex = 0;
			form.ActiveMdiChild.Focus();
		}
	}

	protected void ChildControl_DockChanged(object sender, EventArgs e)
	{
		AdjustLayoutDockArea();
	}

	protected void ChildControl_SizeChanged(object sender, EventArgs e)
	{
		if (sender is Control { Dock: not DockStyle.None })
		{
			AdjustLayoutDockArea();
		}
	}

	protected void ChildControl_VisibleChanged(object sender, EventArgs e)
	{
		if (sender is Control { Dock: not DockStyle.None } control)
		{
			if (control.Disposing && dockingMgr.DesignMode)
			{
				control.Disposed += ctrl_Disposed;
			}
			else
			{
				AdjustLayoutDockArea();
			}
		}
	}

	protected void ctrl_Disposed(object sender, EventArgs e)
	{
		AdjustLayoutDockArea();
		if (sender is Control control)
		{
			control.Disposed -= ctrl_Disposed;
		}
	}

	public override bool IsTargetController(Point ptscreen)
	{
		if (dockingMgr.DesignMode || ctrlHost.Parent != null)
		{
			if (!ctrlHost.Parent.RectangleToScreen(ctrlHost.Bounds).Contains(ptscreen))
			{
				return false;
			}
			return true;
		}
		if (!ctrlHost.Bounds.Contains(ptscreen))
		{
			return false;
		}
		return true;
	}

	public DockControllerBase GetBorderController(DockingStyle border)
	{
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild.DICurrent.dStyle == border)
			{
				return alChild;
			}
		}
		return null;
	}

	public AHTabControl GetAHTabControl(DockingStyle border)
	{
		return border switch
		{
			DockingStyle.Left => ahTabCtrlL, 
			DockingStyle.Top => ahTabCtrlT, 
			DockingStyle.Right => ahTabCtrlR, 
			DockingStyle.Bottom => ahTabCtrlB, 
			_ => null, 
		};
	}

	protected internal override DockControllerBase QueryController(string uniqueName)
	{
		DockControllerBase dockControllerBase = null;
		foreach (DockControllerBase dockAreaController in base.DockingManager.DockAreaControllers)
		{
			if (dockAreaController is DockHostController)
			{
				dockControllerBase = dockAreaController.QueryController(uniqueName);
				if (dockControllerBase != null)
				{
					break;
				}
			}
		}
		return dockControllerBase;
	}

	public DockInfo GetDockInfoForController(DockControllerBase dctarget)
	{
		DockInfo nullInfo = DockInfo.NullInfo;
		foreach (DockControllerBase alChild in alChildren)
		{
			if (RecGetControllerInfo(alChild, dctarget))
			{
				nullInfo.dController = this;
				nullInfo.dStyle = alChild.DICurrent.dStyle;
				nullInfo.nPriority = alChildren.IndexOf(alChild);
				nullInfo.nDockIndex = alChild.DICurrent.nDockIndex;
				nullInfo.DP = alChild.DICurrent.DP;
				if (!dockingMgr.DockToFill)
				{
					nullInfo.rcDockArea = alChild.LayoutRect;
				}
				else
				{
					nullInfo.rcDockArea = dctarget.LayoutRect;
				}
				return nullInfo;
			}
		}
		foreach (DockControllerBase dockAreaController in base.DockingManager.DockAreaControllers)
		{
			if (dockAreaController == dctarget)
			{
				nullInfo.dController = this;
				nullInfo.dStyle = dctarget.DICurrent.dStyle;
				nullInfo.nPriority = 0;
				nullInfo.nDockIndex = dctarget.DICurrent.nDockIndex;
				nullInfo.DP = dctarget.DICurrent.DP;
				nullInfo.rcDockArea = dctarget.LayoutRect;
				return nullInfo;
			}
		}
		return nullInfo;
	}

	protected bool RecGetControllerInfo(DockControllerBase dc, DockControllerBase target)
	{
		if (dc == target)
		{
			return true;
		}
		if (dc.ChildCount <= 0)
		{
			if (dc.Equals(target))
			{
				return true;
			}
			return false;
		}
		for (int i = 0; i < dc.ChildCount; i++)
		{
			if (RecGetControllerInfo(dc.GetChildAt(i), target))
			{
				return true;
			}
		}
		return false;
	}

	public override void InvokeDocking(DockControllerBase dc)
	{
		DockStateControllerBase ctrl = dc as DockStateControllerBase;
		if (dockingMgr.DockToFill && ChildCount > 0)
		{
			dockingMgr.DockToNewSizingControllerFillMode(ctrl);
		}
		else
		{
			dockingMgr.DockToFormController(ctrl);
		}
		if (dc.DockingManager != dockingMgr)
		{
			dockingMgr.ImportControl(dc);
		}
	}

	public override bool AttemptDCRDocking(DockControllerBase ctrl, IEnumerator iedcr)
	{
		DockHostController dockHostController = ctrl as DockHostController;
		foreach (DockControllerBase alChild in alChildren)
		{
			if (alChild.AttemptDCRDocking(dockHostController, iedcr))
			{
				return true;
			}
		}
		if (dockingMgr.DockToFill && ChildCount > 0)
		{
			if (dockHostController.DINew.dStyle == DockingStyle.Left || dockHostController.DINew.dStyle == DockingStyle.Right)
			{
				if ((double)dockHostController.DINew.rcDockArea.Width > (double)rcLayout.Width * 0.5)
				{
					dockHostController.DINew.rcDockArea.Width = (int)((double)rcLayout.Width * 0.5);
				}
			}
			else if ((dockHostController.DINew.dStyle == DockingStyle.Top || dockHostController.DINew.dStyle == DockingStyle.Bottom) && (double)dockHostController.DINew.rcDockArea.Height > (double)rcLayout.Height * 0.5)
			{
				dockHostController.DINew.rcDockArea.Height = (int)((double)rcLayout.Height * 0.5);
			}
			dockingMgr.DockToNewSizingControllerFillMode(dockHostController);
		}
		else
		{
			dockingMgr.DockToFormController(dockHostController);
		}
		return true;
	}

	public override void InvokeDCRDocking(DockControllerBase dc, DCRelationship dcr)
	{
		DockHostController ctrl = dc as DockHostController;
		if (dockingMgr.DockToFill && ChildCount > 0)
		{
			dockingMgr.DockToNewSizingControllerFillMode(ctrl);
		}
		else
		{
			dockingMgr.DockToFormController(ctrl);
		}
	}

	public override void AddChild(DockControllerBase dc, DockingStyle db)
	{
		InsertChild(dc, alChildren.Count, db);
	}

	public override void InsertChild(DockControllerBase dc, int index, DockingStyle db)
	{
		if (index > alChildren.Count)
		{
			index = alChildren.Count;
		}
		if (!alChildren.Contains(dc))
		{
			alChildren.Insert(index, dc);
		}
		DockPreference dp = ((db == DockingStyle.Left || db == DockingStyle.Right) ? DockPreference.Horizontal : DockPreference.Vertical);
		dc.DICurrent = new DockInfo(this, db, 0, 0, dp, Rectangle.Empty);
		dc.DICurrent.nPriority = alChildren.IndexOf(dc);
		dc.ParentController = this;
		UpdatePriorityIndices();
	}

	public override void RemoveChild(DockControllerBase dc)
	{
		try
		{
			alChildren.Remove(dc);
		}
		catch (ArgumentException)
		{
			return;
		}
		dc.ParentController = null;
		UpdatePriorityIndices();
	}

	public override DockControllerBase GetChildAt(int index)
	{
		return alChildren[index] as DockControllerBase;
	}

	public override int GetChildHostIndex(DockControllerBase child)
	{
		int num = -1;
		if (!alChildren.Contains(child))
		{
			return num;
		}
		foreach (DockControllerBase alChild in alChildren)
		{
			if (!(alChild is DragSplitterController))
			{
				num++;
			}
			if (alChild.Equals(child))
			{
				break;
			}
		}
		return num;
	}

	public override void GetDockInfo(Control ctrl, Point pt, DockInfo di)
	{
		Point pt2 = HostControl.PointToClient(pt);
		Rectangle[] rc = new Rectangle[4];
		Rectangle[] borders = new Rectangle[4];
		Rectangle layoutRect = LayoutRect;
		int autoHideTabHeight = dockingMgr.AutoHideTabHeight;
		if (ahTabCtrlL.TabCount > 0)
		{
			ref Rectangle reference = ref borders[0];
			reference = ahTabCtrlL.Bounds;
			layoutRect.X += autoHideTabHeight;
			layoutRect.Width -= autoHideTabHeight;
		}
		if (ahTabCtrlT.TabCount > 0)
		{
			ref Rectangle reference2 = ref borders[1];
			reference2 = ahTabCtrlT.Bounds;
			layoutRect.Y += autoHideTabHeight;
			layoutRect.Height -= autoHideTabHeight;
		}
		if (ahTabCtrlR.TabCount > 0)
		{
			ref Rectangle reference3 = ref borders[2];
			reference3 = ahTabCtrlR.Bounds;
			layoutRect.Width -= autoHideTabHeight;
		}
		if (ahTabCtrlB.TabCount > 0)
		{
			ref Rectangle reference4 = ref borders[3];
			reference4 = ahTabCtrlB.Bounds;
			layoutRect.Height -= autoHideTabHeight;
		}
		if (dockingMgr.DockToFill && alChildren.Count > 0)
		{
			bool flag = true;
			DockControllerBase dockControllerBase = alChildren[0] as DockControllerBase;
			if (dockControllerBase.ChildCount == 1)
			{
				DockControllerBase childAt = dockControllerBase.GetChildAt(0);
				if (childAt is DockTabController)
				{
					DockTabController dockTabController = childAt as DockTabController;
					if (dockTabController.HostControl == ctrl)
					{
						foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
						{
							if (tabPage.dhcClient.HostControl == ctrl)
							{
								di.dController = null;
								return;
							}
						}
						flag = false;
					}
				}
			}
			if (flag)
			{
				di.dController = null;
				return;
			}
		}
		ComputeLRTBBorders(Rectangle.Inflate(LayoutRect, 10, 10), 10, ref rc);
		HitTestBorderRect(layoutRect, ref rc, pt2, di);
		if (di.dController != null)
		{
			di.nPriority = 0;
			return;
		}
		if (dockingMgr.DockToFill && alChildren.Count > 0)
		{
			di.dController = null;
			return;
		}
		HitTestBorderRect(layoutRect, ref borders, pt2, di);
		if (di.dController != null)
		{
			di.nPriority = 0;
			return;
		}
		int num = ((rcClientPool.Left == LayoutRect.Left) ? (LayoutRect.Left + nDockBoundary) : rcClientPool.Left);
		int num2 = ((rcClientPool.Top == LayoutRect.Top) ? (LayoutRect.Top + nDockBoundary) : rcClientPool.Top);
		int num3 = ((rcClientPool.Right == LayoutRect.Right) ? (LayoutRect.Right - nDockBoundary) : rcClientPool.Right);
		int num4 = ((rcClientPool.Bottom == LayoutRect.Bottom) ? (LayoutRect.Bottom - nDockBoundary) : rcClientPool.Bottom);
		new Rectangle(num, num2, num3 - num, num4 - num2);
		ComputeLRTBBorders(rcClientPool, nDockBoundary, ref rc);
		HitTestBorderRect(rcClientPool, ref rc, pt2, di);
		if (di.dController != null)
		{
			di.nPriority = -1;
		}
	}

	public override bool QueryDropProceedWithDock(Control ctrldrop, DockingStyle style)
	{
		DockAllowEventArgs e = new DockAllowEventArgs(ctrldrop.Controls[0], ctrlHost, style);
		dockingMgr.FireDockAllowEvent(e);
		return !e.Cancel;
	}

	public override void AdjustLayout()
	{
		ctrlHost.Layout -= HostControl_Layout;
		if (dockingMgr.IsLayoutSuspended || dockingMgr.bWaitOnLayoutEvent)
		{
			return;
		}
		if (!ctrlHost.Visible)
		{
			bOverlapSizing = false;
		}
		else
		{
			bOverlapSizing = true;
		}
		Rectangle rect = rcClientPool;
		rcClientPool = LayoutRect;
		int autoHideTabHeight = dockingMgr.AutoHideTabHeight;
		if (!ahTabCtrlL.IsDisposed && ahTabCtrlL.TabPages.Count > 0 && ahTabCtrlL.Width >= 0)
		{
			ahTabCtrlL.LeadSpace = false;
			if (ahTabCtrlT.TabCount > 0)
			{
				ahTabCtrlL.LeadSpace = true;
				if (ahTabCtrlL.EmptyLeft < autoHideTabHeight)
				{
					ahTabCtrlL.AddToEmptyLeft(autoHideTabHeight);
				}
				ahTabCtrlL.OnTabPanelBoundsAffected();
			}
			else if (ahTabCtrlL.EmptyLeft > autoHideTabHeight)
			{
				ahTabCtrlL.AddToEmptyLeft(-autoHideTabHeight);
				ahTabCtrlL.OnTabPanelBoundsAffected();
			}
			if (ahTabCtrlB.TabPages.Count > 0)
			{
				ahTabCtrlL.TrailSpace = true;
			}
			else
			{
				ahTabCtrlL.TrailSpace = false;
			}
			Rectangle bounds = new Rectangle(rcClientPool.Left, rcClientPool.Top, autoHideTabHeight, rcClientPool.Height);
			ahTabCtrlL.Bounds = bounds;
			rcClientPool.X += bounds.Width;
			rcClientPool.Width -= bounds.Width;
		}
		if (!ahTabCtrlT.IsDisposed && ahTabCtrlT.TabPages.Count > 0 && ahTabCtrlT.Height >= 0)
		{
			ahTabCtrlT.LeadSpace = false;
			if (ahTabCtrlR.TabPages.Count > 0)
			{
				ahTabCtrlT.TrailSpace = true;
			}
			else
			{
				ahTabCtrlT.TrailSpace = false;
			}
			Rectangle bounds2 = new Rectangle(rcClientPool.Left, rcClientPool.Top, rcClientPool.Width, autoHideTabHeight);
			ahTabCtrlT.Bounds = bounds2;
			rcClientPool.Y += bounds2.Height;
			rcClientPool.Height -= bounds2.Height;
		}
		if (!ahTabCtrlR.IsDisposed && ahTabCtrlR.TabPages.Count > 0 && ahTabCtrlR.Width >= 0)
		{
			ahTabCtrlR.LeadSpace = false;
			ahTabCtrlR.TrailSpace = false;
			Rectangle bounds3 = new Rectangle(rcClientPool.Right - autoHideTabHeight, rcClientPool.Top, autoHideTabHeight, (ahTabCtrlB.TabPages.Count > 0) ? (rcClientPool.Height - autoHideTabHeight) : rcClientPool.Height);
			ahTabCtrlR.Bounds = bounds3;
			rcClientPool.Width -= bounds3.Width;
		}
		if (!ahTabCtrlB.IsDisposed && ahTabCtrlB.TabPages.Count > 0 && ahTabCtrlB.Height >= 0)
		{
			ahTabCtrlB.LeadSpace = false;
			int num = 0;
			if (ahTabCtrlR.TabPages.Count > 0)
			{
				ahTabCtrlB.TrailSpace = true;
				num = autoHideTabHeight;
			}
			else
			{
				ahTabCtrlB.TrailSpace = false;
			}
			Rectangle bounds4 = new Rectangle(rcClientPool.Left, rcClientPool.Bottom - autoHideTabHeight, rcClientPool.Width + num, autoHideTabHeight);
			ahTabCtrlB.Bounds = bounds4;
			rcClientPool.Height -= bounds4.Height;
		}
		if (!dockingMgr.DockToFill)
		{
			DockControllerBase dockControllerBase = null;
			for (int i = 0; i < alChildren.Count; i++)
			{
				if (!(alChildren[i] is DockControllerBase { LayoutRect: { Width: var num2 }, LayoutRect: { Height: var num3 } } dockControllerBase2))
				{
					continue;
				}
				switch (dockControllerBase2.DICurrent.dStyle)
				{
				case DockingStyle.Left:
					if (bOverlapSizing && num2 > rcClientPool.Width - 5)
					{
						num2 = rcClientPool.Width - 5;
					}
					if (num2 > 10 || (dockControllerBase2 as SizingController).IsEmpty)
					{
						dockControllerBase2.LayoutRect = new Rectangle(rcClientPool.Left, rcClientPool.Top, num2, rcClientPool.Height);
						rcClientPool.X += dockControllerBase2.LayoutRect.Width;
						rcClientPool.Width -= dockControllerBase2.LayoutRect.Width;
					}
					break;
				case DockingStyle.Top:
					if (bOverlapSizing && num3 > rcClientPool.Height - 5)
					{
						num3 = rcClientPool.Height - 5;
					}
					if (num3 > 10 || (dockControllerBase2 as SizingController).IsEmpty)
					{
						dockControllerBase2.LayoutRect = new Rectangle(rcClientPool.Left, rcClientPool.Top, rcClientPool.Width, num3);
						rcClientPool.Y += dockControllerBase2.LayoutRect.Height;
						rcClientPool.Height -= dockControllerBase2.LayoutRect.Height;
					}
					break;
				case DockingStyle.Right:
					if (bOverlapSizing && num2 > rcClientPool.Width - 5)
					{
						num2 = rcClientPool.Width - 5;
					}
					if (num2 > 10 || (dockControllerBase2 as SizingController).IsEmpty)
					{
						dockControllerBase2.LayoutRect = new Rectangle(rcClientPool.Right - num2, rcClientPool.Top, num2, rcClientPool.Height);
						rcClientPool.Width -= dockControllerBase2.LayoutRect.Width;
					}
					break;
				case DockingStyle.Bottom:
					if (bOverlapSizing && num3 > rcClientPool.Height - 5)
					{
						num3 = rcClientPool.Height - 5;
					}
					if (num3 > 10 || (dockControllerBase2 as SizingController).IsEmpty)
					{
						dockControllerBase2.LayoutRect = new Rectangle(rcClientPool.Left, rcClientPool.Bottom - num3, rcClientPool.Width, num3);
						rcClientPool.Height -= dockControllerBase2.LayoutRect.Height;
					}
					break;
				}
			}
		}
		else
		{
			foreach (DockControllerBase alChild in alChildren)
			{
				alChild.LayoutRect = rcClientPool;
			}
		}
		if (rcClientPool.Width > rect.Width || rcClientPool.Height > rect.Height)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT rcdest = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(0, 0, 0, 0);
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT rc = Syncfusion.Runtime.InteropServices.NativeMethods.RECT.FromXYWH(rcClientPool.X, rcClientPool.Y, rcClientPool.Width, rcClientPool.Height);
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT rc2 = Syncfusion.Runtime.InteropServices.NativeMethods.RECT.FromXYWH(rect.X, rect.Y, rect.Width, rect.Height);
			if (Syncfusion.Runtime.InteropServices.NativeMethods.SubtractRect(ref rcdest, ref rc, ref rc2))
			{
				Rectangle rc3 = new Rectangle(rcdest.left, rcdest.top, rcdest.right - rcdest.left, rcdest.bottom - rcdest.top);
				rc3.Inflate(1, 1);
				ctrlHost.Invalidate(rc3);
			}
		}
		else if (ctrlFormClient == null)
		{
			if (ctrlHost.Visible && ctrlHost.IsHandleCreated)
			{
				Graphics graphics = ctrlHost.CreateGraphics();
				Region region = new Region(rect);
				region.Exclude(Rectangle.Inflate(rect, -2, -2));
				ctrlHost.Invalidate(region, invalidateChildren: false);
				DrawDockEdgeBorders(graphics);
				graphics.Dispose();
			}
			else
			{
				Region region2 = new Region(rect);
				region2.Exclude(Rectangle.Inflate(rect, -2, -2));
				ctrlHost.Invalidate(region2, invalidateChildren: false);
			}
		}
		bool flag = false;
		if (ctrlFormClient != null)
		{
			if (ctrlFormClient is DockingClientPanel && !((DockingClientPanel)ctrlFormClient).SizeToFit)
			{
				return;
			}
			if (ctrlFormClient.Size != rcClientPool.Size || ctrlFormClient.Location != rcClientPool.Location)
			{
				bool[] array = null;
				if (HostControl is Form && (HostControl as Form).IsMdiContainer)
				{
					array = new bool[(HostControl as Form).MdiChildren.Length];
					int num4 = 0;
					Form[] mdiChildren = (HostControl as Form).MdiChildren;
					foreach (Form form in mdiChildren)
					{
						array[num4++] = form.Visible;
						if (form.WindowState == FormWindowState.Minimized && !form.Visible)
						{
							flag = true;
						}
					}
				}
				if (flag)
				{
					Control mdiClient = base.DockingManager.GetMdiClient();
					if (mdiClient != null)
					{
						NativeMethodsHelper.SuspendRedrawWindow(mdiClient.Handle);
					}
				}
				ctrlFormClient.Anchor = AnchorStyles.None;
				ctrlFormClient.Bounds = rcClientPool;
				ctrlFormClient.Anchor = AnchorStyles.Top | AnchorStyles.Left;
				if (flag)
				{
					flag = false;
					if (HostControl is Form && (HostControl as Form).IsMdiContainer)
					{
						int num5 = 0;
						Form[] mdiChildren2 = (HostControl as Form).MdiChildren;
						foreach (Form form2 in mdiChildren2)
						{
							if (form2.WindowState == FormWindowState.Minimized && form2.Visible != array[num5])
							{
								form2.Visible = array[num5++];
							}
							else
							{
								num5++;
							}
						}
						Control mdiClient2 = base.DockingManager.GetMdiClient();
						if (mdiClient2 != null)
						{
							NativeMethodsHelper.ResumeRedrawWindow(mdiClient2.Handle, bRedraw: true);
						}
					}
				}
			}
		}
		ctrlHost.Layout += HostControl_Layout;
	}

	public virtual void AdjustLayoutDockArea()
	{
		if (dockingMgr == null)
		{
			return;
		}
		if (dockingMgr.DesignMode)
		{
			ArrayList dockAreaControllers = dockingMgr.DockAreaControllers;
			foreach (DockControllerBase item in dockAreaControllers)
			{
				if ((item is DragSplitterController || item is DockHostController || item is DockTabController) && item.HostControl != null && item.HostControl.Parent == null && (!(item is DockHostController) || item.HostControl.Controls.Count != 0))
				{
					return;
				}
			}
		}
		Form form = ctrlHost.FindForm();
		if (form != null)
		{
			if (form.IsMdiChild)
			{
				if ((form.WindowState == FormWindowState.Minimized && form.MdiParent.ActiveControl == form) || form.MdiParent.WindowState == FormWindowState.Minimized)
				{
					HideAllFloatingForms();
				}
				else if (alVisibleFloatingForms.Count > 0 && form.Visible)
				{
					ShowAllFloatingForms();
				}
			}
			if (form.WindowState == FormWindowState.Minimized || (form.IsMdiChild && form.MdiParent.WindowState == FormWindowState.Minimized))
			{
				return;
			}
		}
		Rectangle layoutRect = ctrlHost.DisplayRectangle;
		foreach (Control control in ctrlHost.Controls)
		{
			if (!ctrlHost.Visible || control.Visible)
			{
				switch (control.Dock)
				{
				case DockStyle.Left:
					layoutRect = new Rectangle(layoutRect.Left + control.Bounds.Width, layoutRect.Top, layoutRect.Width - control.Bounds.Width, layoutRect.Height);
					break;
				case DockStyle.Top:
					layoutRect = new Rectangle(layoutRect.Left, layoutRect.Top + control.Bounds.Height, layoutRect.Width, layoutRect.Height - control.Bounds.Height);
					break;
				case DockStyle.Right:
					layoutRect = new Rectangle(layoutRect.Left, layoutRect.Top, layoutRect.Width - control.Bounds.Width, layoutRect.Height);
					break;
				case DockStyle.Bottom:
					layoutRect = new Rectangle(layoutRect.Left, layoutRect.Top, layoutRect.Width, layoutRect.Height - control.Bounds.Height);
					break;
				}
			}
		}
		LayoutRect = layoutRect;
	}

	protected internal void HideAllFloatingForms()
	{
		HideAllFloatingForms(fireVisibilityChange: false);
	}

	protected internal void HideAllFloatingForms(bool fireVisibilityChange)
	{
		for (int i = 0; i < dockingMgr.alEnableDocking.Count; i++)
		{
			if (dockingMgr.alEnableDocking[i] is Control { Parent: DockHost { Parent: FloatingForm parent2 } })
			{
				alVisibleFloatingForms.Add(parent2);
				base.DockingManager.bFiredVisibilityChangedEvent = fireVisibilityChange;
				base.DockingManager.bFiredVisibilityChangingEvent = fireVisibilityChange;
				parent2.Disable();
				base.DockingManager.bFiredVisibilityChangingEvent = base.DockingManager.HoldEvents;
				base.DockingManager.bFiredVisibilityChangedEvent = base.DockingManager.HoldEvents;
			}
		}
	}

	protected internal void ShowAllFloatingForms()
	{
		ShowAllFloatingForms(fireVisibilityChange: false);
	}

	protected internal void ShowAllFloatingForms(bool fireVisibilityChange)
	{
		for (int i = 0; i < alVisibleFloatingForms.Count; i++)
		{
			if (alVisibleFloatingForms[i] is FloatingForm floatingForm)
			{
				base.DockingManager.bFiredVisibilityChangedEvent = fireVisibilityChange;
				base.DockingManager.bFiredVisibilityChangingEvent = fireVisibilityChange;
				floatingForm.Enable();
				base.DockingManager.bFiredVisibilityChangingEvent = base.DockingManager.HoldEvents;
				base.DockingManager.bFiredVisibilityChangedEvent = base.DockingManager.HoldEvents;
			}
		}
		alVisibleFloatingForms.Clear();
	}

	public override void Refresh()
	{
		AdjustLayout();
	}

	protected internal DockingStyle GetControllerBorder(DockControllerBase dctarget)
	{
		if (base.DockingManager.DockToFill)
		{
			DockStateControllerBase dockStateControllerBase = dctarget as DockStateControllerBase;
			DockingStyle dockingStyle = dockStateControllerBase.DockEdge;
			if (dockingStyle == DockingStyle.Fill || dockingStyle == DockingStyle.Tabbed)
			{
				dockingStyle = dockStateControllerBase.DINew.dStyle;
			}
			if (dockingStyle == DockingStyle.Fill)
			{
				switch (dockStateControllerBase.DICurrent.DP)
				{
				case DockPreference.Horizontal:
					dockingStyle = ((dockStateControllerBase.DICurrent.nDockIndex != 0) ? DockingStyle.Right : DockingStyle.Left);
					break;
				case DockPreference.Vertical:
					dockingStyle = ((dockStateControllerBase.DICurrent.nDockIndex != 0) ? DockingStyle.Bottom : DockingStyle.Top);
					break;
				}
			}
			return dockingStyle;
		}
		_ = DockInfo.NullInfo;
		foreach (DockControllerBase alChild in alChildren)
		{
			if (RecIsChildOfController(alChild, dctarget))
			{
				return alChild.DICurrent.dStyle;
			}
		}
		if (dctarget.DICurrent.dStyle != DockingStyle.Fill)
		{
			return dctarget.DICurrent.dStyle;
		}
		if (dctarget is DockHostController dockHostController)
		{
			return dockHostController.DINew.dStyle;
		}
		throw new ApplicationException("Can not obtain controller''s style.");
	}

	protected bool RecIsChildOfController(DockControllerBase dc, DockControllerBase target)
	{
		IEnumerator enumerator = dc.ChildHostEnumerator;
		if (dc is DockTabController && target is DockTabController && dc.Equals(target))
		{
			return dc.Equals(target);
		}
		if (dc is DockTabController)
		{
			enumerator = dc.ChildControllers.GetEnumerator();
		}
		if (enumerator == null)
		{
			return dc.Equals(target);
		}
		while (enumerator.MoveNext())
		{
			if (RecIsChildOfController(enumerator.Current as DockControllerBase, target))
			{
				return true;
			}
		}
		return false;
	}

	public void OnAHSplitterPaint(object obj, PaintEventArgs e)
	{
		if (obj is DragSplitter dragSplitter)
		{
			Graphics graphics = dragSplitter.CreateGraphics();
			switch (dragSplitter.InternalController.DICurrent.dStyle)
			{
			case DockingStyle.Left:
				ControlPaint.DrawBorder3D(graphics, dragSplitter.ClientRectangle, Border3DStyle.Raised, Border3DSide.Right);
				break;
			case DockingStyle.Top:
				ControlPaint.DrawBorder3D(graphics, dragSplitter.ClientRectangle, Border3DStyle.Raised, Border3DSide.Bottom);
				break;
			case DockingStyle.Right:
				ControlPaint.DrawBorder3D(graphics, dragSplitter.ClientRectangle, Border3DStyle.Raised, Border3DSide.Left);
				break;
			case DockingStyle.Bottom:
				ControlPaint.DrawBorder3D(graphics, dragSplitter.ClientRectangle, Border3DStyle.Raised, Border3DSide.Top);
				break;
			}
			graphics.Dispose();
		}
	}

	public void EnterAutoHideMode(DockStateControllerBase ddcbase, bool animate)
	{
		dockingMgr.LockHostFormUpdate();
		bool forbidFreeze = dockingMgr.ForbidFreeze;
		dockingMgr.ForbidFreeze = true;
		DockingStyle controllerBorder = GetControllerBorder(ddcbase);
		if (ddcbase is DockTabController dockTabController && base.DockingManager.DockToFill)
		{
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				tabPage.dhcClient.DockEdge = controllerBorder;
			}
		}
		Rectangle layoutRect = ddcbase.LayoutRect;
		if (dockingMgr.DockToFill)
		{
			if (controllerBorder == DockingStyle.Top || controllerBorder == DockingStyle.Bottom)
			{
				int num = rcLayout.Height;
				if (ahTabCtrlT.Visible)
				{
					num += dockingMgr.AutoHideTabHeight;
				}
				if (ahTabCtrlB.Visible)
				{
					num += dockingMgr.AutoHideTabHeight;
				}
				if ((double)layoutRect.Height > (double)num * 0.5)
				{
					layoutRect.Height = (int)((double)num * 0.5);
				}
			}
			else
			{
				int num2 = rcLayout.Width;
				if (ahTabCtrlL.Visible)
				{
					num2 += dockingMgr.AutoHideTabHeight;
				}
				if (ahTabCtrlR.Visible)
				{
					num2 += dockingMgr.AutoHideTabHeight;
				}
				if ((double)layoutRect.Width > (double)num2 * 0.5)
				{
					layoutRect.Width = (int)((double)num2 * 0.5);
				}
			}
		}
		Rectangle rcDockArea = Rectangle.Empty;
		if (animate)
		{
			ddcbase.DINew = new DockInfo(null, controllerBorder, -1, -1, DockPreference.All, layoutRect);
			dockingMgr.UndockFromController(ddcbase);
			rcDockArea = ((!(ddcbase.DITransient.rcDockArea.Size == Size.Empty)) ? ddcbase.DITransient.rcDockArea : layoutRect);
		}
		ctrlHost.Controls.Add(ddcbase.HostControl);
		DockPreference dp = ((controllerBorder == DockingStyle.Left || controllerBorder == DockingStyle.Right) ? DockPreference.Horizontal : DockPreference.Vertical);
		SizingController sizingController = new SizingController(dockingMgr, HostControl, dp);
		sizingController.DICurrent = new DockInfo(this, controllerBorder, -1, -1, dp, Rectangle.Empty);
		sizingController.ParentController = this;
		sizingController.AddChild(ddcbase, controllerBorder);
		DockControllerBase childAt = sizingController.GetChildAt(1);
		childAt.HostControl.Paint += OnAHSplitterPaint;
		GetAHTabControl(controllerBorder).AddTab(ddcbase, bshowcontrol: true);
		if (animate)
		{
			ddcbase.DITransient.rcDockArea = rcDockArea;
			ctrlHost.Focus();
		}
		if (dockingMgr.DockToFill)
		{
			AdjustLayoutDockArea();
		}
		dockingMgr.ForbidFreeze = forbidFreeze;
		dockingMgr.UnlockHostFormUpdate();
	}

	public void LoadInAutoHideMode(DockStateControllerBase ddcbase)
	{
		DockingStyle dStyle = ddcbase.DICurrent.dStyle;
		Rectangle rcDockArea = ddcbase.DICurrent.rcDockArea;
		ddcbase.DINew = new DockInfo(null, dStyle, -1, -1, DockPreference.All, rcDockArea);
		Rectangle rcDockArea2 = ddcbase.DITransient.rcDockArea;
		ctrlHost.Controls.Add(ddcbase.HostControl);
		DockPreference dp = ((dStyle == DockingStyle.Left || dStyle == DockingStyle.Right) ? DockPreference.Horizontal : DockPreference.Vertical);
		SizingController sizingController = new SizingController(dockingMgr, HostControl, dp);
		sizingController.DICurrent = new DockInfo(this, dStyle, -1, -1, dp, Rectangle.Empty);
		sizingController.ParentController = this;
		sizingController.AddChild(ddcbase, dStyle);
		DockControllerBase childAt = sizingController.GetChildAt(1);
		childAt.HostControl.Paint += OnAHSplitterPaint;
		GetAHTabControl(dStyle).AddTab(ddcbase, bshowcontrol: false);
		ddcbase.DITransient.rcDockArea = rcDockArea2;
		ddcbase.HostControl.Visible = false;
		if (dockingMgr.DockToFill)
		{
			AdjustLayoutDockArea();
		}
	}

	private void UpdatePreviousAutoHideIndex(DockStateControllerBase ddcbase)
	{
		int num = ddcbase.AutoHideIndex;
		foreach (DockControllerBase alDockAreaController in ddcbase.DockingManager.alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController && !(alDockAreaController as DockStateControllerBase).Equals(ddcbase))
			{
				int previousAutoHideIndex = (alDockAreaController as DockStateControllerBase).PreviousAutoHideIndex;
				if (previousAutoHideIndex != -1 && previousAutoHideIndex == num)
				{
					num++;
				}
			}
		}
		ddcbase.PreviousAutoHideIndex = num;
	}

	public void ExitAutoHideMode(DockStateControllerBase ddcbase, bool bcloseonexit)
	{
		dockingMgr.LockHostFormUpdate();
		DockingStyle controllerBorder = GetControllerBorder(ddcbase);
		AHTabControl aHTabControl = GetAHTabControl(controllerBorder);
		UpdatePreviousAutoHideIndex(ddcbase);
		aHTabControl.RemoveTab(ddcbase);
		if (ddcbase.ParentController is SizingController)
		{
			DockControllerBase childAt = ddcbase.ParentController.GetChildAt(1);
			childAt.HostControl.Paint -= OnAHSplitterPaint;
			_ = ddcbase.ParentController;
			ddcbase.ParentController.RemoveChild(ddcbase);
			ddcbase.LayoutRect = ddcbase.DINew.rcDockArea;
			DockingStyle dStyle = ddcbase.DINew.dStyle;
			Minimization minimization = Minimization.None;
			if (ddcbase.InternalDockWrapper != null)
			{
				minimization = ddcbase.InternalDockWrapper.Minimized;
				ddcbase.InternalDockWrapper.ControlSize = Size.Empty;
			}
			if (ddcbase is DockHostController)
			{
				(ddcbase as DockHostController).TransitToPrevDock();
			}
			else
			{
				DockTabController dockTabController = ddcbase as DockTabController;
				dockTabController.TransitToPrevDock();
				if (minimization != Minimization.None && dockTabController.HostController != null)
				{
					dockTabController.Minimized = minimization;
					dockTabController.TabControl.Visible = false;
				}
			}
			ddcbase.DINew.dStyle = dStyle;
		}
		else if (!bcloseonexit)
		{
			if (ddcbase is DockTabController)
			{
				DockTabController dockTabController2 = ddcbase as DockTabController;
				DockHostController selectedController = dockTabController2.SelectedController;
				dockTabController2.HostController = null;
				dockTabController2.PauseActivation = true;
				DockTabPage dockTabPage = dockTabController2.TabControl.TabPages[0] as DockTabPage;
				_ = dockTabPage.dhcClient;
				if (ddcbase.InternalDockWrapper != null)
				{
					_ = ddcbase.InternalDockWrapper.ParentController;
					ddcbase.InternalDockWrapper.ParentController.ReplaceChild(ddcbase.InternalDockWrapper, ddcbase);
				}
				else
				{
					foreach (DockTabPage tabPage in dockTabController2.TabControl.TabPages)
					{
						tabPage.dhcClient.DockTab = null;
						tabPage.dhcClient.DINew = new DockInfo(ddcbase.DITransient);
						if (!dockingMgr.DockToFill)
						{
							if (!tabPage.dhcClient.DINew.dController.AttemptDCRDocking(tabPage.dhcClient, tabPage.dhcClient.DCR))
							{
								if (tabPage.dhcClient.DINew.dController is SizingController)
								{
									dockingMgr.DockToSizingController(tabPage.dhcClient);
								}
								else
								{
									tabPage.dhcClient.DINew.dController = this;
									tabPage.dhcClient.DINew.nPriority = 0;
									tabPage.dhcClient.DINew.nDockIndex = 0;
									if (tabPage.dhcClient.DINew.dStyle == DockingStyle.Left || tabPage.dhcClient.DINew.dStyle == DockingStyle.Right)
									{
										tabPage.dhcClient.DINew.DP = DockPreference.Horizontal;
									}
									else if (tabPage.dhcClient.DINew.dStyle == DockingStyle.Top || tabPage.dhcClient.DINew.dStyle == DockingStyle.Bottom)
									{
										tabPage.dhcClient.DINew.DP = DockPreference.Vertical;
									}
									dockingMgr.DockToFormController(tabPage.dhcClient);
								}
							}
						}
						else if (!tabPage.dhcClient.DINew.dController.AttemptDCRDocking(tabPage.dhcClient, tabPage.dhcClient.DCR))
						{
							tabPage.dhcClient.DINew.dController = this;
							dockingMgr.DockToFormController(tabPage.dhcClient);
						}
						if (!tabPage.dhcClient.HostControl.Visible)
						{
							tabPage.dhcClient.HostControl.Visible = true;
						}
						dockTabController2.TabControl.TabPages.Remove(tabPage);
						if ((dockingMgr.DockToFill || (HostControl is Form && ((Form)HostControl).IsMdiContainer && dockTabController2.TabControl.TabPages.Count > 0)) && !(ddcbase.DITransient.dController is MainFormController))
						{
							ddcbase.DITransient.dController = alChildren[0] as DockControllerBase;
						}
					}
					dockingMgr.UndockFromController(dockTabController2);
					dockTabController2.TabControl.Visible = false;
					dockTabController2.TabControl.Dispose();
				}
				if (selectedController != null && selectedController.ParentController is DockTabController dockTabController3)
				{
					dockTabController3.SelectedController = selectedController;
				}
			}
			else
			{
				DockInfo dockInfo = new DockInfo(ddcbase.DITransient);
				if (dockInfo.rcDockArea == Rectangle.Empty)
				{
					dockInfo.rcDockArea = ddcbase.DINew.rcDockArea;
				}
				ddcbase.DINew = dockInfo;
				if (ddcbase is DockHostController)
				{
					(ddcbase as DockHostController).InternalTransitToPrevState(floating: false);
				}
			}
		}
		dockingMgr.UnlockHostFormUpdate();
		if (dockingMgr.DockToFill)
		{
			AdjustLayoutDockArea();
		}
	}

	protected virtual void HitTestBorderRect(Rectangle rcfull, ref Rectangle[] borders, Point pt, DockInfo di)
	{
		di.dController = this;
		di.nDockIndex = 0;
		int num = 0;
		int num2 = 0;
		if (dockingMgr.DockToFill)
		{
			if (alChildren.Count == 0)
			{
				num = rcfull.Width;
				num2 = rcfull.Height;
			}
			else
			{
				num = rcfull.Width / 2;
				num2 = rcfull.Height / 2;
			}
		}
		else
		{
			num = ((di.rcDockArea.Width < rcfull.Width / 2) ? di.rcDockArea.Width : (rcfull.Width / 2));
			num2 = ((di.rcDockArea.Height < rcfull.Height / 2) ? di.rcDockArea.Height : (rcfull.Height / 2));
			num = ((num < 20) ? 20 : num);
			num2 = ((num2 < 20) ? 20 : num2);
		}
		if (borders[0].Contains(pt))
		{
			if (dockingMgr.DockToFill && dockingMgr.dsDockFillAHBorder != DockingStyle.Fill)
			{
				di.dStyle = dockingMgr.dsDockFillAHBorder;
			}
			else
			{
				di.dStyle = DockingStyle.Left;
			}
			di.rcDockArea = HostControl.RectangleToScreen(new Rectangle(rcfull.Left, rcfull.Top, num, rcfull.Height));
		}
		else if (borders[1].Contains(pt))
		{
			if (dockingMgr.DockToFill && dockingMgr.dsDockFillAHBorder != DockingStyle.Fill)
			{
				di.dStyle = dockingMgr.dsDockFillAHBorder;
			}
			else
			{
				di.dStyle = DockingStyle.Top;
			}
			di.rcDockArea = HostControl.RectangleToScreen(new Rectangle(rcfull.Left, rcfull.Top, rcfull.Width, num2));
		}
		else if (borders[2].Contains(pt))
		{
			if (dockingMgr.DockToFill && dockingMgr.dsDockFillAHBorder != DockingStyle.Fill)
			{
				di.dStyle = dockingMgr.dsDockFillAHBorder;
			}
			else
			{
				di.dStyle = DockingStyle.Right;
			}
			di.rcDockArea = HostControl.RectangleToScreen(new Rectangle(rcfull.Right - num, rcfull.Top, num, rcfull.Height));
		}
		else if (borders[3].Contains(pt))
		{
			if (dockingMgr.DockToFill && dockingMgr.dsDockFillAHBorder != DockingStyle.Fill)
			{
				di.dStyle = dockingMgr.dsDockFillAHBorder;
			}
			else
			{
				di.dStyle = DockingStyle.Bottom;
			}
			di.rcDockArea = HostControl.RectangleToScreen(new Rectangle(rcfull.Left, rcfull.Bottom - num2, rcfull.Width, num2));
		}
		else
		{
			di.dController = null;
		}
		if (di.dController != null)
		{
			if (di.dStyle == DockingStyle.Left || di.dStyle == DockingStyle.Right)
			{
				di.DP = DockPreference.Horizontal;
			}
			else
			{
				di.DP = DockPreference.Vertical;
			}
		}
	}

	protected void UpdatePriorityIndices()
	{
		int num = 0;
		foreach (DockControllerBase alChild in alChildren)
		{
			alChild.DICurrent.nDockIndex = num++;
		}
	}

	protected virtual void DrawDockEdgeBorders(Graphics gph)
	{
		if (!dockingMgr.HostFormClientBorder)
		{
			return;
		}
		Color color = SystemColors.ControlDark;
		if (ctrlHost.BackColor != SystemColors.Control)
		{
			color = ControlPaint.Dark(ctrlHost.BackColor);
		}
		Pen pen = new Pen(color, 1f);
		bool flag = true;
		if (dockingMgr.HostControl is Form && dockingMgr.HostForm != null)
		{
			flag = dockingMgr.HostForm.RightToLeftLayout;
		}
		if (flag && dockingMgr.RightToLeft == RightToLeft.Yes && !(dockingMgr.HostForm is RibbonForm) && (Environment.OSVersion.Version.Major >= 6 || (Environment.OSVersion.Version.Major == 5 && Environment.OSVersion.ServicePack == "Service Pack 2")))
		{
			if (rcClientPool.Left != ctrlHost.DisplayRectangle.Left)
			{
				gph.DrawLine(pen, new Point(rcClientPool.Right - rcClientPool.Left - 1, rcClientPool.Bottom), new Point(rcClientPool.Right - rcClientPool.Left - 1, rcClientPool.Top));
			}
			if (rcClientPool.Right != ctrlHost.DisplayRectangle.Right)
			{
				gph.DrawLine(pen, new Point(ctrlHost.DisplayRectangle.Right - rcClientPool.Right + 1, rcClientPool.Bottom), new Point(ctrlHost.DisplayRectangle.Right - rcClientPool.Right + 1, rcClientPool.Top));
			}
		}
		else
		{
			if (rcClientPool.Left != ctrlHost.DisplayRectangle.Left)
			{
				gph.DrawLine(pen, new Point(rcClientPool.Left, rcClientPool.Bottom), new Point(rcClientPool.Left, rcClientPool.Top));
			}
			if (rcClientPool.Right != ctrlHost.DisplayRectangle.Right)
			{
				gph.DrawLine(pen, new Point(rcClientPool.Right - 1, rcClientPool.Top), new Point(rcClientPool.Right - 1, rcClientPool.Bottom - 1));
			}
		}
		if (rcClientPool.Top != ctrlHost.DisplayRectangle.Top)
		{
			gph.DrawLine(pen, new Point(rcClientPool.Left, rcClientPool.Top), new Point(rcClientPool.Right - 1, rcClientPool.Top));
		}
		if (rcClientPool.Bottom != ctrlHost.DisplayRectangle.Bottom)
		{
			gph.DrawLine(pen, new Point(rcClientPool.Left, rcClientPool.Bottom - 1), new Point(rcClientPool.Right - 1, rcClientPool.Bottom - 1));
		}
		pen.Dispose();
	}

	public bool AllowSplitterSizing(DockControllerBase dcbase, int deltasize)
	{
		if (!alChildren.Contains(dcbase))
		{
			return true;
		}
		int num = alChildren.IndexOf(dcbase);
		if (num + 1 == alChildren.Count)
		{
			return true;
		}
		ArrayList range = alChildren.GetRange(num + 1, alChildren.Count - (num + 1));
		if (dcbase.DICurrent.DP == DockPreference.Horizontal)
		{
			foreach (DockControllerBase item in range)
			{
				if (item.DICurrent.DP != DockPreference.Horizontal && item.MinimumSize.Width != 0 && deltasize < 0 && item.LayoutRect.Width + deltasize < item.MinimumSize.Width)
				{
					return false;
				}
			}
		}
		else
		{
			foreach (DockControllerBase item2 in range)
			{
				if (item2.DICurrent.DP != DockPreference.Vertical && item2.MinimumSize.Height != 0 && deltasize < 0 && item2.LayoutRect.Height + deltasize < item2.MinimumSize.Height)
				{
					return false;
				}
			}
		}
		return true;
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && ctrlHost != null)
		{
			if (m_EventSubscribed)
			{
				ctrlHost.Resize -= HostControl_Resize;
				m_EventSubscribed = false;
			}
			_ = ctrlHost.TopLevelControl;
			if (frmTopLevelSubscribed != null)
			{
				frmTopLevelSubscribed.Resize -= TopLevelControl_Resize;
				frmTopLevelSubscribed = null;
			}
			ctrlHost.VisibleChanged -= HostControl_VisibleChanged;
			ctrlHost.Paint -= HostControl_Paint;
			ctrlHost.ControlAdded -= HostControl_ChildControlAdded;
			ctrlHost.ControlRemoved -= HostControl_ChildControlRemoved;
			ctrlHost.ParentChanged -= HostControl_ParentChanged;
			ctrlHost.Layout -= HostControl_Layout;
			fhCtrl.Dispose();
			fhCtrl = null;
			if (ctrlHost is Form form)
			{
				form.MdiChildActivate -= MainForm_MdiChildActivate;
			}
			foreach (Control control in ctrlHost.Controls)
			{
				if (!(control is DockHost) && !(control is DragSplitter))
				{
					control.DockChanged -= ChildControl_DockChanged;
					control.SizeChanged -= ChildControl_SizeChanged;
					control.VisibleChanged -= ChildControl_VisibleChanged;
				}
			}
			if (!dockingMgr.DesignProcess)
			{
				ctrlHost.Controls.Remove(ahTabCtrlL);
				ctrlHost.Controls.Remove(ahTabCtrlT);
				ctrlHost.Controls.Remove(ahTabCtrlR);
				ctrlHost.Controls.Remove(ahTabCtrlB);
				ctrlHost.Controls.Remove(fhCtrl);
			}
			foreach (DockControllerBase alChild in alChildren)
			{
				alChild.Dispose();
			}
			ahTabCtrlL.Dispose();
			ahTabCtrlL = null;
			ahTabCtrlT.Dispose();
			ahTabCtrlT = null;
			ahTabCtrlR.Dispose();
			ahTabCtrlR = null;
			ahTabCtrlB.Dispose();
			ahTabCtrlB = null;
			alChildren.Clear();
			alChildren = null;
			dcPriority = null;
			ctrlFormClient = null;
			ctrlHost = null;
			dockingMgr = null;
		}
		base.Dispose(bdisposing);
	}

	internal ControllerWrapper GetWrapper()
	{
		MainFormControllerWrapper mainFormControllerWrapper = new MainFormControllerWrapper();
		foreach (DockControllerBase alChild in alChildren)
		{
			alChild.AddWrapper(mainFormControllerWrapper);
		}
		return mainFormControllerWrapper;
	}

	internal override void StoreControllers(ArrayList controllers)
	{
		base.StoreControllers(controllers);
		Array array = alChildren.ToArray(typeof(DockControllerBase));
		foreach (DockControllerBase item in array)
		{
			item.StoreControllers(controllers);
		}
	}

	internal override void ApplyWrapper(ControllerWrapper cw)
	{
		base.ApplyWrapper(cw);
		foreach (ControllerWrapper child in cw.Children)
		{
			if (!(child is DragSplitterControllerWrapper))
			{
				DockControllerBase dockControllerBase = base.DockingManager.LocateController(child);
				if (dockControllerBase != null)
				{
					InsertChild(dockControllerBase, ChildCount, dockControllerBase.DICurrent.dStyle);
					dockControllerBase.ApplyWrapper(child);
				}
			}
		}
	}

	internal override void ResizeControllers(ControllerWrapper cw)
	{
		for (int i = 0; i < ChildCount; i++)
		{
			(alChildren[i] as DockControllerBase).ResizeControllers((ControllerWrapper)cw.Children[i]);
		}
	}

	internal override bool IsFloatOnly()
	{
		return false;
	}

	public override void DockAsMDIChild()
	{
	}

	public override void UpdateControl()
	{
		ahTabCtrlB.UpdateRenderer();
		ahTabCtrlL.UpdateRenderer();
		ahTabCtrlR.UpdateRenderer();
		ahTabCtrlT.UpdateRenderer();
	}
}
