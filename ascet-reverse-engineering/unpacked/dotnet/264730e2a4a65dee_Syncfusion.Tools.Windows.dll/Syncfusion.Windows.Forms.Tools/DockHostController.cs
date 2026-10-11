using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Renderers;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DockHostController : DockStateControllerBase, IResizable
{
	protected const int nMinControlWidth = 25;

	protected const int nMinControlHeight = 45;

	protected DockHost ctrlHost;

	protected ArrayList alDockDCR;

	protected ArrayList alFloatDCR;

	protected ArrayList siblingDCR = new ArrayList();

	protected DockTabControl ctrlDockTab;

	protected internal bool bDockVisible = true;

	protected bool bFloatOnly;

	protected bool bFloating;

	protected bool bHideCaption;

	protected bool bClosing;

	protected bool bAHVisible = true;

	protected bool bCloseVisible = true;

	protected bool bMaxVisible = true;

	protected bool bMenuBtnVisible;

	private bool m_bIsMirrored;

	private string m_UniqueName = "";

	private bool bAHStateOnClose;

	private bool m_bMdiChildState;

	private FormWindowState m_mdiWindowState;

	internal bool bClosingByMouse;

	public bool bInMDIMode;

	public Control ctrlReference;

	protected Size m_storedSize = Size.Empty;

	protected Rectangle m_mdiChildBounds = Rectangle.Empty;

	protected bool m_autoHiddedBeforeHide;

	private Point controlLocation;

	private Size controlSize;

	protected FloatingForm tempForm;

	internal HitTestArea hitArea;

	internal int hitButtonNumber = -1;

	protected internal bool Closing
	{
		get
		{
			return bClosing;
		}
		set
		{
			if (bClosing != value)
			{
				bClosing = value;
			}
		}
	}

	protected internal Point ControlLocation
	{
		get
		{
			return controlLocation;
		}
		set
		{
			if (controlLocation != value)
			{
				controlLocation = value;
			}
		}
	}

	internal Size StoredSize
	{
		get
		{
			return m_storedSize;
		}
		set
		{
			if (m_storedSize != value)
			{
				m_storedSize = value;
			}
		}
	}

	internal bool MdiChildState
	{
		get
		{
			return m_bMdiChildState;
		}
		set
		{
			if (m_bMdiChildState != value)
			{
				m_bMdiChildState = value;
			}
		}
	}

	internal Rectangle MdiChildBounds
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (bInMDIMode || MdiChildState)
			{
				if (DockVisibility)
				{
					if (ctrlReference != null)
					{
						result = ctrlReference.Parent.Bounds;
					}
				}
				else
				{
					result = m_mdiChildBounds;
				}
			}
			return result;
		}
		set
		{
			if (m_mdiChildBounds != value)
			{
				m_mdiChildBounds = value;
			}
		}
	}

	internal FormWindowState MdiWindowState
	{
		get
		{
			return m_mdiWindowState;
		}
		set
		{
			if (m_mdiWindowState != value)
			{
				m_mdiWindowState = value;
			}
		}
	}

	internal override ArrayList SiblingDCR => siblingDCR;

	protected internal Size ControlSize
	{
		get
		{
			return controlSize;
		}
		set
		{
			if (controlSize != value)
			{
				controlSize = value;
			}
		}
	}

	public bool IsSelectedTabPage
	{
		get
		{
			if (ParentController is DockTabController dockTabController && dockTabController.SelectedController == this)
			{
				return true;
			}
			if (bInMDIMode && dockingMgr.HostFormMdiManager != null)
			{
				TabbedMDIManager hostFormMdiManager = dockingMgr.HostFormMdiManager;
				if (hostFormMdiManager.TabGroupHosts.Length > 0)
				{
					MDITabPanel mDITabPanel = hostFormMdiManager.TabGroupHosts[0].MDITabPanel;
					if (mDITabPanel != null && mDITabPanel.TabPages.Count != 0)
					{
						TabPageAdv selectedTab = mDITabPanel.SelectedTab;
						if (selectedTab.TabData is MDIChildTabData { MdiChild: not null } mDIChildTabData && mDIChildTabData.MdiChild is DockingWrapperForm && mDIChildTabData.MdiChild.Controls.Count != 0)
						{
							Control control = mDIChildTabData.MdiChild.Controls[0];
							if (ctrlReference == control)
							{
								return true;
							}
						}
					}
				}
			}
			return false;
		}
	}

	public string UniqueName
	{
		get
		{
			return m_UniqueName;
		}
		set
		{
			m_UniqueName = value;
		}
	}

	public override DockControllerBase ParentController
	{
		get
		{
			return dcParent;
		}
		set
		{
			dcParent = value;
			if (value != null)
			{
				if (value is FloatingFormController || (value is DockTabController && value.ParentController is FloatingFormController))
				{
					HideCaption = true;
				}
				else
				{
					HideCaption = false;
				}
				DockControllerBase parentController = ParentController;
				if (parentController is DockTabController)
				{
					parentController = parentController.ParentController;
				}
				DockStateControllerWrapper dockStateControllerWrapper = (parentController.Floating ? InternalFloatWrapper : InternalDockWrapper);
				if (!bInAutoHide && dockStateControllerWrapper != null && parentController != dockStateControllerWrapper.ParentController)
				{
					RemoveTabRelation(parentController.Floating);
				}
			}
		}
	}

	public override Control HostControl => ctrlHost;

	public string DockLabel
	{
		get
		{
			return HostControl.Text;
		}
		set
		{
			if (!(ctrlHost.Text != value))
			{
				return;
			}
			string text = ctrlHost.Text;
			ctrlHost.Text = value;
			if (!bDockVisible)
			{
				return;
			}
			ctrlHost.Invalidate(invalidateChildren: true);
			DockTabController dockTabController = null;
			if (dockInfoCurrent.DP == DockPreference.Tabbed)
			{
				dockTabController = ParentController as DockTabController;
				foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
				{
					if (tabPage.dhcClient == this)
					{
						tabPage.Text = value;
					}
				}
			}
			if (bFloating)
			{
				Form parentForm = ctrlHost.ParentForm;
				if (parentForm.Text == text)
				{
					parentForm.Text = value;
				}
			}
			if (bInAutoHide)
			{
				MainFormController mainFormController = ToplevelController as MainFormController;
				DockingStyle dStyle = DINew.dStyle;
				if (dockTabController != null)
				{
					dStyle = dockTabController.DICurrent.dStyle;
				}
				AHTabControl aHTabControl = mainFormController.GetAHTabControl(dStyle);
				if (aHTabControl != null)
				{
					aHTabControl.UpdateAHTabText(this);
					aHTabControl.ForceLayout();
				}
			}
		}
	}

	public int MdiImageIndex
	{
		get
		{
			return ctrlHost.MdiImageIndex;
		}
		set
		{
			if (ctrlHost.MdiImageIndex != value)
			{
				ctrlHost.MdiImageIndex = value;
				ctrlHost.Invalidate(invalidateChildren: true);
				if (dockingMgr.DesignMode && !dockingMgr.InBeginEndInit && !dockingMgr.ReloadingDesigner)
				{
					dockingMgr.UpdateDesigner();
					dockingMgr.UpdateFloatingFormsImages();
				}
			}
		}
	}

	public int ImageIndex
	{
		get
		{
			return ctrlHost.ImageIndex;
		}
		set
		{
			if (ctrlHost.ImageIndex == value)
			{
				return;
			}
			ctrlHost.ImageIndex = value;
			if (bDockVisible)
			{
				ctrlHost.Invalidate(invalidateChildren: true);
				if (dockInfoCurrent.DP == DockPreference.Tabbed)
				{
					DockTabController dockTabController = ParentController as DockTabController;
					foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
					{
						if (tabPage.dhcClient == this)
						{
							tabPage.ImageIndex = value;
						}
					}
				}
				if (bInAutoHide)
				{
					MainFormController mainFormController = ToplevelController as MainFormController;
					mainFormController.GetAHTabControl(DINew.dStyle).UpdateAHTabImage(this);
				}
			}
			if (dockingMgr.DesignMode && !dockingMgr.InBeginEndInit && !dockingMgr.ReloadingDesigner)
			{
				dockingMgr.UpdateDesigner();
			}
		}
	}

	public Icon ControlImage
	{
		get
		{
			return ctrlHost.controlImage;
		}
		set
		{
			ctrlHost.controlImage = value;
		}
	}

	public override Rectangle LayoutRect
	{
		get
		{
			return ctrlHost.Bounds;
		}
		set
		{
			if (Minimized == Minimization.Vertical)
			{
				value.Size = new Size(value.Size.Width, ctrlHost.Bounds.Height);
			}
			if (Minimized == Minimization.Horizontal)
			{
				value.Size = new Size(ctrlHost.Bounds.Width, value.Size.Height);
			}
			if (FreezeResize)
			{
				if (!IsVerticallyResizable())
				{
					value.Size = new Size(value.Size.Width, LayoutRect.Height);
				}
				if (!IsHorizontallyResizable())
				{
					value.Size = new Size(LayoutRect.Width, value.Size.Height);
				}
			}
			if (!ctrlHost.Bounds.Equals(value))
			{
				ctrlHost.Bounds = value;
			}
			dockInfoCurrent.rcDockArea = ctrlHost.RectangleToScreen(new Rectangle(Point.Empty, ctrlHost.Size));
		}
	}

	public override bool Floating
	{
		get
		{
			DockControllerBase dockControllerBase = this;
			if (DockVisibility)
			{
				while (dockControllerBase.ParentController != null)
				{
					dockControllerBase = dockControllerBase.ParentController;
				}
			}
			else
			{
				while (dockControllerBase.DICurrent.dController != null && !(dockControllerBase is FloatingFormController))
				{
					dockControllerBase = dockControllerBase.DICurrent.dController;
					if (dockControllerBase == this)
					{
						break;
					}
				}
			}
			return dockControllerBase is FloatingFormController;
		}
		set
		{
			bFloating = value;
		}
	}

	public override int ChildCount => -1;

	public override int ChildHostCount => 0;

	public override IEnumerator DCR
	{
		get
		{
			if (Floating)
			{
				return alFloatDCR.GetEnumerator();
			}
			return alDockDCR.GetEnumerator();
		}
	}

	public override DCRelationship DCRCurrent
	{
		get
		{
			if (Floating)
			{
				if (alFloatDCR.Count > 0)
				{
					return alFloatDCR[0] as DCRelationship;
				}
				return null;
			}
			if (alDockDCR.Count > 0)
			{
				return alDockDCR[0] as DCRelationship;
			}
			return null;
		}
		set
		{
			if (Floating)
			{
				InsertIntoDCR(alFloatDCR, 0, value);
			}
			else
			{
				InsertIntoDCR(alDockDCR, 0, value);
			}
		}
	}

	public ArrayList DockDCRList
	{
		get
		{
			return alDockDCR;
		}
		set
		{
			alDockDCR = value;
		}
	}

	public ArrayList FloatDCRList
	{
		get
		{
			return alFloatDCR;
		}
		set
		{
			alFloatDCR = value;
		}
	}

	public bool DockVisibility
	{
		get
		{
			if (bInMDIMode && !bDockVisible && HostControl.Controls.Count == 0)
			{
				return true;
			}
			return bDockVisible;
		}
		set
		{
			if (value == bDockVisible)
			{
				return;
			}
			if (value)
			{
				DockVisibilityChangingEventArgs e = (bClosingByMouse ? new DockVisibilityChangingEventArgs(ctrlHost.Controls[0], cncl: false, DockingAction.ByMouse) : new DockVisibilityChangingEventArgs(ctrlHost.Controls[0]));
				if ((base.DockingManager.bCancelVisibilityChangingEvent || !bInMDIMode) && !dockingMgr.bFiredVisibilityChangingEvent)
				{
					dockingMgr.FireDockVisibilityChangingEvent(e);
				}
				if (!e.Cancel && !dockingMgr.bCancelVisibilityChangingEvent)
				{
					DockVisibilityChangedEventArgs arg = (bClosingByMouse ? new DockVisibilityChangedEventArgs(ctrlHost.Controls[0], DockingAction.ByMouse) : new DockVisibilityChangedEventArgs(ctrlHost.Controls[0]));
					bool bFiredVisibilityChangedEvent = base.DockingManager.bFiredVisibilityChangedEvent;
					if (m_autoHiddedBeforeHide)
					{
						ToggleAutoHideMode(animate: false);
						ctrlHost.Controls[0].Visible = true;
						bDockVisible = true;
						if (!dockingMgr.bFiredVisibilityChangedEvent)
						{
							dockingMgr.FireDockVisibilityChangedEvent(arg);
						}
					}
					else
					{
						base.DockingManager.bFiredVisibilityChangedEvent = true;
						if (!bInMDIMode && !bClosing && !MdiChildState)
						{
							ShowController();
						}
						else
						{
							ctrlHost.Controls[0].Visible = true;
						}
						if (!bFiredVisibilityChangedEvent)
						{
							base.DockingManager.FireDockVisibilityChangedEvent(arg);
						}
					}
					if (bInMDIMode && !bFloatOnly)
					{
						dockingMgr.SetAsMDIChild(HostControl.Controls[0], bsetmdi: true);
					}
					dockingMgr.bFiredVisibilityChangedEvent = bFiredVisibilityChangedEvent;
				}
				else
				{
					dockingMgr.bCancelVisibilityChangingEvent = true;
				}
			}
			else
			{
				m_autoHiddedBeforeHide = bInAutoHide;
				CloseController();
			}
		}
	}

	public override DockInfo DIPrevious
	{
		get
		{
			return dockInfoPrevious;
		}
		set
		{
			if (dockInfoPrevious.dController != null)
			{
				dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
			}
			dockInfoPrevious = value;
		}
	}

	public DockTabControl DockTab
	{
		get
		{
			return ctrlDockTab;
		}
		set
		{
			ctrlDockTab = value;
		}
	}

	public override bool AutoHideMode
	{
		get
		{
			return bInAutoHide;
		}
		set
		{
			if (bInAutoHide != value)
			{
				ToggleAutoHideMode();
			}
		}
	}

	internal bool AutoHiddedBeforeHide
	{
		get
		{
			return m_autoHiddedBeforeHide;
		}
		set
		{
			if (m_autoHiddedBeforeHide != value)
			{
				m_autoHiddedBeforeHide = value;
			}
		}
	}

	public bool FloatOnly
	{
		get
		{
			return bFloatOnly;
		}
		set
		{
			if (bFloatOnly == value)
			{
				return;
			}
			if (value)
			{
				Control control = ctrlReference;
				if (control == null && HostControl.Controls.Count > 0)
				{
					control = HostControl.Controls[0];
				}
				base.DockingManager.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(new Control[1] { control }));
				if (DockVisibility)
				{
					bool freezeResize = FreezeResize;
					FreezeResize = false;
					DockHostController dockHostController = null;
					Rectangle empty = Rectangle.Empty;
					bool flag = false;
					if (bInMDIMode)
					{
						base.DockingManager.SetAsMdiChild(this, bsetmdi: false, Rectangle.Empty);
					}
					if (bInAutoHide)
					{
						ToggleAutoHideMode();
						flag = true;
					}
					if (dockInfoCurrent.DP == DockPreference.Tabbed)
					{
						DockTabController dockTabController = ParentController as DockTabController;
						if (flag)
						{
							empty = dockTabController.HostController.DIPrevious.rcDockArea;
							foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
							{
								if (tabPage.dhcClient != this)
								{
									dockHostController = tabPage.dhcClient;
								}
							}
						}
						dockTabController.RemoveDockHostFromTab(this, !Floating);
					}
					if (ParentController is DockTabController dockTabController2)
					{
						dockTabController2.RemoveDockHostFromTab(this, btransittoprev: false);
					}
					if (ParentController is SizingController && !IsSingleFloatControl)
					{
						Point ptlocation = HostControl.PointToScreen(Point.Empty);
						dockingMgr.UndockFromController(this);
						bool flag2 = base.PreviousFloatLocation == Point.Empty && base.PreviousFloatSize == Size.Empty;
						DINew.rcDockArea = Rectangle.Empty;
						SharedForm = null;
						FloatingForm floatingForm = CreateFloatingFrame(ptlocation, flag2);
						if (base.PreviousFloatLocation != Point.Empty && base.PreviousFloatSize != Size.Empty)
						{
							floatingForm.Location = base.PreviousFloatLocation;
							floatingForm.Size = base.PreviousFloatSize;
							base.PreviousFloatLocation = Point.Empty;
							base.PreviousFloatSize = Size.Empty;
						}
						if (!flag2)
						{
							floatingForm.Show();
						}
					}
					if (dockHostController != null)
					{
						empty = dockHostController.DITransient.rcDockArea;
						dockingMgr.UndockFromController(dockHostController);
						dockHostController.LayoutRect = empty;
						dockHostController.ToggleAutoHideMode(animate: false);
						dockHostController.DITransient.rcDockArea = empty;
						dockHostController.DINew.rcDockArea = empty;
					}
					FreezeResize = freezeResize;
				}
				bFloatOnly = value;
				base.DockingManager.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(new Control[1] { HostControl.Controls[0] }));
			}
			else
			{
				base.DockingManager.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(new Control[1] { HostControl.Controls[0] }));
				bFloatOnly = value;
				if (bInMDIMode)
				{
					dockingMgr.SetAsMDIChild(HostControl.Controls[0], bsetmdi: true);
				}
				base.DockingManager.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(new Control[1] { HostControl.Controls[0] }));
			}
		}
	}

	public bool HideCaption
	{
		get
		{
			CheckCaptionVisibility();
			if (!bHideCaption)
			{
				return !base.DockingManager.ShowCaption;
			}
			return true;
		}
		set
		{
			if (bHideCaption != value)
			{
				bHideCaption = value;
				if (ParentController is DockTabController)
				{
					ParentController.AdjustLayout();
				}
				else
				{
					AdjustLayout();
				}
			}
		}
	}

	public bool MaximizeButtonVisibility
	{
		get
		{
			if (bMaxVisible)
			{
				return base.CanMaximize;
			}
			return false;
		}
		set
		{
			if (bMaxVisible != value)
			{
				bMaxVisible = value;
				ctrlHost.Invalidate(invalidateChildren: true);
			}
		}
	}

	public bool AutoHideButtonVisibility
	{
		get
		{
			return bAHVisible;
		}
		set
		{
			if (bAHVisible != value)
			{
				bAHVisible = value;
				ctrlHost.Invalidate(invalidateChildren: true);
			}
		}
	}

	public bool CloseButtonVisibility
	{
		get
		{
			return bCloseVisible;
		}
		set
		{
			if (bCloseVisible != value)
			{
				bCloseVisible = value;
				ctrlHost.Invalidate(invalidateChildren: true);
			}
		}
	}

	public bool MenuButtonVisiblity
	{
		get
		{
			return bMenuBtnVisible;
		}
		set
		{
			if (bMenuBtnVisible != value)
			{
				bMenuBtnVisible = value;
				ctrlHost.Invalidate(invalidateChildren: true);
			}
		}
	}

	internal bool IsMirrored
	{
		get
		{
			return m_bIsMirrored;
		}
		set
		{
			if (m_bIsMirrored != value)
			{
				m_bIsMirrored = value;
				if (ctrlDockTab != null)
				{
					ctrlDockTab.RightToLeft = (m_bIsMirrored ? RightToLeft.Yes : RightToLeft.No);
				}
				ctrlHost.Invalidate(invalidateChildren: true);
			}
		}
	}

	public override Size MinimumSize
	{
		get
		{
			Size empty = minSize;
			if (!dockingMgr.bApplyMinMaxExtents)
			{
				empty = Size.Empty;
			}
			return empty;
		}
		set
		{
			if (minSize != value)
			{
				minSize = value;
				if (ParentController is FloatingFormController { HostControl: FloatingForm hostControl })
				{
					hostControl.UpdateFormMinimumSize();
				}
			}
		}
	}

	internal override bool FreezeResize
	{
		get
		{
			return base.FreezeResize;
		}
		set
		{
			if (base.FreezeResize != value)
			{
				base.FreezeResize = value;
				DockTabController dockTabController = ParentController as DockTabController;
				if (value && dockTabController != null)
				{
					dockTabController.FreezeResize = true;
				}
			}
		}
	}

	internal override bool Maximized
	{
		get
		{
			return base.Maximized;
		}
		set
		{
			bool bMaximized = m_bMaximized;
			base.Maximized = value;
			if (!(ParentController is DockTabController) && bMaximized && !value)
			{
				ControlRestoredEventArgs args = new ControlRestoredEventArgs(HostControl.Controls[0], ControlSizeStates.Maximize);
				dockingMgr.FireControlSizeStateChanged(ControlSizeStates.Restore, args);
			}
		}
	}

	internal override Minimization Minimized
	{
		get
		{
			return base.Minimized;
		}
		set
		{
			Minimization bMinimized = m_bMinimized;
			base.Minimized = value;
			if (!(ParentController is DockTabController))
			{
				if (bMinimized != Minimization.None && value == Minimization.None)
				{
					ControlRestoredEventArgs args = new ControlRestoredEventArgs(HostControl.Controls[0], ControlSizeStates.Minimize);
					dockingMgr.FireControlSizeStateChanged(ControlSizeStates.Restore, args);
				}
				else if (bMinimized == Minimization.None && value != Minimization.None)
				{
					ControlMinimizedEventArgs args2 = new ControlMinimizedEventArgs(HostControl.Controls[0]);
					dockingMgr.FireControlSizeStateChanged(ControlSizeStates.Minimize, args2);
				}
			}
		}
	}

	protected internal bool IsSingleFloatControl
	{
		get
		{
			FloatingFormController floatingFormController = ToplevelController as FloatingFormController;
			bool result = false;
			if (floatingFormController != null)
			{
				if (floatingFormController.dcChild is SizingController)
				{
					SizingController sizingController = floatingFormController.dcChild as SizingController;
					if (sizingController.GetDockControllers().Count == 1)
					{
						result = true;
					}
				}
				else
				{
					DockTabController dockTabController = floatingFormController.dcChild as DockTabController;
					if (dockTabController == ParentController)
					{
						result = true;
					}
					else if (floatingFormController.dcChild == this)
					{
						result = true;
					}
				}
			}
			return result;
		}
	}

	internal DockingManagerRenderer Renderer => base.DockingManager.Renderer;

	internal VisualStyle RendererStyle => base.DockingManager.VisualStyle;

	internal void RemoveTabRelation(bool floatingRel)
	{
		DockStateControllerWrapper dockStateControllerWrapper = (floatingRel ? InternalFloatWrapper : InternalDockWrapper);
		if (dockStateControllerWrapper != null && dockStateControllerWrapper.DockRelationControllers.Contains(this))
		{
			dockStateControllerWrapper.DockRelationControllers.Remove(this);
		}
	}

	public DockHostController(DockingManager dmgr, DockHost host)
		: base(dmgr)
	{
		ctrlHost = host;
		alDockDCR = new ArrayList();
		alFloatDCR = new ArrayList();
		IsMirrored = dmgr.IsMirrored;
	}

	public override void AddToDCR(DCRelationship dcr)
	{
		ArrayList arrayList = (Floating ? alFloatDCR : alDockDCR);
		InsertIntoDCR(arrayList, arrayList.Count, dcr);
	}

	public override void RemoveFromDCR(DCRelationship dcr)
	{
		if (alDockDCR.Contains(dcr))
		{
			alDockDCR.Remove(dcr);
		}
		if (alFloatDCR.Contains(dcr))
		{
			alFloatDCR.Remove(dcr);
		}
	}

	public override void InsertIntoDCR(ArrayList al, int nindex, DCRelationship dcr)
	{
		if (al == null)
		{
			al = (Floating ? alFloatDCR : alDockDCR);
		}
		foreach (DCRelationship item in al)
		{
			if (item.nRelation != dcr.nRelation || item.bChild != dcr.bChild)
			{
				continue;
			}
			int num = al.IndexOf(item);
			if (num != nindex)
			{
				al.Remove(item);
				if (num < nindex)
				{
					nindex--;
				}
				al.Insert(nindex, dcr);
			}
			else if (item.nIndex != dcr.nIndex)
			{
				item.nIndex = dcr.nIndex;
			}
			return;
		}
		al.Insert(nindex, dcr);
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
		if (ctrlHost.Controls.Count > 0 && DockTab == null)
		{
			ctrlHost.Controls[0].Bounds = ctrlHost.ClientRectangle;
		}
	}

	internal void CheckCaptionVisibility()
	{
		if (Floating && ToplevelController is FloatingFormController floatingFormController)
		{
			if (floatingFormController.HideChildCaptions)
			{
				HideCaption = true;
			}
			else
			{
				HideCaption = false;
			}
		}
	}

	protected void CheckSiblingRelations()
	{
		foreach (ControllerDCRPair item in SiblingDCR)
		{
			if (item.Controller != null && item.DCR != null)
			{
				item.Controller.RemoveFromDCR(item.DCR);
			}
		}
		siblingDCR.Clear();
	}

	public void ShowController()
	{
		bDockVisible = true;
		if (dockInfoTransient.dController != null)
		{
			dockInfoTransient.dController.ControllerChanged -= TransientControllerChanged;
		}
		dockInfoNew = new DockInfo(dockInfoTransient);
		if (m_prevWrapper != null && m_prevWrapper.ParentController != null)
		{
			if (m_prevWrapper == InternalFloatWrapper && !dockingMgr.DisallowFloating && AllowFloating)
			{
				TransitToPrevFloat(base.DockingManager.bLoadVisibility);
			}
			else
			{
				TransitToPrevDock();
			}
		}
		else
		{
			dockingMgr.HostControl.Controls.Add(HostControl);
			SizingController sizingController = new SizingController(dockingMgr, dockingMgr.HostControl, DockPreference.Horizontal);
			sizingController.ParentController = dockingMgr.dcHostForm;
			sizingController.AddChild(this, DockingStyle.Left);
			base.DITransient.rcDockArea = LayoutRect;
			sizingController.LayoutRect = LayoutRect;
			dockingMgr.dcHostForm.AddChild(sizingController, DockingStyle.Left);
			dockingMgr.dcHostForm.AdjustLayout();
		}
		if (m_storedSize != Size.Empty)
		{
			base.DockingManager.SetControlSize(HostControl.Controls[0], m_storedSize);
		}
		m_storedSize = Size.Empty;
		ctrlHost.Controls[0].Visible = true;
		ctrlHost.Visible = true;
		if (bAHStateOnClose)
		{
			base.DockingManager.SetAutoHideMode(ctrlHost.Controls[0], bautohide: true);
		}
		HostControl.Focus();
		if (!dockingMgr.bFiredVisibilityChangedEvent)
		{
			dockingMgr.FireDockVisibilityChangedEvent(new DockVisibilityChangedEventArgs(ctrlHost.Controls[0]));
		}
	}

	internal void TabhostCloseAllControllers()
	{
		ParentController.CloseController();
	}

	protected internal FloatingFormController GetParentFloatingFormController()
	{
		if (ParentController is DockTabController dockTabController)
		{
			return dockTabController.ParentController as FloatingFormController;
		}
		return ParentController as FloatingFormController;
	}

	private TabPageAdv FindTabPageByName(DockTabControl tabControl, string tabName)
	{
		foreach (TabPageAdv tabPage in tabControl.TabPages)
		{
			if (tabPage.Text == tabName)
			{
				return tabPage;
			}
		}
		return null;
	}

	public override void CloseController()
	{
		if (bClosingByMouse && ctrlHost.Controls.Count == 0)
		{
			if (ctrlHost.IsDisposed)
			{
				ctrlHost.Visible = false;
			}
			return;
		}
		DockVisibilityChangingEventArgs e = (bClosingByMouse ? new DockVisibilityChangingEventArgs(ctrlHost.Controls[0], cncl: false, DockingAction.ByMouse) : new DockVisibilityChangingEventArgs(ctrlHost.Controls[0]));
		if ((base.DockingManager.bCancelVisibilityChangingEvent || !bInMDIMode) && !dockingMgr.bFiredVisibilityChangingEvent)
		{
			dockingMgr.FireDockVisibilityChangingEvent(e);
		}
		if (ParentController is FloatingFormController)
		{
			FloatingFormController floatingFormController = ParentController as FloatingFormController;
			FloatingForm floatingForm = floatingFormController.HostControl as FloatingForm;
			floatingForm.CancelVisibleChanging = e.Cancel;
		}
		if (ParentController is DockTabController)
		{
			DockTabController dockTabController = ParentController as DockTabController;
			if (dockTabController.ParentController is FloatingFormController)
			{
				DockTabControl tabControl = dockTabController.TabControl;
				if (!e.Cancel)
				{
					TabPageAdv tabPageAdv = FindTabPageByName(tabControl, base.DockingManager.GetDockLabel(e.Control));
					tabPageAdv.TabVisible = false;
				}
			}
		}
		if (e.Cancel)
		{
			return;
		}
		bDockVisible = false;
		if (ParentController != null)
		{
			if (ParentController.GetType() == typeof(DockTabController))
			{
				(ParentController as DockTabController).CloseController(this);
			}
			else
			{
				if (Floating || ParentController is FloatingFormController)
				{
					ParentController.ControllerChanged += TransientControllerChanged;
					dockInfoTransient = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
					ExitFloatingFrame();
					if (FloatOnly)
					{
						MdiChildState = false;
					}
				}
				else
				{
					if (bInAutoHide)
					{
						bAHStateOnClose = true;
						ExitAutoHideMode(bcloseonexit: true);
						if (dockInfoTransient.dController != null)
						{
							dockInfoTransient.dController.ControllerChanged += TransientControllerChanged;
						}
					}
					else
					{
						bAHStateOnClose = false;
						ParentController.ControllerChanged += TransientControllerChanged;
						dockInfoTransient = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoTransient.rcDockArea);
					}
					if (ParentController != null && ParentController is DockTabController)
					{
						(ParentController as DockTabController).RemoveDockHostFromTab(this, btransittoprev: false);
					}
					dockingMgr.UndockFromController(this);
				}
				if (!bInMDIMode)
				{
					ctrlHost.Controls[0].Visible = false;
				}
				ParentController = null;
				ctrlHost.Visible = false;
			}
		}
		if (dockingMgr.DHCInFocus == this)
		{
			dockingMgr.DHCInFocus = null;
		}
		DockVisibilityChangedEventArgs arg = (bClosingByMouse ? new DockVisibilityChangedEventArgs(ctrlHost.Controls[0], DockingAction.ByMouse) : new DockVisibilityChangedEventArgs(ctrlHost.Controls[0]));
		if (!base.DockingManager.bFiredVisibilityChangedEvent)
		{
			dockingMgr.FireDockVisibilityChangedEvent(arg);
		}
		dockingMgr.HostControl.Select();
	}

	public Rectangle GetTabDockTargetRectangle()
	{
		Rectangle result = Rectangle.Empty;
		Rectangle r = new Rectangle(0, 0, ctrlHost.Bounds.Width, ctrlHost.Bounds.Height);
		if (ctrlDockTab != null)
		{
			result = ctrlHost.Controls[0].RectangleToScreen(r);
			bool flag = ParentController.ParentController is FloatingFormController;
			int num = 4;
			switch (base.DockingManager.DockTabAlignment)
			{
			case DockTabAlignmentStyle.Bottom:
				if (!flag)
				{
					result.Height -= ctrlDockTab.Height;
				}
				break;
			case DockTabAlignmentStyle.Top:
				result.Y -= ctrlDockTab.Height + num;
				if (!flag)
				{
					result.Height -= ctrlDockTab.Height;
				}
				break;
			case DockTabAlignmentStyle.Left:
				result.X -= ctrlDockTab.Width + num;
				if (!flag)
				{
					result.Height -= ctrlDockTab.Width;
				}
				break;
			case DockTabAlignmentStyle.Right:
				if (!flag)
				{
					result.Height -= ctrlDockTab.Width;
				}
				break;
			}
		}
		return result;
	}

	public override void GetDockInfo(Control ctrl, Point ptscreen, DockInfo di)
	{
		Rectangle r = new Rectangle(0, 0, ctrlHost.Bounds.Width, ctrlHost.Bounds.Height);
		if (ctrlDockTab != null)
		{
			di.dController = ctrlDockTab.InternalController;
		}
		else
		{
			di.dController = this;
		}
		di.nPriority = 0;
		Point pt = ctrlHost.PointToClient(ptscreen);
		Rectangle empty = Rectangle.Empty;
		if (bHideCaption)
		{
			int num = CaptionPainter.CaptionHeight + 4;
			empty = new Rectangle(0, -num, ctrlHost.Width, num);
		}
		else
		{
			empty = new Rectangle(0, 0, ctrlHost.Width, CaptionPainter.CaptionHeight + 4);
		}
		if (empty.Contains(pt))
		{
			di.dStyle = DockingStyle.Tabbed;
			di.DP = DockPreference.Tabbed;
			di.nDockIndex = 0;
			Rectangle rcDockArea = ctrlHost.Controls[0].RectangleToScreen(r);
			rcDockArea.Size = ctrlHost.Controls[0].Size;
			di.rcDockArea = rcDockArea;
			di.rcControlArea = di.rcDockArea;
			if (ctrlDockTab == null)
			{
				return;
			}
		}
		if (ctrlDockTab != null && (empty.Contains(pt) || ctrlDockTab.RectangleToScreen(ctrlDockTab.ClientRectangle).Contains(ptscreen)))
		{
			if (ctrlDockTab.RectangleToScreen(ctrlDockTab.ClientRectangle).Contains(ptscreen))
			{
				ctrlDockTab.InternalController.GetDockInfo(ctrl, ptscreen, di);
				di.rcControlArea = di.rcDockArea;
			}
			di.rcDockArea = GetTabDockTargetRectangle();
			return;
		}
		di.rcControlArea = ctrlHost.RectangleToScreen(r);
		int num2 = ((di.rcDockArea.Width < ctrlHost.Width / 2) ? di.rcDockArea.Width : (ctrlHost.Width / 2));
		int num3 = ((di.rcDockArea.Height < ctrlHost.Height / 2) ? di.rcDockArea.Height : (ctrlHost.Height / 2));
		Size minimumSize = minSize;
		if (ctrlDockTab != null)
		{
			minimumSize = ctrlDockTab.InternalController.MinimumSize;
		}
		if (minimumSize.Width != 0 && ctrlHost.Width - num2 < minimumSize.Width)
		{
			num2 = ctrlHost.Width - minimumSize.Width;
		}
		if (minimumSize.Height != 0 && ctrlHost.Height - num3 < minimumSize.Height)
		{
			num3 = ctrlHost.Height - minimumSize.Height;
		}
		Rectangle[] rc = new Rectangle[4];
		Rectangle rcmain = Rectangle.Inflate(ctrlHost.ClientRectangle, 1, 0);
		if (ctrlDockTab != null)
		{
			rcmain.Height -= ctrlDockTab.Height;
		}
		ComputeLRTBBorders(rcmain, base.DockBoundary, ref rc);
		if (rc[0].Contains(pt) && num2 > 25)
		{
			di.dStyle = DockingStyle.Left;
			di.DP = DockPreference.Horizontal;
			di.rcDockArea = ctrlHost.RectangleToScreen(new Rectangle(r.X, r.Y, num2, r.Height));
		}
		else if (rc[1].Contains(pt) && num3 > 45)
		{
			di.dStyle = DockingStyle.Top;
			di.DP = DockPreference.Vertical;
			di.rcDockArea = ctrlHost.RectangleToScreen(new Rectangle(r.X, r.Y, r.Width, num3));
		}
		else if (rc[2].Contains(pt) && num2 > 25)
		{
			di.dStyle = DockingStyle.Right;
			di.DP = DockPreference.Horizontal;
			di.rcDockArea = ctrlHost.RectangleToScreen(new Rectangle(r.Right - num2, r.Y, num2, r.Height));
		}
		else if (rc[3].Contains(pt) && num3 > 45)
		{
			di.dStyle = DockingStyle.Bottom;
			di.DP = DockPreference.Vertical;
			di.rcDockArea = ctrlHost.RectangleToScreen(new Rectangle(r.X, r.Bottom - num3, r.Width, num3));
		}
		else
		{
			di.dController = null;
		}
		di.nDockIndex = dockInfoCurrent.nDockIndex;
	}

	public override bool QueryDropProceedWithDock(Control ctrldrop, DockingStyle style)
	{
		if (bFloatOnly)
		{
			return false;
		}
		DockAllowEventArgs e = new DockAllowEventArgs(ctrldrop.Controls[0], ctrlHost.Controls[0], style);
		dockingMgr.FireDockAllowEvent(e);
		return !e.Cancel;
	}

	public virtual void dhc_ControllerChanged(object sender, ControllerChangedEventArgs e)
	{
		if (!sender.Equals(dockInfoPrevious.dController))
		{
			return;
		}
		if (dockInfoPrevious.dController != null)
		{
			dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
		}
		DockInfo newDockInfo = e.NewDockInfo;
		if (newDockInfo.dController != null)
		{
			dockInfoPrevious = new DockInfo(newDockInfo.dController, newDockInfo.dStyle, newDockInfo.nPriority, dockInfoPrevious.nDockIndex, newDockInfo.DP, newDockInfo.rcDockArea);
			newDockInfo.dController.ControllerChanged += dhc_ControllerChanged;
		}
		else
		{
			dockInfoPrevious.dController = null;
			if (newDockInfo.rcDockArea.Width > 0 && newDockInfo.rcDockArea.Height > 0)
			{
				dockInfoPrevious.rcDockArea = newDockInfo.rcDockArea;
			}
		}
		if (e.DCRelation != null)
		{
			ArrayList arrayList = (Floating ? alDockDCR : alFloatDCR);
			InsertIntoDCR(arrayList, arrayList.Count, e.DCRelation);
		}
	}

	public override void InvokePrevDockFloatTransition(bool showFloating)
	{
		if (!Floating && !dockingMgr.DisallowFloating)
		{
			TransitToPrevFloat(showFloating);
		}
		else
		{
			TransitToPrevDock();
		}
	}

	public void InvokePrevDockFloatTransition()
	{
		InvokePrevDockFloatTransition(showFloating: true);
	}

	public void TransitToPrevFloat(bool showFloating)
	{
		foreach (Control item in base.DockingManager.alEnableDocking)
		{
			if (ctrlHost.Controls.Count > 0 && ctrlHost.Controls[0].Equals(item) && SharedForm != null && base.DockingManager != null && base.DockingManager.CustomizeControlCollection.Contains(item))
			{
				SharedForm.Location = base.DockingManager.FloatingLocation;
				base.DockingManager.CustomizeControlCollection.Remove(item);
			}
		}
		bool show = showFloating && !Closing;
		RestoreController();
		dockInfoNew = new DockInfo(dockInfoPrevious);
		Control[] ctrls = new Control[1] { ctrlHost.Controls[0] };
		dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(ctrls));
		if (dockInfoPrevious.dController != null)
		{
			dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
		}
		Point ptlocation = Point.Empty;
		if (ctrlHost.Parent != null)
		{
			ptlocation = ctrlHost.Parent.PointToScreen(ctrlHost.Location);
		}
		ValidateSharedForm();
		DockHostController dockHostController = null;
		DockRelation dockRelation = null;
		if (InternalFloatWrapper != null)
		{
			dockRelation = InternalFloatWrapper.Relations[UniqueName] as DockRelation;
		}
		if (dockRelation != null)
		{
			int val = InternalFloatWrapper.DockRelationControllers.IndexOf(this);
			InternalFloatWrapper.DockRelationControllers.Remove(this);
			val = Math.Min(val, InternalFloatWrapper.DockRelationControllers.Count);
			dockHostController = FindTabbedDockTarget(floating: true);
			InternalFloatWrapper.DockRelationControllers.Insert(val, this);
		}
		if ((dockRelation == null || dockHostController == null || bFloatOnly) && ParentController != null)
		{
			if (!(ParentController is DockTabController))
			{
				ParentController.ControllerChanged += dhc_ControllerChanged;
				dockInfoPrevious = new DockInfo(dockInfoCurrent);
				dockingMgr.UndockFromController(this);
			}
			else
			{
				DockTabController dockTabController = ParentController as DockTabController;
				dockTabController.ParentController.ControllerChanged += dhc_ControllerChanged;
				dockInfoPrevious = new DockInfo(dockTabController.ParentController, dockTabController.DICurrent.dStyle, dockTabController.DICurrent.nPriority, dockTabController.ParentController.GetChildHostIndex(dockTabController), dockTabController.DICurrent.DP, dockTabController.DICurrent.rcDockArea);
			}
		}
		bFloating = true;
		if (!bFloatOnly)
		{
			if (!dockingMgr.ForbidWrapperLogic)
			{
				if (dockRelation != null && dockHostController != null)
				{
					dockInfoNew = dockRelation.Relation;
					dockInfoNew.DP = DockPreference.Tabbed;
					dockInfoNew.dController = dockHostController;
					SetPrevTabIndex(dockHostController, InternalFloatWrapper.DockRelationControllers);
					ApplyDockInfo();
					InternalFloatWrapper = null;
				}
				else if (SharedForm != null && SharedForm.IsDisposed)
				{
					SharedForm.InternalController = null;
					SharedForm = null;
					CreateFloatingFrame(ptlocation, show);
				}
				else if (SharedForm != null)
				{
					if (SharedForm.Used)
					{
						InternalTransitToPrevState(floating: true);
					}
					else if (InternalFloatWrapper != null && InternalFloatWrapper.ParentController is FloatingFormController && m_form == SharedForm)
					{
						m_form.Enable(show);
						InternalTransitToPrevState(floating: true);
						SharedForm.Used = true;
					}
					else
					{
						CreateFloatingFrame(Point.Empty, show);
					}
				}
				else
				{
					CreateFloatingFrame(ptlocation, show);
				}
			}
			else if (dockInfoNew.dController != null)
			{
				if (!dockInfoNew.dController.AttemptDCRDocking(this, alFloatDCR.GetEnumerator()))
				{
					if (dockInfoNew.dController.Floating)
					{
						CreateFloatingFrame(ptlocation, show);
					}
					else
					{
						dockingMgr.DockToNewSizingController(this);
					}
				}
			}
			else if (!dockingMgr.AttemptFloatingFormDCRDocking(this, alFloatDCR.GetEnumerator()))
			{
				CreateFloatingFrame(ptlocation, show);
			}
		}
		else
		{
			CreateFloatingFrame(ptlocation, show: true);
		}
		HostControl.Focus();
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(ctrls));
	}

	protected void ValidateSharedForm()
	{
		if (SharedForm == null || !(SharedForm.InternalController is FloatingFormController floatingFormController))
		{
			return;
		}
		DockHostController dockHostController = floatingFormController.GetChildAt(0) as DockHostController;
		if (dockHostController == null && floatingFormController.GetChildAt(0) is SizingController sizingController)
		{
			ArrayList dockControllers = sizingController.GetDockControllers();
			if (dockControllers.Count == 1)
			{
				dockHostController = dockControllers[0] as DockHostController;
			}
		}
		if (dockHostController != null && dockHostController.DockVisibility && dockHostController.FloatOnly)
		{
			SharedForm = null;
		}
	}

	protected DockHostController FindTabbedDockTarget(bool floating)
	{
		DockHostController dockHostController = null;
		DockStateControllerWrapper dockStateControllerWrapper = (floating ? InternalFloatWrapper : InternalDockWrapper);
		foreach (DockHostController dockRelationController in dockStateControllerWrapper.DockRelationControllers)
		{
			DockControllerBase parentController = dockRelationController.ParentController;
			SizingController sizingController = parentController as SizingController;
			bool flag = false;
			if (parentController == null)
			{
				continue;
			}
			if (sizingController == null)
			{
				sizingController = parentController.ParentController as SizingController;
				if (parentController is DockTabController)
				{
					flag = true;
				}
			}
			if (!dockRelationController.FloatOnly && !dockRelationController.bInAutoHide && sizingController == dockStateControllerWrapper.ParentController && (!flag || dockRelationController.DockTab != null) && parentController.Floating == floating)
			{
				dockHostController = dockRelationController;
				break;
			}
		}
		if (dockHostController == null)
		{
			bool flag2 = true;
			if (dockStateControllerWrapper.ParentController is SizingController && dockStateControllerWrapper.Valid)
			{
				flag2 = false;
			}
			if (flag2)
			{
				foreach (DockHostController dockRelationController2 in dockStateControllerWrapper.DockRelationControllers)
				{
					if (dockRelationController2.DockVisibility && !dockRelationController2.FloatOnly && dockRelationController2.Floating == floating && !dockRelationController2.bInAutoHide && dockRelationController2.ParentController != null)
					{
						dockHostController = ((!(dockRelationController2.ParentController is DockTabController)) ? dockRelationController2 : (dockRelationController2.ParentController as DockTabController).HostController);
						break;
					}
				}
			}
		}
		return dockHostController;
	}

	public void TransitToPrevDock()
	{
		bool forbidFreeze = dockingMgr.ForbidFreeze;
		dockingMgr.ForbidFreeze = true;
		MustResize = Direction.Both;
		if (bFloatOnly)
		{
			return;
		}
		dockInfoNew = new DockInfo(dockInfoPrevious);
		if (dockInfoNew.dController == null)
		{
			dockInfoNew = new DockInfo(dockingMgr.dcHostForm, DockingStyle.Left, -1, 0, DockPreference.Horizontal, ctrlHost.Bounds);
		}
		if (dockingMgr.DockToFill && dockInfoNew.dController is SizingController)
		{
			dockInfoNew.dController = dockInfoNew.dController.ParentController;
		}
		Control[] ctrls = new Control[1] { ctrlHost.Controls[0] };
		dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(ctrls));
		if (dockInfoPrevious.dController != null)
		{
			dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
		}
		DockHostController dockHostController = null;
		DockRelation dockRelation = null;
		if (InternalDockWrapper != null)
		{
			dockRelation = InternalDockWrapper.Relations[UniqueName] as DockRelation;
		}
		if (dockRelation != null)
		{
			int val = InternalDockWrapper.DockRelationControllers.IndexOf(this);
			InternalDockWrapper.DockRelationControllers.Remove(this);
			dockHostController = FindTabbedDockTarget(floating: false);
			InternalDockWrapper.DockRelationControllers.Insert(Math.Max(0, val), this);
		}
		bool floating = Floating;
		if (ParentController != null)
		{
			if (!(ParentController is DockTabController))
			{
				ParentController.ControllerChanged += dhc_ControllerChanged;
				dockInfoPrevious = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
				if (Floating)
				{
					ExitFloatingFrame();
				}
			}
			else
			{
				DockTabController dockTabController = ParentController as DockTabController;
				if (dockTabController.ParentController != null)
				{
					dockTabController.ParentController.ControllerChanged += dhc_ControllerChanged;
					dockInfoPrevious = new DockInfo(dockTabController.ParentController, dockTabController.DICurrent.dStyle, dockTabController.DICurrent.nPriority, dockTabController.ParentController.GetChildHostIndex(dockTabController), dockTabController.DICurrent.DP, dockTabController.DICurrent.rcDockArea);
				}
			}
		}
		if (m_prevAHStyle != DockingStyle.None && floating)
		{
			TransitToPrevAHState();
			return;
		}
		HideCaption = false;
		bFloating = false;
		if (dockRelation != null && dockHostController != null)
		{
			DCRelationship dcr = new DCRelationship(0, child: false, DockPreference.Tabbed, dockRelation.Relation.nDockIndex);
			SetPrevTabIndex(dockHostController, InternalDockWrapper.DockRelationControllers);
			dockHostController.InvokeTabbedDocking(this, dcr);
			InternalDockWrapper = null;
		}
		else if (InternalDockWrapper != null && InternalDockWrapper.Valid)
		{
			InternalTransitToPrevState(floating: false);
		}
		else if (dockInfoNew.dController is SizingController && dockInfoNew.dController.ParentController == null)
		{
			dockingMgr.DockToBlankSizingController(this);
		}
		else if (dockInfoNew.dController != null)
		{
			if (!dockInfoNew.dController.AttemptDCRDocking(this, alDockDCR.GetEnumerator()))
			{
				dockingMgr.DockToSizingController(this);
			}
		}
		else
		{
			dockingMgr.DockToBlankSizingController(this);
		}
		if (base.DockingManager.DockToFill)
		{
			ClearParentTransientSize();
		}
		if (!AutoHiddedBeforeHide)
		{
			HostControl.Focus();
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(ctrls));
		dockingMgr.ForbidFreeze = forbidFreeze;
	}

	protected void SetPrevTabIndex(DockControllerBase target, ArrayList controllers)
	{
		if (controllers == null || target == null)
		{
			return;
		}
		DockTabControl dockTabControl = null;
		if (target.ParentController is DockTabController dockTabController)
		{
			dockTabControl = dockTabController.TabControl;
		}
		DockHostController dockHostController = null;
		int num = 0;
		bool flag = false;
		if (dockTabControl != null)
		{
			foreach (DockHostController controller in controllers)
			{
				int num2 = 0;
				foreach (DockTabPage tabPage in dockTabControl.TabPages)
				{
					if (controller == tabPage.dhcClient)
					{
						num = num2;
						dockHostController = controller;
						break;
					}
					num2++;
				}
				if (flag && dockHostController != null)
				{
					break;
				}
				if (controller == this)
				{
					if (dockHostController != null)
					{
						break;
					}
					flag = true;
				}
			}
			if (!flag)
			{
				num++;
			}
		}
		else if (controllers.IndexOf(target) < controllers.IndexOf(this))
		{
			num = 1;
		}
		DINew.nDockIndex = num;
	}

	protected void ClearParentTransientSize()
	{
		SizingController sizingController = ParentController as SizingController;
		while (sizingController != null && sizingController.ParentController is SizingController sizingController2)
		{
			sizingController = sizingController2;
		}
		if (sizingController != null)
		{
			CrealTransientSize(sizingController);
		}
	}

	private void CrealTransientSize(DockControllerBase dcb)
	{
		if (dcb.ChildControllers != null)
		{
			foreach (DockControllerBase childController in dcb.ChildControllers)
			{
				CrealTransientSize(childController);
			}
		}
		if (dcb.LayoutRect.Height != 0 && dcb.LayoutRect.Width != 0)
		{
			dcb.DITransient.rcDockArea = Rectangle.Empty;
		}
	}

	internal virtual void TransitToPrevAHState()
	{
		MainFormController dcHostForm = dockingMgr.dcHostForm;
		AHTabControl aHTabControl = dcHostForm.GetAHTabControl(m_prevAHStyle);
		DockPreference dp = ((m_prevAHStyle == DockingStyle.Left || m_prevAHStyle == DockingStyle.Right) ? DockPreference.Horizontal : DockPreference.Vertical);
		if (DockDCRList.Count != 0)
		{
			DCRCurrent = DockDCRList[0] as DCRelationship;
		}
		if (!AttemptPrevAHDocking(aHTabControl, this, animate: false))
		{
			bInAutoHide = true;
			SizingController sizingController = new SizingController(dockingMgr, dockingMgr.HostControl, dp);
			sizingController.ParentController = dcHostForm;
			sizingController.DICurrent = new DockInfo(this, m_prevAHStyle, -1, -1, dp, Rectangle.Empty);
			sizingController.AddChild(this, m_prevAHStyle);
			DockControllerBase childAt = sizingController.GetChildAt(1);
			childAt.HostControl.Paint += dcHostForm.OnAHSplitterPaint;
			aHTabControl.AddTab(this, bshowcontrol: false);
		}
		if (ParentController is DockTabController)
		{
			ParentController.DITransient.dController = InternalDockWrapper.ParentController;
		}
		else
		{
			base.DITransient.dController = InternalDockWrapper.ParentController;
		}
		DINew.dStyle = aHTabControl.Edge;
		HostControl.Bounds = Rectangle.Empty;
		dcHostForm.HostControl.Controls.Add(HostControl);
		m_prevAHStyle = DockingStyle.None;
		dcHostForm.AdjustLayout();
	}

	internal void InternalTransitToPrevState()
	{
		bool flag = m_prevWrapper.ParentController == null || m_prevWrapper.Floating;
		flag = flag && !dockingMgr.DisallowFloating;
		InternalTransitToPrevState(flag);
	}

	internal void InternalTransitToPrevState(bool floating)
	{
		dockingMgr.ForbidFreeze = true;
		if (floating)
		{
			_ = InternalFloatWrapper.ParentController;
		}
		else
		{
			_ = InternalDockWrapper.ParentController;
		}
		Rectangle layoutRect = LayoutRect;
		bool flag = false;
		if (dockingMgr != null && HostControl != null && HostControl.Controls[0] != null && dockingMgr.GetHiddenOnLoad(HostControl.Controls[0]) && dockingMgr.m_bLoadingDockState)
		{
			flag = true;
		}
		if (!flag)
		{
			DIPrevious.rcDockArea = DICurrent.rcDockArea;
		}
		bool flag2 = true;
		if (floating)
		{
			InternalFloatWrapper.ParentController.ReplaceChild(InternalFloatWrapper, this);
			if (InternalFloatWrapper.ControlSize != Size.Empty)
			{
				layoutRect.Size = InternalFloatWrapper.ControlSize;
			}
			Minimized = InternalFloatWrapper.Minimized;
			(ToplevelController as FloatingFormController).RefreshFormCaption();
		}
		else
		{
			InternalDockWrapper.ParentController.ReplaceChild(InternalDockWrapper, this);
			SizingController sizingController = InternalDockWrapper.ParentController as SizingController;
			if (InternalDockWrapper.ControlSize != Size.Empty)
			{
				if (sizingController != null && base.DockingManager.DockToFill && sizingController.LayoutRect.Size != Size.Empty)
				{
					if (sizingController.DockingOrder == DockPreference.Vertical && sizingController.LayoutRect.Height != 0 && sizingController.LayoutRect.Height <= InternalDockWrapper.ControlSize.Height)
					{
						flag2 = false;
					}
				}
				else if ((sizingController.LayoutRect.Width == 0 || sizingController.LayoutRect.Height == 0) && (sizingController.dockInfoCurrent.dStyle == DockingStyle.Top || sizingController.dockInfoCurrent.dStyle == DockingStyle.Bottom) && sizingController.dockInfoCurrent.dStyle != dockInfoCurrent.dStyle && InternalDockWrapper.ControlSize.Width != 0 && InternalDockWrapper.ControlSize.Height != 0)
				{
					Rectangle layoutRect2 = new Rectangle(sizingController.LayoutRect.Location, InternalDockWrapper.ControlSize);
					sizingController.LayoutRect = layoutRect2;
					flag2 = false;
					int num = 4;
					Rectangle rectangle = Rectangle.Empty;
					if (sizingController.dockInfoCurrent.dStyle == DockingStyle.Top || sizingController.dockInfoCurrent.dStyle == DockingStyle.Bottom)
					{
						rectangle = new Rectangle(base.DITransient.rcDockArea.Location, new Size(base.DITransient.rcDockArea.Size.Width, base.DITransient.rcDockArea.Size.Height + num));
					}
					else if (sizingController.dockInfoCurrent.dStyle == DockingStyle.Right)
					{
						rectangle = new Rectangle(base.DITransient.rcDockArea.Location, new Size(base.DITransient.rcDockArea.Size.Width + num, base.DITransient.rcDockArea.Size.Height));
					}
					if (rectangle != Rectangle.Empty)
					{
						ParentController.LayoutRect = rectangle;
					}
				}
				layoutRect.Size = InternalDockWrapper.ControlSize;
			}
			Minimized = InternalDockWrapper.Minimized;
			if (InternalDockWrapper.DockRelationControllers.Count > 1)
			{
				TempWrapper = InternalDockWrapper;
			}
		}
		LayoutRect = layoutRect;
		if (flag2)
		{
			SetRelatedSize(floating);
		}
		if (InternalDockWrapper != null && InternalDockWrapper.ParentController is SizingController sizingController2 && sizingController2.dockInfoCurrent.dStyle != DockingStyle.Left)
		{
			LayoutRect = base.DITransient.rcDockArea;
		}
		ToplevelController.HostControl.Controls.Add(HostControl);
		ToplevelController.AdjustLayout();
		AdjustLayout();
		dockingMgr.ForbidFreeze = false;
	}

	internal void SetRelatedSize(bool floating)
	{
		ArrayList arrayList = null;
		int num = dockingMgr.SplitterWidth / 2;
		if (floating)
		{
			if (base.PreviousFloatSize.Width != 0 && base.PreviousFloatSize.Height != 0)
			{
				base.DITransient.rcDockArea.Size = base.PreviousFloatSize;
			}
			arrayList = base.StoredFloatSizes;
		}
		else
		{
			if (base.PreviousDockSize.Width != 0 && base.PreviousDockSize.Height != 0)
			{
				base.DITransient.rcDockArea.Size = base.PreviousDockSize;
			}
			arrayList = base.StoredDockSizes;
		}
		base.DITransient.rcDockArea.Inflate(new Size(num, num));
		Size size = base.DITransient.rcDockArea.Size;
		DockControllerBase dockControllerBase = this;
		SizingController sizingController = ParentController as SizingController;
		int num2 = 1;
		while (sizingController != null)
		{
			if (arrayList.Count < num2++)
			{
				arrayList.Add(default(RelationNamePair));
			}
			sizingController = sizingController.ParentController as SizingController;
		}
		sizingController = ParentController as SizingController;
		foreach (RelationNamePair item in arrayList)
		{
			float relation = item.Relation;
			if (sizingController == null)
			{
				break;
			}
			if (sizingController.ChildCount == 3 && relation != 0f)
			{
				DockControllerBase dockControllerBase2 = null;
				dockControllerBase2 = ((sizingController.GetChildHostIndex(dockControllerBase) != 0) ? sizingController.GetChildAt(0) : sizingController.GetChildAt(2));
				if (dockControllerBase2.DITransient.rcDockArea == Rectangle.Empty)
				{
					dockControllerBase2.DITransient.rcDockArea = dockControllerBase2.LayoutRect;
				}
				if (!(dockControllerBase2 is DockStateControllerWrapper))
				{
					if (sizingController.DockingOrder == DockPreference.Vertical)
					{
						if (dockControllerBase2.DITransient.rcDockArea.Height != 0)
						{
							dockControllerBase.DITransient.rcDockArea.Height = (int)((float)dockControllerBase2.DITransient.rcDockArea.Height / relation);
						}
						else
						{
							dockControllerBase.DITransient.rcDockArea.Height = size.Height;
						}
					}
					else if (dockControllerBase2.DITransient.rcDockArea.Width != 0)
					{
						dockControllerBase.DITransient.rcDockArea.Width = (int)((float)dockControllerBase2.DITransient.rcDockArea.Width / relation);
					}
					else
					{
						dockControllerBase.DITransient.rcDockArea.Width = size.Width;
					}
				}
				else if (size != Size.Empty && (dockControllerBase.DITransient.rcDockArea.Height == 0 || dockControllerBase.DITransient.rcDockArea.Width == 0))
				{
					dockControllerBase.DITransient.rcDockArea = new Rectangle(dockControllerBase.DITransient.rcDockArea.Location, size);
				}
			}
			else if (size != Size.Empty && (dockControllerBase.DITransient.rcDockArea.Height == 0 || dockControllerBase.DITransient.rcDockArea.Width == 0))
			{
				dockControllerBase.DITransient.rcDockArea = new Rectangle(dockControllerBase.DITransient.rcDockArea.Location, size);
			}
			size = dockControllerBase.DITransient.rcDockArea.Size;
			dockControllerBase = sizingController;
			sizingController = sizingController.ParentController as SizingController;
		}
		dockControllerBase.DITransient.rcDockArea = base.DITransient.rcDockArea;
		int splitterWidth = dockingMgr.SplitterWidth;
		if (dockControllerBase.LayoutRect.Height - splitterWidth <= 0 || dockControllerBase.LayoutRect.Width - splitterWidth <= 0)
		{
			dockControllerBase.LayoutRect = dockControllerBase.DITransient.rcDockArea;
		}
		arrayList.Clear();
	}

	public void TransitDockToFloat()
	{
		if (Floating)
		{
			return;
		}
		Control[] array = null;
		if (ctrlDockTab == null)
		{
			array = new Control[1] { ctrlHost.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			alFloatDCR.Clear();
			if (dockInfoPrevious.dController != null)
			{
				dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
			}
			ParentController.ControllerChanged += dhc_ControllerChanged;
			dockInfoPrevious = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			Point ptlocation = ctrlHost.Parent.PointToScreen(ctrlHost.Location);
			dockingMgr.UndockFromController(this);
			HideCaption = true;
			bFloating = true;
			CreateFloatingFrame(ptlocation, show: true);
			dockingMgr.UpdateFloatingFormsImages();
		}
		else
		{
			DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
			array = new Control[dockTabController.TabControl.TabCount];
			int num = 0;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				array[num++] = tabPage.dhcClient.HostControl.Controls[0];
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			dockTabController.DINew = new DockInfo(dockInfoNew);
			dockTabController.TransitDockToFloat();
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
	}

	public void TransitFloatToDock()
	{
		if (bFloatOnly || !Floating)
		{
			return;
		}
		Control[] array = null;
		if (ctrlDockTab == null)
		{
			array = new Control[1] { ctrlHost.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			alDockDCR.Clear();
			if (dockInfoPrevious.dController != null)
			{
				dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
			}
			if (ParentController != null)
			{
				ParentController.ControllerChanged += dhc_ControllerChanged;
				dockInfoPrevious = new DockInfo(ParentController, DockingStyle.Fill, 0, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
				ExitFloatingFrame();
			}
			else
			{
				dockInfoPrevious = new DockInfo(null, DockingStyle.Fill, 0, 0, dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			}
			bFloating = false;
			HideCaption = false;
			dockInfoNew.dController.InvokeDocking(this);
			base.DockEdge = DINew.dStyle;
		}
		else
		{
			DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
			array = new Control[dockTabController.TabControl.TabCount];
			int num = 0;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				array[num++] = tabPage.dhcClient.HostControl.Controls[0];
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			dockTabController.DINew = new DockInfo(dockInfoNew);
			dockTabController.TransitFloatToDock();
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
	}

	public void TransitDockInFloatToFloat()
	{
		if (!Floating)
		{
			return;
		}
		Control[] array = null;
		if (ctrlDockTab == null)
		{
			array = new Control[1] { ctrlHost.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			alFloatDCR.Clear();
			Point ptlocation = ctrlHost.Parent.PointToScreen(ctrlHost.Location);
			dockingMgr.UndockFromController(this);
			InternalFloatWrapper = null;
			HideCaption = true;
			CreateFloatingFrame(ptlocation, show: true);
			dockingMgr.UpdateFloatingFormsImages();
		}
		else
		{
			DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
			array = new Control[dockTabController.TabControl.TabCount];
			int num = 0;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				array[num++] = tabPage.dhcClient.HostControl.Controls[0];
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			dockTabController.DINew = new DockInfo(dockInfoNew);
			dockTabController.TransitDockInFloatToFloat();
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
	}

	public void TransitFloatToDockInFloat()
	{
		if (!Floating)
		{
			return;
		}
		Control[] array = null;
		if (ctrlDockTab == null)
		{
			array = new Control[1] { ctrlHost.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			alFloatDCR.Clear();
			HideCaption = false;
			ExitFloatingFrame();
			dockInfoNew.dController.InvokeDocking(this);
			dockingMgr.UpdateFloatingFormsImages();
			SharedForm = null;
		}
		else
		{
			DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
			array = new Control[dockTabController.TabControl.TabCount];
			int num = 0;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				array[num++] = tabPage.dhcClient.HostControl.Controls[0];
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			dockTabController.DINew = new DockInfo(dockInfoNew);
			dockTabController.TransitFloatToDockInFloat();
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
	}

	public void TransitDockToDockInFloat()
	{
		if (Floating)
		{
			return;
		}
		Control[] array = null;
		if (ctrlDockTab == null)
		{
			array = new Control[1] { ctrlHost.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			if (dockInfoPrevious.dController != null)
			{
				dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
			}
			ParentController.ControllerChanged += dhc_ControllerChanged;
			dockInfoPrevious = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			alFloatDCR.Clear();
			dockingMgr.UndockFromController(this);
			bFloating = true;
			dockInfoNew.dController.InvokeDocking(this);
			dockingMgr.UpdateFloatingFormsImages();
		}
		else
		{
			DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
			array = new Control[dockTabController.TabControl.TabCount];
			int num = 0;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				array[num++] = tabPage.dhcClient.HostControl.Controls[0];
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			dockTabController.DINew = new DockInfo(dockInfoNew);
			dockTabController.TransitDockToDockInFloat();
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
	}

	public void TransitDockToDock()
	{
		Control[] array = null;
		if (ctrlDockTab == null)
		{
			array = new Control[1] { ctrlHost.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			alDockDCR.Clear();
			dockingMgr.UndockFromController(this);
			InternalDockWrapper = null;
			dockInfoNew.dController.InvokeDocking(this);
		}
		else
		{
			DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
			array = new Control[dockTabController.TabControl.TabCount];
			int num = 0;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				array[num++] = tabPage.dhcClient.HostControl.Controls[0];
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			dockTabController.DINew = new DockInfo(dockInfoNew);
			dockTabController.TransitDockToDock();
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
	}

	public void MoveFloatToFloat()
	{
		if (dockInfoNew.rcDockArea.Y < 0 && Cursor.Position.Y >= 0)
		{
			dockInfoNew.rcDockArea.Y = 0;
		}
		ctrlHost.Parent.Location = new Point(dockInfoNew.rcDockArea.X, dockInfoNew.rcDockArea.Y);
		ctrlHost.DragRectangle = new Rectangle(ctrlHost.Parent.Location.X, ctrlHost.Parent.Location.Y, ctrlHost.Bounds.Width, ctrlHost.Bounds.Height);
		dockInfoCurrent.rcDockArea = ctrlHost.DragRectangle;
		if (ctrlDockTab != null)
		{
			ctrlDockTab.InternalController.DICurrent.rcDockArea = dockInfoCurrent.rcDockArea;
		}
	}

	internal void MoveFloat()
	{
		if (dockInfoNew.rcControlArea.Y < 0 && Cursor.Position.Y >= 0)
		{
			dockInfoNew.rcControlArea.Y = 0;
		}
		Rectangle dragRectangle = GetDragRectangle();
		if (dragRectangle != Rectangle.Empty)
		{
			ctrlHost.DragRectangle = dragRectangle;
		}
		dockInfoCurrent.rcControlArea = ctrlHost.DragRectangle;
		if (ctrlDockTab != null)
		{
			ctrlDockTab.InternalController.DICurrent.rcDockArea = dockInfoCurrent.rcDockArea;
		}
	}

	public override void InvokeDocking(DockControllerBase dc)
	{
		DockStateControllerBase dockStateControllerBase = dc as DockStateControllerBase;
		if (!Floating)
		{
			dockStateControllerBase.PrevAutohideStyle = DockingStyle.None;
			if (dockStateControllerBase is DockTabController dockTabController && !Floating)
			{
				foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
				{
					tabPage.dhcClient.PrevAutohideStyle = DockingStyle.None;
				}
			}
			dockStateControllerBase.StoredDockSizes.Clear();
		}
		else
		{
			dockStateControllerBase.StoredFloatSizes.Clear();
		}
		if (DockTab != null)
		{
			dockStateControllerBase.DINew.dController = DockTab.InternalController;
		}
		if (dockStateControllerBase is DockHostController dockHostController)
		{
			dockHostController.HideCaption = false;
		}
		if (dockStateControllerBase.DINew.DP == DockPreference.Tabbed)
		{
			InvokeTabbedDocking(dockStateControllerBase, null);
		}
		else
		{
			InvokeRegularDocking(dockStateControllerBase);
		}
		if (Floating)
		{
			(ToplevelController as FloatingFormController).RefreshFormCaption();
		}
		if (dc.DockingManager != dockingMgr)
		{
			dockingMgr.ImportControl(dc);
		}
	}

	protected void InvokeRegularDocking(DockStateControllerBase ddcbase)
	{
		if (Maximized)
		{
			Maximized = false;
		}
		dockingMgr.DockToNewSizingController(ddcbase);
		SizingController sizingController = null;
		DockControllerBase dockControllerBase = null;
		if (ctrlDockTab == null)
		{
			sizingController = ParentController as SizingController;
			dockControllerBase = this;
		}
		else
		{
			sizingController = ctrlDockTab.InternalController.ParentController as SizingController;
			dockControllerBase = ctrlDockTab.InternalController;
		}
		ArrayList arrayList = (Floating ? alFloatDCR : alDockDCR);
		foreach (DCRelationship item in arrayList)
		{
			if (item.DP != DockPreference.Tabbed)
			{
				ddcbase.AddToDCR(new DCRelationship(item.nRelation, item.bChild, item.DP, item.nIndex));
			}
		}
		int hashCode = sizingController.GetHashCode();
		sizingController.DCRCurrent = new DCRelationship(hashCode, child: false, sizingController.DICurrent.DP, -1);
		ddcbase.DCRCurrent = new DCRelationship(hashCode, child: true, sizingController.DICurrent.DP, sizingController.GetChildHostIndex(ddcbase));
		dockControllerBase.InsertIntoDCR(arrayList, 0, new DCRelationship(hashCode, child: true, sizingController.DICurrent.DP, sizingController.GetChildHostIndex(dockControllerBase)));
		if (!(sizingController.ParentController is SizingController sizingController2))
		{
			return;
		}
		for (int i = 0; i < sizingController2.ChildCount; i++)
		{
			DockControllerBase childAt = sizingController2.GetChildAt(i);
			if (childAt is DockStateControllerBase dockStateControllerBase)
			{
				dockStateControllerBase.InsertIntoDCR(null, 0, new DCRelationship(hashCode, child: false, sizingController2.DICurrent.DP, sizingController2.GetChildHostIndex(dockStateControllerBase)));
			}
		}
	}

	protected virtual DockTabControl CreateDockTabControl()
	{
		return new DockTabControl(dockingMgr, this);
	}

	protected DCRelationship GetDCRelationship(DockHostController dhc, int nrelation)
	{
		IEnumerator dCR = dhc.DCR;
		while (dCR.MoveNext())
		{
			DCRelationship dCRelationship = dCR.Current as DCRelationship;
			if (dCRelationship.nRelation == nrelation)
			{
				return dCRelationship;
			}
		}
		return null;
	}

	public void InvokeTabbedDocking(DockStateControllerBase ddcbase)
	{
		InvokeTabbedDocking(ddcbase, null);
	}

	internal void InvokeTabbedDocking(DockStateControllerBase ddcbase, DCRelationship dcr)
	{
		if (ctrlDockTab == null)
		{
			ctrlDockTab = CreateDockTabControl();
			int num = dcr?.nRelation ?? ctrlDockTab.GetHashCode();
			ctrlDockTab.InternalController.DCRCurrent = new DCRelationship(num, child: false, dockInfoCurrent.DP, -1);
			ctrlDockTab.AddTab(new DockTabPage(this, ctrlHost.Text, ImageIndex));
			if (GetDCRelationship(this, num) == null)
			{
				DCRCurrent = new DCRelationship(num, child: true, DockPreference.Tabbed, 0);
			}
		}
		DockHostController dockHostController = ddcbase as DockHostController;
		if (AutoHideMode && dockHostController != null)
		{
			dockHostController.bInAutoHide = true;
		}
		ArrayList arrayList = new ArrayList();
		DockUtilities.RecGetChildControllers(ddcbase, arrayList);
		string text = null;
		foreach (DockHostController item in arrayList)
		{
			if (item.HostControl.ContainsFocus)
			{
				text = item.HostControl.Text;
				break;
			}
		}
		if (ddcbase.DINew.nDockIndex > ctrlDockTab.TabPages.Count)
		{
			ddcbase.DINew.nDockIndex = ctrlDockTab.TabPages.Count;
		}
		int num2 = ddcbase.DINew.nDockIndex;
		DCRelationship dCRelationship = GetDCRelationship(arrayList[0] as DockHostController, ctrlDockTab.InternalController.DCRCurrent.nRelation);
		bool flag = true;
		if (dcr != null && dcr.nRelation == 0)
		{
			flag = false;
		}
		if (dCRelationship != null && flag)
		{
			foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
			{
				if (tabPage.dhcClient.DCRCurrent.nIndex > dCRelationship.nIndex)
				{
					int num3 = ctrlDockTab.TabPages.IndexOf(tabPage);
					if (num2 > num3)
					{
						num2 = num3;
					}
				}
			}
		}
		bool flag2 = false;
		foreach (DockHostController item2 in arrayList)
		{
			if (item2.DICurrent.DP == DockPreference.Tabbed && item2.DockTab != null)
			{
				item2.DockTab = null;
			}
			item2.HostControl.Visible = false;
			HostControl.Parent.Controls.Add(item2.HostControl);
			DockTabPage newpage = new DockTabPage(item2, item2.HostControl.Text, item2.ImageIndex);
			ctrlDockTab.InsertTab(num2++, newpage);
			if (GetDCRelationship(item2, ctrlDockTab.InternalController.DCRCurrent.nRelation) == null)
			{
				flag2 = true;
			}
		}
		if (flag2)
		{
			foreach (DockTabPage tabPage2 in ctrlDockTab.TabPages)
			{
				tabPage2.dhcClient.DCRCurrent = new DCRelationship(ctrlDockTab.InternalController.DCRCurrent.nRelation, child: true, DockPreference.Tabbed, ctrlDockTab.TabPages.IndexOf(tabPage2));
			}
		}
		DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
		dockTabController.PauseActivation = true;
		if (text == null)
		{
			ctrlDockTab.SelectedIndex = num2 - 1;
		}
		else
		{
			foreach (DockTabPage tabPage3 in DockTab.TabPages)
			{
				if (tabPage3.Text == text)
				{
					ctrlDockTab.SelectedTab = tabPage3;
					break;
				}
			}
		}
		DockTabPage dockTabPage4 = ctrlDockTab.SelectedTab as DockTabPage;
		if (dockTabPage4.dhcClient.HostControl != HostControl)
		{
			dockTabController.HostController = dockTabPage4.dhcClient;
			dockTabPage4.dhcClient.HostControl.Size = HostControl.Size;
			dockTabPage4.dhcClient.HostControl.Location = HostControl.Location;
			dockTabController.AdjustLayout();
			dockTabPage4.dhcClient.HostControl.Visible = true;
			if (!base.DockingManager.DesignMode)
			{
				dockTabPage4.dhcClient.HostControl.Focus();
			}
			HostControl.Visible = false;
			dockTabPage4.dhcClient.DINew = new DockInfo(DINew);
		}
		dockTabController.PauseActivation = false;
		if (!AutoHideMode)
		{
			DockStateControllerWrapper dockStateControllerWrapper = null;
			if (TempWrapper != null && TempWrapper.ParentController == dockTabController.ParentController)
			{
				dockStateControllerWrapper = TempWrapper;
				dockStateControllerWrapper.InternalControl = dockTabController;
				TempWrapper = null;
			}
			else
			{
				dockStateControllerWrapper = new DockStateControllerWrapper(base.DockingManager, dockTabController);
			}
			dockTabController.SetChildWrapper(null);
			dockStateControllerWrapper.ParentController = dockTabController.ParentController;
			dockTabController.ParentController.ChildWrapper = dockStateControllerWrapper;
			dockTabController.SetChildWrapper(dockStateControllerWrapper);
			dockTabController.ParentController.ChildWrapper = null;
		}
		if (LayoutRect.Width == 0 || LayoutRect.Height == 0)
		{
			ParentController.DITransient.rcDockArea = base.DITransient.rcDockArea;
		}
		if (!Floating)
		{
			foreach (DockHostController item3 in arrayList)
			{
				foreach (DCRelationship item4 in alDockDCR)
				{
					if (item4.nRelation != item3.DCRCurrent.nRelation)
					{
						item3.AddToDCR(new DCRelationship(item4.nRelation, item4.bChild, item4.DP, item4.nIndex));
					}
				}
			}
		}
		else
		{
			FloatingForm floatingForm = ToplevelController.HostControl as FloatingForm;
			floatingForm.PaintNCArea();
		}
		if (Minimized != Minimization.None)
		{
			ParentController.Minimized = Minimized;
		}
		if (Maximized)
		{
			ddcbase.Maximized = true;
			if (dockTabController != null)
			{
				dockTabController.StoredSizes = m_storedSizes;
			}
		}
		if (FreezeResize || ddcbase.FreezeResize)
		{
			(ParentController as DockTabController).MustResize = Direction.None;
		}
		foreach (DockTabPage tabPage4 in dockTabController.TabControl.TabPages)
		{
			tabPage4.dhcClient.LayoutRect = LayoutRect;
		}
	}

	internal void HandleMaximizeButtonUp()
	{
		if (Maximized)
		{
			RestoreController();
		}
		else
		{
			MaximizeController();
		}
	}

	internal void HandleRestoreButtonUp()
	{
		RestoreController();
	}

	internal override void RestoreController()
	{
		if (ParentController is DockTabController dockTabController)
		{
			dockTabController.RestoreController();
		}
		else
		{
			base.RestoreController();
		}
	}

	internal override void MaximizeController()
	{
		if (ParentController is DockTabController dockTabController)
		{
			dockTabController.MaximizeController();
		}
		else if (base.CanMaximize)
		{
			ControlMaximizeEventArgs e = new ControlMaximizeEventArgs(HostControl.Controls[0]);
			dockingMgr.FireControlSizeStateChanged(ControlSizeStates.Maximize, e);
			if (!e.Cancel)
			{
				base.MaximizeController();
				ControlMaximizedEventArgs args = new ControlMaximizedEventArgs(HostControl.Controls[0]);
				dockingMgr.FireControlSizeStateChanged(ControlSizeStates.Maximized, args);
			}
		}
	}

	public override bool QueryRelationship(DCRelationship dcr)
	{
		ArrayList arrayList = (Floating ? alFloatDCR : alDockDCR);
		foreach (DCRelationship item in arrayList)
		{
			if (item.nRelation == dcr.nRelation && item.DP == dcr.DP && item.bChild == dcr.bChild)
			{
				return true;
			}
		}
		return false;
	}

	public override bool AttemptDCRDocking(DockControllerBase ctrl, IEnumerator iedcr)
	{
		DockHostController dockHostController = ctrl as DockHostController;
		ControllerDCRPair controllerDCRPair = null;
		DockControllerBase dockControllerBase = ParentController;
		if (dockControllerBase.ParentController == null || dockControllerBase.ParentController.MainFormController)
		{
			dockControllerBase = this;
		}
		iedcr.Reset();
		while (iedcr.MoveNext())
		{
			controllerDCRPair = IterChildControllers(dockControllerBase, iedcr.Current as DCRelationship);
			if (controllerDCRPair != null)
			{
				dockHostController.DINew.dController = controllerDCRPair.Controller;
				dockHostController.DINew.DP = controllerDCRPair.DCR.DP;
				dockHostController.DINew.nDockIndex = controllerDCRPair.DCR.nIndex;
				dockHostController.DINew.dController.InvokeDCRDocking(dockHostController, controllerDCRPair.DCR);
				return true;
			}
		}
		return false;
	}

	public override void InvokeDCRDocking(DockControllerBase dc, DCRelationship dcr)
	{
		DockStateControllerBase dockStateControllerBase = dc as DockStateControllerBase;
		if (ParentController is DockTabController)
		{
			dockStateControllerBase.DINew.dController = ParentController;
			if (DockTab == null)
			{
				DockTabControl tabControl = (ParentController as DockTabController).TabControl;
				foreach (DockTabPage tabPage in tabControl.TabPages)
				{
					if (tabPage.dhcClient == this)
					{
						tabControl.SelectedTab = tabPage;
						break;
					}
				}
			}
		}
		if (dockStateControllerBase.DINew.DP == DockPreference.Tabbed)
		{
			InvokeTabbedDocking(dockStateControllerBase, dcr);
		}
		else
		{
			InvokeInternalDCRDocking(dockStateControllerBase, dcr);
		}
	}

	protected void InvokeInternalDCRDocking(DockStateControllerBase ddcbase, DCRelationship dcr)
	{
		IEnumerator dCR = DCR;
		DCRelationship dCRelationship = null;
		while (dCR.MoveNext())
		{
			dCRelationship = dCR.Current as DCRelationship;
			if (dCRelationship.nRelation == dcr.nRelation)
			{
				break;
			}
		}
		if (dCRelationship.nIndex < ddcbase.DINew.nDockIndex)
		{
			ddcbase.DINew.dStyle = ((ddcbase.DINew.DP == DockPreference.Horizontal) ? DockingStyle.Right : DockingStyle.Bottom);
		}
		else
		{
			ddcbase.DINew.dStyle = ((ddcbase.DINew.DP != DockPreference.Horizontal) ? DockingStyle.Top : DockingStyle.Left);
		}
		int num = LayoutRect.Width - LayoutRect.Width / dockingMgr.MaxRedockFactor;
		int num2 = LayoutRect.Height - LayoutRect.Height / dockingMgr.MaxRedockFactor;
		if (ddcbase.DINew.DP == DockPreference.Horizontal && ddcbase.DINew.rcDockArea.Width > num)
		{
			ddcbase.DINew.rcDockArea = new Rectangle(0, 0, num, LayoutRect.Height);
		}
		else if (ddcbase.DINew.DP == DockPreference.Vertical && ddcbase.DINew.rcDockArea.Height > num2)
		{
			ddcbase.DINew.rcDockArea = new Rectangle(0, 0, LayoutRect.Width, num2);
		}
		dockingMgr.DockToNewSizingController(ddcbase);
		SizingController sizingController = null;
		sizingController = ((ctrlDockTab != null) ? (ctrlDockTab.InternalController.ParentController as SizingController) : (ParentController as SizingController));
		sizingController.DCRCurrent = new DCRelationship(dcr.nRelation, child: false, sizingController.DICurrent.DP, -1);
	}

	public override DockControllerBase RedockController(DockInfo di, bool bforcenew)
	{
		Rectangle rcDockArea = dockInfoNew.rcDockArea;
		dockInfoNew = new DockInfo(di);
		if (di.rcDockArea == Rectangle.Empty)
		{
			dockInfoNew.rcDockArea = rcDockArea;
		}
		if (!bforcenew)
		{
			if (dockInfoNew.dController.Floating)
			{
				TransitFloatToDockInFloat();
			}
			else
			{
				TransitFloatToDock();
			}
		}
		else
		{
			if (dockInfoPrevious.dController != null)
			{
				dockInfoPrevious.dController.ControllerChanged -= dhc_ControllerChanged;
			}
			ParentController.ControllerChanged += dhc_ControllerChanged;
			dockInfoPrevious = new DockInfo(ParentController, DockingStyle.Fill, 0, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			ExitFloatingFrame();
			alDockDCR.Clear();
			dockingMgr.DockToNewSizingController(this);
			SizingController sizingController = ParentController as SizingController;
			int hashCode = sizingController.GetHashCode();
			sizingController.DCRCurrent = new DCRelationship(hashCode, child: false, sizingController.DICurrent.DP, -1);
			for (int i = 0; i < sizingController.ChildCount; i++)
			{
				if (sizingController.GetChildAt(i) is DockHostController dockHostController)
				{
					dockHostController.InsertIntoDCR(null, 0, new DCRelationship(hashCode, child: true, sizingController.DICurrent.DP, sizingController.GetChildHostIndex(dockHostController)));
				}
			}
		}
		if (dockInfoCurrent.DP == DockPreference.Tabbed)
		{
			return ParentController;
		}
		return this;
	}

	public override void UpdateDCRIndex(DCRelationship dcrs)
	{
		ArrayList arrayList = (Floating ? alFloatDCR : alDockDCR);
		bool flag = false;
		foreach (DCRelationship item in arrayList)
		{
			if (item.nRelation == dcrs.nRelation)
			{
				item.nIndex = dcrs.nIndex;
				flag = true;
			}
		}
		if (!flag)
		{
			InsertIntoDCR(arrayList, 0, new DCRelationship(dcrs.nRelation, child: true, dcrs.DP, ParentController.GetChildHostIndex(this)));
		}
	}

	public virtual FloatingForm CreateFloatingFrame(Point ptlocation, bool show)
	{
		bool restored = false;
		FloatingForm floatingForm = SelectActivationForm(ref restored);
		if (floatingForm.InternalController.DockingManager != dockingMgr)
		{
			floatingForm.InternalController.DockingManager = dockingMgr;
		}
		if (dockInfoNew.rcDockArea.Width <= 0 || dockInfoNew.rcDockArea.Height <= 0)
		{
			if (ptlocation != Point.Empty)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.MoveWindow(floatingForm.Handle, ptlocation.X, ptlocation.Y, 0, 0, bRepaint: false);
				floatingForm.Size = ctrlHost.Bounds.Size;
				dockInfoNew.rcDockArea = floatingForm.Bounds;
				ctrlHost.DragRectangle = dockInfoNew.rcDockArea;
			}
		}
		else
		{
			if (dockInfoNew.rcDockArea.Y < 0 && Cursor.Position.Y >= 0)
			{
				dockInfoNew.rcDockArea.Y = 0;
			}
			if (DINew.rcDockArea != Rectangle.Empty)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.MoveWindow(floatingForm.Handle, dockInfoNew.rcDockArea.Left, dockInfoNew.rcDockArea.Top, 0, 0, bRepaint: false);
			}
			floatingForm.Size = ctrlHost.DragRectangle.Size;
		}
		HideCaption = false;
		if (dockingMgr.bLoadVisibility)
		{
			floatingForm.Enable(show);
		}
		if (restored && InternalFloatWrapper != null && InternalFloatWrapper.ParentController != null && InternalFloatWrapper.ParentController.ChildControllers.Contains(InternalFloatWrapper))
		{
			InternalTransitToPrevState(floating: true);
		}
		else
		{
			floatingForm.InternalController.AddChild(this, DockingStyle.Fill);
		}
		dockingMgr.UpdateFloatingFormsImages();
		floatingForm.Controls.Add(ctrlHost);
		(floatingForm.InternalController as FloatingFormController).RefreshFormCaption();
		SetToolTipFloatingControl(ctrlHost.Controls);
		floatingForm.InternalController.AdjustLayout();
		RightToLeft rtlEffective = (dockingMgr.IsMirrored ? RightToLeft.Yes : RightToLeft.No);
		floatingForm.UpdateChildsRightToLeft(rtlEffective);
		if (base.DockingManager.VisualStyle != VisualStyle.Default && base.DockingManager.VisualStyle != VisualStyle.VS2005)
		{
			NativeMethodsHelper.RedrawWindow(floatingForm.Handle, 1153);
		}
		if (dockingMgr.DesignMode)
		{
			ctrlHost.Focus();
		}
		return floatingForm;
	}

	protected virtual FloatingForm SelectActivationForm(ref bool restored)
	{
		FloatingForm floatingForm;
		if (SharedForm != null && !SharedForm.IsDisposed && !SharedForm.Used && m_form != SharedForm)
		{
			SharedForm.Used = true;
			floatingForm = SharedForm;
			floatingForm.FormOwner.InternalForm = m_form;
			floatingForm.FormOwner = this;
			floatingForm.Enabled = true;
			m_form = floatingForm;
			restored = true;
			base.DockingManager.AddFFController(floatingForm.InternalController as FloatingFormController);
		}
		else if (m_form == null || m_form.IsDisposed || m_form.InternalController == null || m_form.IsDisposed)
		{
			floatingForm = (InternalForm = base.DockingManager.CreateFloatingForm());
		}
		else
		{
			floatingForm = m_form;
			floatingForm.Enabled = true;
			m_form.Used = true;
			base.DockingManager.AddFFController(floatingForm.InternalController as FloatingFormController);
			if (m_form == SharedForm && !Floating)
			{
				restored = true;
			}
		}
		return floatingForm;
	}

	private void SetToolTipFloatingControl(Control.ControlCollection cntrls)
	{
		string empty = string.Empty;
		if (dockingMgr.HostFormComponents == null)
		{
			return;
		}
		foreach (Component hostFormComponent in dockingMgr.HostFormComponents)
		{
			if (!(hostFormComponent is ToolTip))
			{
				continue;
			}
			ToolTip toolTip = new ToolTip();
			foreach (Control cntrl in cntrls)
			{
				empty = ((ToolTip)hostFormComponent).GetToolTip(cntrl);
				if (empty.Length != 0)
				{
					toolTip.SetToolTip(cntrl, empty);
				}
				if (cntrl.Controls.Count > 0)
				{
					SetToolTipFloatingControl(cntrl.Controls);
				}
			}
		}
	}

	protected internal virtual void ExitFloatingFrame()
	{
		FloatingForm floatingForm = ctrlHost.ParentForm as FloatingForm;
		dockInfoCurrent.rcDockArea = floatingForm.Bounds;
		dockInfoPrevious.rcDockArea.Location = floatingForm.Location;
		ctrlHost.DragRectangle = floatingForm.Bounds;
		dockingMgr.UndockFromController(this);
		AssignFormBelongings(floatingForm);
	}

	internal virtual void AssignFormBelongings(FloatingForm frmfloat)
	{
		if (frmfloat == InternalForm)
		{
			frmfloat.Disable();
			if (DINew.dController != null && frmfloat.InternalController.DockingManager != DINew.dController.DockingManager)
			{
				frmfloat.InternalController.DockingManager = DINew.dController.DockingManager;
			}
			m_form = frmfloat;
			m_form.FormOwner = this;
			m_form.Used = false;
		}
		else
		{
			(frmfloat.InternalController as FloatingFormController).RefreshFormCaption();
		}
		SharedForm = frmfloat;
	}

	public void ToggleAutoHideMode(bool animate)
	{
		Control[] array = null;
		bool bFreezeDockStateChangeEvents = base.DockingManager.bFreezeDockStateChangeEvents;
		if (!bInAutoHide)
		{
			if (dockingMgr.alDockAreaControllers[0] is MainFormController mainFormController && AttemptPrevAHDocking(mainFormController.GetAHTabControl(DINew.dStyle), this, animate))
			{
				return;
			}
			if (!(ParentController is DockTabController))
			{
				array = new Control[1] { ctrlHost.Controls[0] };
				dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
				base.DockingManager.bFreezeDockStateChangeEvents = true;
				EnterAutoHideMode(animate);
			}
			else
			{
				DockTabController dockTabController = ParentController as DockTabController;
				if (ctrlDockTab == null)
				{
					dockTabController.SelectedController = this;
				}
				array = new Control[dockTabController.TabControl.TabCount];
				int num = 0;
				foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
				{
					array[num++] = tabPage.dhcClient.HostControl.Controls[0];
				}
				dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
				base.DockingManager.bFreezeDockStateChangeEvents = true;
				dockTabController.EnterAutoHideMode();
			}
			base.DockingManager.bFreezeDockStateChangeEvents = bFreezeDockStateChangeEvents;
			dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
			return;
		}
		if (!(ParentController is DockTabController))
		{
			array = new Control[1] { ctrlHost.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			base.DockingManager.bFreezeDockStateChangeEvents = true;
			ExitAutoHideMode(bcloseonexit: false);
		}
		else
		{
			DockTabController dockTabController2 = ParentController as DockTabController;
			if (ctrlDockTab == null)
			{
				dockTabController2.SelectedController = this;
			}
			array = new Control[dockTabController2.TabControl.TabCount];
			int num2 = 0;
			foreach (DockTabPage tabPage2 in dockTabController2.TabControl.TabPages)
			{
				array[num2++] = tabPage2.dhcClient.HostControl.Controls[0];
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
			base.DockingManager.bFreezeDockStateChangeEvents = true;
			dockTabController2.ExitAutoHideMode(bcloseonexit: false);
		}
		ctrlHost.Controls[0].Focus();
		base.DockingManager.bFreezeDockStateChangeEvents = bFreezeDockStateChangeEvents;
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
	}

	internal bool AttemptPrevAHDocking(AHTabControl autoHideTab, DockControllerBase ctrl, bool animate)
	{
		bool result = false;
		if (autoHideTab != null)
		{
			for (int i = 0; i < autoHideTab.TabPages.Count; i++)
			{
				if (!(autoHideTab.TabPages[i] is AHTabPage aHTabPage) || aHTabPage.m_dhcClient.DCRCurrent == null || ctrl.DCRCurrent == null || aHTabPage.m_dhcClient.DCRCurrent.nRelation != ctrl.DCRCurrent.nRelation || ctrl.DCRCurrent.DP != DockPreference.Tabbed || ctrl.DCRCurrent.nRelation == 0)
				{
					continue;
				}
				DockingStyle dStyle = aHTabPage.m_dhcClient.DINew.dStyle;
				DockStateControllerBase dhcClient = aHTabPage.m_dhcClient;
				if (!animate)
				{
					result = true;
					if (ctrl.ParentController != null && ctrl.ParentController.GetChildHostIndex(ctrl) != -1)
					{
						dockingMgr.UndockFromController(ctrl);
					}
					autoHideTab.RemoveTab(dhcClient);
					Size size = DINew.rcDockArea.Size;
					dockingMgr.HostControl.Controls.Add(ctrl.HostControl);
					DockInfo dITransient = dhcClient.DITransient;
					dhcClient.AttemptDCRDocking(ctrl, ctrl.DCR);
					((DockStateControllerBase)ctrl).DINew.dStyle = dStyle;
					DockHostController dockHostController = ctrl as DockHostController;
					if (dhcClient is DockTabController)
					{
						autoHideTab.AddTab(dhcClient, bshowcontrol: false);
						if (dockHostController.DINew.rcDockArea.Size == Size.Empty)
						{
							dockHostController.DINew.rcDockArea.Size = size;
						}
					}
					else
					{
						DockTabController dockTabController = dhcClient.ParentController as DockTabController;
						autoHideTab.AddTab(dockTabController, bshowcontrol: false);
						dockTabController.DINew.dStyle = dStyle;
						dockTabController.bInAutoHide = true;
						dockTabController.DITransient = dITransient;
						dockTabController.DINew.rcDockArea.Size = size;
						dockTabController.TabControl.Size = size;
						foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
						{
							DockStateControllerBase dhcClient2 = tabPage.dhcClient;
							dhcClient2.DINew.rcDockArea.Size = dockTabController.TabControl.Size;
							dhcClient2.DITransient.rcDockArea.Size = dockTabController.TabControl.Size;
						}
					}
					(ctrl as DockHostController).bInAutoHide = true;
				}
				else
				{
					autoHideTab.ShowController(dhcClient, bAnimate: false);
					dhcClient.ExitAutoHideMode(bcloseonexit: false);
				}
				break;
			}
		}
		return result;
	}

	public void ToggleAutoHideMode()
	{
		ToggleAutoHideMode(animate: true);
	}

	protected void EnterAutoHideMode(bool animate)
	{
		bool flag = false;
		if (base.DockingManager.HostForm != null)
		{
			flag = base.DockingManager.HostForm.Visible;
		}
		MainFormController mainFormController = dockingMgr.alDockAreaControllers[0] as MainFormController;
		if (ctrlDockTab == null)
		{
			if (Maximized)
			{
				RestoreController();
			}
			if (animate)
			{
				ParentController.ControllerChanged += TransientControllerChanged;
				dockInfoTransient = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			}
			bInAutoHide = true;
			mainFormController.EnterAutoHideMode(this, animate);
			DockControllerBase childAt = ParentController.GetChildAt(1);
			DragSplitter dragSplitter = childAt.HostControl as DragSplitter;
			dragSplitter.DragSplitterMoved += DHCDragSplitterMoved;
		}
		mainFormController.AdjustLayout();
		if (base.DockingManager.AHInViewTab != null)
		{
			base.DockingManager.AHInViewTab.HideController(null, animate, bhidenow: true);
		}
		if (base.DockingManager.HostForm != null && !flag && base.DockingManager.HostForm.Visible)
		{
			base.DockingManager.HostForm.Visible = flag;
		}
	}

	public override void EnterAutoHideMode()
	{
		EnterAutoHideMode(animate: true);
	}

	public void LoadInAutoHideMode()
	{
		MainFormController mainFormController = ToplevelController as MainFormController;
		dockInfoTransient = new DockInfo(dockInfoCurrent.dController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, dockInfoCurrent.nDockIndex, dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
		bInAutoHide = true;
		mainFormController.LoadInAutoHideMode(this);
		DockControllerBase childAt = ParentController.GetChildAt(1);
		DragSplitter dragSplitter = childAt.HostControl as DragSplitter;
		dragSplitter.DragSplitterMoved += DHCDragSplitterMoved;
		mainFormController.AdjustLayout();
	}

	public override void ExitAutoHideMode(bool bcloseonexit)
	{
		dockingMgr.HostControl.SuspendLayout();
		MainFormController mainFormController = ToplevelController as MainFormController;
		if (ctrlDockTab == null)
		{
			if (dockInfoTransient.dController != null)
			{
				dockInfoTransient.dController.ControllerChanged -= TransientControllerChanged;
			}
			bInAutoHide = false;
			DockControllerBase childAt = ParentController.GetChildAt(1);
			DragSplitter dragSplitter = childAt.HostControl as DragSplitter;
			dragSplitter.DragSplitterMoved -= DHCDragSplitterMoved;
			mainFormController.ExitAutoHideMode(this, bcloseonexit);
			bAutoHideSizing = false;
		}
		mainFormController.AdjustLayout();
		dockingMgr.HostControl.ResumeLayout();
	}

	public void DHCDragSplitterMoved(object sender, SplitterEventArgs args)
	{
		if (!bInAutoHide)
		{
			return;
		}
		if (DICurrent.DP == DockPreference.Tabbed)
		{
			if (ctrlDockTab != null)
			{
				DINew.rcDockArea = DICurrent.rcDockArea;
			}
		}
		else
		{
			DINew.rcDockArea = DICurrent.rcDockArea;
		}
	}

	public DockInfo GetSerCurrentDI()
	{
		DockInfo nullInfo = DockInfo.NullInfo;
		if (!DockVisibility)
		{
			if (m_prevWrapper == null || m_prevWrapper.ParentController.Floating)
			{
				nullInfo = new DockInfo(null, DockingStyle.Fill, 0, 0, DockPreference.All, dockInfoTransient.rcDockArea);
			}
			else
			{
				MainFormController mainFormController = m_prevWrapper.ParentController.ToplevelController as MainFormController;
				nullInfo = ((dockInfoTransient.dController != mainFormController) ? new DockInfo(mainFormController.GetDockInfoForController(dockInfoTransient.dController)) : new DockInfo(dockInfoTransient));
			}
		}
		else
		{
			if (Floating)
			{
				nullInfo = (bInMDIMode ? new DockInfo(null, DockingStyle.Fill, 0, 0, DockPreference.All, dockInfoCurrent.rcDockArea) : new DockInfo(null, DockingStyle.Fill, 0, 0, DockPreference.All, ctrlHost.ParentForm.Bounds));
			}
			else if (bInAutoHide)
			{
				MainFormController mainFormController2 = ToplevelController as MainFormController;
				DockStateControllerBase dockStateControllerBase = this;
				if (ParentController is DockTabController)
				{
					dockStateControllerBase = ParentController as DockStateControllerBase;
				}
				nullInfo = ((dockStateControllerBase.DITransient.dController != mainFormController2) ? new DockInfo(mainFormController2.GetDockInfoForController(dockStateControllerBase.DITransient.dController)) : new DockInfo(dockStateControllerBase.DITransient));
			}
			else
			{
				nullInfo = DINew;
			}
			if (ParentController is DockTabController)
			{
				DockTabController dockTabController = ParentController as DockTabController;
				foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
				{
					if (tabPage.dhcClient == this)
					{
						DCRCurrent = new DCRelationship(dockTabController.DCRCurrent.nRelation, child: true, DockPreference.Tabbed, dockTabController.TabControl.TabPages.IndexOf(tabPage));
						break;
					}
				}
			}
		}
		return nullInfo;
	}

	public DockInfo GetSerPreviousDI()
	{
		DockInfo dockInfo = new DockInfo(dockInfoPrevious);
		if (dockInfo.dController == null || dockInfo.dController.Floating)
		{
			dockInfo.DP = DockPreference.All;
		}
		dockInfo.dController = null;
		return dockInfo;
	}

	internal void AssignHitArea(HitTestArea hitTestArea)
	{
		if (hitArea != hitTestArea || Renderer.GetHighlightedButtonIndex() != Renderer.GetHitButtonIndex())
		{
			hitArea = hitTestArea;
			int thinBorderWidth = Renderer.ThinBorderWidth;
			_ = Renderer.CaptionWidth;
			Rectangle rc = new Rectangle(thinBorderWidth, thinBorderWidth, HostControl.Width - 2 * thinBorderWidth, Renderer.CaptionWidth);
			HostControl.Invalidate(rc, invalidateChildren: true);
		}
	}

	private bool HitOnCaption(Point pt)
	{
		if (RendererStyle == VisualStyle.Default || (RendererStyle == VisualStyle.VS2005 && Floating))
		{
			CaptionPainter.CaptionHitTest captionHitTest = ctrlHost.TitleBar.HitTest(MouseAction.LBtnDown, pt);
			return captionHitTest == CaptionPainter.CaptionHitTest.CaptionRect;
		}
		if (Floating)
		{
			if (IsSingleFloatControl)
			{
				pt.Offset(Renderer.ThinBorderWidth, Renderer.ThinBorderWidth + Renderer.CaptionWidth);
			}
			else
			{
				pt.Offset(Renderer.ThinBorderWidth, Renderer.ThinBorderWidth);
			}
		}
		HitTestArea hitTestArea = Renderer.HitTest(MouseButtons.Left, pt);
		AssignHitArea(hitTestArea);
		return hitTestArea == HitTestArea.Caption;
	}

	protected internal void HandleMouseDownImp(MouseButtons button, Point pt)
	{
		if (button != MouseButtons.Left)
		{
			return;
		}
		DockTabController dockTabController = ParentController as DockTabController;
		if (bAutoHideSizing || (dockTabController != null && dockTabController.bAutoHideSizing) || !HitOnCaption(pt))
		{
			return;
		}
		DragAllowEventArgs e = new DragAllowEventArgs(ctrlHost.Controls[0]);
		dockingMgr.FireDragAllowEvent(e);
		if (!dockingMgr.DesignProcess && dockingMgr.DragProvider is BorderDragProvider)
		{
			ctrlHost.Capture = true;
		}
		if (!e.Cancel)
		{
			dockingMgr.DragProvider.ProcessMouseDown(this, ctrlHost, ctrlHost.PointToScreen(pt));
			Rectangle dragRectangle = GetDragRectangle();
			if (dragRectangle != Rectangle.Empty)
			{
				ctrlHost.DragRectangle = dragRectangle;
			}
		}
	}

	private Rectangle GetDragRectangle()
	{
		Rectangle result = Rectangle.Empty;
		if (Floating)
		{
			if (bHideCaption || !(ParentController is FloatingFormController))
			{
				if (!ctrlHost.Parent.Size.Equals(ctrlHost.DragRectangle.Size))
				{
					if (ParentController is SizingController)
					{
						result = ctrlHost.Bounds;
						result.Height += SystemInformation.ToolWindowCaptionHeight;
					}
					else
					{
						result = ctrlHost.Parent.Bounds;
					}
					result.Inflate(3, 3);
				}
			}
			else if (!ctrlHost.Size.Equals(ctrlHost.DragRectangle.Size))
			{
				result = ctrlHost.Bounds;
			}
		}
		return result;
	}

	private bool CheckHitValue(CaptionPainter.CaptionHitTest hitTest, CaptionPainter.CaptionHitTest targetHitTest, HitTestArea hitTestArea)
	{
		if (RendererStyle == VisualStyle.Default)
		{
			return hitTest == targetHitTest;
		}
		return hitArea == hitTestArea;
	}

	protected internal void HandleMouseUpImp(MouseButtons button, Point pt)
	{
		base.DockingManager.LockActivationEvents++;
		try
		{
			if (ctrlHost.Capture)
			{
				ctrlHost.Capture = false;
			}
			if (dockingMgr.DragProvider.DraggingControl == null)
			{
				MouseAction action = ((button == MouseButtons.Right) ? MouseAction.RBtnUp : MouseAction.LBtnUp);
				if (button == MouseButtons.Left)
				{
					dockingMgr.DragProvider.ProcessMouseUp(this, ctrlHost, ctrlHost.PointToScreen(pt));
				}
				CaptionPainter.CaptionHitTest hitTest = CaptionPainter.CaptionHitTest.None;
				DockTabController dockTabController = ParentController as DockTabController;
				if (bAutoHideSizing || (dockTabController != null && dockTabController.bAutoHideSizing))
				{
					return;
				}
				if (RendererStyle == VisualStyle.Default)
				{
					hitTest = ctrlHost.TitleBar.HitTest(action, pt);
				}
				else
				{
					HostControl.Invalidate(invalidateChildren: true);
					HostControl.Update();
					AssignHitArea(Renderer.HitTest(button, pt));
				}
				if (dockingMgr.DesignProcess)
				{
					return;
				}
				if (CheckHitValue(hitTest, CaptionPainter.CaptionHitTest.ButtonUp, HitTestArea.Button) && button == MouseButtons.Left)
				{
					int num = ((base.DockingManager.VisualStyle == VisualStyle.Default) ? ctrlHost.cpTitleBar.GetCaptionButtonIndex() : Renderer.GetHitButtonIndex());
					if (num >= 0)
					{
						CaptionButton captionButton = ((base.DockingManager.VisualStyle == VisualStyle.Default) ? ctrlHost.cpTitleBar.GetHitButton() : Renderer.GetHitButton());
						CancelEventArgs e = new CancelEventArgs(cancel: false);
						captionButton.FireClickEvent(e);
						if (captionButton != null && !e.Cancel)
						{
							switch (captionButton.Type)
							{
							case CaptionButtonType.Close:
								if (ctrlDockTab != null && bHideCaption)
								{
									TabhostCloseAllControllers();
									break;
								}
								bClosingByMouse = true;
								DockVisibility = false;
								bClosingByMouse = false;
								break;
							case CaptionButtonType.Pin:
								hitArea = HitTestArea.None;
								if (button == MouseButtons.Left)
								{
									dockingMgr.DragProvider.ProcessMouseUp(this, ctrlHost, ctrlHost.PointToScreen(pt));
								}
								ToggleAutoHideMode();
								break;
							case CaptionButtonType.Menu:
								if (ctrlHost.Controls[0] != null && !ctrlHost.Controls[0].ContainsFocus)
								{
									ctrlHost.Controls[0].Focus();
								}
								dockingMgr.ShowMenu(this, ctrlHost.PointToScreen(pt));
								hitArea = HitTestArea.None;
								break;
							case CaptionButtonType.Maximize:
								HandleMaximizeButtonUp();
								break;
							case CaptionButtonType.Restore:
								HandleRestoreButtonUp();
								break;
							}
						}
					}
				}
				if (button == MouseButtons.Right && CheckHitValue(hitTest, CaptionPainter.CaptionHitTest.CaptionRect, HitTestArea.Caption))
				{
					if (ctrlHost.Controls[0] != null && !ctrlHost.Controls[0].ContainsFocus)
					{
						ctrlHost.Controls[0].Focus();
					}
					dockingMgr.ShowMenu(this, ctrlHost.PointToScreen(pt));
					hitArea = HitTestArea.None;
				}
			}
			else if (button == MouseButtons.Left)
			{
				if (HostControl.ContainsFocus)
				{
					Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus());
				}
				dockingMgr.DragProvider.ProcessMouseUp(this, ctrlHost, ctrlHost.PointToScreen(pt));
			}
		}
		finally
		{
			base.DockingManager.LockActivationEvents--;
		}
	}

	protected internal void HandleMouseMoveImp(MouseButtons button, Point pt)
	{
		Point ptscreen = ctrlHost.PointToScreen(pt);
		if (dockingMgr.DragProvider.DraggingControl == null)
		{
			if (RendererStyle == VisualStyle.Default)
			{
				CaptionPainter.CaptionHitTest captionHitTest = ctrlHost.TitleBar.HitTest(MouseAction.MouseMove, pt);
				if (captionHitTest == CaptionPainter.CaptionHitTest.ButtonDown || captionHitTest == CaptionPainter.CaptionHitTest.ButtonUp || captionHitTest == CaptionPainter.CaptionHitTest.ButtonRect)
				{
					int captionButtonIndex = ctrlHost.cpTitleBar.GetCaptionButtonIndex();
					if (captionButtonIndex >= 0 && ctrlHost.cpTitleBar.GetHitButton().Type == CaptionButtonType.Close)
					{
						return;
					}
				}
			}
			else
			{
				AssignHitArea(Renderer.HitTest(MouseButtons.None, pt));
			}
		}
		if (button == MouseButtons.Left)
		{
			dockingMgr.DragProvider.ProcessMouseMove(this, ctrlHost, ptscreen);
		}
	}

	protected internal void HandleDoubleClickImp(Point ptclient)
	{
		if (AutoHideMode)
		{
			return;
		}
		dockingMgr.DragProvider.TerminateDrag(HostControl as IDraggable, HostControl.PointToScreen(ptclient));
		bool flag = false;
		if (base.DockingManager.VisualStyle == VisualStyle.Default)
		{
			if (HitOnCaption(ptclient))
			{
				flag = true;
			}
		}
		else if (Renderer.HitTest(MouseButtons.None, ptclient) == HitTestArea.Caption)
		{
			flag = true;
		}
		if (flag)
		{
			bool allowFloating = AllowFloating;
			if (ParentController is DockTabController)
			{
				allowFloating = ParentController.AllowFloating;
			}
			if ((dockingMgr.DisallowFloating || !allowFloating) && !Floating)
			{
				return;
			}
			DragAllowEventArgs e = new DragAllowEventArgs(ctrlHost.Controls[0]);
			dockingMgr.FireDragAllowEvent(e);
			if (!e.Cancel)
			{
				Control control = null;
				if (ctrlHost.ContainsFocus)
				{
					control = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus());
				}
				dockingMgr.DragProvider.ProcessDoubleClick();
				if (ctrlDockTab == null)
				{
					InvokePrevDockFloatTransition(showFloating: true);
				}
				else
				{
					DockTabController dockTabController = ctrlDockTab.InternalController as DockTabController;
					dockTabController.InvokePrevDockFloatTransition(showFloating: true);
				}
				dockingMgr.UpdateFloatingFormsImages();
				if (!base.DockingManager.DesignProcess)
				{
					ctrlHost.Parent.Focus();
					if (control != null)
					{
						control.Focus();
					}
					else
					{
						ctrlHost.Controls[0].Focus();
					}
				}
			}
		}
		if (dockingMgr.DesignMode)
		{
			dockingMgr.UpdateDesigner();
		}
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && ctrlHost != null)
		{
			ctrlHost.Dispose();
			ctrlHost = null;
		}
		base.Dispose(bdisposing);
	}

	internal override void AddWrapper(ControllerWrapper cw)
	{
		DockHostControllerWrapper dockHostControllerWrapper = new DockHostControllerWrapper();
		dockHostControllerWrapper.LayoutRect = LayoutRect;
		dockHostControllerWrapper.ControlName = HostControl.Controls[0].Name;
		dockHostControllerWrapper.UniqueName = UniqueName;
		dockHostControllerWrapper.DockEdge = base.DockEdge;
		cw.Children.Add(dockHostControllerWrapper);
	}

	internal override void StoreControllers(ArrayList controllers)
	{
		base.StoreControllers(controllers);
		ParentController.RemoveChild(this);
		controllers.Add(this);
	}

	internal override void ApplyWrapper(ControllerWrapper cw)
	{
		base.ApplyWrapper(cw);
		LayoutControllerWrapper layoutControllerWrapper = (LayoutControllerWrapper)cw;
		LayoutRect = layoutControllerWrapper.LayoutRect;
	}

	internal override bool IsEqual(ControllerWrapper cw)
	{
		if (cw is DockHostControllerWrapper && (cw as DockHostControllerWrapper).UniqueName == UniqueName)
		{
			return true;
		}
		return false;
	}

	internal override bool IsFloatOnly()
	{
		return bFloatOnly;
	}

	public Size CalculateSize(Size parentSize, Size newParentSize)
	{
		return ControllerSizeCalculator.CalculateSize(this, parentSize, newParentSize);
	}

	public bool IsVerticallyResizable()
	{
		Direction mustResize = MustResize;
		if (Minimized == Minimization.None || Minimized == Minimization.Horizontal)
		{
			if (FreezeResize)
			{
				if (mustResize == Direction.Vertical)
				{
					return mustResize != Direction.None;
				}
				return false;
			}
			return true;
		}
		return false;
	}

	public bool IsHorizontallyResizable()
	{
		Direction mustResize = MustResize;
		if (Minimized == Minimization.None || Minimized == Minimization.Vertical)
		{
			if (FreezeResize)
			{
				if (mustResize == Direction.Horizontal)
				{
					return mustResize != Direction.None;
				}
				return false;
			}
			return true;
		}
		return false;
	}

	internal override void SetAutohiddenControlSize(Size size)
	{
		if (ParentController is DockTabController dockTabController)
		{
			dockTabController.SetAutohiddenControlSize(size);
			return;
		}
		Rectangle rcDockArea = new Rectangle(DINew.rcDockArea.Location, size);
		DINew.rcDockArea = rcDockArea;
		base.DITransient.rcDockArea = rcDockArea;
	}

	public override void ApplyDockInfo()
	{
		base.ApplyDockInfo();
		bool forbidFreeze = dockingMgr.ForbidFreeze;
		Control control = null;
		if (HostControl.ContainsFocus)
		{
			control = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus());
		}
		dockingMgr.ForbidFreeze = true;
		if (ParentController != null && !(ToplevelController is DockStateControllerWrapper))
		{
			if (Maximized)
			{
				ExitMaxMinState();
			}
			if (dockInfoNew.dController == null)
			{
				bool allowFloating = AllowFloating;
				if (ParentController is DockTabController)
				{
					allowFloating = ParentController.AllowFloating;
				}
				if ((dockingMgr.DisallowFloating || !allowFloating) && !dockingMgr.DragProvider.CanFloatWhenDisallowFloating)
				{
					return;
				}
				if (bHideCaption)
				{
					MoveFloatToFloat();
				}
				else if (!Floating)
				{
					TransitDockToFloat();
				}
				else
				{
					TransitDockInFloatToFloat();
				}
			}
			else if (Floating)
			{
				if (dockInfoNew.dController.Floating)
				{
					TransitFloatToDockInFloat();
				}
				else
				{
					TransitFloatToDock();
				}
			}
			else if (dockInfoNew.dController.Floating)
			{
				TransitDockToDockInFloat();
			}
			else
			{
				TransitDockToDock();
			}
		}
		else
		{
			dockInfoNew.dController.InvokeDocking(this);
		}
		if (dockingMgr.DesignMode)
		{
			dockingMgr.UpdateDesigner();
			return;
		}
		if (!dockingMgr.DesignProcess)
		{
			ctrlHost.Parent.Focus();
			if (control != null)
			{
				control.Focus();
			}
			else
			{
				ctrlHost.Controls[0].Focus();
			}
		}
		dockingMgr.ForbidFreeze = forbidFreeze;
	}

	protected internal override DockControllerBase QueryController(string uniqueName)
	{
		if (UniqueName == uniqueName)
		{
			return this;
		}
		return null;
	}

	public override void MoveController()
	{
		MoveFloat();
	}

	public override void DockAsMDIChild()
	{
		if (ParentController is DockTabController)
		{
			ParentController.DockAsMDIChild();
		}
		else
		{
			dockingMgr.SetAsMDIChild(HostControl.Controls[0], bsetmdi: true);
		}
	}

	internal override void DockAsMDIChild(DockInfo dockInfo)
	{
		if (ParentController is DockTabController)
		{
			ParentController.DockAsMDIChild();
		}
		else
		{
			dockInfo.dController.DockingManager.SetAsMDIChild(HostControl.Controls[0], bsetmdi: true);
		}
	}

	public override void UpdateControl()
	{
		if (ParentController != null)
		{
			ParentController.UpdateControl();
		}
		if (Floating)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(ctrlHost.Handle, IntPtr.Zero, 0, 0, 0, 0, 39);
		}
		else
		{
			ctrlHost.UpdateControlSize();
		}
		ctrlHost.Invalidate(invalidateChildren: true);
	}
}
