using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Renderers;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class DockTabControl : TabControlAdv, IDockingManagerDesignerMouseHook
{
	private const int DEF_MIN_IMAGE_HEIGHT = 20;

	protected DockTabController dcInternal;

	protected internal int nSwitchIndex = -1;

	protected ThemedControlDrawing tdTab;

	private DockTabPage m_closingPage;

	protected static int nNamingCount;

	public DockStateControllerBase InternalController => dcInternal;

	public ThemedControlDrawing ThemeDraw => tdTab;

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

	public override bool ShowScroll
	{
		get
		{
			return base.ShowScroll;
		}
		set
		{
			base.ShowScroll = value;
			if (value)
			{
				SizeMode = TabSizeMode.Normal;
			}
			else
			{
				SizeMode = TabSizeMode.ShrinkToFit;
			}
		}
	}

	public DockTabControl(DockingManager dmgr, DockHostController dhc)
	{
		AllowDrop = true;
		InitializeDockTabControl(dmgr, dhc);
		nNamingCount++;
		base.Name = "DockTabControl_" + nNamingCount;
	}

	protected virtual void InitializeDockTabControl(DockingManager dmgr, DockHostController dhc)
	{
		dcInternal = new DockTabController(dmgr, this);
		dhc.ParentController.ReplaceChild(dhc, dcInternal);
		dhc.ParentController = dcInternal;
		dcInternal.HostController = dhc;
		Alignment = (TabAlignment)Enum.Parse(typeof(DockTabAlignmentStyle), dmgr.DockTabAlignment.ToString(), ignoreCase: true);
		SizeMode = TabSizeMode.ShrinkToFit;
		TextAlignment = StringAlignment.Near;
		TextLineAlignment = StringAlignment.Near;
		Font = dmgr.DockTabFont;
		ActiveTabFont = Font;
		ImageList = dcInternal.DockingManager.ImageList;
		Multiline = false;
		SetStyle(ControlStyles.Selectable, value: false);
		FocusOnTabClick = false;
		ItemSize = new Size(0, dmgr.DockTabHeight);
		(base.Renderer as SingleLineTabPanelRenderer).PadX = 5f;
		if (dcInternal.DockingManager.DockTabHeight > 20)
		{
			base.Renderer.ForceDrawImage = true;
		}
		Type tabStyle;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && dcInternal.DockingManager.ThemesEnabled)
		{
			tabStyle = typeof(DockTabThemedRenderer);
			HotTrack = true;
		}
		else
		{
			tabStyle = typeof(TabRenderer2D);
		}
		if (InternalController.DockingManager.Renderer.VisualStyle != VisualStyle.Default)
		{
			tabStyle = GetRendererType();
		}
		TabStyle = tabStyle;
		Padding = new Point(3, 2);
		if (XPThemes.IsThemedOS)
		{
			tdTab = new ThemedControlDrawing("TAB");
		}
		dmgr.ImageListChanged += dockingManager_ImageListChanged;
		RightToLeft = dmgr.RightToLeft;
		dcInternal.DockEdge = dhc.DockEdge;
		ShowScroll = dmgr.ShowDockTabScrollButton;
	}

	protected void UpdateOffice2007Theme()
	{
		if (base.Renderer.Renderers.Count <= 0)
		{
			return;
		}
		foreach (DockTabRendererOffice2007 renderer in base.Renderer.Renderers)
		{
			renderer.Theme = dcInternal.DockingManager.Office2007Theme;
		}
	}

	protected void dockingManager_ImageListChanged(object obj, EventArgs e)
	{
		ImageList = dcInternal.DockingManager.ImageList;
	}

	public void InsertTab(int nindex, DockTabPage newpage)
	{
		nindex = ((nindex >= 0) ? nindex : 0);
		nindex = ((nindex > TabPages.Count) ? TabPages.Count : nindex);
		if (newpage.dhcClient != null)
		{
			newpage.dhcClient.DICurrent = new DockInfo(InternalController, DockingStyle.Fill, dcInternal.DICurrent.nPriority, nindex, DockPreference.Tabbed, new Rectangle(0, 0, dcInternal.LayoutRect.Width, dcInternal.LayoutRect.Height));
			newpage.dhcClient.ParentController = InternalController;
			newpage.dhcClient.StoredSizes = InternalController.StoredSizes;
			bool flag = (dcInternal.PauseActivation ? true : false);
			dcInternal.PauseActivation = true;
			TabPages.Insert(nindex, newpage);
			if (!flag)
			{
				dcInternal.PauseActivation = false;
			}
		}
		int num = 0;
		foreach (DockTabPage tabPage in TabPages)
		{
			if (tabPage.dhcClient != null)
			{
				tabPage.dhcClient.DICurrent.nDockIndex = num++;
			}
		}
	}

	public void AddTab(DockTabPage newpage)
	{
		if (newpage.dhcClient != null)
		{
			newpage.dhcClient.DICurrent = new DockInfo(InternalController, DockingStyle.Fill, dcInternal.DICurrent.nPriority, TabPages.Count, DockPreference.Tabbed, new Rectangle(0, 0, dcInternal.LayoutRect.Width, dcInternal.LayoutRect.Height));
			newpage.dhcClient.ParentController = InternalController;
		}
		TabPages.Add(newpage);
	}

	public void ReparentTabChildren()
	{
		Control control = dcInternal.HostControl.Parent;
		foreach (DockTabPage tabPage in TabPages)
		{
			if (tabPage.dhcClient.HostControl.Parent != control)
			{
				control.Controls.Add(tabPage.dhcClient.HostControl);
			}
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (dcInternal.DockingManager.VisualStyle == VisualStyle.Office2007 || dcInternal.DockingManager.VisualStyle == VisualStyle.Office2007Outlook)
		{
			UpdateOffice2007Theme();
		}
		base.OnPaint(e);
	}

	protected override void OnStyleChanged()
	{
		base.OnStyleChanged();
		SetItemSize();
	}

	private void SetItemSize()
	{
		if (dcInternal != null && dcInternal.DockingManager != null)
		{
			int num = dcInternal.DockingManager.DockTabHeight;
			if (TabStyle == typeof(DockTabRendererOffice2007))
			{
				num++;
			}
			ItemSize = new Size(0, num);
		}
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
		if (!base.IsDisposed)
		{
			Control control = dcInternal.DockingManager.GetPrimarySelection() as Control;
			Control control2 = dcInternal.HostControl.Controls[0];
			if (control == null || !control.Equals(control2))
			{
				Control[] clln = new Control[1] { control2 };
				dcInternal.DockingManager.SetSelectedComponents(clln, SelectionTypes.Auto);
			}
			control2.Focus();
		}
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
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess)
		{
			dcInternal.HandleMouseDownImp(e.Button, new Point(e.X, e.Y));
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
			else if (dcInternal.dragTabPage != null)
			{
				dcInternal.HandleMouseMoveImp(MouseButtons.Left, new Point(e.X, e.Y));
			}
		}
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		int num = HitTestTabs(PointToClient(Cursor.Position));
		if (num != -1 && num != SelectedIndex)
		{
			SelectedIndex = num;
		}
		base.OnDragOver(drgevent);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		DockTabPage dockTabPage = TabPages[SelectedIndex] as DockTabPage;
		dockTabPage.Closing += page_Closing;
		base.OnMouseUp(e);
		dcInternal.HandleMouseUpImp(e.Button, new Point(e.X, e.Y));
		if (m_closingPage != null)
		{
			m_closingPage.dhcClient.CloseController();
			m_closingPage = null;
		}
		dockTabPage.Closing -= page_Closing;
	}

	private void page_Closing(object sender, TabPageAdvClosingEventArgs args)
	{
		m_closingPage = sender as DockTabPage;
		args.Cancel = true;
	}

	protected override void WndProc(ref Message msg)
	{
		if ((((msg.Msg != 513 && msg.Msg != 514) || ((int)msg.WParam != 32 && (int)msg.WParam != 64)) && msg.Msg != 523 && msg.Msg != 524) || dcInternal == null || dcInternal.DockingManager.DesignMode || dcInternal.DockingManager.DragProvider.DraggingControl == null)
		{
			base.WndProc(ref msg);
			if (dcInternal != null && !dcInternal.DockingManager.DesignProcess && msg.Msg == 515 && (int)msg.WParam == 1)
			{
				_ = (int)msg.LParam;
				dcInternal.HandleDoubleClickImp(PointToClient(Cursor.Position));
			}
		}
	}

	public int GetTabHitIndex(Point pt)
	{
		return HitTestTabs(pt, inTransformedCoOrds: false);
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && tdTab != null)
		{
			ImageList = null;
			if (dcInternal != null)
			{
				dcInternal.DockingManager.ImageListChanged -= dockingManager_ImageListChanged;
			}
			tdTab.Dispose();
			tdTab = null;
		}
		base.Dispose(bdisposing);
	}

	public void UpdateRenderer()
	{
		TabStyle = GetRendererType();
		Invalidate();
	}

	internal Type GetRendererType()
	{
		Type result = typeof(TabRenderer2D);
		switch (InternalController.DockingManager.Renderer.VisualStyle)
		{
		case VisualStyle.Default:
			result = ((!dcInternal.DockingManager.ThemesEnabled || !XPThemes.IsThemedOS || !XPThemes.IsThemeActive) ? typeof(TabRenderer2D) : typeof(DockTabThemedRenderer));
			break;
		case VisualStyle.OfficeXP:
		case VisualStyle.Office2003:
			result = typeof(TabRendererOffice2003);
			break;
		case VisualStyle.VS2005:
			result = typeof(TabRendererDockingWhidbey);
			break;
		case VisualStyle.Office2007:
		case VisualStyle.Office2007Outlook:
			result = typeof(DockTabRendererOffice2007);
			break;
		}
		return result;
	}
}
