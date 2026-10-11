using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[Designer(typeof(RibbonPanelDesigner))]
public class RibbonPanel : ContainerControl, IOffice12Settings
{
	protected enum ScrollButtonsArea
	{
		None,
		RightScrollButton,
		LeftScrollButton
	}

	public class RibbonPanelLayout : LayoutEngine
	{
		private const int SPACE_BETWEEN_TOOLSTRIP = 2;

		private LayoutEngine m_baseLayout;

		public RibbonPanelLayout(LayoutEngine baseLayout)
		{
			m_baseLayout = baseLayout;
		}

		public override void InitLayout(object child, BoundsSpecified specified)
		{
			if (m_baseLayout != null)
			{
				m_baseLayout.InitLayout(child, specified);
			}
		}

		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			if (container is RibbonPanel { DisplayRectangle: { Height: var height } displayRectangle } ribbonPanel)
			{
				int num = -ribbonPanel.ScrollPositionInternal;
				RightToLeft rightToLeft = ribbonPanel.RightToLeft;
				ribbonPanel.UpdateExpandedToolStrips();
				if (ribbonPanel.Controls.Count > 0)
				{
					int i = 0;
					for (int count = ribbonPanel.Controls.Count; i < count; i++)
					{
						if (!(ribbonPanel.Controls[i] is ToolStripEx { Visible: not false } toolStripEx))
						{
							continue;
						}
						if (ribbonPanel.m_toolStripsExpanded.Contains(toolStripEx))
						{
							toolStripEx.State = ToolStripEx.ToolStripExState.Expanded;
							if (toolStripEx.AutoSize)
							{
								toolStripEx.Width = toolStripEx.GetPreferredSize(Size.Empty).Width;
							}
						}
						else if (toolStripEx.State != ToolStripEx.ToolStripExState.Collapsed)
						{
							toolStripEx.State = ToolStripEx.ToolStripExState.Collapsed;
						}
						else
						{
							toolStripEx.Width = toolStripEx.CollapsedWidth;
						}
						toolStripEx.Top = displayRectangle.Top;
						toolStripEx.Height = height;
						ribbonPanel.SetToolStripLocationRTL(toolStripEx, rightToLeft, num);
						num += toolStripEx.Width + 2;
					}
				}
				return true;
			}
			return false;
		}
	}

	private const int SCROLLBARBUTTON_WIDTH = 12;

	private const int BORDER_WIDTH = 2;

	private const SetWindowPosFlags m_swpFlags = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_FRAMECHANGED;

	private const int TIMER_INT = 200;

	private ToolStripTabItem m_tabItem;

	private List<ToolStripEx> m_toolStripsExpanded;

	private int m_iScrollPosition;

	private bool m_bIsRightScroll;

	private bool m_bIsLeftScroll;

	private bool m_bRightScrollSelected;

	private bool m_bLeftScrollSelected;

	private Timer m_timer;

	private int m_timerInt = 200;

	private ScrollButtonsArea m_pushedButton;

	private static Dictionary<ToolStripEx.ColorScheme, RibbonPanelRenderer> m_renderers;

	private LauncherStyle m_launcherStyle;

	private BoolEx m_bShowCaption;

	private BoolEx m_bShowLauncher;

	private CaptionStyle m_captionStyle;

	private CaptionTextStyle m_captionTextStyle;

	private CaptionAlignment m_captionAlignment;

	private Font m_captionFont;

	private int m_nCaptionMinHeight = -1;

	private ToolStripEx.ColorScheme m_colorScheme;

	private ToolStripBorderStyle m_borderStyle;

	private RibbonPanelLayout m_ribbonPanelLayout;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolStripTabItem TabItem
	{
		get
		{
			return m_tabItem;
		}
		set
		{
			if (m_tabItem != value)
			{
				m_tabItem = value;
				InitTabItem();
			}
		}
	}

	internal int ScrollPositionInternal
	{
		get
		{
			return m_iScrollPosition;
		}
		set
		{
			if (m_iScrollPosition != value)
			{
				m_iScrollPosition = value;
				UpdateFrame();
				PerformLayout();
			}
		}
	}

	[Browsable(false)]
	public int ScrollPosition
	{
		get
		{
			return m_iScrollPosition;
		}
		set
		{
			ScrollPositionInternal = GetValidScrollPosition(value);
		}
	}

	internal bool IsRightScroll => m_bIsRightScroll;

	internal bool IsLeftScroll => m_bIsLeftScroll;

	internal bool RightScrollSelected => m_bRightScrollSelected;

	internal bool LeftScrollSelected => m_bLeftScrollSelected;

	public new Padding Margin
	{
		get
		{
			return base.Margin;
		}
		set
		{
			base.Margin = value;
		}
	}

	protected virtual RibbonPanelRenderer Renderer
	{
		get
		{
			ToolStripEx.ColorScheme officeColorScheme = OfficeColorScheme;
			if (!m_renderers.ContainsKey(officeColorScheme))
			{
				switch (officeColorScheme)
				{
				case ToolStripEx.ColorScheme.Managed:
					m_renderers[officeColorScheme] = new RibbonPanelRenderer(Office12ColorTable.ManagedColors);
					break;
				case ToolStripEx.ColorScheme.Silver:
					m_renderers[officeColorScheme] = new RibbonPanelRenderer(new Office12ColorTable());
					break;
				case ToolStripEx.ColorScheme.Blue:
					m_renderers[officeColorScheme] = new RibbonPanelRenderer(new OfficeBlue());
					break;
				case ToolStripEx.ColorScheme.Black:
					m_renderers[officeColorScheme] = new RibbonPanelRenderer(new OfficeBlack());
					break;
				}
			}
			return m_renderers[officeColorScheme];
		}
	}

	protected ScrollButtonsArea PushedButton
	{
		get
		{
			return m_pushedButton;
		}
		set
		{
			if (m_pushedButton != value)
			{
				m_pushedButton = value;
			}
		}
	}

	protected Rectangle RightScrollBounds
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (m_bIsRightScroll)
			{
				result = new Rectangle(DisplayRectangle.Width, 0, 14, base.Height);
			}
			return result;
		}
	}

	protected Rectangle LeftScrollBounds
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (m_bIsLeftScroll)
			{
				int num = 14;
				result = new Rectangle(-num, 0, num, base.Height);
			}
			return result;
		}
	}

	protected override Padding DefaultPadding => new Padding(0, 1, 0, 0);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new Point Location
	{
		get
		{
			return base.Location;
		}
		set
		{
			base.Location = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			base.Visible = value;
		}
	}

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_ribbonPanelLayout == null)
			{
				m_ribbonPanelLayout = new RibbonPanelLayout(base.LayoutEngine);
			}
			return m_ribbonPanelLayout;
		}
	}

	[Description("Specifies the style of the launcher button.")]
	public LauncherStyle LauncherStyle
	{
		get
		{
			if (m_launcherStyle == LauncherStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return LauncherStyle.Office2007;
				}
				return office12Settings.LauncherStyle;
			}
			return m_launcherStyle;
		}
		set
		{
			if (m_launcherStyle != value)
			{
				m_launcherStyle = value;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies whether the caption should be shown.")]
	public virtual bool ShowCaption
	{
		get
		{
			if (m_bShowCaption == BoolEx.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return true;
				}
				return office12Settings.ShowCaption;
			}
			return m_bShowCaption == BoolEx.True;
		}
		set
		{
			BoolEx boolEx = ToolStripEx.BoolToBoolEx(value);
			if (m_bShowCaption != boolEx)
			{
				m_bShowCaption = boolEx;
				UpdateCaptions();
			}
		}
	}

	[Description("Specfies whether the launcher buttton should be shown.")]
	public virtual bool ShowLauncher
	{
		get
		{
			if (m_bShowLauncher == BoolEx.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return true;
				}
				return office12Settings.ShowLauncher;
			}
			return m_bShowLauncher == BoolEx.True;
		}
		set
		{
			BoolEx boolEx = ToolStripEx.BoolToBoolEx(value);
			if (m_bShowLauncher != boolEx)
			{
				m_bShowLauncher = boolEx;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies the style (Top, Bottom) of caption")]
	public virtual CaptionStyle CaptionStyle
	{
		get
		{
			if (m_captionStyle == CaptionStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return DefaultCaptionStyle;
				}
				return office12Settings.CaptionStyle;
			}
			return m_captionStyle;
		}
		set
		{
			if (m_captionStyle != value)
			{
				m_captionStyle = value;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies the style of caption text.")]
	public virtual CaptionTextStyle CaptionTextStyle
	{
		get
		{
			if (m_captionTextStyle == CaptionTextStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return CaptionTextStyle.Plain;
				}
				return office12Settings.CaptionTextStyle;
			}
			return m_captionTextStyle;
		}
		set
		{
			if (m_captionTextStyle != value)
			{
				m_captionTextStyle = value;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies the alignment of caption in the control")]
	public virtual CaptionAlignment CaptionAlignment
	{
		get
		{
			if (m_captionAlignment == CaptionAlignment.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return CaptionAlignment.Near;
				}
				return office12Settings.CaptionAlignment;
			}
			return m_captionAlignment;
		}
		set
		{
			if (m_captionAlignment != value)
			{
				m_captionAlignment = value;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies the caption font.")]
	public virtual Font CaptionFont
	{
		get
		{
			if (m_captionFont == null)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return Font;
				}
				return office12Settings.CaptionFont;
			}
			return m_captionFont;
		}
		set
		{
			if (m_captionFont != value)
			{
				m_captionFont = value;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies the minimum height of caption.")]
	public virtual int CaptionMinHeight
	{
		get
		{
			if (m_nCaptionMinHeight == -1)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return 0;
				}
				return office12Settings.CaptionMinHeight;
			}
			return m_nCaptionMinHeight;
		}
		set
		{
			if (m_nCaptionMinHeight != value)
			{
				m_nCaptionMinHeight = value;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies the borderstyle for ToolStripEx.")]
	public virtual ToolStripBorderStyle BorderStyle
	{
		get
		{
			if (m_borderStyle == ToolStripBorderStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return DefaultBorderStyle;
				}
				return office12Settings.BorderStyle;
			}
			return m_borderStyle;
		}
		set
		{
			if (m_borderStyle != value)
			{
				m_borderStyle = value;
				UpdateCaptions();
			}
		}
	}

	[Description("Specifies the color scheme (Silver. Blue).")]
	public virtual ToolStripEx.ColorScheme OfficeColorScheme
	{
		get
		{
			if (m_colorScheme == ToolStripEx.ColorScheme.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return DefaultOfficeColorScheme;
				}
				return office12Settings.OfficeColorScheme;
			}
			return m_colorScheme;
		}
		set
		{
			m_colorScheme = value;
			UpdateRenderers();
			Invalidate();
		}
	}

	[Description("Specifies the default color scheme (Silver. Blue).")]
	protected virtual ToolStripEx.ColorScheme DefaultOfficeColorScheme => ToolStripEx.ColorScheme.Managed;

	[Description("Specifies the default border style.")]
	protected virtual ToolStripBorderStyle DefaultBorderStyle => ToolStripBorderStyle.Default;

	[Description("Specifies the default style (Top, Bottom) of caption")]
	protected virtual CaptionStyle DefaultCaptionStyle => CaptionStyle.Top;

	[Description("Specifies the default style of the launcher button.")]
	protected virtual LauncherStyle DefaultLauncherStyle => LauncherStyle.Office2007;

	[Description("Occurs when new toolstrip is added to the collection")]
	public event ToolStripEventHandler ToolStripAdded;

	[Description("Occurs when toolstrip is removed from the collection.")]
	public event ToolStripEventHandler ToolStripRemoved;

	[Description("Occurs when toolstrip item is clicked.")]
	public event ToolStripItemClickedEventHandler ToolStripItemClicked;

	static RibbonPanel()
	{
		m_renderers = new Dictionary<ToolStripEx.ColorScheme, RibbonPanelRenderer>();
	}

	public RibbonPanel()
	{
		m_toolStripsExpanded = new List<ToolStripEx>();
		m_timer = new Timer();
		m_timer.Tick += OnTimerTick;
		Margin = new Padding(4, 0, 4, 0);
		DoubleBuffered = true;
	}

	public RibbonPanel(ToolStripTabItem tabItem)
		: this()
	{
		if (tabItem != null)
		{
			m_tabItem = tabItem;
			InitTabItem();
		}
	}

	public void AddToolStrip(ToolStripEx toolStrip)
	{
		toolStrip.AutoSize = false;
		toolStrip.Dock = DockStyle.None;
		toolStrip.GripStyle = ToolStripGripStyle.Hidden;
		base.Controls.Add(toolStrip);
	}

	public void UpdateCaptions()
	{
		foreach (Control control in base.Controls)
		{
			if (control is ToolStripEx toolStripEx)
			{
				toolStripEx.UpdateCaption();
			}
		}
	}

	public void UpdateRenderers()
	{
		foreach (Control control in base.Controls)
		{
			if (control is ToolStripEx toolStripEx)
			{
				toolStripEx.UpdateRenderer();
			}
		}
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		Size empty = Size.Empty;
		Size proposedSize2 = new Size(1, 1);
		foreach (Control control in base.Controls)
		{
			Size size = (control.AutoSize ? control.GetPreferredSize(proposedSize2) : control.Size);
			empty.Width += size.Width;
			if (empty.Height < size.Height)
			{
				empty.Height = size.Height;
			}
		}
		empty.Width += base.Padding.Horizontal;
		empty.Height += base.Padding.Vertical;
		if (empty.Height < 25)
		{
			empty.Height = 25;
		}
		empty.Width += 4;
		empty.Height += 4;
		return empty;
	}

	private void SetToolStripLocationRTL(ToolStripEx pToolStrip, RightToLeft pRightToLeft, int pX)
	{
		pToolStrip.Left = GetToolStripLocationRTL(pToolStrip, pRightToLeft, pX);
	}

	private int GetToolStripLocationRTL(ToolStripEx pToolStrip, RightToLeft pRightToLeft, int pX)
	{
		if (pRightToLeft == RightToLeft.Yes)
		{
			return DisplayRectangle.Right - pX - pToolStrip.Width;
		}
		return DisplayRectangle.X + pX;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		if (!base.Disposing)
		{
			UpdateCaptions();
			UpdateRenderers();
		}
	}

	protected override void OnPaintBackground(PaintEventArgs pe)
	{
		RibbonPanelRenderer renderer = Renderer;
		if (renderer != null)
		{
			renderer.DrawBackground(this, pe);
		}
		else
		{
			base.OnPaintBackground(pe);
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		base.Region = GetRegion();
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		OnToolStripAdded(e.Control as ToolStripEx);
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		OnToolStripRemoved(e.Control as ToolStripEx);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		base.Region = GetRegion();
		ScrollPositionInternal = GetValidScrollPosition(ScrollPositionInternal);
	}

	protected virtual void OnToolStripAdded(ToolStripEx ts)
	{
		if (ts != null)
		{
			UpdateToolStrip(ts);
			ts.ItemClicked += OnToolStripItemClicked;
			if (this.ToolStripAdded != null)
			{
				this.ToolStripAdded(this, new ToolStripEventArgs(ts));
			}
		}
	}

	protected virtual void OnToolStripRemoved(ToolStripEx ts)
	{
		if (ts != null)
		{
			UpdateToolStrip(ts);
			ts.ItemClicked -= OnToolStripItemClicked;
			if (this.ToolStripRemoved != null)
			{
				this.ToolStripRemoved(this, new ToolStripEventArgs(ts));
			}
		}
	}

	protected override void WndProc(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_NCCALCSIZE:
			if (OnNcCalcSize(ref m))
			{
				return;
			}
			break;
		case Msg.WM_NCPAINT:
			if (OnNcPaint(ref m))
			{
				return;
			}
			break;
		case Msg.WM_NCHITTEST:
			if (OnNcHitTest(ref m))
			{
				return;
			}
			break;
		}
		base.WndProc(ref m);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		bool flag = false;
		if (m_bIsRightScroll)
		{
			flag = RightScrollBounds.Contains(e.Location);
			if (flag != m_bRightScrollSelected)
			{
				m_bRightScrollSelected = flag;
				RefreshScroll();
			}
		}
		if (m_bIsLeftScroll && !flag)
		{
			bool flag2 = LeftScrollBounds.Contains(e.Location);
			if (flag2 != m_bLeftScrollSelected)
			{
				m_bLeftScrollSelected = flag2;
				RefreshScroll();
			}
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (m_bRightScrollSelected)
		{
			m_bRightScrollSelected = false;
			RefreshScroll();
		}
		else if (m_bLeftScrollSelected)
		{
			m_bLeftScrollSelected = false;
			RefreshScroll();
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		if (e.Button == MouseButtons.Left)
		{
			bool flag = false;
			if (m_bIsRightScroll && RightScrollBounds.Contains(e.Location))
			{
				flag = true;
				base.Capture = true;
				PushedButton = ScrollButtonsArea.RightScrollButton;
				ScrollToRight();
				StartTimer(ScrollButtonsArea.RightScrollButton);
			}
			if (!flag && m_bIsLeftScroll && LeftScrollBounds.Contains(e.Location))
			{
				base.Capture = true;
				PushedButton = ScrollButtonsArea.LeftScrollButton;
				ScrollToLeft();
				StartTimer(ScrollButtonsArea.LeftScrollButton);
			}
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		base.Capture = false;
	}

	protected override void OnMouseCaptureChanged(EventArgs e)
	{
		if (!base.Capture)
		{
			m_timer.Stop();
			PushedButton = ScrollButtonsArea.None;
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (!Visible)
		{
			CloseOpenedDropDown();
		}
	}

	private void CloseOpenedDropDown()
	{
		int i = 0;
		for (int count = base.Controls.Count; i < count && (!(base.Controls[i] is ToolStripEx toolStripEx) || !CloseOpenedDropDown(toolStripEx.Items)); i++)
		{
		}
	}

	private bool CloseOpenedDropDown(ToolStripItemCollection items)
	{
		foreach (ToolStripItem item in items)
		{
			if (CloseOpenedDropDown(item))
			{
				return true;
			}
		}
		return false;
	}

	private bool CloseOpenedDropDown(ToolStripItem item)
	{
		if (item is ToolStripDropDownItem toolStripDropDownItem)
		{
			if (toolStripDropDownItem.DropDown.Visible)
			{
				toolStripDropDownItem.HideDropDown();
				return true;
			}
		}
		else if (item is ToolStripPanelItem toolStripPanelItem)
		{
			return CloseOpenedDropDown(toolStripPanelItem.Items);
		}
		return false;
	}

	private void UpdateFrame()
	{
		if (this != null && base.IsHandleCreated)
		{
			WindowsAPI.SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_FRAMECHANGED);
		}
	}

	private bool OnNcCalcSize(ref Message m)
	{
		bool result = false;
		RECT rECT = (RECT)Marshal.PtrToStructure(m.LParam, typeof(RECT));
		rECT.left += 2;
		rECT.right -= 2;
		rECT.top += 2;
		rECT.bottom -= 2;
		int num = rECT.Width;
		int collapsedWidth = GetCollapsedWidth();
		if (collapsedWidth - num > 0)
		{
			if (RightToLeft == RightToLeft.Yes)
			{
				m_bIsLeftScroll = collapsedWidth - m_iScrollPosition > base.Width - 4 - 12;
				m_bIsRightScroll = m_iScrollPosition > 0;
			}
			else
			{
				m_bIsLeftScroll = m_iScrollPosition > 0;
				m_bIsRightScroll = collapsedWidth - m_iScrollPosition > base.Width - 4 - 12;
			}
			if (m_bIsLeftScroll)
			{
				rECT.left += 12;
			}
			if (m_bIsRightScroll)
			{
				rECT.right -= 12;
			}
		}
		else
		{
			m_bIsRightScroll = false;
			m_bIsLeftScroll = false;
		}
		Marshal.StructureToPtr((object)rECT, m.LParam, fDeleteOld: false);
		return result;
	}

	protected virtual bool OnNcPaint(ref Message m)
	{
		bool result = false;
		Renderer?.DrawFrame(this);
		return result;
	}

	protected virtual bool OnNcHitTest(ref Message m)
	{
		bool result = false;
		int num = WindowsAPI.GET_X_LPARAM((int)m.LParam);
		int num2 = WindowsAPI.GET_Y_LPARAM((int)m.LParam);
		Point pt = PointToClient(new Point(num, num2));
		if (RightScrollBounds.Contains(pt) || LeftScrollBounds.Contains(pt))
		{
			m.Result = new IntPtr(1);
			result = true;
		}
		return result;
	}

	private int GetCollapsedWidth()
	{
		int num = 0;
		foreach (Control control in base.Controls)
		{
			if (control is ToolStripEx toolStripEx)
			{
				num += toolStripEx.CollapsedWidth;
			}
		}
		return num;
	}

	private void UpdateExpandedToolStrips()
	{
		m_toolStripsExpanded.Clear();
		int num = DisplayRectangle.Width - GetCollapsedWidth();
		int i = 0;
		for (int count = base.Controls.Count; i < count; i++)
		{
			if (base.Controls[i] is ToolStripEx { Visible: not false } toolStripEx)
			{
				int num2 = (toolStripEx.AutoSize ? toolStripEx.GetPreferredSize(Size.Empty) : toolStripEx.ExpandedSize).Width - toolStripEx.CollapsedWidth;
				if (num2 >= num)
				{
					break;
				}
				m_toolStripsExpanded.Add(toolStripEx);
				num -= num2;
			}
		}
	}

	private void UpdateVisibility()
	{
		Visible = m_tabItem.Checked && m_tabItem.ShowPanel;
	}

	private void UpdateToolStrip(ToolStripEx ts)
	{
		ts.UpdateCaption();
		ts.UpdateRenderer();
	}

	private void InitTabItem()
	{
		if (m_tabItem != null)
		{
			m_tabItem.CheckStateChanged += OnTabCheckStateChanged;
			UpdateVisibility();
		}
	}

	private Region GetRegion()
	{
		Region result = null;
		if (base.IsHandleCreated)
		{
			RECT rect = default(RECT);
			if (WindowsAPI.GetWindowRect(base.Handle, ref rect))
			{
				result = RendererUtils.GetRoundedRegion(new Rectangle(Point.Empty, rect.Size), 2);
			}
		}
		return result;
	}

	private void StartTimer(ScrollButtonsArea mousePushedArea)
	{
		m_timer.Interval = m_timerInt * 4;
		m_timer.Tag = mousePushedArea;
		m_timer.Start();
	}

	internal void RefreshScroll()
	{
		RedrawWindowFlags flags = (RedrawWindowFlags)1025;
		WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, flags);
	}

	private void ScrollToRight()
	{
		int num = base.Width - 4 - 12;
		foreach (Control control in base.Controls)
		{
			ToolStripEx toolStripEx = control as ToolStripEx;
			if ((toolStripEx != null && RightToLeft == RightToLeft.Yes) ? (toolStripEx.Left <= num) : (toolStripEx.Right >= num))
			{
				int position = ((RightToLeft == RightToLeft.Yes) ? (ScrollPositionInternal - toolStripEx.Left + ((!m_bIsLeftScroll) ? 12 : 0)) : (ScrollPositionInternal + toolStripEx.Left));
				ScrollPositionInternal = GetValidScrollPosition(position);
				break;
			}
		}
	}

	private void ScrollToLeft()
	{
		int num = base.Width - 4 - 24;
		for (int num2 = base.Controls.Count - 1; num2 >= 0; num2--)
		{
			if (base.Controls[num2] is ToolStripEx toolStripEx && ((RightToLeft == RightToLeft.Yes) ? (toolStripEx.Right >= 0) : (toolStripEx.Left <= 0)))
			{
				int position = ((RightToLeft == RightToLeft.Yes) ? (ScrollPositionInternal + num - toolStripEx.Right + ((!m_bIsRightScroll) ? 12 : 0)) : (ScrollPositionInternal - num + toolStripEx.Right));
				ScrollPositionInternal = GetValidScrollPosition(position);
				break;
			}
		}
	}

	private int GetValidScrollPosition(int position)
	{
		int num = position;
		if (num != 0)
		{
			int collapsedWidth = GetCollapsedWidth();
			int num2 = base.Width - 4;
			if (num < 0 || collapsedWidth < num2)
			{
				num = 0;
			}
			else if (collapsedWidth > num2)
			{
				int num3 = collapsedWidth - num2 + 12;
				if (num > num3)
				{
					num = num3;
				}
			}
		}
		return num;
	}

	internal ToolStripTabGroup GetTabGroup()
	{
		ToolStripTabGroup result = null;
		ToolStripTabItem tabItem = TabItem;
		if (tabItem != null && tabItem.GetCurrentParent() is RibbonControlAdvHeader ribbonControlAdvHeader && ribbonControlAdvHeader.TabGroupsHash.ContainsKey(tabItem))
		{
			result = ribbonControlAdvHeader.TabGroupsHash[tabItem];
		}
		return result;
	}

	public void OnTabCheckStateChanged(object sender, EventArgs e)
	{
		UpdateVisibility();
	}

	public void OnToolStripItemClicked(object sender, ToolStripItemClickedEventArgs e)
	{
		if (this.ToolStripItemClicked != null)
		{
			this.ToolStripItemClicked(sender, e);
		}
	}

	private void OnTimerTick(object sender, EventArgs e)
	{
		ScrollButtonsArea scrollButtonsArea = (ScrollButtonsArea)((Timer)sender).Tag;
		Point pt = PointToClient(Control.MousePosition);
		switch (scrollButtonsArea)
		{
		case ScrollButtonsArea.RightScrollButton:
			if (RightScrollBounds.IsEmpty)
			{
				base.Capture = false;
			}
			else if (RightScrollBounds.Contains(pt))
			{
				ScrollToRight();
			}
			break;
		case ScrollButtonsArea.LeftScrollButton:
			if (LeftScrollBounds.IsEmpty)
			{
				base.Capture = false;
			}
			else if (LeftScrollBounds.Contains(pt))
			{
				ScrollToLeft();
			}
			break;
		}
		m_timer.Interval = m_timerInt;
	}

	public bool ShouldSerializeLauncherStyle()
	{
		return m_launcherStyle != LauncherStyle.Default;
	}

	public void ResetLauncherStyle()
	{
		LauncherStyle = LauncherStyle.Default;
	}

	public bool ShouldSerializeShowCaption()
	{
		return m_bShowCaption != BoolEx.Default;
	}

	public void ResetShowCaption()
	{
		m_bShowCaption = BoolEx.Default;
	}

	public bool ShouldSerializeShowLauncher()
	{
		return m_bShowLauncher != BoolEx.Default;
	}

	public void ResetShowLauncher()
	{
		m_bShowLauncher = BoolEx.Default;
		UpdateCaptions();
	}

	public bool ShouldSerializeCaptionStyle()
	{
		return m_captionStyle != CaptionStyle.Default;
	}

	public void ResetCaptionStyle()
	{
		CaptionStyle = CaptionStyle.Default;
	}

	public bool ShouldSerializeCaptionTextStyle()
	{
		return m_captionTextStyle != CaptionTextStyle.Default;
	}

	public void ResetCaptionTextStyle()
	{
		CaptionTextStyle = CaptionTextStyle.Default;
	}

	public bool ShouldSerializeCaptionAlignment()
	{
		return m_captionAlignment != CaptionAlignment.Default;
	}

	public void ResetCaptionAlignment()
	{
		CaptionAlignment = CaptionAlignment.Default;
	}

	public bool ShouldSerializeCaptionFont()
	{
		return m_captionFont != null;
	}

	public void ResetCaptionFont()
	{
		CaptionFont = null;
	}

	public bool ShouldSerializeCaptionMinHeight()
	{
		return m_nCaptionMinHeight != -1;
	}

	public void ResetCaptionMinHeight()
	{
		CaptionMinHeight = -1;
	}

	public bool ShouldSerializeBorderStyle()
	{
		return m_borderStyle != ToolStripBorderStyle.Default;
	}

	public void ResetBorderStyle()
	{
		BorderStyle = ToolStripBorderStyle.Default;
	}

	public bool ShouldSerializeOfficeColorScheme()
	{
		return m_colorScheme != ToolStripEx.ColorScheme.Default;
	}

	public void ResetOfficeColorScheme()
	{
		OfficeColorScheme = ToolStripEx.ColorScheme.Default;
	}

	public bool ShouldSerializeMargin()
	{
		return Margin != new Padding(4, 0, 4, 0);
	}

	public void ResetMargin()
	{
		Margin = new Padding(4, 0, 4, 0);
	}
}
