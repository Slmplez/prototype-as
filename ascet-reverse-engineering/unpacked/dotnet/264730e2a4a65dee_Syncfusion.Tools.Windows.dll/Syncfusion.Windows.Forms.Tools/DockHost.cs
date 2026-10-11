using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Renderers;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[DesignTimeVisible(false)]
[ToolboxItem(false)]
public class DockHost : ContainerControl, IDraggable, ITabFeedback, IDockingManagerDesignerMouseHook, IDockable
{
	protected Rectangle rcDrag;

	protected internal CaptionPainter cpTitleBar;

	protected DockHostController dcInternal;

	protected int nImageIndex = -1;

	protected internal Icon controlImage;

	protected internal static Pen pen;

	private Control m_lastActiveControl;

	protected int mImageIndex = -1;

	protected internal int BorderWidth
	{
		get
		{
			if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default)
			{
				return cpTitleBar.BorderWidth;
			}
			return dcInternal.Renderer.BorderWidth;
		}
	}

	protected internal int CaptionHeight
	{
		get
		{
			if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default)
			{
				return cpTitleBar.CaptionRect.Height + cpTitleBar.CaptionTopIndent + 1;
			}
			return dcInternal.Renderer.CaptionWidth;
		}
	}

	public new Rectangle ClientRectangle
	{
		get
		{
			if (dcInternal.RendererStyle == VisualStyle.Default)
			{
				Rectangle clientRectangle = base.ClientRectangle;
				if (dcInternal.HideCaption)
				{
					return new Rectangle(1, 1, clientRectangle.Width - 2, clientRectangle.Height - 2);
				}
				return new Rectangle(1, 2 + CaptionPainter.CaptionHeight + 2, clientRectangle.Width - 2, clientRectangle.Height - (2 + CaptionPainter.CaptionHeight + 3));
			}
			Rectangle clientRectangle2 = base.ClientRectangle;
			if (dcInternal.HideCaption)
			{
				clientRectangle2.X = dcInternal.Renderer.ThinBorderWidth;
				clientRectangle2.Y = dcInternal.Renderer.ThinBorderWidth;
				clientRectangle2.Width -= 2 * dcInternal.Renderer.ThinBorderWidth;
				clientRectangle2.Height -= 2 * dcInternal.Renderer.ThinBorderWidth;
			}
			else
			{
				clientRectangle2.X = dcInternal.Renderer.ThinBorderWidth;
				clientRectangle2.Y = dcInternal.Renderer.ThinBorderWidth + dcInternal.Renderer.CaptionWidth;
				clientRectangle2.Width -= 2 * dcInternal.Renderer.ThinBorderWidth;
				clientRectangle2.Height -= 2 * dcInternal.Renderer.ThinBorderWidth + dcInternal.Renderer.CaptionWidth;
			}
			return clientRectangle2;
		}
	}

	public DockControllerBase InternalController => dcInternal;

	public int ImageIndex
	{
		get
		{
			return nImageIndex;
		}
		set
		{
			nImageIndex = value;
		}
	}

	public int MdiImageIndex
	{
		get
		{
			return mImageIndex;
		}
		set
		{
			mImageIndex = value;
		}
	}

	public DockInfo DragDockInfo
	{
		get
		{
			return dcInternal.DINew;
		}
		set
		{
			dcInternal.DINew = value;
		}
	}

	public Rectangle DragRectangle
	{
		get
		{
			if (rcDrag.Width <= 0 || rcDrag.Height <= 0)
			{
				Point point = PointToScreen(base.Location);
				rcDrag = new Rectangle(point.X, point.Y, base.Bounds.Width, base.Bounds.Height);
			}
			if (dcInternal.MinimumSize.Width != 0 && rcDrag.Width < dcInternal.MinimumSize.Width)
			{
				rcDrag.Width = dcInternal.MinimumSize.Width;
			}
			if (dcInternal.MinimumSize.Height != 0 && rcDrag.Height < dcInternal.MinimumSize.Height)
			{
				rcDrag.Height = dcInternal.MinimumSize.Height;
			}
			return rcDrag;
		}
		set
		{
			rcDrag = value;
		}
	}

	public CaptionPainter TitleBar => cpTitleBar;

	internal Control LastActiveControl
	{
		get
		{
			return m_lastActiveControl;
		}
		set
		{
			m_lastActiveControl = value;
		}
	}

	public DockHost(DockingManager dmgr, Control ctrl)
	{
		InitializeDockHost(dmgr, ctrl);
		if (ctrl.Name != string.Empty)
		{
			base.Name = "DockHost_" + ctrl.Name;
		}
		if (!dmgr.DesignProcess)
		{
			ctrl.HandleDestroyed += HostControl_HandleDestroyed;
			ctrl.HandleCreated += HostControl_HandleCreated;
		}
		if (InternalController is DockHostController dockHostController)
		{
			_ = dockHostController.DockingManager;
			dockHostController.UniqueName = NameGenerator.Generate(ctrl);
		}
	}

	protected void HostControl_HandleCreated(object sender, EventArgs e)
	{
		base.Enabled = true;
	}

	protected void HostControl_HandleDestroyed(object sender, EventArgs e)
	{
		base.Enabled = false;
	}

	protected internal static void UpdatePenColor(Color newColor)
	{
		if (pen != null)
		{
			pen.Dispose();
		}
		pen = new Pen(newColor);
	}

	public virtual void InitializeDockHost(DockingManager dmgr, Control ctrl)
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
		SetStyle(ControlStyles.UserMouse, value: true);
		SetStyle(ControlStyles.DoubleBuffer, value: true);
		if (ctrl.Controls.Count > 0 && ctrl is ScrollableControl)
		{
			foreach (Control control in ctrl.Controls)
			{
				if (control.GetType().FullName.Equals("Syncfusion.Windows.Forms.Grid.GridControl"))
				{
					SetStyle(ControlStyles.Selectable, value: false);
				}
			}
		}
		else if (ctrl.GetType().FullName.Equals("Syncfusion.Windows.Forms.Grid.GridControl"))
		{
			SetStyle(ControlStyles.Selectable, value: false);
		}
		dcInternal = CreateDockHostController(dmgr);
		dmgr.AddController(dcInternal);
		cpTitleBar = CreateCaptionPainter();
		dcInternal.AutoHideButtonVisibility = dmgr.AutoHideEnabled;
		dcInternal.CloseButtonVisibility = dmgr.CloseEnabled;
		dcInternal.MenuButtonVisiblity = dmgr.MenuButtonEnabled;
		dcInternal.MaximizeButtonVisibility = dmgr.MaximizeButtonEnabled;
		ctrl.Anchor = AnchorStyles.Top | AnchorStyles.Left;
		ctrl.Dock = DockStyle.None;
		base.Size = dcInternal.DockingManager.ToDockHostSize(ctrl.Size);
		Text = ctrl.Name;
		base.Visible = true;
		base.Controls.Add(ctrl);
		SubscribeDockHostEvents();
	}

	protected virtual DockHostController CreateDockHostController(DockingManager dmgr)
	{
		return new DockHostController(dmgr, this);
	}

	protected virtual CaptionPainter CreateCaptionPainter()
	{
		return new CaptionPainter(dcInternal);
	}

	protected internal void RefreshCaptionPainter()
	{
		cpTitleBar.LabelAlignment = dcInternal.DockingManager.DockLabelAlignment;
		Invalidate(invalidateChildren: true);
	}

	private void OnChildTabStopChanged(object sender, EventArgs arg)
	{
		Control control = sender as Control;
		base.TabStop = control.TabStop;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (!dcInternal.DockingManager.DesignProcess)
		{
			RecSubscribeChildControlEvents(e.Control, subscribe: true);
		}
		e.Control.TabStopChanged += OnChildTabStopChanged;
		base.TabStop = e.Control.TabStop;
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		Invalidate();
		base.OnSizeChanged(e);
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess)
		{
			RecSubscribeChildControlEvents(e.Control, subscribe: false);
		}
		e.Control.TabStopChanged -= OnChildTabStopChanged;
	}

	public void RecSubscribeChildControlEvents(Control ctrl, bool subscribe)
	{
		if (subscribe)
		{
			ctrl.GotFocus += dhclient_GotFocus;
			ctrl.LostFocus += dhclient_LostFocus;
			ctrl.Validating += dhclient_Validating;
			ctrl.MouseDown += dhcclient_MouseDown;
			ctrl.ControlAdded += dhcclient_ControlAdded;
			ctrl.ControlRemoved += dhcclient_ControlRemoved;
		}
		else
		{
			ctrl.GotFocus -= dhclient_GotFocus;
			ctrl.LostFocus -= dhclient_LostFocus;
			ctrl.Validating -= dhclient_Validating;
			ctrl.MouseDown -= dhcclient_MouseDown;
			ctrl.ControlAdded -= dhcclient_ControlAdded;
			ctrl.ControlRemoved -= dhcclient_ControlRemoved;
		}
		if (ctrl.Controls.Count > 0)
		{
			IEnumerator enumerator = ctrl.Controls.GetEnumerator();
			while (enumerator.MoveNext())
			{
				RecSubscribeChildControlEvents(enumerator.Current as Control, subscribe);
			}
		}
	}

	protected void dhclient_Validating(object sender, CancelEventArgs e)
	{
		if (e.Cancel)
		{
			InternalController.DockingManager.ValidatingCancelledControl = sender as Control;
		}
	}

	protected void DockHost_MouseLeave(object sender, EventArgs e)
	{
		if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default)
		{
			cpTitleBar.HitTest(MouseAction.MouseLeave, Point.Empty);
			return;
		}
		dcInternal.Renderer.HitTest(MouseButtons.None, Point.Empty);
		Invalidate(dcInternal.Renderer.CaptionBounds, invalidateChildren: true);
	}

	private void DockHost_MouseEnter(object sender, EventArgs e)
	{
		if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default)
		{
			cpTitleBar.HitTest(MouseAction.MouseMove, Point.Empty);
			return;
		}
		dcInternal.Renderer.HitTest(MouseButtons.None, Point.Empty);
		Invalidate(dcInternal.Renderer.CaptionBounds, invalidateChildren: true);
	}

	protected void this_ParentChanged(object sender, EventArgs e)
	{
		if (dcInternal.DockTab != null && base.Parent != null)
		{
			dcInternal.DockTab.ReparentTabChildren();
		}
	}

	protected void dhclient_GotFocus(object sender, EventArgs e)
	{
		if ((sender == base.Controls[0] || Contains(sender as Control)) && !dcInternal.DockingManager.StopActivationEvents && dcInternal.DockingManager.DHCInFocus != dcInternal)
		{
			dcInternal.DockingManager.mouseActivatedControl = null;
			dcInternal.DockingManager.DHCInFocus = dcInternal;
		}
		InvalidateCaption();
	}

	protected void dhclient_LostFocus(object sender, EventArgs e)
	{
		Control control = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus());
		Control control2 = sender as Control;
		if (control is DockHost)
		{
			try
			{
				(control as DockHost).Controls[0].Focus();
			}
			catch
			{
			}
		}
		if (InternalController.DockingManager.ValidatingCancelledControl != null && InternalController.DockingManager.ValidatingCancelledControl == sender as Control)
		{
			InternalController.DockingManager.ValidatingCancelledControl = null;
			control2.Focus();
			InvalidateCaption();
		}
		else if (!base.ContainsFocus)
		{
			if (!dcInternal.DockingManager.StopActivationEvents && dcInternal.DockingManager.DHCInFocus == dcInternal)
			{
				dcInternal.DockingManager.DHCInFocus = null;
			}
			LastActiveControl = base.ActiveControl;
			InvalidateCaption();
		}
	}

	protected void dhcclient_MouseDown(object sender, MouseEventArgs e)
	{
		if (sender is Control control && !base.Controls[0].ContainsFocus && !(base.Controls[0] is ScrollableControl) && (!control.CanSelect || !control.CanFocus))
		{
			base.Controls[0].Focus();
		}
		if (dcInternal.DockingManager.DHCInFocus != dcInternal && base.Controls[0].Focused)
		{
			dcInternal.DockingManager.DHCInFocus = dcInternal;
		}
		InvalidateCaption();
	}

	internal void InvalidateCaption()
	{
		if (dcInternal.RendererStyle == VisualStyle.Default)
		{
			Invalidate(TitleBar.CaptionRect, invalidateChildren: true);
			return;
		}
		int thinBorderWidth = dcInternal.Renderer.ThinBorderWidth;
		_ = dcInternal.Renderer.CaptionWidth;
		Rectangle rc = new Rectangle(thinBorderWidth, thinBorderWidth, base.Width - 2 * thinBorderWidth, dcInternal.Renderer.CaptionWidth);
		Invalidate(rc, invalidateChildren: true);
	}

	protected void dhcclient_ControlAdded(object sender, ControlEventArgs e)
	{
		RecSubscribeChildControlEvents(e.Control, subscribe: true);
	}

	protected void dhcclient_ControlRemoved(object sender, ControlEventArgs e)
	{
		RecSubscribeChildControlEvents(e.Control, subscribe: false);
	}

	public bool IsSuitableDockTarget(DockControllerBase dc)
	{
		bool result = true;
		if (dc is DockStateControllerBase { AutoHideMode: not false })
		{
			result = false;
		}
		if (dc.Equals(dcInternal) || dcInternal.FloatOnly || (dcInternal.HideCaption && base.Parent.Equals(dc.HostControl)) || dc is DragSplitterController)
		{
			result = false;
		}
		return result;
	}

	public bool InitiateDrag(MouseAction action, Point ptscreen)
	{
		return !dcInternal.AutoHideMode;
	}

	public DragAxis AllowedDragAxis(ref Point ptdrag, Point ptdelta)
	{
		return DragAxis.XY;
	}

	public bool DrawHollow()
	{
		return true;
	}

	public void AbortDrag()
	{
		if (dcInternal.DockingManager.DragProvider.DraggingControl != this)
		{
			return;
		}
		bool flag = false;
		if (dcInternal.DockTab != null)
		{
			flag = true;
			foreach (DockTabPage tabPage in dcInternal.DockTab.TabPages)
			{
				if (tabPage.dhcClient == dcInternal)
				{
					flag = false;
					break;
				}
			}
		}
		if (!flag)
		{
			if (base.Capture)
			{
				base.Capture = false;
			}
		}
		else
		{
			if (dcInternal.DockTab.Capture)
			{
				dcInternal.DockTab.Capture = false;
			}
			DockTabController dockTabController = dcInternal.DockTab.InternalController as DockTabController;
			dockTabController.bAllowDrag = false;
			dockTabController.dragTabPage = null;
			DockTabPage dockTabPage2 = new DockTabPage(dcInternal, Text, ImageIndex);
			dcInternal.DockTab.TabPages.Add(dockTabPage2);
			dockTabController.PauseActivation = true;
			dcInternal.DockTab.SelectedTab = dockTabPage2;
			dockTabController.PauseActivation = false;
		}
		dcInternal.DockingManager.DragProvider.ForceStopDrag();
		if (dcInternal.DockingManager.DragProvider.DraggingControl != null)
		{
			dcInternal.DockingManager.DragProvider.TerminateDrag(this, Point.Empty);
		}
		dcInternal.DINew = DockInfo.NullInfo;
		if (dcInternal.DockingManager.DesignMode)
		{
			dcInternal.DockingManager.UpdateDesigner();
		}
	}

	public bool QueryDragProceedWithDock()
	{
		if (dcInternal.MinimumSize.Width != 0 && DragDockInfo.rcDockArea.Width < dcInternal.MinimumSize.Width)
		{
			return false;
		}
		if (dcInternal.MinimumSize.Height != 0 && DragDockInfo.rcDockArea.Height < dcInternal.MinimumSize.Height)
		{
			return false;
		}
		return true;
	}

	public bool ProvideTabFeedback(IDraggable idg, MouseAction action)
	{
		if (dcInternal.DockTab == null)
		{
			return false;
		}
		DockTabController dockTabController = dcInternal.DockTab.InternalController as DockTabController;
		dockTabController.PauseActivation = true;
		DockControllerBase dockControllerBase = idg.InternalController;
		if (idg.InternalController.ChildCount == -1)
		{
			DockHostController dockHostController = idg.InternalController as DockHostController;
			if (dockHostController.DockTab != null)
			{
				foreach (DockTabPage tabPage in dockHostController.DockTab.TabPages)
				{
					if (tabPage.dhcClient == dockHostController)
					{
						dockControllerBase = idg.InternalController.ParentController;
						break;
					}
				}
			}
		}
		ArrayList arrayList = new ArrayList();
		DockUtilities.RecGetChildControllers(dockControllerBase, arrayList);
		Point position = Cursor.Position;
		Point pt = dcInternal.DockTab.PointToClient(position);
		int num = SystemInformation.ToolWindowCaptionHeight + 4;
		if (!dcInternal.HideCaption)
		{
			new Rectangle(0, 0, base.Width, num);
		}
		else
		{
			new Rectangle(0, -num, base.Width, num);
		}
		if (idg.DragDockInfo.nDockIndex < 0 || action == MouseAction.LBtnUp || action == MouseAction.MouseLeave)
		{
			Array array = dcInternal.DockTab.TabPages.ToArray(typeof(DockTabPage));
			foreach (DockTabPage item in array)
			{
				if (item.dhcClient == null)
				{
					dcInternal.DockTab.TabPages.Remove(item);
				}
			}
			if (action != MouseAction.LBtnUp)
			{
				idg.DragDockInfo.nDockIndex = -1;
			}
			if (array.Length > dcInternal.DockTab.TabCount)
			{
				foreach (DockTabPage tabPage2 in dcInternal.DockTab.TabPages)
				{
					if (tabPage2.dhcClient.Equals(dcInternal))
					{
						dcInternal.DockTab.SelectedTab = tabPage2;
						break;
					}
				}
			}
			if (dcInternal.DockTab.nSwitchIndex != -1)
			{
				dcInternal.DockTab.nSwitchIndex = -1;
			}
		}
		else
		{
			bool flag = false;
			Array array2 = dcInternal.DockTab.TabPages.ToArray(typeof(DockTabPage));
			foreach (DockTabPage item2 in array2)
			{
				if (item2.dhcClient != null)
				{
					continue;
				}
				flag = true;
				TabPageAdv tabPageAdv = null;
				DockTabControl dockTab = dcInternal.DockTab;
				TabPageAdv selectedTab = dockTab.SelectedTab;
				int num2 = dockTab.TabPages.IndexOf(item2);
				int num3 = dockTab.GetTabHitIndex(pt);
				int tabCount = dockTab.TabCount;
				int num4 = 1;
				if (dockControllerBase is DockTabController)
				{
					DockTabController dockTabController2 = dockControllerBase as DockTabController;
					num4 = dockTabController2.TabControl.TabPages.Count;
				}
				if (num3 == -1)
				{
					num3 = ((pt.X >= 10) ? tabCount : 0);
				}
				if (num3 > tabCount - num4)
				{
					num3 = tabCount - num4;
				}
				if (num2 == num3)
				{
					break;
				}
				if (num2 > num3)
				{
					for (int i = num2; i < num2 + num4; i++)
					{
						tabPageAdv = dockTab.TabPages[i];
						dockTab.TabPages.RemoveAt(i);
						dockTab.TabPages.Insert(num3 + i - num2, tabPageAdv);
					}
				}
				else
				{
					for (int j = num2; j < num3; j++)
					{
						tabPageAdv = dockTab.TabPages[j + num4];
						dockTab.TabPages.RemoveAt(j + num4);
						dockTab.TabPages.Insert(j, tabPageAdv);
					}
				}
				dockTab.SelectedTab = selectedTab;
				break;
			}
			if (!flag)
			{
				int nDockIndex = idg.DragDockInfo.nDockIndex;
				foreach (DockHostController item3 in arrayList)
				{
					dcInternal.DockTab.InsertTab(nDockIndex++, new DockTabPage(null, item3.HostControl.Text, item3.ImageIndex));
				}
				string text = null;
				foreach (DockHostController item4 in arrayList)
				{
					if (item4.HostControl.ContainsFocus)
					{
						text = item4.HostControl.Text;
						break;
					}
				}
				if (text == null)
				{
					dcInternal.DockTab.SelectedIndex = idg.DragDockInfo.nDockIndex - 1;
				}
				else
				{
					foreach (DockTabPage tabPage3 in dcInternal.DockTab.TabPages)
					{
						if (tabPage3.Text == text)
						{
							dcInternal.DockTab.SelectedTab = tabPage3;
							break;
						}
					}
				}
			}
		}
		dockTabController.PauseActivation = false;
		dcInternal.DockTab.Update();
		return true;
	}

	private CaptionButtonState GetActiveButtonState()
	{
		if ((Control.MouseButtons | MouseButtons.Left) != Control.MouseButtons)
		{
			return CaptionButtonState.Active;
		}
		return CaptionButtonState.Pushed;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		dcInternal.CheckCaptionVisibility();
		if (dcInternal.RendererStyle == VisualStyle.Default)
		{
			Rectangle rectangle = Rectangle.Inflate(ClientRectangle, cpTitleBar.BorderWidth, cpTitleBar.BorderWidth);
			_ = dcInternal.DockingManager.DockTabHeight;
			if (dcInternal.DockTab != null)
			{
				DockTabController dockTabController = dcInternal.ParentController as DockTabController;
				rectangle = dockTabController.GetHostControlBounds();
				rectangle.Inflate(1, 1);
			}
			cpTitleBar.RefreshCaptionButtonsCollection();
			if (dcInternal.DockingManager.ctrlLastPainted != this)
			{
				cpTitleBar.ResetCaptonButtonsHitTest();
			}
			if (dcInternal.DockingManager.PaintBorders)
			{
				cpTitleBar.PaintCaption(e.Graphics, pen);
			}
			else if (!dcInternal.Floating || !(dcInternal.ParentController is FloatingFormController))
			{
				cpTitleBar.PaintCaption(e.Graphics, new Pen(SystemColors.ControlDark));
			}
			if (dcInternal.DockingManager.PaintBorders)
			{
				Rectangle rect = new Rectangle(rectangle.Left, rectangle.Top, rectangle.Width - 1, rectangle.Height - 1);
				e.Graphics.DrawRectangle(pen, rect);
			}
		}
		else
		{
			PaintDockControlArgs paintInfo = GetPaintInfo();
			if (!dcInternal.HideCaption)
			{
				dcInternal.DockingManager.FireProvideGraphicsItemsEvent(paintInfo.ProvideGraphicsItemsArgs);
			}
			if (paintInfo != null)
			{
				if (dcInternal.DockingManager.ctrlLastPainted != this)
				{
					dcInternal.Renderer.ResetButtonsHitTest();
				}
				dcInternal.Renderer.PaintDockedControl(e.Graphics, new Rectangle(Point.Empty, base.Size), paintInfo);
			}
		}
		dcInternal.DockingManager.ctrlLastPainted = this;
		base.OnPaint(e);
	}

	private PaintDockControlArgs GetPaintInfo()
	{
		PaintDockControlArgs paintDockControlArgs = null;
		CaptionState captionState = (cpTitleBar.DrawWithHighlight() ? CaptionState.Active : CaptionState.Normal);
		CaptionButtonOptionsTable captionButtonOptionsTable = new CaptionButtonOptionsTable();
		int num = 0;
		CaptionButtonOptions captionButtonOptions = null;
		ImageList imageList = dcInternal.DockingManager.ImageList;
		CaptionButtonsCollection customCaptionButtons = dcInternal.DockingManager.GetCustomCaptionButtons(base.Controls[0]);
		if (customCaptionButtons == null && dcInternal.DockingManager.TargetManagers.Count > 0)
		{
			foreach (DockingManager targetManager in dcInternal.DockingManager.TargetManagers)
			{
				customCaptionButtons = targetManager.GetCustomCaptionButtons(base.Controls[0]);
				if (customCaptionButtons != null)
				{
					break;
				}
			}
		}
		if (customCaptionButtons != null)
		{
			bool flag = dcInternal.DockingManager.CaptionButtons.ContainsButtonType(CaptionButtonType.Restore);
			for (int i = 0; i < customCaptionButtons.Count; i++)
			{
				CaptionButton captionButton = customCaptionButtons[i];
				captionButtonOptions = new CaptionButtonOptions();
				switch (captionButton.Type)
				{
				case CaptionButtonType.Close:
					if (dcInternal.CloseButtonVisibility)
					{
						captionButtonOptionsTable.Add(captionButton, captionButtonOptions);
						num++;
					}
					break;
				case CaptionButtonType.Pin:
					if (dcInternal.AutoHideButtonVisibility && !dcInternal.Floating)
					{
						captionButtonOptions.ModifiedView = dcInternal.AutoHideMode;
						captionButtonOptionsTable.Add(captionButton, captionButtonOptions);
						num++;
					}
					break;
				case CaptionButtonType.Menu:
					if (dcInternal.MenuButtonVisiblity)
					{
						captionButtonOptionsTable.Add(captionButton, captionButtonOptions);
						num++;
					}
					break;
				case CaptionButtonType.Maximize:
					if (dcInternal.MaximizeButtonVisibility)
					{
						captionButtonOptions.ModifiedView = dcInternal.Maximized;
						if (!flag || (flag && !dcInternal.Maximized))
						{
							captionButtonOptionsTable.Add(captionButton, captionButtonOptions);
							num++;
						}
					}
					break;
				case CaptionButtonType.Restore:
					if (dcInternal.MaximizeButtonVisibility)
					{
						captionButtonOptions.ModifiedView = !dcInternal.Maximized;
						if (flag && dcInternal.Maximized)
						{
							captionButtonOptionsTable.Add(captionButton, captionButtonOptions);
							num++;
						}
					}
					break;
				case CaptionButtonType.Custom:
					captionButtonOptionsTable.Add(customCaptionButtons[i], captionButtonOptions);
					num++;
					break;
				}
			}
		}
		dcInternal.Renderer.ControlBounds = new Rectangle(Point.Empty, base.Size);
		Caption caption = (dcInternal.HideCaption ? null : new Caption(captionState, dcInternal.DockLabel, dcInternal.DockingManager.DockLabelAlignment, dcInternal.DockingManager.CaptionTextFont));
		if (base.Controls.Count > 0)
		{
			ProvideGraphicsItemsEventArgs pgargs = new ProvideGraphicsItemsEventArgs(base.Controls[0], dcInternal.DockingManager.Renderer.CaptionBounds, captionState == CaptionState.Active);
			int captionImageIndex = (dcInternal.DockingManager.ShowCaptionImages ? dcInternal.ImageIndex : (-1));
			paintDockControlArgs = new PaintDockControlArgs(caption, captionButtonOptionsTable, dcInternal.DockingManager.PaintBorders, bFloating: false, captionImageIndex, pgargs, imageList);
			paintDockControlArgs.DesignMode = dcInternal.DockingManager.DesignProcess;
		}
		return paintDockControlArgs;
	}

	internal void RefreshRenderer()
	{
		dcInternal.Renderer.RefreshPaintInfo(new Rectangle(Point.Empty, base.Size), GetPaintInfo());
		dcInternal.DockingManager.ctrlLastPainted = this;
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
		Control control = dcInternal.DockingManager.GetPrimarySelection() as Control;
		Control control2 = base.Controls[0];
		if (control == null || !control.Equals(control2))
		{
			Control[] clln = new Control[1] { control2 };
			dcInternal.DockingManager.SetSelectedComponents(clln, SelectionTypes.Auto);
		}
		control2.Focus();
	}

	public void HandleDoubleClick(Point ptscreen)
	{
		dcInternal.HandleDoubleClickImp(PointToClient(ptscreen));
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

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		if (dcInternal == null || dcInternal.DockingManager.DesignProcess)
		{
			return;
		}
		DockingManager dockingManager = dcInternal.DockingManager;
		if (dockingManager.VisualStyle != VisualStyle.Default && dockingManager.ctrlLastPainted != this)
		{
			RefreshRenderer();
		}
		if (dcInternal.DockingManager.DHCInFocus != dcInternal)
		{
			dcInternal.DockingManager.DHCInFocus = dcInternal;
		}
		if (e.Button == MouseButtons.Left && !dcInternal.bAutoHideSizing)
		{
			dcInternal.HandleMouseDownImp(e.Button, new Point(e.X, e.Y));
		}
		if (!base.ContainsFocus)
		{
			if (base.Controls[0].Controls.Count > 0)
			{
				if (LastActiveControl != null)
				{
					LastActiveControl.Focus();
					LastActiveControl = null;
				}
			}
			else
			{
				base.Controls[0].Focus();
			}
		}
		InvalidateCaption();
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (!dcInternal.bAutoHideSizing)
		{
			IDraggable draggingControl = dcInternal.DockingManager.DragProvider.DraggingControl;
			if (draggingControl == null || (draggingControl != null && draggingControl == this))
			{
				dcInternal.HandleMouseUpImp(e.Button, new Point(e.X, e.Y));
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess)
		{
			IDraggable draggingControl = dcInternal.DockingManager.DragProvider.DraggingControl;
			if (draggingControl == null)
			{
				dcInternal.HandleMouseMoveImp(e.Button, new Point(e.X, e.Y));
			}
			else if (draggingControl == this)
			{
				dcInternal.HandleMouseMoveImp(e.Button, new Point(e.X, e.Y));
			}
		}
		cpTitleBar.ProcessMouseMove(e);
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (base.Controls.Count > 0)
		{
			for (int i = 0; i < base.Controls.Count; i++)
			{
				if (base.Visible)
				{
					base.Controls[i].Visible = base.Visible;
				}
			}
		}
		if (base.Visible && dcInternal != null && !dcInternal.DockingManager.bLoadVisibility)
		{
			base.Visible = false;
		}
		base.OnVisibleChanged(e);
	}

	protected override void WndProc(ref Message msg)
	{
		if (msg.Msg == 513 || msg.Msg == 515)
		{
			int num = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(msg.LParam);
			int num2 = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(msg.LParam);
			Control control = null;
			if (base.Controls.Count > 0 && !base.Controls[0].ContainsFocus)
			{
				control = base.Controls[0];
				Point pt = new Point(num, num2);
				if (!control.Bounds.Contains(pt) && !cpTitleBar.CaptionRect.Contains(pt))
				{
					return;
				}
			}
		}
		if ((((msg.Msg == 513 || msg.Msg == 514) && ((int)msg.WParam == 32 || (int)msg.WParam == 64)) || msg.Msg == 523 || msg.Msg == 524) && dcInternal != null && !dcInternal.DockingManager.DesignProcess && dcInternal.DockingManager.DragProvider.DraggingControl != null)
		{
			return;
		}
		if ((msg.Msg == 7 && dcInternal != null && !dcInternal.DockingManager.DesignProcess) || (msg.Msg == 528 && Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(msg.WParam) == 513))
		{
			InternalController.DockingManager.mouseActivatedControl = null;
			Control control2 = null;
			DockHostController dockHostController = dcInternal;
			if (base.Controls.Count > 0 && !base.Controls[0].ContainsFocus)
			{
				control2 = base.Controls[0];
			}
			if (msg.Msg == 7)
			{
				Control control3 = Control.FromHandle(msg.WParam);
				if (control3 is Form && !(control3 is FloatingForm) && dcInternal.DockingManager.LastActiveControl != null)
				{
					control2 = dcInternal.DockingManager.LastActiveControl;
					for (Control control4 = control2.Parent; control4 != null; control4 = control4.Parent)
					{
						if (control4 is DockHost)
						{
							dockHostController = (control4 as DockHost).dcInternal;
							break;
						}
					}
				}
				else if (control3 != null)
				{
					Control control5 = control3.Parent;
					while (control5 != null && control5 != this)
					{
						control5 = control5.Parent;
					}
					if (control5 != null)
					{
						control2 = control3;
					}
				}
			}
			bool flag = true;
			if (msg.Msg == 528 && Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(msg.WParam) == 513)
			{
				int num3 = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(msg.LParam);
				int num4 = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(msg.LParam);
				Point pt2 = new Point(num3, num4);
				if (control2 != null && !control2.Bounds.Contains(pt2))
				{
					flag = false;
				}
			}
			if (control2 != null && !(control2 is ScrollableControl) && flag)
			{
				control2.Focus();
			}
			if (dcInternal.DockingManager.DHCInFocus != dockHostController)
			{
				dcInternal.DockingManager.DHCInFocus = dockHostController;
			}
			InvalidateCaption();
			return;
		}
		if (msg.Msg == 8 && dcInternal != null && !dcInternal.DockingManager.DesignProcess && !base.ContainsFocus)
		{
			if (dcInternal.DockingManager.DHCInFocus == dcInternal)
			{
				dcInternal.DockingManager.DHCInFocus = null;
			}
			InvalidateCaption();
			return;
		}
		base.WndProc(ref msg);
		if (dcInternal == null || dcInternal.DockingManager.DesignProcess || !dcInternal.DockingManager.EnableDoubleClickOnCaption || msg.Msg != 515 || (int)msg.WParam != 1)
		{
			return;
		}
		int n = (int)msg.LParam;
		DockingManager dockingManager = dcInternal.DockingManager;
		try
		{
			dockingManager.LockActivationEvents++;
			dcInternal.HandleDoubleClickImp(new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(n), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(n)));
		}
		finally
		{
			dockingManager.LockActivationEvents--;
		}
	}

	internal void UpdateControlSize()
	{
		if (base.Controls.Count <= 0 || dcInternal == null)
		{
			return;
		}
		Region region = new Region(new Rectangle(0, 0, base.Size.Width, base.Size.Height));
		region.Exclude(ClientRectangle);
		Invalidate(region, invalidateChildren: true);
		if (dcInternal.DockTab != null)
		{
			return;
		}
		DockingManager dockingManager = dcInternal.DockingManager;
		if (!dcInternal.DockingManager.LockUpdates && !dockingManager.DesignerInitializing)
		{
			if (base.Controls[0].Location != ClientRectangle.Location)
			{
				base.Controls[0].Location = ClientRectangle.Location;
			}
			if (base.Controls[0].Size != ClientRectangle.Size)
			{
				base.Controls[0].Size = ClientRectangle.Size;
			}
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		base.SetBoundsCore(x, y, width, height, specified);
		UpdateControlSize();
	}

	protected override bool ProcessDialogKey(Keys keydata)
	{
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess && dcInternal.DockingManager.BrowsingKey != Keys.None)
		{
			if (dcInternal.DockingManager.AHInViewTab != null && dcInternal.AutoHideMode && keydata == Keys.Escape)
			{
				dcInternal.DockingManager.AHInViewTab.HideController(null, banimate: false);
				dcInternal.DockingManager.HostControl.Focus();
				return true;
			}
			Control control = dcInternal.DockingManager.ActiveControl;
			Control nextControl = GetNextControl(control);
			if (keydata == dcInternal.DockingManager.BrowsingKey)
			{
				for (int i = 0; i < dcInternal.DockingManager.alEnableDocking.Count; i++)
				{
					if (nextControl != control && nextControl.TabStop)
					{
						break;
					}
					nextControl = GetNextControl(nextControl);
				}
				if (nextControl.TabStop)
				{
					dcInternal.DockingManager.ActivateControl(nextControl);
				}
				return true;
			}
		}
		return base.ProcessDialogKey(keydata);
	}

	protected Control GetNextControl(Control curControl)
	{
		int num = curControl.TabIndex;
		int num2 = -1;
		int num3 = num;
		int num4 = -1;
		int num5 = -1;
		int num6 = -1;
		int num7 = 0;
		foreach (Control item in dcInternal.DockingManager.alEnableDocking)
		{
			DockHostController dockHostController = dcInternal.DockingManager.GetDockHostController(item);
			if (!dockHostController.DockVisibility)
			{
				num7++;
				continue;
			}
			if (item.TabIndex == num)
			{
				num2 = num7;
				num7++;
				continue;
			}
			if (item.TabIndex > num)
			{
				int num8 = item.TabIndex - num;
				if (num4 == -1)
				{
					num4 = num8;
					num5 = num7;
				}
				if (num8 < num4)
				{
					num5 = num7;
				}
			}
			else if (item.TabIndex < num3)
			{
				num3 = item.TabIndex;
				num6 = num7;
			}
			num7++;
		}
		if (num5 == -1)
		{
			num5 = ((num6 <= -1) ? num2 : num6);
		}
		return dcInternal.DockingManager.alEnableDocking[num5] as Control;
	}

	public void SubscribeDockHostEvents()
	{
		if (!dcInternal.DockingManager.DesignProcess)
		{
			base.MouseLeave += DockHost_MouseLeave;
			base.MouseEnter += DockHost_MouseEnter;
		}
		base.ParentChanged += this_ParentChanged;
	}

	public void UnsubscribeDockHostEvents()
	{
		if (!dcInternal.DockingManager.DesignProcess)
		{
			base.MouseLeave -= DockHost_MouseLeave;
			base.MouseEnter -= DockHost_MouseEnter;
		}
		base.ParentChanged -= this_ParentChanged;
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && dcInternal != null)
		{
			bool designProcess = dcInternal.DockingManager.DesignProcess;
			if (base.Controls.Count > 0 && !designProcess)
			{
				RecSubscribeChildControlEvents(base.Controls[0], subscribe: false);
			}
			UnsubscribeDockHostEvents();
			cpTitleBar.Dispose();
			cpTitleBar = null;
			dcInternal = null;
			if (base.Controls.Count > 0)
			{
				Control control = base.Controls[0];
				if (!designProcess && control != null)
				{
					control.HandleDestroyed -= HostControl_HandleDestroyed;
					control.HandleCreated -= HostControl_HandleCreated;
				}
			}
			if (base.Parent != null && base.Parent is ContainerControl containerControl && containerControl.ActiveControl == this)
			{
				containerControl.SelectNextControl(this, forward: true, tabStopOnly: true, nested: true, wrap: true);
			}
		}
		base.Dispose(bdisposing);
	}

	public DockControllerBase GetController()
	{
		return dcInternal;
	}
}
