using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Renderers;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class AHTabControl : AHTabControlBase
{
	protected DockingManager dockingMgr;

	protected DockingStyle tabBorder = DockingStyle.Fill;

	protected int nClientIndex = -1;

	protected internal static Timer tmrShowController;

	protected internal static Timer tmrHideController;

	protected internal static Timer tmrAnimation;

	protected DockStateControllerBase ddcAnimation;

	private Rectangle rcAnimation = Rectangle.Empty;

	protected Rectangle rcVisibleBounds = Rectangle.Empty;

	protected bool bLeadSpace;

	protected bool bTrailSpace;

	protected bool bNeedActivate;

	protected internal AutoHideAnimationState AnimationState;

	protected ThemedControlDrawing tdTab;

	private bool hideAfterShow;

	private Point m_dragStartPoint = Point.Empty;

	private int m_dragOffset = 2;

	public override Font Font
	{
		get
		{
			return base.Font;
		}
		set
		{
			if (base.Font != null)
			{
				base.Font = value;
				SetItemSize();
			}
		}
	}

	public override Font ActiveTabFont
	{
		get
		{
			return base.ActiveTabFont;
		}
		set
		{
			if (base.ActiveTabFont != value)
			{
				base.ActiveTabFont = value;
				SetItemSize();
			}
		}
	}

	public override Point Padding
	{
		get
		{
			return base.Padding;
		}
		set
		{
			if (base.Padding != value)
			{
				base.Padding = value;
				SetItemSize();
			}
		}
	}

	public override TabAlignment Alignment
	{
		get
		{
			return base.Alignment;
		}
		set
		{
			if (base.Alignment != value)
			{
				base.Alignment = value;
				SetItemSize();
			}
		}
	}

	public DockingStyle Edge => tabBorder;

	protected override bool IsOffice2003Style
	{
		get
		{
			if (TabStyle.Name == "TabGroupRendererOffice2003")
			{
				return true;
			}
			return false;
		}
	}

	public bool LeadSpace
	{
		set
		{
			bLeadSpace = value;
		}
	}

	public bool TrailSpace
	{
		set
		{
			bTrailSpace = value;
		}
	}

	public int EmptyLeft => (int)(base.Renderer as AHTabRenderer).PadX;

	public ThemedControlDrawing ThemeDraw => tdTab;

	public DockingManager DockingManager => dockingMgr;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (TabPages == null || TabPages.Count == 0)
			{
				createParams.Height = 0;
				createParams.Width = 0;
			}
			return createParams;
		}
	}

	public AHTabControl(DockingManager dmgr, DockingStyle border)
	{
		dockingMgr = dmgr;
		tabBorder = border;
		base.TabStop = false;
		base.Visible = false;
		TabStyle = GetRendererType();
		if (border == DockingStyle.Right)
		{
			ImageAlignmentR = RelativeImageAlignment.RightOfText;
		}
		Multiline = false;
		ScrollIncrement = ScrollIncrement.Tab;
		TextAlignment = StringAlignment.Center;
		TextLineAlignment = StringAlignment.Center;
		Font = dmgr.AutoHideTabFont;
		ActiveTabFont = Font;
		ItemSize = new Size(0, dmgr.AutoHideTabHeight);
		Padding = new Point(3, 0);
		ImageList = dockingMgr.ImageList;
		SetStyle(ControlStyles.Selectable, value: false);
		(base.Renderer as AHTabRenderer).PadX = 2f;
		(base.Renderer as AHTabRenderer).PadY = 2f;
		if (XPThemes.IsThemedOS)
		{
			tdTab = new ThemedControlDrawing("TAB");
		}
		dockingMgr.ImageListChanged += dockingManager_ImageListChanged;
		RightToLeft = dockingMgr.RightToLeft;
		base.ScrollButtons.ThemesEnabled = true;
	}

	protected internal void ForceLayout()
	{
		if (base.IsHandleCreated)
		{
			Graphics graphics = CreateGraphics();
			Layout(graphics, fromPaint: false);
			graphics.Dispose();
		}
	}

	protected override void InitScrollButtons()
	{
		m_sbScrollButtons.TabStop = false;
		UpdateScrollButtonState();
		m_sbScrollButtons.Visible = true;
		m_sbScrollButtons.BringToFront();
		m_sbScrollButtons.UpDown += base.UpDownEventHandler;
		m_sbScrollButtons.VSLikeButton = base.VSLikeScrollButton || IsOffice2003Style || IsWhidbeyStyle;
		UpdateScrollButtonsStyle();
	}

	internal void MFMouseMessageHandler(Point ptscreen)
	{
		if (tmrAnimation != null)
		{
			Point pt = PointToClient(Cursor.Position);
			if (GetActiveTabGroupOrSubGroupDockHostRect().Contains(ptscreen) || GetTabGroupIndex(pt) == nClientIndex)
			{
				if (AnimationState == AutoHideAnimationState.Hiding && (tmrHideController != null || tmrShowController != null))
				{
					AnimationState = AutoHideAnimationState.Showing;
					tmrAnimation.Tick -= HideAnimation_TickEventHandler;
					tmrAnimation.Tick += ShowAnimation_TickEventHandler;
				}
			}
			else if (AnimationState == AutoHideAnimationState.Showing && (tmrHideController != null || tmrShowController != null))
			{
				AnimationState = AutoHideAnimationState.Hiding;
				tmrAnimation.Tick -= ShowAnimation_TickEventHandler;
				tmrAnimation.Tick += HideAnimation_TickEventHandler;
			}
			return;
		}
		if (nClientIndex < 0)
		{
			string message = $"AHTabControl[MFMouseMessageHandler] Error: nClientIndex has unacceptable value ({nClientIndex}).\n";
			Exception ex = new Exception(message);
			TraceUtil.TraceExceptionCatched(ex);
			ExceptionManager.RaiseExceptionCatched(this, ex);
			return;
		}
		DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
		if (!RectangleToScreen(Rectangle.Inflate(GetTabRect(nClientIndex), 1, 1)).Contains(ptscreen) && !dhcClient.ParentController.HostControl.RectangleToScreen(Rectangle.Inflate(dhcClient.ParentController.LayoutRect, 2, 2)).Contains(ptscreen) && (dockingMgr.ForceHideActiveControl || !dhcClient.HostControl.ContainsFocus) && tmrHideController == null)
		{
			if (tmrShowController != null)
			{
				tmrShowController.Tick -= ShowController_TickEventHandler;
				tmrShowController.Stop();
				tmrShowController = null;
			}
			tmrHideController = new Timer();
			tmrHideController.Tick += HideController_TickEventHandler;
			tmrHideController.Interval = DockingManager.nHideInterval;
			tmrHideController.Start();
		}
	}

	protected void Redraw()
	{
		Graphics graphics = Graphics.FromHwnd(base.Handle);
		PaintEventArgs e = new PaintEventArgs(graphics, base.Bounds);
		OnPaint(e);
	}

	internal void MFNCMouseMessageHandler(Point ptscreen)
	{
		if (tmrAnimation != null)
		{
			return;
		}
		if (nClientIndex < 0)
		{
			string message = $"AHTabControl[MFMouseMessageHandler] Error: nClientIndex has unacceptable value ({nClientIndex}).\n";
			Exception ex = new Exception(message);
			TraceUtil.TraceExceptionCatched(ex);
			ExceptionManager.RaiseExceptionCatched(this, ex);
			return;
		}
		DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
		if ((dockingMgr.ForceHideActiveControl || !dhcClient.HostControl.ContainsFocus) && tmrHideController == null)
		{
			if (tmrShowController != null)
			{
				tmrShowController.Tick -= ShowController_TickEventHandler;
				tmrShowController.Stop();
				tmrShowController = null;
			}
			tmrHideController = new Timer();
			tmrHideController.Tick += HideController_TickEventHandler;
			tmrHideController.Interval = DockingManager.nHideInterval;
			tmrHideController.Start();
		}
	}

	public void dockingManager_ImageListChanged(object obj, EventArgs e)
	{
		ImageList = dockingMgr.ImageList;
	}

	public void AddToEmptyLeft(int nleft)
	{
		(base.Renderer as AHTabRenderer).PadX += nleft;
	}

	private void ResetAutoHideIndex(DockingManager dmgr)
	{
		foreach (DockControllerBase alDockAreaController in dmgr.alDockAreaControllers)
		{
			if (!(alDockAreaController is DockHostController) || !(alDockAreaController as DockStateControllerBase).AutoHideMode)
			{
				continue;
			}
			foreach (AHTabPage tabPage in TabPages)
			{
				if ((alDockAreaController as DockStateControllerBase).Equals(tabPage.DHCClient))
				{
					(alDockAreaController as DockStateControllerBase).AutoHideIndex = TabPages.IndexOf(tabPage);
					break;
				}
			}
		}
	}

	private void UpdatePreviousAutoHideIndex(DockStateControllerBase ddcbase)
	{
		foreach (DockControllerBase alDockAreaController in ddcbase.DockingManager.alDockAreaControllers)
		{
			if (alDockAreaController is DockHostController && !(alDockAreaController as DockStateControllerBase).Equals(ddcbase))
			{
				int previousAutoHideIndex = (alDockAreaController as DockStateControllerBase).PreviousAutoHideIndex;
				if (previousAutoHideIndex != -1 && previousAutoHideIndex < ddcbase.PreviousAutoHideIndex)
				{
					ddcbase.PreviousAutoHideIndex = previousAutoHideIndex;
					break;
				}
			}
		}
	}

	public void AddTab(DockStateControllerBase ddcbase, bool bshowcontrol)
	{
		if (ddcbase.ChildCount <= 0)
		{
			DockHostController dockHostController = ddcbase as DockHostController;
			int num = -1;
			AHTabPage aHTabPage = null;
			if (ddcbase.PreviousAutoHideIndex == -1)
			{
				aHTabPage = new AHTabPage(dockHostController, dockHostController.HostControl.Text, dockHostController.ImageIndex);
				TabPages.Add(aHTabPage);
				num = base.TabCount - 1;
			}
			else
			{
				aHTabPage = new AHTabPage(dockHostController, dockHostController.HostControl.Text, dockHostController.ImageIndex);
				UpdatePreviousAutoHideIndex(ddcbase);
				num = ddcbase.PreviousAutoHideIndex;
				if (num > TabPages.Count)
				{
					num = TabPages.Count;
				}
				TabPages.Insert(num, aHTabPage);
				ddcbase.PreviousAutoHideIndex = -1;
				ResetAutoHideIndex(ddcbase.DockingManager);
			}
			TabGroupData tabGroupData = base.TabsData[num] as TabGroupData;
			tabGroupData.Items.Add(new TabGroupItem(dockHostController.HostControl.Text, dockHostController.ImageIndex, dockHostController));
			if (dockHostController.AutoHideIndex == -1 && aHTabPage != null)
			{
				dockHostController.AutoHideIndex = TabPages.IndexOf(aHTabPage);
			}
			if (!base.Visible)
			{
				base.Visible = true;
			}
			if (bshowcontrol)
			{
				ShowController(dockHostController, bAnimate: false);
			}
			return;
		}
		DockTabController dockTabController = ddcbase as DockTabController;
		DockTabControl tabControl = dockTabController.TabControl;
		DockHostController hostController = dockTabController.HostController;
		hostController.DINew.rcDockArea = dockTabController.DINew.rcDockArea;
		TabPages.Add(new AHTabPage(dockTabController, null, -1));
		TabGroupData tabGroupData2 = base.TabsData[base.TabCount - 1] as TabGroupData;
		foreach (DockTabPage tabPage in tabControl.TabPages)
		{
			tabGroupData2.Items.Add(new TabGroupItem(tabPage.dhcClient.HostControl.Text, tabPage.dhcClient.ImageIndex, tabPage.dhcClient));
		}
		tabGroupData2.SelectedIndex = tabControl.SelectedIndex;
		DockHostController hostController2 = dockTabController.HostController;
		if (hostController2 != null && hostController2.AutoHideIndex == -1)
		{
			hostController2.AutoHideIndex = TabPages.Count - 1;
		}
		dockTabController.AutoHideIndex = TabPages.Count - 1;
		tabControl.Visible = false;
		if (!base.Visible)
		{
			base.Visible = true;
		}
		if (bshowcontrol)
		{
			ShowController(dockTabController, bAnimate: false);
		}
		dockTabController.AdjustLayout();
	}

	public void RemoveTab(DockStateControllerBase dscbase)
	{
		int num = nClientIndex;
		if (dscbase is DockHostController)
		{
			num = ((DockHostController)dscbase).AutoHideIndex;
		}
		if (dscbase is DockTabController)
		{
			num = ((DockTabController)dscbase).AutoHideIndex;
		}
		if (tmrAnimation != null)
		{
			switch (AnimationState)
			{
			case AutoHideAnimationState.None:
			case AutoHideAnimationState.Hiding:
				tmrAnimation.Tick -= HideAnimation_TickEventHandler;
				dockingMgr.HideAutoHiddenControl();
				break;
			case AutoHideAnimationState.Showing:
				tmrAnimation.Tick -= ShowAnimation_TickEventHandler;
				break;
			}
			if (tmrAnimation != null)
			{
				tmrAnimation.Stop();
				tmrAnimation = null;
			}
		}
		dockingMgr.AHInViewTab = null;
		nClientIndex = -1;
		if (dscbase is DockTabController dockTabController)
		{
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				tabPage.dhcClient.AutoHideIndex = -1;
			}
		}
		else
		{
			dscbase.AutoHideIndex = -1;
		}
		foreach (TabGroupData tabsDatum in base.TabsData)
		{
			for (int i = 0; i < tabsDatum.Items.Count; i++)
			{
				if (i != 0)
				{
					TabGroupItem tabGroupItem = tabsDatum.Items[i];
					if (tabGroupItem != null && tabGroupItem.Tag is DockHostController dockHostController)
					{
						dockHostController.AutoHideIndex = -1;
					}
				}
			}
		}
		if (num < 0)
		{
			DockControllerBase dockControllerBase = null;
			dockControllerBase = ((!(dscbase is DockTabController)) ? dscbase : (dscbase as DockTabController).HostController);
			foreach (TabGroupData tabsDatum2 in base.TabsData)
			{
				if (tabsDatum2.Items.Count > 1)
				{
					foreach (TabGroupItem item in tabsDatum2.Items)
					{
						if (item.Tag == dockControllerBase)
						{
							tabsDatum2.SelectedIndex = tabsDatum2.Items.IndexOf(item);
							num = base.TabsData.IndexOf(tabsDatum2);
							break;
						}
					}
				}
				else if (tabsDatum2.Items[0].Tag == dockControllerBase)
				{
					num = base.TabsData.IndexOf(tabsDatum2);
					break;
				}
			}
		}
		TabGroupData tabGroupData3 = base.TabsData[num] as TabGroupData;
		if (dscbase.ChildCount <= 0)
		{
			if (tabGroupData3.Items.Count > 1)
			{
				TabGroupItem tabGroupItem3 = null;
				foreach (TabGroupItem item2 in tabGroupData3.Items)
				{
					if (item2.Tag == dscbase)
					{
						tabGroupItem3 = item2;
						tabGroupItem3.Tag = null;
					}
				}
				tabGroupData3.Items.Remove(tabGroupItem3);
				OnTabPanelBoundsAffected();
				DockStateControllerBase dhcClient = (SelectedTab as AHTabPage).m_dhcClient;
				dhcClient.HostControl.Visible = false;
				Rectangle layoutRect = dhcClient.LayoutRect;
				if (layoutRect.Width > 0 && layoutRect.Height > 0)
				{
					dhcClient.DINew.rcDockArea = layoutRect;
				}
				dhcClient.ParentController.LayoutRect = Rectangle.Empty;
				if (tabGroupData3.Items.Count == 1)
				{
					AHTabPage aHTabPage = TabPages[num] as AHTabPage;
					aHTabPage.m_dhcClient = tabGroupData3.Items[0].Tag as DockStateControllerBase;
				}
			}
			else
			{
				tabGroupData3.Items[0].Tag = null;
				TabPages.RemoveAt(num);
			}
		}
		else
		{
			DockTabController dockTabController2 = dscbase as DockTabController;
			foreach (TabGroupItem item3 in tabGroupData3.Items)
			{
				item3.Tag = null;
			}
			TabPages.RemoveAt(num);
			dockTabController2.HostController.DockTab.Visible = true;
			dockTabController2.AdjustLayout();
		}
		if (base.TabCount == 0)
		{
			base.Visible = false;
			ddcAnimation = null;
		}
		foreach (TabGroupData tabsDatum3 in base.TabsData)
		{
			TabGroupItem tabGroupItem6 = tabsDatum3.Items[0];
			if (tabGroupItem6 != null && tabGroupItem6.Tag is DockHostController dockHostController2)
			{
				dockHostController2.AutoHideIndex = base.TabsData.IndexOf(tabsDatum3);
				if (dockHostController2.ParentController is DockTabController dockTabController3)
				{
					dockTabController3.AutoHideIndex = dockHostController2.AutoHideIndex;
				}
			}
		}
	}

	protected DockStyle GetDockBorder()
	{
		return Alignment switch
		{
			TabAlignment.Right => DockStyle.Left, 
			TabAlignment.Left => DockStyle.Right, 
			TabAlignment.Bottom => DockStyle.Top, 
			TabAlignment.Top => DockStyle.Bottom, 
			_ => DockStyle.None, 
		};
	}

	protected void InitiateShowAnimationStartEvent(DockStateControllerBase ddcbase, Control dockctrl)
	{
		dockingMgr.HostControl.SuspendLayout();
		DockStyle dockBorder = GetDockBorder();
		Rectangle bounds = CalcClientControlSize(ddcbase);
		AutoHideAnimationEventArgs e = new AutoHideAnimationEventArgs(dockctrl, dockBorder, bounds);
		dockingMgr.FireAutoHideAnimationEvent("AutoHideAnimationStart", e);
		rcAnimation = e.Bounds;
		dockingMgr.ahTabAnimate = this;
	}

	protected void InitiateHideAnimationStartEvent(DockStateControllerBase ddcbase, Control dockctrl)
	{
		dockingMgr.HostControl.SuspendLayout();
		DockStyle dockBorder = GetDockBorder();
		Rectangle bounds = ((dockBorder != DockStyle.Top && dockBorder != DockStyle.Bottom) ? new Rectangle(rcAnimation.Left, rcAnimation.Top, ddcbase.DINew.rcDockArea.Width, rcAnimation.Height) : new Rectangle(rcAnimation.Left, rcAnimation.Top, rcAnimation.Width, ddcbase.DINew.rcDockArea.Height));
		AutoHideAnimationEventArgs arg = new AutoHideAnimationEventArgs(dockctrl, dockBorder, bounds);
		dockingMgr.FireAutoHideAnimationEvent("AutoHideAnimationStart", arg);
		dockingMgr.ahTabAnimate = this;
		rcVisibleBounds = new Rectangle(Point.Empty, bounds.Size);
	}

	protected void InitiateAnimationStopEvent(DockStateControllerBase ddcbase, Control dockctrl)
	{
		dockingMgr.HostControl.ResumeLayout();
		rcVisibleBounds = Rectangle.Empty;
		DockStyle dockBorder = GetDockBorder();
		AutoHideAnimationEventArgs arg = new AutoHideAnimationEventArgs(dockctrl, dockBorder, Rectangle.Empty);
		dockingMgr.FireAutoHideAnimationEvent("AutoHideAnimationStop", arg);
		ddcbase.bAutoHideSizing = false;
		dockingMgr.ahTabAnimate = null;
	}

	public void ShowController(DockStateControllerBase ddcbase, bool bAnimate)
	{
		ShowController(ddcbase, bAnimate, bActivateAfterShow: false);
	}

	public void ShowController(DockStateControllerBase ddcbase, bool banimate, bool bActivateAfterShow)
	{
		if (tmrAnimation != null)
		{
			StopShowAnimation();
		}
		if (nClientIndex > -1)
		{
			DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
			if (dhcClient != ddcbase)
			{
				HideController(dhcClient, banimate: false);
			}
		}
		if (tmrShowController != null)
		{
			tmrShowController.Tick -= ShowController_TickEventHandler;
			tmrShowController.Stop();
			tmrShowController = null;
			if (!RectangleToScreen(GetTabRect(nClientIndex)).Contains(Cursor.Position))
			{
				nClientIndex = -1;
				return;
			}
		}
		if (nClientIndex >= 0)
		{
			TabGroupData tabGroupData = base.TabsData[nClientIndex] as TabGroupData;
			if (tabGroupData.Items.Count > 1 && ddcbase is DockTabController dockTabController)
			{
				tabGroupData.SelectedIndex = dockTabController.HostController.DockTab.SelectedIndex;
			}
		}
		if (banimate)
		{
			InternalStopShowAnimation();
			if (AnimationState == AutoHideAnimationState.Hiding)
			{
				StopHideAnimation();
			}
			InitiateShowAnimationStartEvent(ddcbase, ddcbase.HostControl.Controls[0]);
			ddcbase.HostControl.BringToFront();
			ddcAnimation = ddcbase;
			ddcAnimation.bAutoHideSizing = true;
			_ = DockingManager.AnimationStep;
			switch (tabBorder)
			{
			case DockingStyle.Left:
				if (ddcAnimation.HostControl is DockHost)
				{
					ddcAnimation.HostControl.Bounds = new Rectangle(rcAnimation.Left - rcAnimation.Width, rcAnimation.Top, rcAnimation.Width, rcAnimation.Height);
				}
				break;
			case DockingStyle.Top:
				if (ddcAnimation.HostControl is DockHost)
				{
					ddcAnimation.HostControl.Bounds = new Rectangle(rcAnimation.Left, rcAnimation.Top - rcAnimation.Height, rcAnimation.Width, rcAnimation.Height);
				}
				break;
			case DockingStyle.Right:
				ddcAnimation.HostControl.Bounds = new Rectangle(rcAnimation.Left + rcAnimation.Width, rcAnimation.Top, rcAnimation.Width, rcAnimation.Height);
				break;
			case DockingStyle.Bottom:
				ddcAnimation.HostControl.Bounds = new Rectangle(rcAnimation.Left, rcAnimation.Top + rcAnimation.Height, rcAnimation.Width, rcAnimation.Height);
				break;
			}
			RefreshInnerControlLayout(ddcAnimation.HostControl.Bounds);
			tmrAnimation = new Timer();
			tmrAnimation.Interval = DockingManager.AnimationSpeed;
			tmrAnimation.Tick += ShowAnimation_TickEventHandler;
			tmrAnimation.Start();
			BringToFront();
			bNeedActivate = bActivateAfterShow;
		}
		else
		{
			dockingMgr.ahTabAnimate = null;
			rcAnimation = CalcClientControlSize(ddcbase);
			dockingMgr.AHInViewTab = this;
			if (dockingMgr.AHInViewTab.Parent == null && dockingMgr.HostControl != null)
			{
				dockingMgr.AHInViewTab.Parent = dockingMgr.HostControl;
			}
			ddcbase.HostControl.Bounds = rcAnimation;
			ddcbase.HostControl.BringToFront();
			ddcbase.HostControl.Region = null;
			nClientIndex = ddcbase.AutoHideIndex;
			SetClientControlSize(ddcbase, rcAnimation);
			ddcbase.HostControl.Visible = true;
			DockControllerBase childAt = ddcbase.ParentController.GetChildAt(1);
			childAt.HostControl.Visible = true;
			childAt.HostControl.BringToFront();
			if (nClientIndex < 0)
			{
				nClientIndex = TabPages.Count - 1;
			}
			dockingMgr.AHInViewTab = this;
			if (bActivateAfterShow)
			{
				ddcbase.HostControl.Focus();
			}
		}
	}

	private void RefreshInnerControlLayout(Rectangle rectangle)
	{
		if (ddcAnimation != null)
		{
			DockControllerBase dockControllerBase = null;
			if (ddcAnimation.ParentController != null)
			{
				dockControllerBase = ((!(ddcAnimation.ParentController is SizingController)) ? ddcAnimation.ParentController.ParentController : ddcAnimation.ParentController);
			}
			if (dockControllerBase != null)
			{
				dockControllerBase.LayoutRect = rectangle;
			}
		}
	}

	internal void InternalStopShowAnimation()
	{
		if (nClientIndex >= 0 && tmrAnimation != null)
		{
			StopShowAnimation();
			dockingMgr.AHInViewTab = null;
			DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
			Control dockctrl = dhcClient.HostControl.Controls[0];
			InitiateHideAnimationStartEvent(dhcClient, dockctrl);
			dhcClient.HostControl.Visible = false;
			Rectangle layoutRect = dhcClient.LayoutRect;
			if (layoutRect.Width > 0 && layoutRect.Height > 0)
			{
				dhcClient.DINew.rcDockArea = layoutRect;
			}
			dhcClient.ParentController.LayoutRect = Rectangle.Empty;
			InitiateAnimationStopEvent(dhcClient, dockctrl);
			nClientIndex = -1;
		}
	}

	public void HideController(DockStateControllerBase ddcbase, bool banimate)
	{
		HideController(ddcbase, banimate, bhidenow: false);
	}

	public void HideController(DockStateControllerBase ddcbase, bool banimate, bool bhidenow)
	{
		if (ddcbase == null)
		{
			if (nClientIndex < 0)
			{
				hideAfterShow = true;
				return;
			}
			ddcbase = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
		}
		if (tmrAnimation != null)
		{
			StopHideAnimation();
		}
		if (tmrHideController != null)
		{
			tmrHideController.Tick -= HideController_TickEventHandler;
			tmrHideController.Stop();
			tmrHideController = null;
		}
		DockControllerBase dockControllerBase = null;
		dockControllerBase = ((!(ddcbase.ParentController is SizingController)) ? ddcbase.ParentController.ParentController : ddcbase.ParentController);
		if (dockControllerBase == null)
		{
			return;
		}
		DockControllerBase childAt = dockControllerBase.GetChildAt(1);
		Point position = Cursor.Position;
		if (((GetTabGroupIndex(PointToClient(position)) != nClientIndex && !dockControllerBase.HostControl.RectangleToScreen(dockControllerBase.LayoutRect).Contains(position) && !childAt.HostControl.Capture) || bhidenow) && banimate)
		{
			InitiateHideAnimationStartEvent(ddcbase, ddcbase.HostControl.Controls[0]);
			ddcAnimation = ddcbase;
			ddcAnimation.bAutoHideSizing = true;
			childAt.HostControl.Visible = false;
			RemoveAHTabControlTimer("HideAnimation");
			tmrAnimation = new Timer();
			tmrAnimation.Interval = DockingManager.AnimationSpeed;
			tmrAnimation.Tick += HideAnimation_TickEventHandler;
			tmrAnimation.Start();
			AnimationState = AutoHideAnimationState.Hiding;
			rcAnimation = ddcbase.HostControl.Bounds;
			BringToFront();
		}
		else
		{
			if (banimate && ddcAnimation == ddcbase)
			{
				return;
			}
			dockingMgr.ahTabAnimate = null;
			if (!ddcbase.HostControl.Visible || !banimate)
			{
				childAt.HostControl.Visible = false;
				ddcbase.HostControl.Visible = false;
				dockControllerBase.LayoutRect = Rectangle.Empty;
				nClientIndex = -1;
				if (dockingMgr.AHInViewTab != null)
				{
					dockingMgr.AHInViewTab = null;
				}
			}
			else if (tmrHideController != null)
			{
				tmrHideController.Tick -= HideController_TickEventHandler;
				tmrHideController.Stop();
				tmrHideController = null;
			}
			if (ddcAnimation != null && ddcAnimation == ddcbase && ddcAnimation.bInAutoHide)
			{
				if (Edge == DockingStyle.Left || Edge == DockingStyle.Right)
				{
					ddcAnimation.HostControl.Width = 0;
				}
				else
				{
					ddcAnimation.HostControl.Height = 0;
				}
				ddcAnimation.HostControl.Region = null;
				ddcAnimation.bAutoHideSizing = false;
				HideControllersSizingParent(ddcAnimation);
			}
		}
	}

	protected void ShowAnimation_TickEventHandler(object sender, EventArgs e)
	{
		if (tmrAnimation == null || ddcAnimation.HostControl == null)
		{
			return;
		}
		if (!ddcAnimation.HostControl.Visible)
		{
			ddcAnimation.HostControl.Visible = true;
		}
		Rectangle bounds = ddcAnimation.HostControl.Bounds;
		int num = DockingManager.AnimationStep;
		int num2 = 4;
		int num3 = ((DockingManager.AutoHideTabHeight > num2) ? DockingManager.AutoHideTabHeight : num2);
		ddcAnimation.HostControl.SuspendLayout();
		switch (tabBorder)
		{
		case DockingStyle.Left:
			if (rcVisibleBounds.Width < bounds.Width - num)
			{
				while (num > num3)
				{
					Rectangle rect5 = new Rectangle(base.Right - ddcAnimation.HostControl.Left - num3, 0, ddcAnimation.HostControl.Width - base.Right + ddcAnimation.HostControl.Left + num3, base.Height);
					ddcAnimation.HostControl.Region = new Region(rect5);
					rcVisibleBounds = rect5;
					ddcAnimation.HostControl.Left += num3;
					num -= num3;
				}
				if (num > 0)
				{
					Rectangle rect6 = new Rectangle(base.Right - ddcAnimation.HostControl.Left - num, 0, ddcAnimation.HostControl.Width - base.Right + ddcAnimation.HostControl.Left + num, base.Height);
					ddcAnimation.HostControl.Region = new Region(rect6);
					rcVisibleBounds = rect6;
					ddcAnimation.HostControl.Left += num;
				}
				return;
			}
			break;
		case DockingStyle.Top:
			if (rcVisibleBounds.Height < bounds.Height - num)
			{
				while (num > num3)
				{
					Rectangle rect7 = new Rectangle(0, base.Bottom - ddcAnimation.HostControl.Top - num3, base.Width, ddcAnimation.HostControl.Height - base.Bottom + ddcAnimation.HostControl.Top + num3);
					ddcAnimation.HostControl.Region = new Region(rect7);
					rcVisibleBounds = rect7;
					ddcAnimation.HostControl.Top += num3;
					num -= num3;
				}
				if (num > 0)
				{
					Rectangle rect8 = new Rectangle(0, base.Bottom - ddcAnimation.HostControl.Top - num, base.Width, ddcAnimation.HostControl.Height - base.Bottom + ddcAnimation.HostControl.Top + num);
					ddcAnimation.HostControl.Region = new Region(rect8);
					rcVisibleBounds = rect8;
					ddcAnimation.HostControl.Top += num;
				}
				return;
			}
			break;
		case DockingStyle.Right:
			if (rcVisibleBounds.Width < bounds.Width - num)
			{
				while (num > num3)
				{
					Rectangle rect3 = new Rectangle(0, 0, ddcAnimation.HostControl.Width + base.Left - ddcAnimation.HostControl.Right + num3, base.Height);
					ddcAnimation.HostControl.Region = new Region(rect3);
					rcVisibleBounds = rect3;
					ddcAnimation.HostControl.Left -= num3;
					num -= num3;
				}
				if (num > 0)
				{
					Rectangle rect4 = new Rectangle(0, 0, ddcAnimation.HostControl.Width + base.Left - ddcAnimation.HostControl.Right + num, base.Height);
					ddcAnimation.HostControl.Region = new Region(rect4);
					rcVisibleBounds = rect4;
					ddcAnimation.HostControl.Left -= num;
				}
				return;
			}
			break;
		case DockingStyle.Bottom:
			if (rcVisibleBounds.Height < bounds.Height - num)
			{
				while (num > num3)
				{
					Rectangle rect = new Rectangle(0, 0, base.Width, ddcAnimation.HostControl.Height + base.Top - ddcAnimation.HostControl.Bottom + num3);
					ddcAnimation.HostControl.Region = new Region(rect);
					rcVisibleBounds = rect;
					ddcAnimation.HostControl.Top -= num3;
					num -= num3;
				}
				if (num > 0)
				{
					Rectangle rect2 = new Rectangle(0, 0, base.Width, ddcAnimation.HostControl.Height + base.Top - ddcAnimation.HostControl.Bottom + num);
					ddcAnimation.HostControl.Region = new Region(rect2);
					rcVisibleBounds = rect2;
					ddcAnimation.HostControl.Top -= num;
				}
				return;
			}
			break;
		}
		ddcAnimation.HostControl.Region = null;
		rcVisibleBounds = ddcAnimation.HostControl.Bounds;
		StopShowAnimation();
	}

	protected void StopShowAnimation()
	{
		AnimationState = AutoHideAnimationState.None;
		RemoveAHTabControlTimer("StopShowAnimation");
		if (ddcAnimation == null)
		{
			return;
		}
		if (ddcAnimation.HostControl.Controls[0].Anchor != (AnchorStyles.Top | AnchorStyles.Left))
		{
			ddcAnimation.HostControl.Controls[0].Anchor = AnchorStyles.Top | AnchorStyles.Left;
		}
		ddcAnimation.bAutoHideSizing = false;
		ddcAnimation.HostControl.Region = null;
		rcAnimation = CalcClientControlSize(ddcAnimation);
		SetClientControlSize(ddcAnimation, rcAnimation);
		ddcAnimation.HostControl.Invalidate(invalidateChildren: false);
		DockControllerBase childAt = ddcAnimation.ParentController.GetChildAt(1);
		childAt.HostControl.Visible = true;
		childAt.HostControl.BringToFront();
		if (nClientIndex < 0)
		{
			int tabCount = base.TabCount;
			for (int i = 0; i < tabCount; i++)
			{
				AHTabPage aHTabPage = TabPages[i] as AHTabPage;
				if (aHTabPage.m_dhcClient == ddcAnimation)
				{
					nClientIndex = i;
					break;
				}
			}
		}
		dockingMgr.AHInViewTab = this;
		if (bNeedActivate)
		{
			ddcAnimation.HostControl.Focus();
			bNeedActivate = false;
		}
		InitiateAnimationStopEvent(ddcAnimation, ddcAnimation.HostControl.Controls[0]);
		if (hideAfterShow & (nClientIndex != -1))
		{
			HideController(null, banimate: true);
			hideAfterShow = false;
		}
	}

	protected void HideAnimation_TickEventHandler(object sender, EventArgs e)
	{
		if (tmrAnimation == null)
		{
			return;
		}
		int animationStep = DockingManager.AnimationStep;
		int num = 4;
		if (DockingManager.AutoHideTabHeight > num)
		{
			_ = DockingManager.AutoHideTabHeight;
		}
		Rectangle empty = Rectangle.Empty;
		switch (tabBorder)
		{
		case DockingStyle.Left:
			if (rcVisibleBounds.Width > 0)
			{
				int num4 = ddcAnimation.HostControl.Right - base.Right - animationStep;
				int num5 = ddcAnimation.HostControl.Width - num4;
				empty = new Rectangle(num5, 0, num4, base.Height);
				if (num4 > 0)
				{
					ddcAnimation.HostControl.Left -= animationStep;
					ddcAnimation.HostControl.Region = new Region(empty);
				}
				rcVisibleBounds = empty;
				return;
			}
			break;
		case DockingStyle.Top:
			if (rcVisibleBounds.Height > 0)
			{
				int num6 = ddcAnimation.HostControl.Bottom - base.Bottom - animationStep;
				int num7 = ddcAnimation.HostControl.Height - num6;
				empty = new Rectangle(0, num7, base.Width, num6);
				if (num6 > 0)
				{
					ddcAnimation.HostControl.Top -= animationStep;
					ddcAnimation.HostControl.Region = new Region(empty);
				}
				rcVisibleBounds = empty;
				return;
			}
			break;
		case DockingStyle.Right:
			if (rcVisibleBounds.Width > 0)
			{
				int num3 = base.Left - ddcAnimation.HostControl.Left - animationStep;
				empty = new Rectangle(0, 0, num3, base.Height);
				if (num3 > 0)
				{
					ddcAnimation.HostControl.Left += animationStep;
					ddcAnimation.HostControl.Region = new Region(empty);
				}
				rcVisibleBounds = empty;
				return;
			}
			break;
		case DockingStyle.Bottom:
			if (rcVisibleBounds.Height > 0)
			{
				int num2 = base.Top - ddcAnimation.HostControl.Top - animationStep;
				empty = new Rectangle(0, 0, base.Width, num2);
				if (num2 > 0)
				{
					ddcAnimation.HostControl.Top += animationStep;
					ddcAnimation.HostControl.Region = new Region(empty);
				}
				rcVisibleBounds = empty;
				return;
			}
			break;
		}
		ddcAnimation.HostControl.Size = Size.Empty;
		ddcAnimation.HostControl.Region = null;
		StopHideAnimation();
	}

	private void RemoveAHTabControlTimer(string eventName)
	{
		if (tmrAnimation != null)
		{
			if (eventName.Equals("StopShowAnimation"))
			{
				tmrAnimation.Tick -= ShowAnimation_TickEventHandler;
			}
			else if (eventName.Equals("HideAnimation"))
			{
				tmrAnimation.Tick -= HideAnimation_TickEventHandler;
			}
			tmrAnimation.Stop();
			tmrAnimation = null;
		}
	}

	private void HideControllersSizingParent(DockStateControllerBase ddc)
	{
		DockControllerBase dockControllerBase = null;
		if (ddc.ParentController != null)
		{
			dockControllerBase = ((!(ddc.ParentController is SizingController)) ? ddc.ParentController.ParentController : ddc.ParentController);
		}
		if (dockControllerBase != null)
		{
			dockControllerBase.LayoutRect = Rectangle.Empty;
		}
	}

	protected void StopHideAnimation()
	{
		AnimationState = AutoHideAnimationState.None;
		RemoveAHTabControlTimer("HideAnimation");
		if (ddcAnimation != null)
		{
			if (ddcAnimation.HostControl.Controls[0].Anchor != (AnchorStyles.Top | AnchorStyles.Left))
			{
				ddcAnimation.HostControl.Controls[0].Anchor = AnchorStyles.Top | AnchorStyles.Left;
			}
			ddcAnimation.bAutoHideSizing = false;
			HideControllersSizingParent(ddcAnimation);
			nClientIndex = -1;
			if (dockingMgr.AHInViewTab != null)
			{
				dockingMgr.AHInViewTab = null;
			}
			InitiateAnimationStopEvent(ddcAnimation, ddcAnimation.HostControl.Controls[0]);
		}
	}

	protected void ShowController_TickEventHandler(object sender, EventArgs e)
	{
		if (tmrShowController != null)
		{
			AnimationState = AutoHideAnimationState.Showing;
			if (nClientIndex >= 0 && nClientIndex < TabPages.Count)
			{
				DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
				ShowController(dhcClient, bAnimate: true);
			}
			else
			{
				tmrShowController.Tick -= ShowController_TickEventHandler;
				tmrShowController.Stop();
				tmrShowController = null;
			}
		}
	}

	protected void HideController_TickEventHandler(object sender, EventArgs e)
	{
		if (tmrAnimation != null || tmrHideController == null)
		{
			return;
		}
		AnimationState = AutoHideAnimationState.Hiding;
		if (nClientIndex >= 0 && nClientIndex < TabPages.Count)
		{
			DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
			if (dockingMgr.ForceHideActiveControl || !dhcClient.HostControl.ContainsFocus)
			{
				HideController(dhcClient, banimate: true);
			}
		}
		else
		{
			tmrHideController.Tick -= HideController_TickEventHandler;
			tmrHideController.Stop();
			tmrHideController = null;
		}
	}

	protected internal void StopAllAnimations()
	{
		if (tmrShowController != null || tmrHideController != null || tmrAnimation != null)
		{
			switch (AnimationState)
			{
			case AutoHideAnimationState.Hiding:
				StopHideAnimation();
				break;
			case AutoHideAnimationState.Showing:
				StopShowAnimation();
				break;
			}
		}
	}

	public void UpdateAHTabText(DockStateControllerBase ddcbase)
	{
		foreach (TabGroupData tabsDatum in base.TabsData)
		{
			if (tabsDatum.Items.Count > 1)
			{
				foreach (TabGroupItem item in tabsDatum.Items)
				{
					if (item.Tag == ddcbase)
					{
						item.Text = ddcbase.HostControl.Text;
						break;
					}
				}
			}
			else if (tabsDatum.Items[0].Tag == ddcbase)
			{
				tabsDatum.Items[0].Text = ddcbase.HostControl.Text;
				break;
			}
		}
	}

	public void UpdateAHTabImage(DockStateControllerBase ddcbase)
	{
		DockHostController dockHostController = ddcbase as DockHostController;
		foreach (TabGroupData tabsDatum in base.TabsData)
		{
			if (tabsDatum.Items.Count > 1)
			{
				foreach (TabGroupItem item in tabsDatum.Items)
				{
					if (item.Tag == ddcbase)
					{
						item.ImageIndex = dockHostController.ImageIndex;
						break;
					}
				}
			}
			else if (tabsDatum.Items[0].Tag == ddcbase)
			{
				tabsDatum.Items[0].ImageIndex = dockHostController.ImageIndex;
				break;
			}
		}
	}

	private void InitializeDefaultMenu(PopupMenu menu)
	{
		menu.ParentBarItem.Style = DockingManager.VisualStyle;
		foreach (AHTabPage tabPage in TabPages)
		{
			if (tabPage.m_dhcClient is DockTabController)
			{
				DockTabController dockTabController = tabPage.m_dhcClient as DockTabController;
				foreach (DockTabPage tabPage2 in dockTabController.TabControl.TabPages)
				{
					BarItem barItem = new BarItem(tabPage2.dhcClient.DockLabel);
					DockingManager dockingManager = dockTabController.DockingManager;
					if (dockTabController.TabControl.ImageList != null && dockingManager.ShowIconInAutoHideContextMenu)
					{
						barItem.ImageList = dockTabController.TabControl.ImageList;
						barItem.ImageIndex = tabPage2.ImageIndex;
					}
					barItem.Tag = tabPage2.dhcClient.HostControl.Controls[0];
					barItem.Click += OnAutohideMenu_Click;
					menu.ParentBarItem.Items.Add(barItem);
				}
			}
			else
			{
				BarItem barItem2 = new BarItem((tabPage.m_dhcClient as DockHostController).DockLabel);
				DockingManager dockingManager2 = (tabPage.m_dhcClient as DockHostController).DockingManager;
				if (dockingManager2.ImageList != null && dockingManager2.ShowIconInAutoHideContextMenu)
				{
					barItem2.ImageList = dockingManager2.ImageList;
					barItem2.ImageIndex = dockingManager2.GetDockIcon(tabPage.m_dhcClient.HostControl.Controls[0]);
				}
				barItem2.Tag = tabPage.m_dhcClient.HostControl.Controls[0];
				barItem2.Click += OnAutohideMenu_Click;
				menu.ParentBarItem.Items.Add(barItem2);
			}
		}
	}

	private void OnAutohideMenu_Click(object sender, EventArgs e)
	{
		BarItem barItem = sender as BarItem;
		if (barItem.Tag is Control)
		{
			Control ctrl = barItem.Tag as Control;
			DockingManager.ActivateControl(ctrl);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Right && DockingManager.EnableAutoHideTabContextMenu)
		{
			PopupMenu popupMenu = new PopupMenu();
			popupMenu.ParentBarItem = new ParentBarItem();
			InitializeDefaultMenu(popupMenu);
			AutoHideTabContextMenuEventArgs e2 = new AutoHideTabContextMenuEventArgs(popupMenu, Edge);
			DockingManager.FireAutoHideTabContextMenuEvent(e2);
			if (e2.ContextMenu != null)
			{
				e2.ContextMenu.Show(this, new Point(e.X, e.Y));
			}
			return;
		}
		if (e.Button == MouseButtons.Left && dockingMgr.EnableDragAutoHiddenTabs && !dockingMgr.DisallowFloating)
		{
			m_dragStartPoint = new Point(e.X, e.Y);
		}
		if (dockingMgr.AutoHideSelectionStyle != AutoHideSelectionStyle.Click)
		{
			return;
		}
		base.OnMouseDown(e);
		if (tmrAnimation != null)
		{
			return;
		}
		Point point = new Point(e.X, e.Y);
		Point pt = PointToScreen(point);
		int tabGroupIndex = GetTabGroupIndex(point);
		if (nClientIndex >= 0)
		{
			DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
			if (nClientIndex == tabGroupIndex)
			{
				dhcClient.HostControl.Focus();
			}
			else if (!RectangleToScreen(base.Bounds).Contains(pt) && !dhcClient.HostControl.RectangleToScreen(dhcClient.HostControl.ClientRectangle).Contains(pt) && tmrHideController != null)
			{
				if (tmrShowController != null)
				{
					tmrShowController.Tick -= ShowController_TickEventHandler;
					tmrShowController.Stop();
					tmrShowController = null;
				}
				if (tmrHideController != null)
				{
					tmrHideController = new Timer();
					tmrHideController.Tick += HideController_TickEventHandler;
					tmrHideController.Interval = DockingManager.nHideInterval;
					tmrHideController.Start();
				}
			}
		}
		SelectAutoHideWindow(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (m_dragStartPoint != Point.Empty && dockingMgr.EnableDragAutoHiddenTabs && !dockingMgr.DisallowFloating && (Math.Abs(m_dragStartPoint.X - e.X) > m_dragOffset || Math.Abs(m_dragStartPoint.Y - e.Y) > m_dragOffset))
		{
			DockStateControllerBase controlFromPoint = GetControlFromPoint(new Point(e.X, e.Y));
			TransitControlToFloatState(controlFromPoint);
		}
		if (dockingMgr.AutoHideSelectionStyle == AutoHideSelectionStyle.MouseHover)
		{
			base.OnMouseMove(e);
			SelectAutoHideWindow(e);
		}
	}

	internal virtual void TransitControlToFloatState(DockStateControllerBase target)
	{
		int num = 10;
		Point position = Cursor.Position;
		position.Offset(-num, -num);
		FloatingForm floatingForm = null;
		if (target == null)
		{
			return;
		}
		target.DINew.rcDockArea.Height = 0;
		target.ParentController.RemoveChild(target);
		target.LayoutRect = new Rectangle(target.LayoutRect.Location, target.DITransient.rcDockArea.Size);
		RemoveTab(target);
		target.bAutoHideSizing = false;
		target.bInAutoHide = false;
		if (target is DockTabController)
		{
			DockTabController dockTabController = target as DockTabController;
			int hashCode = Guid.NewGuid().GetHashCode();
			DCRelationship dCRelationship = new DCRelationship(hashCode, child: false, DockPreference.Tabbed, 0);
			int num2 = 0;
			foreach (DockTabPage tabPage in dockTabController.TabControl.TabPages)
			{
				DockHostController dhcClient = tabPage.dhcClient;
				dCRelationship.nIndex = num2;
				dhcClient.bInAutoHide = false;
				dhcClient.bAutoHideSizing = false;
				dhcClient.HostControl.Region = null;
				dhcClient.DockDCRList.Add(dCRelationship);
				dhcClient.PrevAutohideStyle = Edge;
				num2++;
			}
			target = dockTabController.HostController;
			target.HostControl.Visible = true;
			dockTabController.TabControl.Visible = true;
			dockTabController.DINew.rcDockArea.Size = target.DIPrevious.rcDockArea.Size;
			floatingForm = dockTabController.CreateFloatingFrame(position);
		}
		else if (target is DockHostController)
		{
			DockHostController dockHostController = target as DockHostController;
			dockHostController.HostControl.Region = null;
			dockHostController.HideCaption = false;
			dockHostController.HostControl.Visible = true;
			floatingForm = dockHostController.CreateFloatingFrame(position, show: true);
		}
		target.PrevAutohideStyle = Edge;
		if (floatingForm != null)
		{
			base.Capture = false;
			DockingManager.dcHostForm.AdjustLayout();
			InitiateFormDrag(target, num, floatingForm);
		}
		DockingManager.dcHostForm.AdjustLayout();
		m_dragStartPoint = Point.Empty;
	}

	private void InitiateFormDrag(DockStateControllerBase target, int floatFrameOffset, FloatingForm ff)
	{
		Point location = ff.Location;
		location.Offset(floatFrameOffset, floatFrameOffset);
		FloatingFormController floatingFormController = ff.InternalController as FloatingFormController;
		ff.RefreshRenderer();
		location = ff.PointToClient(location);
		floatingFormController.HandleMouseDownImp(MouseButtons.Left, location);
		dockingMgr.InitiateFormDrag(ff, location, new Point(floatFrameOffset, floatFrameOffset));
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		m_dragStartPoint = Point.Empty;
		base.OnMouseUp(e);
	}

	private void SelectAutoHideWindow(MouseEventArgs e)
	{
		if (base.TopLevelControl != null && !(base.TopLevelControl is Form { IsMdiContainer: not false }) && !base.TopLevelControl.ContainsFocus)
		{
			return;
		}
		Point point = new Point(e.X, e.Y);
		Point pt = PointToScreen(point);
		if (m_tabPanelRenderer.HitTestTabs(new PointF(e.X, e.Y), inTransformedCoOrds: false) == -1)
		{
			return;
		}
		int num = GetTabGroupIndex(point);
		if (nClientIndex >= 0 && num >= 0 && nClientIndex != num)
		{
			DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
			HideController(dhcClient, banimate: false, bhidenow: true);
		}
		if (tmrAnimation != null || tmrHideController != null || tmrShowController != null)
		{
			return;
		}
		int num2 = -1;
		if (num >= 0)
		{
			if (dockingMgr.AHInViewTab != null && dockingMgr.AHInViewTab != this)
			{
				dockingMgr.AHInViewTab.HideController(null, banimate: true);
				if (dockingMgr.AutoHideSelectionStyle == AutoHideSelectionStyle.Click)
				{
					dockingMgr.HideAutoHiddenControl(animate: false);
					AnimationState = AutoHideAnimationState.Hiding;
					StopAllAnimations();
					SelectAutoHideWindow(e);
				}
				return;
			}
			TabGroupData tabGroupData = base.TabsData[num] as TabGroupData;
			if (tabGroupData.Items.Count > 1)
			{
				int tabSubGroupIndex = GetTabSubGroupIndex(num, point);
				if (tabSubGroupIndex >= 0)
				{
					if (tabSubGroupIndex != tabGroupData.SelectedIndex)
					{
						DockTabController dockTabController = (TabPages[num] as AHTabPage).m_dhcClient as DockTabController;
						dockTabController.HostController.DockTab.SelectedIndex = tabSubGroupIndex;
						dockTabController.AdjustLayout();
						if (num == nClientIndex)
						{
							num2 = tabGroupData.SelectedIndex;
						}
						else if (nClientIndex >= 0)
						{
							TabGroupData tabGroupData2 = base.TabsData[nClientIndex] as TabGroupData;
							if (tabGroupData2.Items.Count > 1)
							{
								num2 = tabGroupData2.SelectedIndex;
							}
						}
					}
				}
				else
				{
					num = -1;
				}
			}
		}
		if (num >= 0 && (num != nClientIndex || num2 >= 0))
		{
			if (tmrShowController != null)
			{
				tmrShowController.Tick -= ShowController_TickEventHandler;
				tmrShowController.Stop();
				tmrShowController = null;
				num = -1;
			}
			if (nClientIndex >= 0)
			{
				dockingMgr.AHInViewTab = null;
				DockStateControllerBase dhcClient2 = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
				Control dockctrl;
				if (num2 >= 0 && dhcClient2 is DockTabController)
				{
					DockTabController dockTabController2 = dhcClient2 as DockTabController;
					DockTabPage dockTabPage = dockTabController2.TabControl.TabPages[num2] as DockTabPage;
					dockctrl = dockTabPage.dhcClient.HostControl.Controls[0];
				}
				else
				{
					dockctrl = dhcClient2.HostControl.Controls[0];
				}
				InitiateHideAnimationStartEvent(dhcClient2, dockctrl);
				dhcClient2.HostControl.Visible = false;
				Rectangle layoutRect = dhcClient2.LayoutRect;
				if (layoutRect.Width > 0 && layoutRect.Height > 0)
				{
					dhcClient2.DINew.rcDockArea = layoutRect;
				}
				dhcClient2.ParentController.LayoutRect = Rectangle.Empty;
				InitiateAnimationStopEvent(dhcClient2, dockctrl);
				nClientIndex = num;
				if (num >= 0)
				{
					ShowController((TabPages[num] as AHTabPage).m_dhcClient, bAnimate: true);
				}
			}
			else
			{
				nClientIndex = num;
				if (num >= 0)
				{
					tmrShowController = new Timer();
					tmrShowController.Tick += ShowController_TickEventHandler;
					tmrShowController.Interval = DockingManager.nShowInterval;
					tmrShowController.Start();
				}
			}
		}
		else
		{
			if (nClientIndex < 0)
			{
				return;
			}
			DockStateControllerBase dhcClient3 = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
			if (!GetTabRect(nClientIndex).Contains(point) && !dhcClient3.ParentController.HostControl.RectangleToScreen(Rectangle.Inflate(dhcClient3.ParentController.LayoutRect, 2, 2)).Contains(pt) && !dhcClient3.HostControl.ContainsFocus && tmrHideController == null)
			{
				if (tmrShowController != null)
				{
					tmrShowController.Tick -= ShowController_TickEventHandler;
					tmrShowController.Stop();
					tmrShowController = null;
				}
				tmrHideController = new Timer();
				tmrHideController.Tick += HideController_TickEventHandler;
				tmrHideController.Interval = DockingManager.nHideInterval;
				tmrHideController.Start();
			}
		}
	}

	protected DockStateControllerBase GetControlFromPoint(Point ptClient)
	{
		DockStateControllerBase result = null;
		int num = GetTabGroupIndex(ptClient);
		if (num >= 0)
		{
			TabGroupData tabGroupData = base.TabsData[num] as TabGroupData;
			if (tabGroupData.Items.Count > 1)
			{
				int tabSubGroupIndex = GetTabSubGroupIndex(num, ptClient);
				if (tabSubGroupIndex >= 0)
				{
					if (tabSubGroupIndex != tabGroupData.SelectedIndex)
					{
						DockTabController dockTabController = (TabPages[num] as AHTabPage).m_dhcClient as DockTabController;
						dockTabController.HostController.DockTab.SelectedIndex = tabSubGroupIndex;
						dockTabController.AdjustLayout();
						if (num == nClientIndex)
						{
							_ = tabGroupData.SelectedIndex;
						}
						else if (nClientIndex >= 0)
						{
							TabGroupData tabGroupData2 = base.TabsData[nClientIndex] as TabGroupData;
							if (tabGroupData2.Items.Count > 1)
							{
								_ = tabGroupData2.SelectedIndex;
							}
						}
					}
				}
				else
				{
					num = -1;
				}
			}
		}
		if (num != -1)
		{
			result = (TabPages[num] as AHTabPage).m_dhcClient;
		}
		return result;
	}

	protected int GetTabGroupIndex(Point pt)
	{
		int autoHideTabHeight = dockingMgr.AutoHideTabHeight;
		for (int i = 0; i < TabPages.Count; i++)
		{
			Rectangle tabRect = GetTabRect(i);
			switch (tabBorder)
			{
			case DockingStyle.Left:
				tabRect.X = 0;
				tabRect.Width = autoHideTabHeight;
				break;
			case DockingStyle.Top:
				tabRect.Y = 0;
				tabRect.Height = autoHideTabHeight;
				break;
			case DockingStyle.Right:
				tabRect.Width = autoHideTabHeight - 2;
				break;
			case DockingStyle.Bottom:
				tabRect.Height = autoHideTabHeight - 2;
				break;
			}
			if (tabRect.Contains(pt))
			{
				return i;
			}
		}
		return -1;
	}

	protected int GetTabSubGroupIndex(int ngroup, Point pt)
	{
		TabGroupData tabGroupData = base.TabsData[ngroup] as TabGroupData;
		for (int i = 0; i < tabGroupData.Items.Count; i++)
		{
			RectangleF rectangleF = GetGroupItemRect(ngroup, i);
			if (((tabBorder != DockingStyle.Top && tabBorder != DockingStyle.Bottom) ? new RectangleF(rectangleF.Left, rectangleF.Top - 3f, rectangleF.Width, rectangleF.Height + 6f) : new RectangleF(rectangleF.Left - 3f, rectangleF.Top, rectangleF.Width + 6f, rectangleF.Height)).Contains(pt))
			{
				return i;
			}
		}
		return -1;
	}

	public Rectangle GetActiveTabGroupOrSubGroupRect()
	{
		if (nClientIndex < 0)
		{
			return Rectangle.Empty;
		}
		TabGroupData tabGroupData = base.TabsData[nClientIndex] as TabGroupData;
		Rectangle groupItemRect = GetGroupItemRect(nClientIndex, tabGroupData.SelectedIndex);
		Rectangle r = ((tabBorder != DockingStyle.Top && tabBorder != DockingStyle.Bottom) ? new Rectangle(groupItemRect.Left, groupItemRect.Top - 3, groupItemRect.Width, groupItemRect.Height + 6) : new Rectangle(groupItemRect.Left - 3, groupItemRect.Top, groupItemRect.Width + 6, groupItemRect.Height));
		return RectangleToScreen(r);
	}

	public Rectangle GetActiveTabGroupOrSubGroupDockHostRect()
	{
		if (nClientIndex < 0)
		{
			return Rectangle.Empty;
		}
		DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
		Rectangle a = dhcClient.HostControl.Parent.RectangleToScreen(dhcClient.ParentController.LayoutRect);
		Rectangle rect = base.Parent.RectangleToScreen(base.Bounds);
		Rectangle b = dockingMgr.HostControl.RectangleToScreen(dockingMgr.dcHostForm.LayoutRect);
		a = Rectangle.Intersect(a, b);
		Region region = new Region(a);
		region.Union(rect);
		RectangleF value = Rectangle.Empty;
		RectangleF[] regionScans = region.GetRegionScans(new Matrix());
		if (regionScans.Length > 1)
		{
			switch (tabBorder)
			{
			case DockingStyle.Left:
			case DockingStyle.Top:
				value = regionScans[1];
				break;
			case DockingStyle.Right:
			case DockingStyle.Bottom:
				value = regionScans[0];
				break;
			default:
				value = regionScans[0];
				break;
			}
		}
		else if (regionScans.Length == 1)
		{
			value = regionScans[0];
		}
		return Rectangle.Round(value);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		base.SetBoundsCore(x, y, width, height, specified);
		if (nClientIndex >= 0)
		{
			DockStateControllerBase dhcClient = (TabPages[nClientIndex] as AHTabPage).m_dhcClient;
			Rectangle rcbounds = CalcClientControlSize(dhcClient);
			SetClientControlSize(dhcClient, rcbounds);
		}
	}

	protected Rectangle CalcClientControlSize(DockStateControllerBase ddcbase)
	{
		DockHostController dockHostController;
		if (ddcbase is DockTabController)
		{
			DockTabController dockTabController = ddcbase as DockTabController;
			dockHostController = (dockTabController.TabControl.SelectedTab as DockTabPage).dhcClient;
		}
		else
		{
			dockHostController = ddcbase as DockHostController;
		}
		Rectangle result = Rectangle.Empty;
		int autoHideTabHeight = dockingMgr.AutoHideTabHeight;
		int num = (bLeadSpace ? autoHideTabHeight : 0);
		int num2 = (bTrailSpace ? autoHideTabHeight : 0);
		int num3 = 0;
		switch (tabBorder)
		{
		case DockingStyle.Left:
			result = new Rectangle(base.Bounds.Right, base.Bounds.Top + num, dockHostController.DINew.rcDockArea.Width, base.Height - num - num2);
			if (ddcbase.bAutoHideSizing)
			{
				num3 = rcVisibleBounds.Width - result.Width;
				result.Offset(num3, 0);
				rcAnimation.Offset(num3, 0);
			}
			break;
		case DockingStyle.Top:
			result = new Rectangle(base.Bounds.Left + num, base.Bounds.Bottom, base.Width - num - num2, dockHostController.DINew.rcDockArea.Height);
			if (ddcbase.bAutoHideSizing)
			{
				num3 = rcVisibleBounds.Height - result.Height;
				result.Offset(0, num3);
				rcAnimation.Offset(0, num3);
			}
			break;
		case DockingStyle.Right:
			result = new Rectangle(base.Bounds.Left - dockHostController.DINew.rcDockArea.Width, base.Bounds.Top + num, dockHostController.DINew.rcDockArea.Width, base.Height - num - num2);
			if (ddcbase.bAutoHideSizing)
			{
				num3 = result.Width - rcVisibleBounds.Width;
				result.Offset(num3, 0);
				rcAnimation.Offset(num3, 0);
			}
			break;
		case DockingStyle.Bottom:
			result = new Rectangle(base.Bounds.Left + num, base.Bounds.Top - dockHostController.DINew.rcDockArea.Height, base.Width - num - num2, dockHostController.DINew.rcDockArea.Height);
			if (ddcbase.bAutoHideSizing)
			{
				num3 = result.Height - rcVisibleBounds.Height;
				result.Offset(0, num3);
				rcAnimation.Offset(0, num3);
			}
			break;
		}
		return result;
	}

	protected void SetClientControlSize(DockStateControllerBase ddcbase, Rectangle rcbounds)
	{
		DockControllerBase childAt = ddcbase.ParentController.GetChildAt(1);
		childAt.HostControl.BringToFront();
		switch (tabBorder)
		{
		case DockingStyle.Left:
			ddcbase.ParentController.LayoutRect = new Rectangle(rcbounds.X, rcbounds.Y, rcbounds.Width + childAt.HostControl.Width, rcbounds.Height);
			break;
		case DockingStyle.Top:
			ddcbase.ParentController.LayoutRect = new Rectangle(rcbounds.X, rcbounds.Y, rcbounds.Width, rcbounds.Height + childAt.HostControl.Height);
			break;
		case DockingStyle.Right:
			ddcbase.ParentController.LayoutRect = new Rectangle(rcbounds.X - childAt.HostControl.Width, rcbounds.Y, rcbounds.Width + childAt.HostControl.Width, rcbounds.Height);
			break;
		case DockingStyle.Bottom:
			ddcbase.ParentController.LayoutRect = new Rectangle(rcbounds.X, rcbounds.Y - childAt.HostControl.Height, rcbounds.Width, rcbounds.Height + childAt.HostControl.Height);
			break;
		}
	}

	protected void UpdateOffice2007Theme()
	{
		if (base.Renderer.Renderers.Count <= 0)
		{
			return;
		}
		foreach (TabGroupRendererOffice2007 renderer in base.Renderer.Renderers)
		{
			renderer.Theme = DockingManager.Office2007Theme;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (DockingManager.VisualStyle == VisualStyle.Office2007 || DockingManager.VisualStyle == VisualStyle.Office2007Outlook)
		{
			UpdateOffice2007Theme();
		}
		base.OnPaint(e);
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && dockingMgr != null)
		{
			ImageList = null;
			dockingMgr.ImageListChanged -= dockingManager_ImageListChanged;
			if (tmrShowController != null)
			{
				tmrShowController.Tick -= ShowController_TickEventHandler;
				tmrShowController.Stop();
				tmrShowController = null;
			}
			if (tmrHideController != null)
			{
				tmrHideController.Tick -= HideController_TickEventHandler;
				tmrHideController.Stop();
				tmrHideController = null;
			}
			if (tmrAnimation != null)
			{
				tmrAnimation.Tick -= ShowAnimation_TickEventHandler;
				tmrAnimation.Tick -= HideAnimation_TickEventHandler;
				tmrAnimation.Stop();
				tmrAnimation = null;
			}
			if (tdTab != null)
			{
				tdTab.Dispose();
				tdTab = null;
			}
			dockingMgr = null;
		}
		base.Dispose(bdisposing);
	}

	public void UpdateRenderer()
	{
		if (dockingMgr != null)
		{
			TabStyle = GetRendererType();
		}
		SetItemSize();
		Invalidate();
	}

	private void SetItemSize()
	{
		if (dockingMgr != null)
		{
			ItemSize = new Size(0, dockingMgr.AutoHideTabHeight);
		}
	}

	private Type GetRendererType()
	{
		switch (dockingMgr.VisualStyle)
		{
		case VisualStyle.Default:
			return typeof(TabGroupRenderer);
		case VisualStyle.OfficeXP:
		case VisualStyle.Office2003:
			return typeof(TabGroupRendererOffice2003);
		case VisualStyle.VS2005:
			return typeof(TabGroupRendererVS2005);
		case VisualStyle.Office2007:
		case VisualStyle.Office2007Outlook:
			return typeof(TabGroupRendererOffice2007);
		default:
			return typeof(TabGroupRenderer);
		}
	}
}
