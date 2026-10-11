using System;
using System.Collections;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DockTabController : DockStateControllerBase, IResizable
{
	protected DockHostController dcHostController;

	protected DockTabControl ctrlDockTab;

	protected bool bPause;

	protected DCRelationship currentRelationship;

	protected internal DockTabPage dragTabPage;

	protected internal bool bAllowDrag;

	internal bool bClosingByMouse;

	protected internal int m_nHitTab = -1;

	private bool m_bCanSwitchTabs;

	private ArrayList m_freezedPages = new ArrayList();

	public bool InDrag => dragTabPage != null;

	internal override bool Maximized
	{
		get
		{
			return base.Maximized;
		}
		set
		{
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				DockHostController dhcClient = tabPage.dhcClient;
				bool maximized = dhcClient.Maximized;
				dhcClient.Maximized = value;
				if (maximized && !value)
				{
					ControlRestoredEventArgs args = new ControlRestoredEventArgs(tabPage.dhcClient.HostControl.Controls[0], ControlSizeStates.Maximize);
					base.DockingManager.FireControlSizeStateChanged(ControlSizeStates.Restore, args);
				}
			}
			base.Maximized = value;
		}
	}

	public override Rectangle LayoutRect
	{
		get
		{
			if (dcHostController != null)
			{
				return dcHostController.LayoutRect;
			}
			return Rectangle.Empty;
		}
		set
		{
			if (dcHostController == null || !(dcHostController.LayoutRect != value))
			{
				return;
			}
			if (Minimized == Minimization.Vertical)
			{
				value.Size = new Size(value.Size.Width, dcHostController.LayoutRect.Height);
			}
			else if (Minimized == Minimization.Horizontal)
			{
				value.Size = new Size(dcHostController.LayoutRect.Width, value.Size.Height);
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
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				tabPage.dhcClient.LayoutRect = value;
			}
			if (dcHostController.HideCaption)
			{
				dockInfoCurrent.rcDockArea = HostControl.Parent.Bounds;
			}
			else
			{
				dockInfoCurrent.rcDockArea = HostControl.Parent.RectangleToScreen(HostControl.Bounds);
			}
			Size size = HostControl.Controls[0].Size;
			foreach (DockTabPage tabPage2 in ctrlDockTab.TabPages)
			{
				if (tabPage2.dhcClient.HostControl != HostControl && tabPage2.dhcClient.HostControl.Controls.Count > 0)
				{
					tabPage2.dhcClient.HostControl.Controls[0].Size = size;
				}
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
			foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
			{
				tabPage.dhcClient.Floating = value;
			}
		}
	}

	public DockTabControl TabControl => ctrlDockTab;

	public override Control HostControl
	{
		get
		{
			if (dcHostController == null)
			{
				return null;
			}
			return dcHostController.HostControl;
		}
	}

	public DockHostController HostController
	{
		get
		{
			return dcHostController;
		}
		set
		{
			if (dcHostController != null)
			{
				if (dcHostController.HostControl != null)
				{
					dcHostController.HostControl.Resize -= HostControl_Resize;
				}
				if (dcHostController.DockTab == ctrlDockTab)
				{
					dcHostController.DockTab = null;
				}
			}
			dcHostController = value;
			if (value == null)
			{
				return;
			}
			dcHostController.HostControl.Controls.Add(ctrlDockTab);
			dcHostController.DockTab = ctrlDockTab;
			dcHostController.HostControl.Resize += HostControl_Resize;
			if (ToplevelController is FloatingFormController)
			{
				bool flag = ParentController is FloatingFormController;
				if (!flag)
				{
					flag = ToplevelController.ChildControllers[0] is SizingController sizingController && sizingController.GetDockControllers().Count == 1;
				}
				if (flag)
				{
					FloatingForm floatingForm = ToplevelController.HostControl as FloatingForm;
					floatingForm.Text = HostControl.Text;
					floatingForm.SetCaption();
					NativeMethodsHelper.RedrawWindow(ParentController.HostControl.Handle, 1025);
				}
			}
		}
	}

	internal override DockStateControllerWrapper InternalDockWrapper
	{
		get
		{
			DockTabPage dockTabPage = TabControl.TabPages[0] as DockTabPage;
			return dockTabPage.dhcClient.InternalDockWrapper;
		}
		set
		{
			SetChildWrapper(value);
		}
	}

	internal override DockStateControllerWrapper InternalFloatWrapper
	{
		get
		{
			DockTabPage dockTabPage = TabControl.TabPages[0] as DockTabPage;
			return dockTabPage.dhcClient.InternalFloatWrapper;
		}
		set
		{
			SetChildWrapper(value);
		}
	}

	internal override DockStateControllerWrapper TempWrapper
	{
		get
		{
			return base.TempWrapper;
		}
		set
		{
			base.TempWrapper = value;
			if (TabControl == null)
			{
				return;
			}
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				tabPage.dhcClient.TempWrapper = value;
			}
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
			if (value == null)
			{
				return;
			}
			if (value is FloatingFormController)
			{
				foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
				{
					tabPage.dhcClient.HideCaption = true;
				}
				return;
			}
			foreach (DockTabPage tabPage2 in ctrlDockTab.TabPages)
			{
				tabPage2.dhcClient.HideCaption = false;
			}
		}
	}

	public bool PauseActivation
	{
		get
		{
			return bPause;
		}
		set
		{
			bPause = value;
		}
	}

	public override int ChildCount => ctrlDockTab.TabPages.Count;

	public override IEnumerator DCR => HostController.DCR;

	public override DCRelationship DCRCurrent
	{
		get
		{
			return currentRelationship;
		}
		set
		{
			if (currentRelationship == null)
			{
				currentRelationship = value;
			}
			if (ctrlDockTab.TabPages.Count > 0)
			{
				((DockTabPage)ctrlDockTab.TabPages[0]).dhcClient.DCRCurrent = value;
			}
		}
	}

	public DockHostController SelectedController
	{
		get
		{
			return dcHostController;
		}
		set
		{
			if (dcHostController == value || ctrlDockTab.TabPages == null)
			{
				return;
			}
			foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
			{
				if (tabPage.dhcClient == value)
				{
					ctrlDockTab.SelectedTab = tabPage;
					break;
				}
			}
		}
	}

	internal override Direction MustResize
	{
		get
		{
			return base.MustResize;
		}
		set
		{
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				if (tabPage.dhcClient.FreezeResize)
				{
					tabPage.dhcClient.MustResize = value;
				}
			}
			base.MustResize = value;
		}
	}

	internal override bool AllowFloating
	{
		get
		{
			bool result = true;
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				if (!tabPage.dhcClient.AllowFloating)
				{
					result = false;
					break;
				}
			}
			return result;
		}
		set
		{
		}
	}

	internal override bool FreezeResize
	{
		get
		{
			bool result = false;
			if (TabControl != null)
			{
				foreach (DockTabPage tabPage in TabControl.TabPages)
				{
					if (tabPage.dhcClient != null && tabPage.dhcClient.FreezeResize)
					{
						result = true;
						base.MustResize = tabPage.dhcClient.MustResize;
						break;
					}
				}
			}
			return result;
		}
		set
		{
			if (value)
			{
				foreach (DockHostController freezedPage in m_freezedPages)
				{
					freezedPage.FreezeResize = true;
				}
				MustResize = Direction.None;
				return;
			}
			m_freezedPages.Clear();
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				if (tabPage.dhcClient.FreezeResize)
				{
					m_freezedPages.Add(tabPage.dhcClient);
					tabPage.dhcClient.FreezeResize = value;
				}
			}
			MustResize = Direction.Both;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			int num = 0;
			int num2 = 0;
			if (ctrlDockTab != null)
			{
				foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
				{
					if (tabPage.dhcClient != null)
					{
						if (tabPage.dhcClient.MinimumSize.Width > num)
						{
							num = tabPage.dhcClient.MinimumSize.Width;
						}
						if (tabPage.dhcClient.MinimumSize.Height > num2)
						{
							num2 = tabPage.dhcClient.MinimumSize.Height;
						}
					}
				}
			}
			return new Size(num, num2);
		}
	}

	public override ArrayList ChildControllers
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				arrayList.Add(tabPage.dhcClient);
			}
			return arrayList;
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
			if (FreezeResize)
			{
				return;
			}
			base.Minimized = value;
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				DockHostController dhcClient = tabPage.dhcClient;
				Minimization minimized = dhcClient.Minimized;
				dhcClient.Minimized = value;
				if (minimized != Minimization.None && value == Minimization.None)
				{
					ControlRestoredEventArgs args = new ControlRestoredEventArgs(dhcClient.HostControl.Controls[0], ControlSizeStates.Minimize);
					dockingMgr.FireControlSizeStateChanged(ControlSizeStates.Restore, args);
				}
				else if (minimized == Minimization.None && value != Minimization.None)
				{
					ControlMinimizedEventArgs args2 = new ControlMinimizedEventArgs(dhcClient.HostControl.Controls[0]);
					dockingMgr.FireControlSizeStateChanged(ControlSizeStates.Minimize, args2);
				}
			}
			if (!AutoHideMode)
			{
				TabControl.Visible = value == Minimization.None;
			}
		}
	}

	protected DockHostController FormOwner
	{
		get
		{
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				if (tabPage.dhcClient.InternalForm != null && tabPage.dhcClient.InternalForm.Visible && tabPage.dhcClient.InternalForm.Enabled)
				{
					return tabPage.dhcClient;
				}
			}
			return HostController;
		}
	}

	internal override FloatingForm InternalForm
	{
		get
		{
			if (FormOwner != null)
			{
				return FormOwner.InternalForm;
			}
			return null;
		}
		set
		{
			FormOwner.InternalForm = value;
		}
	}

	internal override void MaximizeController()
	{
		if (!base.CanMaximize)
		{
			return;
		}
		bool flag = true;
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			ControlMaximizeEventArgs e = new ControlMaximizeEventArgs(tabPage.dhcClient.HostControl.Controls[0]);
			base.DockingManager.FireControlSizeStateChanged(ControlSizeStates.Maximize, e);
			if (e.Cancel)
			{
				flag = false;
			}
		}
		if (!flag)
		{
			return;
		}
		base.MaximizeController();
		foreach (DockTabPage tabPage2 in TabControl.TabPages)
		{
			ControlMaximizedEventArgs args = new ControlMaximizedEventArgs(tabPage2.dhcClient.HostControl.Controls[0]);
			base.DockingManager.FireControlSizeStateChanged(ControlSizeStates.Maximized, args);
		}
	}

	internal virtual void SetChildWrapper(DockStateControllerWrapper wrapper)
	{
		if (wrapper == null || TempWrapper == null || TempWrapper.ParentController != wrapper.ParentController)
		{
			SetDockRelations(wrapper);
			bool floating = Floating;
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				DockHostController dhcClient = tabPage.dhcClient;
				dhcClient.ForceSetWrapper = true;
				if (wrapper != null)
				{
					floating = wrapper.Floating;
				}
				if (floating)
				{
					dhcClient.InternalFloatWrapper = wrapper;
				}
				else
				{
					dhcClient.InternalDockWrapper = wrapper;
				}
				dhcClient.ForceSetWrapper = false;
			}
			TempWrapper = wrapper;
			return;
		}
		SetDockRelations(TempWrapper);
		foreach (DockTabPage tabPage2 in TabControl.TabPages)
		{
			DockHostController dhcClient2 = tabPage2.dhcClient;
			if (wrapper.Floating)
			{
				dhcClient2.InternalFloatWrapper = TempWrapper;
			}
			else
			{
				dhcClient2.InternalDockWrapper = TempWrapper;
			}
		}
	}

	protected internal override DockControllerBase QueryController(string uniqueName)
	{
		DockControllerBase dockControllerBase = null;
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			dockControllerBase = tabPage.dhcClient.QueryController(uniqueName);
			if (dockControllerBase != null)
			{
				break;
			}
		}
		return dockControllerBase;
	}

	internal void SetDockRelations(DockStateControllerWrapper wrapper)
	{
		if (wrapper == null)
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		DockHostController dockHostController = null;
		bool flag = TabControl.TabCount > wrapper.DockRelationControllers.Count;
		for (int i = 0; i < TabControl.TabCount; i++)
		{
			DockTabPage dockTabPage = TabControl.TabPages[i] as DockTabPage;
			if (dockHostController == null)
			{
				dockHostController = dockTabPage.dhcClient;
			}
			arrayList.Add(dockTabPage.dhcClient);
			if (flag && wrapper.DockRelationControllers.Contains(dockTabPage.dhcClient))
			{
				wrapper.DockRelationControllers.Remove(dockTabPage.dhcClient);
			}
			if (!wrapper.DockRelationControllers.Contains(dockTabPage.dhcClient))
			{
				wrapper.DockRelationControllers.Insert(i, dockTabPage.dhcClient);
			}
		}
		int num = 0;
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			DockHostController dhcClient = tabPage.dhcClient;
			DockInfo relation = new DockInfo(dockHostController, DockingStyle.Tabbed, num, num, DockPreference.Tabbed, tabPage.dhcClient.LayoutRect);
			DockRelation dockRelation = new DockRelation();
			dockRelation.RelatedControllers = new ArrayList(arrayList);
			dockRelation.Relation = relation;
			wrapper.Relations[dhcClient.UniqueName] = dockRelation;
			num++;
		}
	}

	public DockTabController(DockingManager dmgr, DockTabControl tabctrl)
		: base(dmgr)
	{
		ctrlDockTab = tabctrl;
		ctrlDockTab.SelectedIndexChanged += DockTab_SelectedIndexChanged;
	}

	public override void AddToDCR(DCRelationship dcr)
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.AddToDCR(dcr);
		}
	}

	public override void InsertIntoDCR(ArrayList al, int nindex, DCRelationship dcr)
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			if (nindex == 0)
			{
				ArrayList arrayList = (Floating ? tabPage.dhcClient.FloatDCRList : tabPage.dhcClient.DockDCRList);
				if (arrayList.Contains(tabPage.dhcClient.DCRCurrent))
				{
					tabPage.dhcClient.InsertIntoDCR(arrayList, arrayList.IndexOf(tabPage.dhcClient.DCRCurrent) + 1, dcr);
				}
				else
				{
					tabPage.dhcClient.InsertIntoDCR(null, nindex, dcr);
				}
			}
			else
			{
				tabPage.dhcClient.InsertIntoDCR(null, nindex, dcr);
			}
		}
	}

	public override void RemoveFromDCR(DCRelationship dcr)
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.RemoveFromDCR(dcr);
		}
	}

	public override void UpdateDCRIndex(DCRelationship dcrs)
	{
		dcrs.nIndex = ParentController.GetChildHostIndex(this);
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.UpdateDCRIndex(dcrs);
		}
	}

	public override void RemoveChild(DockControllerBase dc)
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			if (tabPage.dhcClient == dc)
			{
				ctrlDockTab.TabPages.Remove(tabPage);
			}
		}
	}

	public override DockControllerBase GetChildAt(int index)
	{
		if (index < 0 || index > ctrlDockTab.TabPages.Count - 1)
		{
			return null;
		}
		return (ctrlDockTab.TabPages[index] as DockTabPage).dhcClient;
	}

	public override int GetChildHostIndex(DockControllerBase child)
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			if (tabPage.dhcClient == child)
			{
				return ctrlDockTab.TabPages.IndexOf(tabPage);
			}
		}
		return -1;
	}

	public override void GetDockInfo(Control ctrl, Point pt, DockInfo di)
	{
		di.DP = DockPreference.Tabbed;
		di.dStyle = DockingStyle.Fill;
		Point pt2 = ctrlDockTab.PointToClient(pt);
		if (pt2.X < ctrlDockTab.GetTabRect(0).Right)
		{
			di.nDockIndex = 0;
			return;
		}
		int tabHitIndex = ctrlDockTab.GetTabHitIndex(pt2);
		if (tabHitIndex >= 0)
		{
			di.nDockIndex = tabHitIndex;
		}
		else if ((ctrlDockTab.TabPages[ctrlDockTab.TabPages.Count - 1] as DockTabPage).dhcClient == null)
		{
			di.nDockIndex = ctrlDockTab.TabPages.Count - 1;
		}
		else
		{
			di.nDockIndex = ctrlDockTab.TabPages.Count;
		}
	}

	public override bool QueryDropProceedWithDock(Control ctrldrop, DockingStyle style)
	{
		DockAllowEventArgs e = new DockAllowEventArgs(ctrldrop.Controls[0], HostControl.Controls[0], style);
		dockingMgr.FireDockAllowEvent(e);
		return !e.Cancel;
	}

	public void SetHostCtrlForSelection()
	{
		bool flag = true;
		if (dcHostController.DockingManager.lockedHostForm)
		{
			flag = false;
		}
		if (flag)
		{
			dcHostController.DockingManager.LockHostFormUpdate();
		}
		if (ctrlDockTab.TabCount != 0 && ctrlDockTab.SelectedIndex >= 0)
		{
			DockHostController hostController = HostController;
			HostController = (ctrlDockTab.TabPages[ctrlDockTab.SelectedIndex] as DockTabPage).dhcClient;
			dcHostController.LayoutRect = hostController.LayoutRect;
			AdjustLayout();
			int lockActivationEvents = dockingMgr.LockActivationEvents;
			dockingMgr.LockActivationEvents = 0;
			if (!bInAutoHide)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SetFocus(dcHostController.HostControl.Controls[0].Handle);
			}
			dockingMgr.LockActivationEvents = lockActivationEvents;
			if (!InDrag)
			{
				hostController.HostControl.Visible = false;
			}
			if (!bInAutoHide)
			{
				dcHostController.HostControl.Visible = true;
			}
			if (flag)
			{
				dcHostController.DockingManager.UnlockHostFormUpdate();
			}
		}
	}

	public void DockTab_SelectedIndexChanged(object sender, EventArgs e)
	{
		if (!bPause)
		{
			SetHostCtrlForSelection();
		}
		dockingMgr.UpdateFloatingFormsImages();
	}

	public void HostControl_Resize(object sender, EventArgs e)
	{
		AdjustLayout();
	}

	public override void AdjustLayout()
	{
		if (dcHostController != null)
		{
			dcHostController.HostControl.Controls[0].Bounds = GetHostControlBounds();
		}
	}

	protected internal Rectangle GetHostControlBounds()
	{
		Rectangle result = Rectangle.Empty;
		Rectangle clientRectangle = (dcHostController.HostControl as DockHost).ClientRectangle;
		int num = dockingMgr.DockTabHeight - 1;
		int num2 = clientRectangle.Bottom - num;
		int num3 = ((!dcHostController.AutoHideMode) ? num : 0);
		int num4 = ((!dcHostController.AutoHideMode) ? 3 : 0);
		ctrlDockTab.Alignment = (TabAlignment)Enum.Parse(typeof(DockTabAlignmentStyle), dockingMgr.DockTabAlignment.ToString(), ignoreCase: true);
		ctrlDockTab.ShowScroll = dockingMgr.ShowDockTabScrollButton;
		if (dockingMgr.DockTabAlignment != DockTabAlignmentStyle.Bottom)
		{
			FloatingFormController floatingFormController = ParentController as FloatingFormController;
			int num5 = 0;
			DockHostController hostController = HostController;
			if (hostController != null)
			{
				Rectangle rectangle;
				if (dockingMgr.VisualStyle == VisualStyle.Default)
				{
					rectangle = (hostController.HostControl as DockHost).TitleBar.CaptionRect;
				}
				else
				{
					int thinBorderWidth = dockingMgr.Renderer.ThinBorderWidth;
					int height = (base.DockingManager.ShowCaption ? dockingMgr.Renderer.CaptionWidth : 0);
					rectangle = new Rectangle(thinBorderWidth, thinBorderWidth, LayoutRect.Width - 2 * thinBorderWidth, height);
				}
				num5 = rectangle.Height + rectangle.Y;
			}
			num2 = ((floatingFormController != null && floatingFormController.ParentController == null) ? 1 : (num5 + 2));
			switch (dockingMgr.DockTabAlignment)
			{
			case DockTabAlignmentStyle.Top:
				clientRectangle.Offset(0, num3 + 1);
				ctrlDockTab.Size = new Size(clientRectangle.Width, num - 1);
				ctrlDockTab.Location = new Point(clientRectangle.X, num2);
				result = new Rectangle(clientRectangle.X, clientRectangle.Y + num4 - 1, clientRectangle.Width, clientRectangle.Height - num3 - 3);
				break;
			case DockTabAlignmentStyle.Left:
				clientRectangle.Size = new Size(clientRectangle.Width - num3, clientRectangle.Height + num);
				clientRectangle.Location = new Point(num3 + 1, num2);
				ctrlDockTab.Size = new Size(num, clientRectangle.Height - num);
				ctrlDockTab.Location = new Point(2, num2);
				result = new Rectangle(clientRectangle.X + num4 + 1, clientRectangle.Y, clientRectangle.Width - num4 - 1, clientRectangle.Height - num);
				break;
			case DockTabAlignmentStyle.Right:
				clientRectangle.Size = new Size(clientRectangle.Width - num3 - 1, clientRectangle.Height + num);
				clientRectangle.Location = new Point(1, num2);
				ctrlDockTab.Size = new Size(num, clientRectangle.Height - num);
				ctrlDockTab.Location = new Point(clientRectangle.Width + 2, num2);
				result = new Rectangle(clientRectangle.X, clientRectangle.Y, clientRectangle.Width - num4 - 1, clientRectangle.Height - num);
				break;
			}
		}
		else
		{
			int num6 = 2;
			ctrlDockTab.Size = new Size(clientRectangle.Width, num + num6);
			ctrlDockTab.Location = new Point(clientRectangle.X, num2 - num6);
			if (dockingMgr.PaintBorders && dockingMgr.VisualStyle == VisualStyle.Default)
			{
				num6++;
			}
			result = new Rectangle(clientRectangle.X, clientRectangle.Y, clientRectangle.Width, clientRectangle.Height - num3 - num6);
		}
		return result;
	}

	public override void CloseController()
	{
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			if (tabPage.dhcClient != null)
			{
				tabPage.dhcClient.bClosingByMouse = bClosingByMouse;
				tabPage.dhcClient.CloseController();
				tabPage.dhcClient.bClosingByMouse = false;
			}
		}
	}

	public virtual void CloseController(DockHostController dcclose)
	{
		DockTabPage dockTabPage = null;
		if (dcclose == null)
		{
			dockTabPage = ctrlDockTab.SelectedTab as DockTabPage;
		}
		else
		{
			foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
			{
				if (tabPage.dhcClient == dcclose)
				{
					dockTabPage = tabPage;
					break;
				}
			}
		}
		DockStateControllerWrapper dockStateControllerWrapper = new DockStateControllerWrapper(dockingMgr, this);
		dockStateControllerWrapper.ParentController = ParentController;
		if (!bInAutoHide)
		{
			ParentController.ChildWrapper = dockStateControllerWrapper;
			SetChildWrapper(dockStateControllerWrapper);
			ParentController.ChildWrapper = null;
			CheckFormOwnership(dockTabPage.dhcClient);
			if (dockTabPage != ctrlDockTab.SelectedTab)
			{
				PauseActivation = true;
			}
			ctrlDockTab.TabPages.Remove(dockTabPage);
			dockTabPage.dhcClient.ParentController = null;
			if (PauseActivation)
			{
				PauseActivation = false;
			}
			ParentController.ControllerChanged += dockTabPage.dhcClient.TransientControllerChanged;
			dockTabPage.dhcClient.DITransient = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			dockTabPage.dhcClient.HostControl.Visible = false;
			if (Floating)
			{
				dockTabPage.dhcClient.AdjustLayout();
				FloatingForm floatingForm = (HostControl as ContainerControl).ParentForm as FloatingForm;
				if (floatingForm.Owner != null)
				{
					floatingForm.Owner.Controls.Add(dockTabPage.dhcClient.HostControl);
				}
				dockTabPage.dhcClient.SharedForm = floatingForm;
				dcclose.DIPrevious.rcDockArea = floatingForm.Bounds;
				(dcclose.HostControl as DockHost).DragRectangle = floatingForm.Bounds;
				if (floatingForm.InternalController.ChildCount == 0)
				{
					floatingForm.Disable();
					floatingForm.InternalController.Dispose();
				}
			}
		}
		else
		{
			dockTabPage.dhcClient.DINew = new DockInfo(dockInfoNew);
			MainFormController mainFormController = dockTabPage.dhcClient.ToplevelController as MainFormController;
			if (dockTabPage != ctrlDockTab.SelectedTab)
			{
				PauseActivation = true;
			}
			ctrlDockTab.TabPages.Remove(dockTabPage);
			if (PauseActivation)
			{
				PauseActivation = false;
			}
			dockTabPage.dhcClient.bInAutoHide = false;
			DockControllerBase childAt = ParentController.GetChildAt(1);
			DragSplitter dragSplitter = childAt.HostControl as DragSplitter;
			dragSplitter.DragSplitterMoved -= dockTabPage.dhcClient.DHCDragSplitterMoved;
			mainFormController.ExitAutoHideMode(dockTabPage.dhcClient, bcloseonexit: true);
			dockTabPage.dhcClient.ParentController = null;
			dockInfoTransient.dController.ControllerChanged += dockTabPage.dhcClient.TransientControllerChanged;
			dockTabPage.dhcClient.DITransient = new DockInfo(dockInfoTransient);
			if (ctrlDockTab.TabPages.Count == 1)
			{
				DockHostController dhcClient = (ctrlDockTab.SelectedTab as DockTabPage).dhcClient;
				dockInfoTransient.dController.ControllerChanged -= TransientControllerChanged;
				dockInfoTransient.dController.ControllerChanged += dhcClient.TransientControllerChanged;
				dhcClient.DITransient = new DockInfo(dockInfoTransient);
				dhcClient.DINew = new DockInfo(dockInfoNew);
			}
		}
		if (ctrlDockTab.TabPages.Count == 1)
		{
			DockHostController dhcClient2 = (ctrlDockTab.SelectedTab as DockTabPage).dhcClient;
			DockInfo dITransient = null;
			if (bInAutoHide)
			{
				dITransient = new DockInfo(dhcClient2.DITransient);
			}
			PauseActivation = true;
			ctrlDockTab.TabPages.Remove(ctrlDockTab.SelectedTab);
			ParentController.ReplaceChild(this, dhcClient2);
			HostController = null;
			dhcClient2.DockTab = null;
			dhcClient2.AdjustLayout();
			if (bInAutoHide)
			{
				dhcClient2.DITransient = dITransient;
			}
			ctrlDockTab.Visible = false;
			ctrlDockTab.Dispose();
			ctrlDockTab = null;
		}
	}

	public void TransitFloatToDock()
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.DockDCRList.Clear();
			tabPage.dhcClient.HideCaption = false;
		}
		InternalTransitFloatToDock(bpostfloatstate: false);
		base.DockEdge = DINew.dStyle;
		if (ctrlDockTab != null)
		{
			UpdateCurrentDCRelationship();
		}
	}

	public void TransitDockToFloat()
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.FloatDCRList.Clear();
			tabPage.dhcClient.HideCaption = true;
		}
		InternalStateUpdateForDockToFloat();
		Point ptlocation = ((dockInfoNew.rcDockArea.Width > 0 && dockInfoNew.rcDockArea.Height > 0) ? dockInfoNew.rcDockArea.Location : HostControl.Parent.PointToScreen(HostControl.Location));
		dockingMgr.UndockFromController(this);
		Floating = true;
		CreateFloatingFrame(ptlocation);
		if (ctrlDockTab != null)
		{
			UpdateCurrentDCRelationship();
		}
		dockingMgr.UpdateFloatingFormsImages();
	}

	public void TransitDockToDock()
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.DockDCRList.Clear();
		}
		InternalTransitDockToDock(bpostfloatstate: false);
		if (ctrlDockTab != null)
		{
			UpdateCurrentDCRelationship();
		}
	}

	public void TransitDockToDockInFloat()
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.FloatDCRList.Clear();
		}
		InternalStateUpdateForDockToFloat();
		InternalTransitDockToDock(bpostfloatstate: true);
		if (ctrlDockTab != null)
		{
			UpdateCurrentDCRelationship();
		}
		dockingMgr.UpdateFloatingFormsImages();
	}

	public void TransitFloatToDockInFloat()
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.FloatDCRList.Clear();
			tabPage.dhcClient.HideCaption = false;
		}
		InternalTransitFloatToDock(bpostfloatstate: true);
		if (ctrlDockTab != null)
		{
			UpdateCurrentDCRelationship();
		}
		dockingMgr.UpdateFloatingFormsImages();
	}

	public void TransitDockInFloatToFloat()
	{
		TransitDockToFloat();
	}

	protected void InternalStateUpdateForDockToFloat()
	{
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			if (!Floating)
			{
				if (tabPage.dhcClient.DIPrevious.dController != null)
				{
					tabPage.dhcClient.DIPrevious.dController.ControllerChanged -= tabPage.dhcClient.dhc_ControllerChanged;
				}
				ParentController.ControllerChanged += tabPage.dhcClient.dhc_ControllerChanged;
				tabPage.dhcClient.DIPrevious = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			}
		}
	}

	protected void InternalTransitDockToDock(bool bpostfloatstate)
	{
		dockingMgr.UndockFromController(this);
		Floating = bpostfloatstate;
		dockInfoNew.dController.InvokeDocking(this);
		AdjustLayout();
		if (dockInfoNew.DP != DockPreference.Tabbed)
		{
			return;
		}
		PauseActivation = true;
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			ctrlDockTab.TabPages.Remove(tabPage);
		}
		HostController = null;
		ctrlDockTab.Visible = false;
		ctrlDockTab.Dispose();
		ctrlDockTab = null;
	}

	protected void InternalTransitFloatToDock(bool bpostfloatstate)
	{
		FloatingForm floatingForm = (HostControl as ContainerControl).ParentForm as FloatingForm;
		if (!dockInfoNew.dController.Floating)
		{
			foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
			{
				if (tabPage.dhcClient.DIPrevious.dController != null)
				{
					tabPage.dhcClient.DIPrevious.dController.ControllerChanged -= tabPage.dhcClient.dhc_ControllerChanged;
				}
				tabPage.dhcClient.DIPrevious = new DockInfo(null, DockingStyle.Fill, 0, -1, DockPreference.All, dockInfoCurrent.rcDockArea);
			}
		}
		if (HostController.IsSingleFloatControl)
		{
			foreach (DockTabPage tabPage2 in TabControl.TabPages)
			{
				tabPage2.dhcClient.PreviousFloatSize = floatingForm.Size;
			}
			foreach (DockTabPage tabPage3 in TabControl.TabPages)
			{
				tabPage3.dhcClient.PreviousFloatLocation = floatingForm.Location;
			}
		}
		dockingMgr.UndockFromController(this);
		Floating = bpostfloatstate;
		foreach (DockTabPage tabPage4 in ctrlDockTab.TabPages)
		{
			tabPage4.dhcClient.AssignFormBelongings(floatingForm);
		}
		DockControllerBase dockControllerBase = floatingForm.InternalController.ChildControllers[0] as DockControllerBase;
		if (dockControllerBase is DockStateControllerWrapper)
		{
			floatingForm.Disable();
		}
		dockInfoNew.dController.InvokeDocking(this);
		if (dockInfoNew.DP != DockPreference.Tabbed)
		{
			return;
		}
		PauseActivation = true;
		foreach (DockTabPage tabPage5 in ctrlDockTab.TabPages)
		{
			ctrlDockTab.TabPages.Remove(tabPage5);
		}
		if (ctrlDockTab.TabPages.Count <= 0)
		{
			HostController = null;
			ctrlDockTab.Visible = false;
			ctrlDockTab.Dispose();
			ctrlDockTab = null;
		}
	}

	public override void InvokePrevDockFloatTransition(bool showFloating)
	{
		bool flag = Floating;
		if (flag && ToplevelController is FloatingFormController floatingFormController && floatingFormController.ChildControllers[0] is SizingController sizingController && sizingController.GetDockControllers().Count > 1)
		{
			flag = false;
		}
		if (flag || dockingMgr.DisallowFloating)
		{
			TransitToPrevDock();
		}
		else
		{
			TransitToPrevFloat();
		}
	}

	protected internal void TransitToPrevDock()
	{
		FloatingForm floatingForm = (HostControl as ContainerControl).ParentForm as FloatingForm;
		HostController = null;
		PauseActivation = true;
		DockStateControllerBase formOwner = null;
		DockHostController dockHostController = ((!(ctrlDockTab.SelectedTab is DockTabPage dockTabPage)) ? null : dockTabPage.dhcClient);
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.DockTab = null;
			tabPage.dhcClient.TransitToPrevDock();
			if (!tabPage.dhcClient.HostControl.Visible)
			{
				tabPage.dhcClient.HostControl.Visible = true;
				tabPage.dhcClient.HideCaption = false;
			}
			if (tabPage.dhcClient.InternalForm != null && tabPage.dhcClient.InternalForm == floatingForm)
			{
				formOwner = tabPage.dhcClient;
			}
			tabPage.dhcClient.SharedForm = floatingForm;
		}
		if (dockHostController != null && dockHostController.ParentController is DockTabController { ctrlDockTab: not null } dockTabController)
		{
			foreach (DockTabPage tabPage2 in dockTabController.ctrlDockTab.TabPages)
			{
				if (tabPage2.dhcClient == dockHostController)
				{
					dockTabController.ctrlDockTab.SelectedTab = tabPage2;
					break;
				}
			}
		}
		dockingMgr.UndockFromController(this);
		foreach (DockTabPage tabPage3 in ctrlDockTab.TabPages)
		{
			ctrlDockTab.TabPages.Remove(tabPage3);
		}
		ctrlDockTab.Visible = false;
		ctrlDockTab.Dispose();
		ctrlDockTab = null;
		if (floatingForm != null && (floatingForm.InternalController.ChildControllers[0] is SizingController { IsEmpty: not false } || floatingForm.InternalController.ChildControllers[0] is DockStateControllerWrapper))
		{
			floatingForm.Disable();
			floatingForm.Used = false;
			floatingForm.FormOwner = formOwner;
		}
		if (ctrlDockTab != null)
		{
			UpdateCurrentDCRelationship();
		}
	}

	protected internal void TransitToPrevFloat()
	{
		FreezeResize = false;
		Control[] array = new Control[ctrlDockTab.TabCount];
		int num = 0;
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			array[num++] = tabPage.dhcClient.HostControl.Controls[0];
		}
		dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(array));
		Rectangle rc = Rectangle.Empty;
		if (!Floating)
		{
			rc = HostController.DIPrevious.rcDockArea;
		}
		dockInfoNew = new DockInfo(null, DockingStyle.Fill, 0, -1, DockPreference.All, rc);
		foreach (DockTabPage tabPage2 in ctrlDockTab.TabPages)
		{
			if (Floating)
			{
				tabPage2.dhcClient.FloatDCRList.Clear();
			}
			tabPage2.dhcClient.HideCaption = true;
		}
		InternalStateUpdateForDockToFloat();
		Point ptlocation = ((dockInfoNew.rcDockArea.Width > 0 && dockInfoNew.rcDockArea.Height > 0) ? dockInfoNew.rcDockArea.Location : HostControl.Parent.PointToScreen(HostControl.Location));
		dockingMgr.UndockFromController(this);
		Floating = true;
		CreateFloatingFrame(ptlocation);
		if (ctrlDockTab != null)
		{
			UpdateCurrentDCRelationship();
		}
		AdjustLayout();
		dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(array));
		FreezeResize = true;
	}

	public override void Refresh()
	{
		if (!(ParentController is FloatingFormController))
		{
			ParentController.Refresh();
		}
	}

	protected void UpdateCurrentDCRelationship()
	{
		if (ctrlDockTab == null)
		{
			return;
		}
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			DCRelationship dCRelationship = new DCRelationship(currentRelationship.nRelation, child: true, DockPreference.Tabbed, ctrlDockTab.TabPages.IndexOf(tabPage));
			bool flag = false;
			IEnumerator dCR = tabPage.dhcClient.DCR;
			while (dCR.MoveNext())
			{
				DCRelationship dCRelationship2 = dCR.Current as DCRelationship;
				if (dCRelationship2.nRelation == dCRelationship.nRelation)
				{
					flag = true;
					break;
				}
			}
			if (!flag)
			{
				tabPage.dhcClient.DCRCurrent = dCRelationship;
			}
		}
	}

	public void RemoveDockHostFromTab(DockControllerBase dc, bool btransittoprev)
	{
		DockHostController dockHostController = (SelectedController = dc as DockHostController);
		if (ctrlDockTab.SelectedTab == null)
		{
			return;
		}
		if (!dockingMgr.ForbidWrapperLogic)
		{
			DockStateControllerWrapper dockStateControllerWrapper = new DockStateControllerWrapper(dockingMgr, this);
			dockStateControllerWrapper.ParentController = ParentController;
			ParentController.ChildWrapper = dockStateControllerWrapper;
			SetChildWrapper(dockStateControllerWrapper);
			ParentController.ChildWrapper = null;
		}
		ctrlDockTab.TabPages.Remove(ctrlDockTab.SelectedTab);
		if (btransittoprev)
		{
			if (Floating || dockingMgr.DisallowFloating)
			{
				CheckFormOwnership(dockHostController);
				dockHostController.SharedForm = ToplevelController.HostControl as FloatingForm;
				dockHostController.TransitToPrevDock();
			}
			else
			{
				if (!dockHostController.DIPrevious.rcDockArea.Size.IsEmpty)
				{
					(dockHostController.HostControl as DockHost).DragRectangle = dockHostController.DIPrevious.rcDockArea;
				}
				dockHostController.TransitToPrevFloat(showFloating: true);
			}
		}
		else if (Floating)
		{
			CheckFormOwnership(dockHostController);
			dockHostController.CreateFloatingFrame(dockHostController.HostControl.PointToScreen(dockHostController.HostControl.Location), show: true);
			dockHostController.Floating = true;
		}
		else
		{
			Size size = dockHostController.LayoutRect.Size;
			size.Width /= 2;
			size.Height /= 2;
			dockHostController.LayoutRect = new Rectangle(dockHostController.LayoutRect.Location, size);
			dockHostController.DINew = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, dockInfoCurrent.nDockIndex, dockInfoCurrent.DP, dockHostController.LayoutRect);
			InvokeDocking(dockHostController);
		}
		dockHostController.AdjustLayout();
		dockHostController.HostControl.Visible = true;
		if (!dockingMgr.DesignMode)
		{
			dockHostController.HostControl.Focus();
		}
		UpdateTabPages();
	}

	internal void UpdateTabPages()
	{
		if (ctrlDockTab.TabPages.Count == 1)
		{
			DockHostController dhcClient = (ctrlDockTab.SelectedTab as DockTabPage).dhcClient;
			PauseActivation = true;
			ctrlDockTab.SelectedIndexChanged -= DockTab_SelectedIndexChanged;
			ctrlDockTab.TabPages.Remove(ctrlDockTab.SelectedTab);
			ParentController.ReplaceChild(this, dhcClient);
			HostController = null;
			dhcClient.StoredSizes = base.StoredSizes;
			dhcClient.HostControl.Visible = true;
			dhcClient.DockTab = null;
			dhcClient.AdjustLayout();
			ctrlDockTab.Visible = false;
			ctrlDockTab.Dispose();
			ctrlDockTab = null;
		}
	}

	internal void CheckFormOwnership(DockHostController dhc)
	{
		DockHostController dockHostController = null;
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			if (tabPage.dhcClient != dhc)
			{
				dockHostController = tabPage.dhcClient;
				break;
			}
		}
		if (ToplevelController.HostControl == dhc.InternalForm)
		{
			FloatingForm internalForm = dockHostController.InternalForm;
			dockHostController.InternalForm = dhc.InternalForm;
			dhc.InternalForm = internalForm;
		}
	}

	public override void InvokeDocking(DockControllerBase dc)
	{
		HostController.InvokeDocking(dc);
	}

	public override bool QueryRelationship(DCRelationship dcr)
	{
		if (currentRelationship.nRelation == dcr.nRelation && dcr.DP == DockPreference.Tabbed)
		{
			return true;
		}
		return false;
	}

	public override bool AttemptDCRDocking(DockControllerBase dc, IEnumerator iedcr)
	{
		DockHostController dockHostController = dc as DockHostController;
		iedcr.Reset();
		while (iedcr.MoveNext())
		{
			DCRelationship dCRelationship = iedcr.Current as DCRelationship;
			if (QueryRelationship(dCRelationship))
			{
				dockHostController.DINew = new DockInfo(this, DockingStyle.Fill, dockInfoCurrent.nPriority, dCRelationship.nIndex, DockPreference.Tabbed, Rectangle.Empty);
				InvokeDocking(dockHostController);
				return true;
			}
		}
		iedcr.Reset();
		while (iedcr.MoveNext())
		{
			DCRelationship dCRelationship2 = iedcr.Current as DCRelationship;
			foreach (DockTabPage tabPage in TabControl.TabPages)
			{
				if (tabPage.dhcClient.QueryRelationship(dCRelationship2))
				{
					dockHostController.DINew.dController = HostController;
					dockHostController.DINew.DP = dCRelationship2.DP;
					dockHostController.DINew.nDockIndex = dCRelationship2.nIndex;
					HostController.InvokeDCRDocking(dockHostController, dCRelationship2);
					return true;
				}
			}
		}
		return false;
	}

	public override void InvokeDCRDocking(DockControllerBase dc, DCRelationship dcr)
	{
		HostController.InvokeDocking(dc);
	}

	public override DockControllerBase RedockController(DockInfo di, bool bforcenew)
	{
		dockInfoNew = new DockInfo(di);
		if (dockInfoNew.dController.Floating)
		{
			TransitFloatToDockInFloat();
		}
		else
		{
			TransitFloatToDock();
		}
		if (di.DP != DockPreference.Tabbed)
		{
			return this;
		}
		if (di.dController.DICurrent.DP == DockPreference.Tabbed)
		{
			return di.dController.ParentController;
		}
		return di.dController;
	}

	protected internal virtual FloatingForm CreateFloatingFrame(Point ptlocation)
	{
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			tabPage.dhcClient.PreviousDockSize = base.PreviousDockSize;
			tabPage.dhcClient.PreviousFloatSize = base.PreviousFloatSize;
			tabPage.dhcClient.StoredDockSizes = base.StoredDockSizes;
		}
		FloatingForm floatingForm;
		if (SharedForm != null && SharedForm.Used && InternalFloatWrapper != null)
		{
			_ = InternalFloatWrapper.ParentController;
			InternalFloatWrapper.ParentController.ReplaceChild(InternalFloatWrapper, this);
			InternalFloatWrapper = null;
			floatingForm = SharedForm;
		}
		else
		{
			if (HostController.InternalForm != null && !HostController.InternalForm.IsDisposed)
			{
				floatingForm = HostController.InternalForm;
				floatingForm.Enabled = true;
				base.DockingManager.AddFFController(floatingForm.InternalController as FloatingFormController);
				floatingForm.Used = true;
			}
			else
			{
				floatingForm = base.DockingManager.CreateFloatingForm();
				HostController.InternalForm = floatingForm;
			}
			Syncfusion.Runtime.InteropServices.NativeMethods.MoveWindow(floatingForm.Handle, ptlocation.X, ptlocation.Y, 0, 0, bRepaint: false);
			if (dockInfoNew.rcDockArea.Width <= 0 || dockInfoNew.rcDockArea.Height <= 0)
			{
				floatingForm.ClientSize = HostControl.Bounds.Size;
			}
			else
			{
				floatingForm.Size = dockInfoNew.rcDockArea.Size;
			}
			if (dockingMgr.bLoadVisibility)
			{
				floatingForm.Enable();
			}
		}
		foreach (DockTabPage tabPage2 in TabControl.TabPages)
		{
			tabPage2.dhcClient.SharedForm = null;
		}
		FloatingFormController floatingFormController = floatingForm.InternalController as FloatingFormController;
		floatingFormController.ClearSharedFormReferences(floatingFormController.dcChild);
		floatingFormController.AddChild(this, DockingStyle.Fill);
		floatingForm.Controls.Add(HostControl);
		floatingFormController.RefreshFormCaption();
		floatingFormController.AdjustLayout();
		if (base.DockingManager.VisualStyle != VisualStyle.Default && base.DockingManager.VisualStyle != VisualStyle.VS2005)
		{
			NativeMethodsHelper.RedrawWindow(floatingForm.Handle, 1025);
		}
		return floatingForm;
	}

	public override void EnterAutoHideMode()
	{
		TempWrapper.Minimized = Minimized;
		MainFormController mainFormController = dcHostController.ToplevelController as MainFormController;
		ParentController.ControllerChanged += TransientControllerChanged;
		dockInfoTransient = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), DICurrent.DP, DICurrent.rcDockArea);
		bInAutoHide = true;
		CheckDCRelationship();
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.bInAutoHide = true;
		}
		mainFormController.EnterAutoHideMode(this, animate: true);
		foreach (DockTabPage tabPage2 in ctrlDockTab.TabPages)
		{
			tabPage2.dhcClient.DINew.rcDockArea = DINew.rcDockArea;
			tabPage2.dhcClient.PreviousDockSize = base.PreviousDockSize;
			tabPage2.dhcClient.StoredDockSizes = base.StoredDockSizes;
		}
		DockControllerBase childAt = ParentController.GetChildAt(1);
		DragSplitter dragSplitter = childAt.HostControl as DragSplitter;
		foreach (DockTabPage tabPage3 in ctrlDockTab.TabPages)
		{
			dragSplitter.DragSplitterMoved += tabPage3.dhcClient.DHCDragSplitterMoved;
		}
		mainFormController.AdjustLayout();
		if (base.DockingManager.AHInViewTab != null)
		{
			base.DockingManager.AHInViewTab.HideController(this, banimate: true, bhidenow: true);
		}
		ExitMaxMinState();
	}

	public override void ExitAutoHideMode(bool bcloseonexit)
	{
		MainFormController mainFormController = dcHostController.ToplevelController as MainFormController;
		dockInfoTransient.dController.ControllerChanged -= TransientControllerChanged;
		bInAutoHide = false;
		if (TabControl.TabPages[0] is DockTabPage dockTabPage)
		{
			dockTabPage.dhcClient.LayoutRect = LayoutRect;
		}
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.bInAutoHide = false;
			tabPage.dhcClient.HostControl.Region = null;
		}
		mainFormController.ExitAutoHideMode(this, bcloseonexit);
		mainFormController.AdjustLayout();
	}

	protected internal void HandleMouseDownImp(MouseButtons button, Point ptclient)
	{
		if (!dockingMgr.DesignProcess && dockingMgr.DragProviderStyle == DragProviderStyle.Standard)
		{
			ctrlDockTab.Capture = true;
		}
		int tabHitIndex = ctrlDockTab.GetTabHitIndex(ptclient);
		if (tabHitIndex < 0)
		{
			return;
		}
		m_bCanSwitchTabs = true;
		m_nHitTab = tabHitIndex;
		DockHost dockHost = HostController.HostControl as DockHost;
		if (dockingMgr.DesignMode)
		{
			Control control = (ctrlDockTab.TabPages[tabHitIndex] as DockTabPage).dhcClient.HostControl.Controls[0];
			if (!(dockingMgr.GetPrimarySelection() is Control control2) || !control2.Equals(control))
			{
				Control[] clln = new Control[1] { control };
				dockingMgr.SetSelectedComponents(clln, SelectionTypes.Auto);
				bAllowDrag = false;
			}
			control.Focus();
		}
		else if (!dockingMgr.DesignProcess)
		{
			dockHost.Focus();
		}
		if (button == MouseButtons.Left)
		{
			DragAllowEventArgs e = new DragAllowEventArgs(HostControl.Controls[0]);
			dockingMgr.FireDragAllowEvent(e);
			if (!e.Cancel)
			{
				dockingMgr.DragProvider.SingleTabOperate = true;
				dockingMgr.DragProvider.ProcessMouseDown(this, dockHost, ctrlDockTab.PointToScreen(ptclient));
				dockHost.DragRectangle = dockHost.Bounds;
				bAllowDrag = true;
			}
		}
		if (ctrlDockTab.SelectedIndex != tabHitIndex)
		{
			ctrlDockTab.SelectedIndex = tabHitIndex;
		}
	}

	protected internal void HandleMouseUpImp(MouseButtons button, Point ptclient)
	{
		m_bCanSwitchTabs = false;
		if (bAllowDrag)
		{
			bAllowDrag = false;
		}
		switch (button)
		{
		case MouseButtons.Right:
			dockingMgr.ShowMenu(HostController, TabControl.PointToScreen(ptclient), singleTabOperate: true);
			break;
		case MouseButtons.Left:
			if (!dockingMgr.DesignProcess && ctrlDockTab.Capture)
			{
				ctrlDockTab.Capture = false;
			}
			if (dragTabPage != null)
			{
				DockHostController dhcClient = dragTabPage.dhcClient;
				if (dockingMgr.DragProvider.DraggingControl == dhcClient.HostControl as DockHost)
				{
					if ((dockingMgr.DisallowFloating || !dhcClient.AllowFloating) && dhcClient.DINew.dController == null)
					{
						(dhcClient.HostControl as DockHost).AbortDrag();
						dragTabPage = null;
						break;
					}
					if (!ChildControllers.Contains(dhcClient))
					{
						dhcClient.DockTab = null;
					}
				}
				dockingMgr.DragProvider.ProcessMouseUp(this, dhcClient.HostControl as DockHost, ctrlDockTab.PointToScreen(ptclient));
				dragTabPage = null;
			}
			else
			{
				DockHost ctrl = HostController.HostControl as DockHost;
				dockingMgr.DragProvider.ProcessMouseUp(this, ctrl, ctrlDockTab.PointToScreen(ptclient));
			}
			if (ctrlDockTab != null)
			{
				ctrlDockTab.nSwitchIndex = -1;
			}
			dockingMgr.DragProvider.SingleTabOperate = false;
			break;
		}
	}

	protected internal void HandleMouseMoveImp(MouseButtons button, Point ptclient)
	{
		if (button != MouseButtons.Left)
		{
			return;
		}
		if (dragTabPage != null)
		{
			if (ctrlDockTab.TabPages.Count > 0 && dragTabPage == ctrlDockTab.SelectedTab)
			{
				dragTabPage.dhcClient.DICurrent = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
			}
			Point ptscreen = ctrlDockTab.PointToScreen(ptclient);
			DockHost ctrl = dragTabPage.dhcClient.HostControl as DockHost;
			dockingMgr.DragProvider.ProcessMouseMove(this, ctrl, ptscreen);
		}
		else if (ctrlDockTab.ClientRectangle.Contains(ptclient))
		{
			int tabHitIndex = ctrlDockTab.GetTabHitIndex(ptclient);
			Rectangle tabRect = ctrlDockTab.GetTabRect(ctrlDockTab.SelectedIndex);
			if (ctrlDockTab.nSwitchIndex == -1 || (tabRect.Contains(ptclient) && ctrlDockTab.nSwitchIndex != ctrlDockTab.SelectedIndex))
			{
				ctrlDockTab.nSwitchIndex = ctrlDockTab.SelectedIndex;
			}
			if (tabHitIndex < 0 || tabHitIndex == ctrlDockTab.SelectedIndex)
			{
				return;
			}
			Rectangle tabRect2 = ctrlDockTab.GetTabRect(tabHitIndex);
			bool flag = false;
			if (tabRect.Width < tabRect2.Width && tabHitIndex == ctrlDockTab.nSwitchIndex)
			{
				flag = ((ctrlDockTab.SelectedIndex <= tabHitIndex) ? (dockingMgr.IsMirrored ? (ptclient.X > tabRect2.Left + tabRect.Width) : (ptclient.X < tabRect2.Right - tabRect.Width)) : (dockingMgr.IsMirrored ? (ptclient.X < tabRect2.Right - tabRect.Width) : (ptclient.X > tabRect2.Left + tabRect.Width)));
			}
			if (!flag && base.DockingManager.AllowTabsMoving)
			{
				if (m_nHitTab != tabHitIndex && m_bCanSwitchTabs)
				{
					PauseActivation = true;
					DockTabPage value = ctrlDockTab.SelectedTab as DockTabPage;
					ctrlDockTab.TabPages[ctrlDockTab.SelectedIndex] = ctrlDockTab.TabPages[tabHitIndex] as DockTabPage;
					UpdateTabsOrder(m_nHitTab, tabHitIndex);
					ctrlDockTab.TabPages[tabHitIndex] = value;
					ctrlDockTab.SelectedIndex = tabHitIndex;
					PauseActivation = false;
					m_nHitTab = tabHitIndex;
				}
				else
				{
					ctrlDockTab.SelectedIndex = tabHitIndex;
				}
				ctrlDockTab.Update();
			}
		}
		else if (bAllowDrag)
		{
			dragTabPage = ctrlDockTab.SelectedTab as DockTabPage;
		}
	}

	protected internal void UpdateTabsOrder(int oldIndex, int newIndex)
	{
		if (TempWrapper != null)
		{
			ArrayList dockRelationControllers = TempWrapper.DockRelationControllers;
			if (dockRelationControllers != null && dockRelationControllers.Count == ctrlDockTab.TabCount)
			{
				DockHostController value = dockRelationControllers[oldIndex] as DockHostController;
				dockRelationControllers.RemoveAt(oldIndex);
				dockRelationControllers.Insert(newIndex, value);
			}
			TabControl.OnTabsOrderChanged();
		}
	}

	protected internal void HandleDoubleClickImp(Point ptclient)
	{
		if (((dockingMgr.DisallowFloating || !HostController.AllowFloating) && !Floating) || ctrlDockTab.GetTabHitIndex(ptclient) < 0)
		{
			return;
		}
		DragAllowEventArgs e = new DragAllowEventArgs(HostControl.Controls[0]);
		dockingMgr.FireDragAllowEvent(e);
		if (!e.Cancel)
		{
			RemoveDockHostFromTab(HostController, btransittoprev: true);
			dockingMgr.DragProvider.ProcessDoubleClick();
			if (dockingMgr.DesignMode)
			{
				dockingMgr.UpdateDesigner();
			}
			dockingMgr.UpdateFloatingFormsImages();
		}
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && ctrlDockTab != null)
		{
			ctrlDockTab.SelectedIndexChanged -= DockTab_SelectedIndexChanged;
			if (ctrlDockTab.TabPages != null)
			{
				foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
				{
					if (tabPage.dhcClient != dcHostController && tabPage.dhcClient != null)
					{
						tabPage.dhcClient.Dispose();
					}
				}
			}
			if (dcHostController != null)
			{
				dcHostController.Dispose();
			}
			ctrlDockTab.Dispose();
			ctrlDockTab = null;
		}
		base.Dispose(bdisposing);
	}

	internal override void AddWrapper(ControllerWrapper cw)
	{
		DockTabControllerWrapper dockTabControllerWrapper = new DockTabControllerWrapper();
		dockTabControllerWrapper.LayoutRect = LayoutRect;
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			Control hostControl = tabPage.dhcClient.HostControl;
			if (hostControl != null && hostControl.Controls.Count > 0)
			{
				Control ctrl = hostControl.Controls[0];
				DockHostController dockHostController = base.DockingManager.GetDockHostController(ctrl);
				if (dockHostController != null)
				{
					string uniqueName = dockHostController.UniqueName;
					dockTabControllerWrapper.Controls.Add(uniqueName);
				}
			}
		}
		foreach (DockHostController dockRelationController in TempWrapper.DockRelationControllers)
		{
			if (dockRelationController.bInAutoHide)
			{
				dockTabControllerWrapper.Controls.Add(dockRelationController.UniqueName);
			}
		}
		cw.Children.Add(dockTabControllerWrapper);
	}

	internal override void StoreControllers(ArrayList controllers)
	{
		base.StoreControllers(controllers);
		ParentController.RemoveChild(this);
		controllers.Add(this);
	}

	internal override bool IsEqual(ControllerWrapper cw)
	{
		if (cw is DockTabControllerWrapper && HostControl.Controls.Count > 0)
		{
			DockHostController dockHostController = base.DockingManager.GetDockHostController(HostControl.Controls[0]);
			string uniqueName = dockHostController.UniqueName;
			DockTabControllerWrapper dockTabControllerWrapper = cw as DockTabControllerWrapper;
			if (dockTabControllerWrapper.Controls.Contains(uniqueName) || dockTabControllerWrapper.Controls.Contains("DockHost_" + uniqueName))
			{
				return true;
			}
			Control control = HostControl.Controls[0];
			if (control is UserControl && dockHostController.UniqueName == "")
			{
				dockHostController.UniqueName = NameGenerator.Generate(control);
				return true;
			}
			int num = 0;
			for (int i = 0; i < base.DockingManager.controllers.Count; i++)
			{
				if (base.DockingManager.controllers[i] is DockTabController)
				{
					num++;
				}
			}
			if (num == 1)
			{
				return true;
			}
		}
		return false;
	}

	internal override void ResizeControllers(ControllerWrapper cw)
	{
		DockTabControllerWrapper dockTabControllerWrapper = (DockTabControllerWrapper)cw;
		LayoutRect = dockTabControllerWrapper.LayoutRect;
		base.DITransient.rcDockArea = Rectangle.Empty;
	}

	internal override bool IsFloatOnly()
	{
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			if (tabPage.dhcClient.IsFloatOnly())
			{
				return true;
			}
		}
		return false;
	}

	public Size CalculateSize(Size parentSize, Size newParentSize)
	{
		return ControllerSizeCalculator.CalculateSize(this, parentSize, newParentSize);
	}

	public bool IsVerticallyResizable()
	{
		Direction mustResize = MustResize;
		if (Minimized == Minimization.None)
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
		if (Minimized == Minimization.None)
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
		Rectangle rcDockArea = Rectangle.Empty;
		switch (DICurrent.dStyle)
		{
		case DockingStyle.Left:
		case DockingStyle.Right:
			rcDockArea = new Rectangle(DINew.rcDockArea.Location, new Size(size.Width, DINew.rcDockArea.Height));
			break;
		case DockingStyle.Top:
		case DockingStyle.Bottom:
			rcDockArea = new Rectangle(DINew.rcDockArea.Location, new Size(DINew.rcDockArea.Width, size.Height));
			break;
		}
		base.DITransient.rcDockArea = rcDockArea;
		foreach (DockTabPage tabPage in TabControl.TabPages)
		{
			DockInfo dINew = tabPage.dhcClient.DINew;
			dINew.rcDockArea = rcDockArea;
		}
	}

	private void CheckDCRelationship()
	{
		DockTabControl dockTabControl = ctrlDockTab;
		foreach (DockTabPage tabPage in dockTabControl.TabPages)
		{
			DCRelationship dCRCurrent = tabPage.dhcClient.DCRCurrent;
			if (dCRCurrent == null || dCRCurrent.DP == DockPreference.Tabbed)
			{
				continue;
			}
			IEnumerator dCR = tabPage.dhcClient.DCR;
			dCR.Reset();
			while (dCR.MoveNext())
			{
				DCRelationship dCRelationship = dCR.Current as DCRelationship;
				if (dCRelationship.DP == DockPreference.Tabbed)
				{
					tabPage.dhcClient.DCRCurrent = dCRelationship;
					break;
				}
			}
		}
	}

	private void RecreateWrapper()
	{
		DockStateControllerWrapper dockStateControllerWrapper = new DockStateControllerWrapper(dockingMgr, this);
		dockStateControllerWrapper.ParentController = ParentController;
		ParentController.ChildWrapper = dockStateControllerWrapper;
		SetChildWrapper(dockStateControllerWrapper);
		ParentController.ChildWrapper = dockStateControllerWrapper;
	}

	private TransitType GetTransitType(DockHostController dhcdrag)
	{
		if (!Floating && (dhcdrag.DINew.dController == null || dhcdrag.DINew.dController.Floating))
		{
			return TransitType.DockToFloat;
		}
		if (Floating && dhcdrag.DINew.dController != null && !dhcdrag.DINew.dController.Floating)
		{
			return TransitType.FloatToDock;
		}
		return TransitType.FloatToFloat;
	}

	public override void ApplyDockInfo()
	{
		base.ApplyDockInfo();
		if (dragTabPage != null)
		{
			TransitType transitType = GetTransitType(dragTabPage.dhcClient);
			if (transitType != TransitType.FloatToFloat)
			{
				RecreateWrapper();
			}
			if (ctrlDockTab.TabPages.Contains(dragTabPage))
			{
				dockingMgr.SetRelativeSize(dragTabPage.dhcClient);
				PauseActivation = true;
				ctrlDockTab.TabPages.Remove(dragTabPage);
				PauseActivation = false;
				ctrlDockTab.Update();
			}
			DockHostController dhcClient = dragTabPage.dhcClient;
			bool forbidFreeze = dockingMgr.ForbidFreeze;
			dockingMgr.ForbidFreeze = true;
			DockHostController dhcClient2 = (ctrlDockTab.SelectedTab as DockTabPage).dhcClient;
			if (ToplevelController.HostControl == dhcClient.InternalForm)
			{
				FloatingForm internalForm = dhcClient2.InternalForm;
				dhcClient2.InternalForm = dhcClient.InternalForm;
				dhcClient.InternalForm = internalForm;
			}
			if (ctrlDockTab.TabPages.Count > 1)
			{
				SetHostCtrlForSelection();
			}
			else
			{
				UpdateTabPages();
			}
			dragTabPage = null;
			Control[] ctrls = new Control[1] { dhcClient.HostControl.Controls[0] };
			dockingMgr.FireDockStateChangeEvent("DockStateChanging", new DockStateChangeEventArgs(ctrls));
			switch (transitType)
			{
			case TransitType.DockToFloat:
				if (dhcClient.DIPrevious.dController != null)
				{
					dhcClient.DIPrevious.dController.ControllerChanged -= dhcClient.dhc_ControllerChanged;
				}
				ParentController.ControllerChanged += dhcClient.dhc_ControllerChanged;
				if (!dhcClient.DIPrevious.rcDockArea.Size.IsEmpty)
				{
					(dhcClient.HostControl as DockHost).DragRectangle = dhcClient.DIPrevious.rcDockArea;
				}
				dhcClient.DIPrevious = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
				dhcClient.Floating = true;
				break;
			case TransitType.FloatToDock:
				if (dhcClient.DIPrevious.dController != null)
				{
					dhcClient.DIPrevious.dController.ControllerChanged -= dhcClient.dhc_ControllerChanged;
				}
				ParentController.ControllerChanged += dhcClient.dhc_ControllerChanged;
				dhcClient.DIPrevious = new DockInfo(ParentController, dockInfoCurrent.dStyle, dockInfoCurrent.nPriority, ParentController.GetChildHostIndex(this), dockInfoCurrent.DP, dockInfoCurrent.rcDockArea);
				dhcClient.Floating = false;
				break;
			default:
				if (ParentController is FloatingFormController)
				{
					FloatingForm floatingForm = (FloatingForm)ParentController.HostControl;
					(dhcClient.HostControl as DockHost).DragRectangle = new Rectangle(floatingForm.Location, floatingForm.Size);
				}
				if (ctrlDockTab != null)
				{
					RecreateWrapper();
				}
				else if (dhcClient2.InternalFloatWrapper != null)
				{
					dhcClient2.InternalFloatWrapper.Relations.Clear();
				}
				break;
			}
			if (dhcClient.DINew.dController == null)
			{
				dhcClient.FloatDCRList.Clear();
				if (Floating)
				{
					dhcClient.InternalFloatWrapper = null;
				}
				dhcClient.CreateFloatingFrame(base.DockingManager.HostControl.PointToScreen(dhcClient.HostControl.Location), show: true);
				dockingMgr.UpdateFloatingFormsImages();
				dhcClient.Floating = true;
				dhcClient.AdjustLayout();
			}
			else
			{
				if (!Floating && !dhcClient.DINew.dController.Floating)
				{
					dhcClient.DockDCRList.Clear();
				}
				if (dockingMgr.DockToFill && dhcClient.DINew.dController == dockingMgr.dcHostForm && dhcClient.DINew.dController.ChildCount == 1)
				{
					DockControllerBase childAt = dhcClient.DINew.dController.GetChildAt(0).GetChildAt(0);
					if (childAt is DockStateControllerBase)
					{
						dhcClient.DINew.dController = childAt;
						switch (dhcClient.DINew.dStyle)
						{
						case DockingStyle.Left:
							dhcClient.DINew.nDockIndex = 0;
							dhcClient.DINew.DP = childAt.DICurrent.DP;
							break;
						case DockingStyle.Top:
							dhcClient.DINew.nDockIndex = 0;
							dhcClient.DINew.DP = childAt.DICurrent.DP;
							break;
						case DockingStyle.Right:
							dhcClient.DINew.nDockIndex = childAt.ChildCount;
							dhcClient.DINew.DP = childAt.DICurrent.DP;
							break;
						case DockingStyle.Bottom:
							dhcClient.DINew.nDockIndex = childAt.ChildCount;
							dhcClient.DINew.DP = childAt.DICurrent.DP;
							break;
						}
						childAt.InvokeDocking(dhcClient);
					}
					else
					{
						dhcClient.DINew.dController.InvokeDocking(dhcClient);
					}
				}
				else
				{
					dhcClient.DINew.dController.InvokeDocking(dhcClient);
				}
			}
			if (!dockingMgr.DesignProcess)
			{
				dhcClient.HostControl.Focus();
			}
			dockingMgr.FireDockStateChangeEvent("DockStateChanged", new DockStateChangeEventArgs(ctrls));
			if (dockingMgr.DesignMode)
			{
				dockingMgr.UpdateDesigner();
			}
			dockingMgr.ForbidFreeze = forbidFreeze;
			dockingMgr.DragProvider.SingleTabOperate = false;
			return;
		}
		dragTabPage = null;
		foreach (DockTabPage tabPage in ctrlDockTab.TabPages)
		{
			tabPage.dhcClient.DCRCurrent.nIndex = ctrlDockTab.TabPages.IndexOf(tabPage);
		}
	}

	public override void DockAsMDIChild()
	{
		ArrayList arrayList = new ArrayList(TabControl.TabPages);
		Control control = null;
		foreach (DockTabPage item in arrayList)
		{
			if (item.Visible)
			{
				control = item.dhcClient.HostControl.Controls[0];
				arrayList.Remove(item);
				arrayList.Insert(0, item);
				break;
			}
		}
		foreach (DockTabPage item2 in arrayList)
		{
			DockHostController dhcClient = item2.dhcClient;
			dockingMgr.SetAsMDIChild(dhcClient.HostControl.Controls[0], bsetmdi: true);
		}
		if (control != null && control.Parent is Form form)
		{
			form.Activate();
		}
	}

	public override void UpdateControl()
	{
		ctrlDockTab.UpdateRenderer();
		AdjustLayout();
	}
}
