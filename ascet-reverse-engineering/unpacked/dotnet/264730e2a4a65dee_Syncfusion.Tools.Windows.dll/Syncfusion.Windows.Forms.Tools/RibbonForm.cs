using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ProvideProperty("Shortcut", typeof(ToolStripItem))]
public class RibbonForm : Form, IExtenderProvider, IMessageFilter
{
	public enum ColorSchemeType
	{
		Managed,
		Silver,
		Blue,
		Black
	}

	public enum AppearanceType
	{
		Normal,
		Office2007
	}

	private class FrameLayoutInfo
	{
		private RibbonForm m_form;

		private Rectangle m_rcText = Rectangle.Empty;

		public Rectangle m_rcIcon = Rectangle.Empty;

		public Rectangle m_rcMin = Rectangle.Empty;

		public Rectangle m_rcMax = Rectangle.Empty;

		public Rectangle m_rcClose = Rectangle.Empty;

		public Rectangle m_rcHelpButton = Rectangle.Empty;

		private int m_iBorderWidth = 6;

		public Rectangle TextBox => m_rcText;

		public Rectangle IconBox => m_rcIcon;

		public Rectangle MinimizeBox => m_rcMin;

		public Rectangle MaximizeBox => m_rcMax;

		public Rectangle CloseBox => m_rcClose;

		public Rectangle HelpButton => m_rcHelpButton;

		public int BorderWidth => m_iBorderWidth;

		public FrameLayoutInfo(RibbonForm form)
		{
			m_form = form;
		}

		public void PerformLayout(int width, int height)
		{
			m_rcIcon = Rectangle.Empty;
			m_rcMin = Rectangle.Empty;
			m_rcMax = Rectangle.Empty;
			m_rcClose = Rectangle.Empty;
			m_rcHelpButton = Rectangle.Empty;
			m_rcText = Rectangle.Empty;
			Size smallIconSize = SystemInformation.SmallIconSize;
			bool isRightToLeft = m_form.IsRightToLeft;
			int num = (smallIconSize.Width & -2) + 3;
			int num2 = smallIconSize.Height + 2;
			int num3 = ((m_form.WindowState != FormWindowState.Minimized) ? (m_iBorderWidth + 1) : ((height - num2) / 2));
			int num4 = m_iBorderWidth;
			int num5 = width - m_iBorderWidth;
			if (m_form.FormBorderStyle == FormBorderStyle.None)
			{
				return;
			}
			if (m_form.ControlBox)
			{
				if (m_form.ShowIcon)
				{
					m_rcIcon.Size = smallIconSize;
					m_rcIcon.Y = num3;
					if (isRightToLeft)
					{
						num5 -= smallIconSize.Width;
						m_rcIcon.X = num5;
					}
					else
					{
						m_rcIcon.X = num4;
						num4 = m_rcIcon.Right;
					}
				}
				if (m_form.CloseBox)
				{
					m_rcClose.Y = num3;
					m_rcClose.Width = num;
					m_rcClose.Height = num2;
					if (isRightToLeft)
					{
						m_rcClose.X = num4;
						num4 = m_rcClose.Right;
					}
					else
					{
						num5 -= num;
						m_rcClose.X = num5;
					}
				}
				if (m_form.MaximizeBox || m_form.MinimizeBox)
				{
					m_rcMax = m_rcClose;
					m_rcMin = m_rcClose;
					if (isRightToLeft)
					{
						m_rcMax.X = num4;
						m_rcMin.X = m_rcMax.Right;
						num4 = m_rcMin.Right;
					}
					else
					{
						m_rcMax.X = num5 - num;
						m_rcMin.X = m_rcMax.X - num;
						num5 = m_rcMin.X;
					}
				}
				else if (m_form.HelpButton)
				{
					m_rcHelpButton = m_rcClose;
					if (isRightToLeft)
					{
						m_rcHelpButton.X = num4;
						num4 = m_rcHelpButton.Right;
					}
					else
					{
						num5 -= num;
						m_rcHelpButton.X = num5;
					}
				}
			}
			m_rcText = new Rectangle(num4, num3 + 2, num5 - num4, num2);
		}
	}

	private class CaptionManager : IDisposable
	{
		private const int MASK = 12582912;

		private RibbonForm m_form;

		private int m_style;

		public CaptionManager(RibbonForm form, bool bHideCaption)
		{
			if (form == null || form.Appearance != AppearanceType.Office2007 || !form.IsHandleCreated)
			{
				return;
			}
			IntPtr handle = form.Handle;
			m_style = WindowsAPI.GetWindowLong(handle, -16);
			if (bHideCaption)
			{
				if ((m_style & 0xC00000) != 0)
				{
					WindowsAPI.SetWindowLong(handle, -16, (IntPtr)(m_style & -12582913));
					m_form = form;
				}
			}
			else if ((m_style & 0xC00000) == 0)
			{
				WindowsAPI.SetWindowLong(handle, -16, (IntPtr)(m_style | 0xC00000));
				m_form = form;
			}
		}

		void IDisposable.Dispose()
		{
			if (m_form != null && m_form.IsHandleCreated)
			{
				WindowsAPI.SetWindowLong(m_form.Handle, -16, (IntPtr)m_style);
			}
		}
	}

	internal const int BORDER_WIDTH = 6;

	internal const int VERTEX_RADIUS = 8;

	private const int WMSZ_LEFT = 1;

	private const int WMSZ_RIGHT = 2;

	private const int WMSZ_TOP = 3;

	private const int WMSZ_TOPLEFT = 4;

	private const int WMSZ_TOPRIGHT = 5;

	private const int WMSZ_BOTTOM = 6;

	private const int WMSZ_BOTTOMLEFT = 7;

	private const int WMSZ_BOTTOMRIGHT = 8;

	private const int WMU_INVALIDATE = 1025;

	private const int WMU_SYSCOMMAND = 1026;

	private const SystemCommand SC_NONE = (SystemCommand)0;

	private const int CS_NOCLOSE = 512;

	private string mHelpButtonToolTip = SR.GetString("ToolStripItemHelpButton");

	private Image mHelpButtonImage;

	private AppearanceType m_Appearance = AppearanceType.Office2007;

	private ColorSchemeType m_ColorScheme;

	private Office12ColorTable m_ColorTable;

	private int m_TopLeftRadius = 8;

	private Padding m_Borders;

	private Padding m_DwmFrame;

	private int m_nTopHeight;

	private int m_nBottomHeight;

	private Hashtable m_hShortcuts;

	private bool m_bActiveState = true;

	private bool m_bSuppressSizing;

	private bool m_bCompositionEnabled;

	private SystemCommand m_selectedButton;

	private SystemCommand m_pressedButton;

	private SystemCommand m_highlightedButton;

	private FrameLayoutInfo m_frameLayout;

	private bool m_bMouseIsTracked;

	private static Blend m_blTitle;

	private static Blend m_blFrameButton;

	private static Blend m_blFrameButtonBorder;

	[Description("Gets or sets tooltip for help button")]
	public string HelpButtonToolTip
	{
		get
		{
			return mHelpButtonToolTip;
		}
		set
		{
			if (mHelpButtonToolTip != value)
			{
				mHelpButtonToolTip = value;
				Invalidate();
			}
		}
	}

	[Description("Gets or sets image for Help Button")]
	public Image HelpButtonImage
	{
		get
		{
			if (mHelpButtonImage != null)
			{
				return mHelpButtonImage;
			}
			return SystemImages.GetImageHelp();
		}
		set
		{
			if (mHelpButtonImage != value)
			{
				mHelpButtonImage = value;
				Invalidate();
			}
		}
	}

	[Description("Specifies the office color scheme of the Ribbon Form.")]
	public ColorSchemeType ColorScheme
	{
		get
		{
			return m_ColorScheme;
		}
		set
		{
			if (m_ColorScheme != value)
			{
				m_ColorScheme = value;
				UpdateColorScheme();
				UpdateRenderers();
				Invalidate(invalidateChildren: false);
			}
		}
	}

	[Description("Specifies the appearance of the form.")]
	public AppearanceType Appearance
	{
		get
		{
			return m_Appearance;
		}
		set
		{
			if (m_Appearance != value)
			{
				m_Appearance = value;
				OnAppearanceChanged();
			}
		}
	}

	[Description("Specifies the radius for the curved top left corner of the Ribbon Form.")]
	[DefaultValue(8)]
	public int TopLeftRadius
	{
		get
		{
			return m_TopLeftRadius;
		}
		set
		{
			if (m_TopLeftRadius != value)
			{
				m_TopLeftRadius = value;
				if (Appearance == AppearanceType.Office2007)
				{
					UpdateRegion();
				}
			}
		}
	}

	[Description("Office2007 borders")]
	public virtual Padding Borders
	{
		get
		{
			return m_Borders;
		}
		set
		{
			m_Borders = value;
			if (Appearance == AppearanceType.Office2007)
			{
				PerformLayout();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool AutoScroll
	{
		get
		{
			return false;
		}
		set
		{
			base.AutoScroll = false;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			Size minimumSize = base.MinimumSize;
			if (Appearance != AppearanceType.Normal && this.GetMinSize != null)
			{
				Size szProposal = Size.Empty;
				this.GetMinSize(ref szProposal);
				minimumSize.Width = Math.Max(minimumSize.Width, szProposal.Width);
				minimumSize.Height = Math.Max(minimumSize.Height, szProposal.Height + BordersInternal.Vertical);
			}
			return minimumSize;
		}
		set
		{
			base.MinimumSize = value;
		}
	}

	public override Rectangle DisplayRectangle
	{
		get
		{
			Rectangle displayRectangle = base.DisplayRectangle;
			displayRectangle.Y += m_nTopHeight;
			displayRectangle.Height -= m_nTopHeight + m_nBottomHeight;
			if (Appearance == AppearanceType.Office2007)
			{
				Padding bordersInternal = BordersInternal;
				displayRectangle.X += bordersInternal.Left;
				displayRectangle.Y += bordersInternal.Top;
				displayRectangle.Width -= bordersInternal.Horizontal;
				displayRectangle.Height -= bordersInternal.Vertical;
			}
			return displayRectangle;
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams cp = base.CreateParams;
			if (Appearance == AppearanceType.Office2007 && (base.TopLevel || base.IsMdiChild))
			{
				UpdateStartupBounds(ref cp);
			}
			return cp;
		}
	}

	internal bool ActiveState
	{
		get
		{
			if (base.IsMdiChild)
			{
				Form mdiParent = base.MdiParent;
				if (mdiParent != null && mdiParent.MdiChildren.Length == 1)
				{
					return true;
				}
			}
			return m_bActiveState;
		}
		set
		{
			if (m_bActiveState != value)
			{
				m_bActiveState = value;
				InvalidateBorder();
			}
		}
	}

	internal bool CompositionEnabled
	{
		get
		{
			if (m_bCompositionEnabled)
			{
				return base.TopLevel;
			}
			return false;
		}
	}

	internal Padding BordersInternal
	{
		get
		{
			Padding borders = Borders;
			if (Appearance == AppearanceType.Office2007 && CompositionEnabled)
			{
				borders.Left = 0;
				borders.Right = 0;
				borders.Bottom = 0;
			}
			return borders;
		}
	}

	internal Padding DwmFrame
	{
		get
		{
			return m_DwmFrame;
		}
		set
		{
			if (m_DwmFrame != value)
			{
				m_DwmFrame = value;
				UpdateFrame();
			}
		}
	}

	internal Padding SystemFrame
	{
		get
		{
			if (base.IsHandleCreated)
			{
				RECT lpRect = new RECT(0, 0, 0, 0);
				int windowLong = WindowsAPI.GetWindowLong(base.Handle, -16);
				int windowLong2 = WindowsAPI.GetWindowLong(base.Handle, -20);
				if (WindowsAPI.AdjustWindowRectEx(ref lpRect, windowLong, bMenu: false, windowLong2) != 0)
				{
					return new Padding(-lpRect.left, -lpRect.top, lpRect.right, lpRect.bottom);
				}
			}
			return Padding.Empty;
		}
	}

	internal Rectangle DwmButtonBounds
	{
		get
		{
			if (base.IsHandleCreated && CompositionEnabled)
			{
				RECT rc = default(RECT);
				DwmAPI.DwmGetWindowAttribute(base.Handle, DwmAPI.DWMWINDOWATTRIBUTE.DWMWA_CAPTION_BUTTON_BOUNDS, ref rc, Marshal.SizeOf((object)rc));
				Rectangle result = new Rectangle(rc.left, rc.top, rc.Width, rc.Height);
				if (IsRightToLeft)
				{
					result.X = base.Width - result.Right;
				}
				return result;
			}
			return Rectangle.Empty;
		}
	}

	internal bool IsRightToLeft
	{
		get
		{
			bool result = false;
			if (base.IsHandleCreated)
			{
				int windowLong = WindowsAPI.GetWindowLong(base.Handle, -20);
				result = (windowLong & 0x400000) != 0;
			}
			return result;
		}
	}

	private SystemCommand SelectedButton
	{
		get
		{
			return m_selectedButton;
		}
		set
		{
			if (m_selectedButton != value)
			{
				m_selectedButton = value;
				if (m_pressedButton != 0 && m_pressedButton != value)
				{
					value = (SystemCommand)0;
				}
				if (m_highlightedButton != value)
				{
					m_highlightedButton = value;
					InvalidateFrame();
				}
			}
		}
	}

	private SystemCommand PressedButton
	{
		get
		{
			return m_pressedButton;
		}
		set
		{
			if (m_pressedButton != value)
			{
				m_pressedButton = value;
				if (value == (SystemCommand)0)
				{
					value = m_selectedButton;
				}
				m_highlightedButton = value;
				InvalidateFrame();
			}
		}
	}

	private SystemCommand HighlightedButton
	{
		get
		{
			return m_highlightedButton;
		}
		set
		{
			if (m_highlightedButton != value)
			{
				m_highlightedButton = value;
				InvalidateFrame();
			}
		}
	}

	private FrameLayoutInfo FrameLayout
	{
		get
		{
			if (m_frameLayout == null)
			{
				m_frameLayout = new FrameLayoutInfo(this);
				m_frameLayout.PerformLayout(base.Width, base.Height);
			}
			return m_frameLayout;
		}
	}

	internal bool CloseBox => 0 == (CreateParams.ClassStyle & 0x200);

	public event GetMinSizeHandler GetMinSize;

	internal event GetMarginsHandler GetMargins;

	internal event EventHandler ShowSystemMenu;

	static RibbonForm()
	{
		m_blTitle = new Blend();
		m_blTitle.Positions = new float[4] { 0f, 0.27f, 0.27f, 1f };
		m_blTitle.Factors = new float[4] { 0f, 0.2f, 1f, 0f };
		m_blFrameButton = new Blend();
		m_blFrameButton.Positions = new float[4] { 0f, 0.5f, 0.5f, 1f };
		m_blFrameButton.Factors = new float[4] { 0.2f, 0f, 1f, 0.5f };
		m_blFrameButtonBorder = new Blend();
		m_blFrameButtonBorder.Positions = new float[3] { 0f, 0.5f, 1f };
		m_blFrameButtonBorder.Factors = new float[3] { 0.5f, 1f, 0.5f };
	}

	public RibbonForm()
	{
		m_hShortcuts = new Hashtable();
		m_Borders = new Padding(6, 1, 6, 6);
		m_DwmFrame = new Padding(0, 0, 0, 0);
		m_bCompositionEnabled = DwmAPI.IsCompositionEnabled;
		DoubleBuffered = true;
		UpdateColorScheme();
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	protected virtual void OnAppearanceChanged()
	{
		base.Region = null;
		RecreateHandle();
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (Appearance == AppearanceType.Office2007)
		{
			int num = base.CreateParams.Style & 0xC00000;
			if (num != 0)
			{
				IntPtr handle = base.Handle;
				RECT lParam = (RECT)base.Bounds;
				int windowLong = WindowsAPI.GetWindowLong(handle, -16);
				WindowsAPI.SetWindowLong(handle, -16, (IntPtr)(windowLong | num));
				WindowsAPI.DefWindowProc(handle, Msg.WM_NCCALCSIZE, IntPtr.Zero, ref lParam);
				WindowsAPI.SetWindowLong(handle, -16, (IntPtr)windowLong);
			}
			UpdateRegion();
		}
		Application.AddMessageFilter(this);
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		Application.RemoveMessageFilter(this);
		base.OnHandleDestroyed(e);
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if (GetShortcutTarget(keyData) is ToolStripItem item)
		{
			ProcessShortcut(item);
			return true;
		}
		return base.ProcessDialogKey(keyData);
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (e.Control is IDockExtended dockExtended)
		{
			switch (dockExtended.Dock)
			{
			case DockStyleEx.TopMost:
				m_nTopHeight += e.Control.Height;
				break;
			case DockStyleEx.BottomMost:
				m_nBottomHeight += e.Control.Height;
				break;
			}
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		if (e.Control is IDockExtended dockExtended)
		{
			switch (dockExtended.Dock)
			{
			case DockStyleEx.TopMost:
				m_nTopHeight -= e.Control.Height;
				break;
			case DockStyleEx.BottomMost:
				m_nBottomHeight -= e.Control.Height;
				break;
			}
		}
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (!base.IsHandleCreated)
		{
			return;
		}
		if (!AutoSize)
		{
			PerformExtendedLayout();
		}
		base.OnLayout(levent);
		if (CompositionEnabled)
		{
			Padding pdMargings = Borders;
			Padding systemFrame = SystemFrame;
			pdMargings.Left = Math.Max(0, pdMargings.Left - systemFrame.Left);
			pdMargings.Right = Math.Max(0, pdMargings.Right - systemFrame.Right);
			pdMargings.Top = Math.Max(0, pdMargings.Top - systemFrame.Top);
			pdMargings.Bottom = Math.Max(0, pdMargings.Bottom - systemFrame.Bottom);
			if (this.GetMargins != null)
			{
				this.GetMargins(ref pdMargings);
			}
			DwmFrame = pdMargings;
		}
		WindowsAPI.PostMessage(base.Handle, 1025, 0, 0);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (Appearance == AppearanceType.Office2007)
		{
			DrawBorders(e);
		}
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 133:
			if (OnWmNcPaint(ref m))
			{
				return;
			}
			break;
		case 131:
			if (OnNcCalcSize(ref m))
			{
				return;
			}
			break;
		case 134:
			if (OnNcActivate(ref m))
			{
				return;
			}
			break;
		case 132:
			if (OnNcHitTest(ref m))
			{
				return;
			}
			break;
		case 160:
			if (OnWmNcMouseMove(ref m))
			{
				return;
			}
			break;
		case 674:
			if (OnWmNcMouseLeave(ref m))
			{
				return;
			}
			break;
		case 161:
			if (OnWmNcLButtonDown(ref m))
			{
				return;
			}
			break;
		case 512:
			if (OnWmMouseMove(ref m))
			{
				return;
			}
			break;
		case 514:
			if (OnWmLButtonUp(ref m))
			{
				return;
			}
			break;
		case 533:
			if (OnWmCaptureChanged(ref m))
			{
				return;
			}
			break;
		case 36:
			if (OnGetMinMaxInfo(ref m))
			{
				return;
			}
			break;
		case 70:
			if (OnWmWindowPosChanging(ref m))
			{
				return;
			}
			break;
		case 71:
			if (OnWmWindowPosChanged(ref m))
			{
				return;
			}
			break;
		case 32:
			if (OnWmSetCursor(ref m))
			{
				return;
			}
			break;
		case 274:
			if (OnWmSysSommand(ref m))
			{
				return;
			}
			break;
		case 12:
		case 128:
			if (!CompositionEnabled)
			{
				BaseWndProc(ref m);
				return;
			}
			break;
		case 798:
			OnDwmCompositionChanged(ref m);
			break;
		case 1025:
			Invalidate(m.WParam != IntPtr.Zero);
			return;
		case 1026:
			WindowsAPI.SendMessage(base.Handle, 274, m.WParam, m.LParam);
			return;
		}
		base.WndProc(ref m);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		if (Appearance == AppearanceType.Office2007)
		{
			UpdateRegion();
		}
	}

	protected override void OnActivated(EventArgs e)
	{
		ActiveState = true;
		base.OnActivated(e);
	}

	protected override void OnDeactivate(EventArgs e)
	{
		ActiveState = false;
		base.OnDeactivate(e);
	}

	protected override void SetClientSizeCore(int x, int y)
	{
		if (Appearance == AppearanceType.Office2007)
		{
			base.Size = new Size(x, y);
			UpdateBounds(base.Left, base.Top, x, y, x, y);
		}
		else
		{
			base.SetClientSizeCore(x, y);
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (!m_bSuppressSizing)
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}

	private bool OnWmNcPaint(ref Message m)
	{
		if (Appearance == AppearanceType.Office2007)
		{
			if (!CompositionEnabled)
			{
				if (base.WindowState == FormWindowState.Minimized)
				{
					IntPtr windowDC = WindowsAPI.GetWindowDC(base.Handle);
					try
					{
						if (windowDC != IntPtr.Zero)
						{
							IntPtr intPtr = WindowsAPI.CreateCompatibleDC(windowDC);
							if (intPtr != IntPtr.Zero)
							{
								RECT rect = default(RECT);
								WindowsAPI.GetWindowRect(base.Handle, ref rect);
								IntPtr intPtr2 = WindowsAPI.CreateCompatibleBitmap(windowDC, rect.Width, rect.Height);
								if (intPtr2 != IntPtr.Zero)
								{
									WindowsAPI.SelectObject(intPtr, intPtr2);
									using (Graphics g = Graphics.FromHdc(intPtr))
									{
										DrawFrame(g, new Rectangle(0, 0, rect.Width, rect.Height));
										WindowsAPI.BitBlt(windowDC, 0, 0, rect.Width, rect.Height, intPtr, 0, 0, 13369376u);
									}
									WindowsAPI.DeleteObject(intPtr2);
								}
								WindowsAPI.DeleteDC(intPtr);
							}
						}
					}
					finally
					{
						WindowsAPI.ReleaseDC(base.Handle, windowDC);
					}
				}
				m.Result = IntPtr.Zero;
				return true;
			}
			IntPtr windowDC2 = WindowsAPI.GetWindowDC(base.Handle);
			try
			{
				if (windowDC2 != IntPtr.Zero)
				{
					RECT rect2 = default(RECT);
					if (WindowsAPI.GetWindowRect(base.Handle, ref rect2))
					{
						IntPtr intPtr3 = WindowsAPI.CreateSolidBrush(0u);
						if (intPtr3 != IntPtr.Zero)
						{
							int num = rect2.Width;
							int num2 = rect2.Height;
							Padding borders = Borders;
							WindowsAPI.ExcludeClipRect(windowDC2, borders.Left, 0, num - borders.Right, num2 - borders.Bottom);
							RECT rect3 = new RECT(0, 0, num, num2);
							WindowsAPI.FillRect(windowDC2, ref rect3, intPtr3);
							WindowsAPI.DeleteObject(intPtr3);
						}
					}
				}
			}
			finally
			{
				WindowsAPI.ReleaseDC(base.Handle, windowDC2);
			}
		}
		return false;
	}

	private bool OnNcHitTest(ref Message m)
	{
		bool result = false;
		if (Appearance != AppearanceType.Normal)
		{
			HitTest hitTest = HitTest.HTNOWHERE;
			if (CompositionEnabled)
			{
				IntPtr plResult = IntPtr.Zero;
				DwmAPI.DwmDefWindowProc(base.Handle, m.Msg, m.WParam, m.LParam, ref plResult);
				switch ((HitTest)(int)plResult)
				{
				case HitTest.HTMINBUTTON:
				case HitTest.HTMAXBUTTON:
				case HitTest.HTCLOSE:
				case HitTest.HTHELP:
					hitTest = (HitTest)(int)plResult;
					break;
				}
			}
			if (hitTest == HitTest.HTNOWHERE)
			{
				Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
				hitTest = GetHitTest(pointFromLPARAM);
			}
			if (hitTest != HitTest.HTNOWHERE)
			{
				m.Result = (IntPtr)(long)hitTest;
				result = true;
			}
		}
		return result;
	}

	private bool OnNcCalcSize(ref Message m)
	{
		bool result = false;
		if (!IsMinimized() && Appearance == AppearanceType.Office2007)
		{
			if (CompositionEnabled)
			{
				Padding borders = Borders;
				RECT rECT = (RECT)m.GetLParam(typeof(RECT));
				rECT.left += borders.Left;
				rECT.right -= borders.Right;
				rECT.bottom -= borders.Bottom;
				Marshal.StructureToPtr((object)rECT, m.LParam, fDeleteOld: false);
			}
			m.Result = IntPtr.Zero;
			result = true;
		}
		return result;
	}

	private bool OnNcActivate(ref Message m)
	{
		bool result = false;
		if (Appearance == AppearanceType.Office2007)
		{
			if (m.WParam == IntPtr.Zero)
			{
				m_highlightedButton = (SystemCommand)0;
			}
			if (IsMinimized())
			{
				InvalidateFrame();
			}
			m.Result = (IntPtr)1;
			if (base.MdiParent != null && !base.TopMost)
			{
				return result;
			}
			result = !CompositionEnabled;
		}
		return result;
	}

	private bool OnWmNcMouseMove(ref Message m)
	{
		if (Appearance == AppearanceType.Office2007 && IsMinimized())
		{
			SelectedButton = GetButtonId(m.LParam);
			if (!m_bMouseIsTracked)
			{
				TRACKMOUSEEVENTS tme = default(TRACKMOUSEEVENTS);
				tme.cbSize = (uint)Marshal.SizeOf((object)tme);
				tme.hWnd = base.Handle;
				tme.dwFlags = 18u;
				WindowsAPI.TrackMouseEvent(ref tme);
				m_bMouseIsTracked = true;
			}
			return true;
		}
		return false;
	}

	private bool OnWmNcMouseLeave(ref Message m)
	{
		SelectedButton = (SystemCommand)0;
		m_bMouseIsTracked = false;
		return false;
	}

	private bool OnWmNcLButtonDown(ref Message m)
	{
		if (Appearance == AppearanceType.Office2007)
		{
			if (!IsMinimized())
			{
				switch ((HitTest)(int)m.WParam)
				{
				case HitTest.HTCAPTION:
					if (base.WindowState != FormWindowState.Maximized)
					{
						MoveForm(m.LParam);
					}
					break;
				case HitTest.HTLEFT:
					ResizeForm(1, m.LParam);
					break;
				case HitTest.HTTOP:
					ResizeForm(3, m.LParam);
					break;
				case HitTest.HTRIGHT:
					ResizeForm(2, m.LParam);
					break;
				case HitTest.HTBOTTOM:
					ResizeForm(6, m.LParam);
					break;
				case HitTest.HTTOPLEFT:
					ResizeForm(4, m.LParam);
					break;
				case HitTest.HTTOPRIGHT:
					ResizeForm(5, m.LParam);
					break;
				case HitTest.HTBOTTOMLEFT:
					ResizeForm(7, m.LParam);
					break;
				case HitTest.HTBOTTOMRIGHT:
					ResizeForm(8, m.LParam);
					break;
				case HitTest.HTMINBUTTON:
				case HitTest.HTMAXBUTTON:
				case HitTest.HTCLOSE:
				case HitTest.HTHELP:
					base.WndProc(ref m);
					break;
				}
			}
			else
			{
				SystemCommand buttonId = GetButtonId(m.LParam);
				if (buttonId != 0)
				{
					if (IsButtonEnabled(buttonId))
					{
						PressedButton = buttonId;
						base.Capture = true;
					}
				}
				else
				{
					WindowsAPI.SendMessage(m.HWnd, 274, 61458, m.LParam);
				}
			}
			m.Result = IntPtr.Zero;
			return true;
		}
		return false;
	}

	private bool OnWmMouseMove(ref Message m)
	{
		if (Appearance == AppearanceType.Office2007 && IsMinimized() && base.Capture)
		{
			Point p = new Point(WindowsAPI.LOW_ORDER(m.LParam), WindowsAPI.HIGH_ORDER(m.LParam));
			SelectedButton = GetButtonId(PointToScreen(p));
		}
		return false;
	}

	private bool OnWmLButtonUp(ref Message m)
	{
		if (Appearance == AppearanceType.Office2007 && IsMinimized() && PressedButton != 0)
		{
			Point p = new Point(WindowsAPI.LOW_ORDER(m.LParam), WindowsAPI.HIGH_ORDER(m.LParam));
			SystemCommand buttonId = GetButtonId(PointToScreen(p));
			if (buttonId == PressedButton)
			{
				WindowsAPI.PostMessage(base.Handle, 1026, (int)buttonId, 0);
			}
		}
		return false;
	}

	private bool OnWmCaptureChanged(ref Message m)
	{
		PressedButton = (SystemCommand)0;
		return false;
	}

	private bool OnGetMinMaxInfo(ref Message m)
	{
		base.WndProc(ref m);
		if (base.TopLevel)
		{
			Screen screen = Screen.FromHandle(m.HWnd);
			Rectangle rc;
			if (screen != null && screen.Primary)
			{
				rc = screen.WorkingArea;
				AdjustWorkingArea(ref rc);
			}
			else
			{
				rc = Screen.PrimaryScreen.Bounds;
			}
			MINMAXINFO mINMAXINFO = (MINMAXINFO)Marshal.PtrToStructure(m.LParam, typeof(MINMAXINFO));
			mINMAXINFO.ptMaxPosition.x = 0;
			mINMAXINFO.ptMaxPosition.y = 0;
			mINMAXINFO.ptMaxSize.x = rc.Width;
			mINMAXINFO.ptMaxSize.y = rc.Height;
			Marshal.StructureToPtr((object)mINMAXINFO, m.LParam, fDeleteOld: false);
			m.Result = IntPtr.Zero;
		}
		else if (base.IsMdiChild)
		{
			MINMAXINFO mINMAXINFO2 = (MINMAXINFO)Marshal.PtrToStructure(m.LParam, typeof(MINMAXINFO));
			Rectangle mdiMaxBounds = GetMdiMaxBounds();
			mINMAXINFO2.ptMaxPosition.x = mdiMaxBounds.Left;
			mINMAXINFO2.ptMaxPosition.y = mdiMaxBounds.Top;
			mINMAXINFO2.ptMaxSize.x = mdiMaxBounds.Width;
			mINMAXINFO2.ptMaxSize.y = mdiMaxBounds.Height;
			Marshal.StructureToPtr((object)mINMAXINFO2, m.LParam, fDeleteOld: false);
			m.Result = IntPtr.Zero;
		}
		return true;
	}

	private bool OnWmWindowPosChanging(ref Message m)
	{
		bool result = false;
		if (Appearance == AppearanceType.Office2007 && base.IsMdiChild && IsMaximized())
		{
			SetWindowPosFlags setWindowPosFlags = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE;
			WINDOWPOS wINDOWPOS = (WINDOWPOS)m.GetLParam(typeof(WINDOWPOS));
			if ((wINDOWPOS.flags & setWindowPosFlags) != setWindowPosFlags)
			{
				base.WndProc(ref m);
				Rectangle mdiMaxBounds = GetMdiMaxBounds();
				wINDOWPOS.x = mdiMaxBounds.Left;
				wINDOWPOS.y = mdiMaxBounds.Top;
				wINDOWPOS.cx = mdiMaxBounds.Width;
				wINDOWPOS.cy = mdiMaxBounds.Height;
				Marshal.StructureToPtr((object)wINDOWPOS, m.LParam, fDeleteOld: false);
				m.Result = IntPtr.Zero;
				result = true;
			}
		}
		return result;
	}

	private bool OnWmWindowPosChanged(ref Message m)
	{
		bool result = false;
		if (Appearance == AppearanceType.Office2007 && (((WINDOWPOS)m.GetLParam(typeof(WINDOWPOS))).flags & SetWindowPosFlags.SWP_NOSIZE) != SetWindowPosFlags.SWP_NOSIZE)
		{
			m_bSuppressSizing = true;
			base.WndProc(ref m);
			Invalidate();
			m_bSuppressSizing = false;
			UpdateRegion();
			m.Result = IntPtr.Zero;
			result = true;
		}
		return result;
	}

	private bool OnWmSetCursor(ref Message m)
	{
		if (Appearance == AppearanceType.Office2007)
		{
			IntPtr handle = Cursors.Default.Handle;
			HitTest hitTest = (HitTest)WindowsAPI.LOW_ORDER((int)m.LParam);
			if (hitTest != HitTest.HTCLIENT)
			{
				if (IsSizeable())
				{
					switch (hitTest)
					{
					case HitTest.HTTOP:
					case HitTest.HTBOTTOM:
						handle = Cursors.SizeNS.Handle;
						break;
					case HitTest.HTLEFT:
					case HitTest.HTRIGHT:
						handle = Cursors.SizeWE.Handle;
						break;
					case HitTest.HTTOPLEFT:
					case HitTest.HTBOTTOMRIGHT:
						handle = Cursors.SizeNWSE.Handle;
						break;
					case HitTest.HTTOPRIGHT:
					case HitTest.HTBOTTOMLEFT:
						handle = Cursors.SizeNESW.Handle;
						break;
					}
				}
			}
			else
			{
				handle = Cursor.Handle;
			}
			WindowsAPI.SetCursor(handle);
			m.Result = (IntPtr)1;
			return true;
		}
		return false;
	}

	private bool OnWmSysSommand(ref Message m)
	{
		if (Appearance == AppearanceType.Office2007)
		{
			switch ((int)m.WParam & 0xFFF0)
			{
			case 61696:
				if ((int)m.LParam == 32 && this.ShowSystemMenu != null)
				{
					this.ShowSystemMenu(this, EventArgs.Empty);
				}
				m.Result = IntPtr.Zero;
				return true;
			case 61584:
				m.Result = IntPtr.Zero;
				return true;
			}
		}
		return false;
	}

	private void OnDwmCompositionChanged(ref Message m)
	{
		m_bCompositionEnabled = DwmAPI.IsCompositionEnabled;
		base.Region = null;
		RecreateHandle();
	}

	public bool CanExtend(object extendee)
	{
		return extendee is ToolStripItem;
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		bool result = false;
		Msg msg = (Msg)m.Msg;
		if (msg == Msg.WM_NCLBUTTONDOWN && Appearance == AppearanceType.Office2007 && WindowsAPI.GetParent(m.HWnd) == base.Handle && (int)m.WParam == 17 && Focused)
		{
			WindowsAPI.SendMessage(base.Handle, 274, 61448, m.LParam);
			m.Result = IntPtr.Zero;
			result = true;
		}
		return result;
	}

	private void InvalidateBorder()
	{
		if (Appearance == AppearanceType.Office2007)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			clientRectangle.Y += m_nTopHeight;
			clientRectangle.Height -= m_nTopHeight + m_nBottomHeight;
			using Region region = new Region(clientRectangle);
			Padding bordersInternal = BordersInternal;
			clientRectangle.X += bordersInternal.Left;
			clientRectangle.Y += bordersInternal.Top;
			clientRectangle.Width -= bordersInternal.Horizontal;
			clientRectangle.Height -= bordersInternal.Vertical;
			region.Exclude(clientRectangle);
			Invalidate(region, invalidateChildren: false);
		}
	}

	private void UpdateFrame()
	{
		if (base.IsHandleCreated && CompositionEnabled)
		{
			DwmAPI.MARGINS pMarInset = new DwmAPI.MARGINS
			{
				cxLeftWidth = m_DwmFrame.Left,
				cxRightWidth = m_DwmFrame.Right,
				cyTopHeight = m_DwmFrame.Top,
				cyBottomHeight = m_DwmFrame.Bottom
			};
			DwmAPI.DwmExtendFrameIntoClientArea(base.Handle, ref pMarInset);
		}
	}

	private void UpdateRegion()
	{
		if (!base.IsHandleCreated || CompositionEnabled)
		{
			return;
		}
		Region region = null;
		RECT rect = default(RECT);
		IntPtr handle = base.Handle;
		if (WindowsAPI.GetWindowRect(handle, ref rect))
		{
			if (!IsMaximized())
			{
				region = GetFormRegion(new Rectangle(Point.Empty, rect.Size));
			}
			else
			{
				Screen screen = Screen.FromHandle(handle);
				if (screen != null)
				{
					Rectangle rect2 = new Rectangle(rect.left, rect.top, rect.Width, rect.Height);
					Rectangle workingArea = screen.WorkingArea;
					workingArea.Intersect(rect2);
					workingArea.Offset(-rect2.X, -rect2.Y);
					region = new Region(workingArea);
				}
			}
		}
		base.Region = region;
	}

	private void UpdateColorScheme()
	{
		switch (m_ColorScheme)
		{
		case ColorSchemeType.Managed:
			m_ColorTable = Office12ColorTable.ManagedColors;
			break;
		case ColorSchemeType.Silver:
			m_ColorTable = new Office12ColorTable();
			break;
		case ColorSchemeType.Blue:
			m_ColorTable = new OfficeBlue();
			break;
		case ColorSchemeType.Black:
			m_ColorTable = new OfficeBlack();
			break;
		}
	}

	private GraphicsPath GetFormPath(Rectangle rc)
	{
		GraphicsPath graphicsPath = null;
		if (base.IsHandleCreated)
		{
			graphicsPath = new GraphicsPath();
			int num = ((base.WindowState == FormWindowState.Minimized) ? 8 : TopLeftRadius);
			if (RightToLeft == RightToLeft.No)
			{
				int num2 = 16;
				int left = rc.Left;
				int top = rc.Top;
				graphicsPath.AddArc(left - 1, top - 1, 2 * num, 2 * num, 180f, 90f);
				graphicsPath.AddLine(left + num, top, rc.Right - 8, 0);
				graphicsPath.AddArc(rc.Right - num2, top - 1, num2, num2, -90f, 90f);
				graphicsPath.AddLine(rc.Right, 8, rc.Right, rc.Bottom - 8);
				graphicsPath.AddArc(rc.Right - num2, rc.Bottom - num2, num2, num2, 0f, 90f);
				graphicsPath.AddLine(rc.Right - 8, rc.Bottom, 8, rc.Bottom);
				graphicsPath.AddArc(left - 1, rc.Bottom - num2, num2, num2, 90f, 90f);
				graphicsPath.AddLine(left, rc.Bottom - num2, left, top + num);
				graphicsPath.CloseFigure();
			}
			else
			{
				int num3 = 16;
				int right = rc.Right;
				int top2 = rc.Top;
				graphicsPath.AddArc(right - 2 * num, top2 - 1, 2 * num, 2 * num, 0f, -90f);
				graphicsPath.AddLine(right - num, top2, rc.Left + 8, 0);
				graphicsPath.AddArc(rc.Left, top2 - 1, num3, num3, 270f, -90f);
				graphicsPath.AddLine(rc.X, 8, rc.X, rc.Bottom - 8);
				graphicsPath.AddArc(rc.X - 1, rc.Bottom - num3, num3, num3, 180f, -90f);
				graphicsPath.AddLine(rc.Left + 8, rc.Bottom, rc.Right - 8, rc.Bottom);
				graphicsPath.AddArc(rc.Right - num3, rc.Bottom - num3, num3, num3, 90f, -90f);
				graphicsPath.AddLine(right, rc.Bottom - num3, right, top2 + num);
				graphicsPath.CloseFigure();
			}
		}
		return graphicsPath;
	}

	private Region GetFormRegion(Rectangle rc)
	{
		Region result = null;
		if (base.IsHandleCreated)
		{
			GraphicsPath formPath = GetFormPath(rc);
			if (formPath != null)
			{
				result = new Region(formPath);
				formPath.Dispose();
			}
		}
		return result;
	}

	internal bool IsMaximized()
	{
		WindowStyles windowLong = (WindowStyles)WindowsAPI.GetWindowLong(base.Handle, -16);
		return (windowLong & WindowStyles.WS_MAXIMIZE) != 0;
	}

	private bool IsMinimized()
	{
		WindowStyles windowLong = (WindowStyles)WindowsAPI.GetWindowLong(base.Handle, -16);
		return (windowLong & WindowStyles.WS_MINIMIZE) != 0;
	}

	private bool IsSizeable()
	{
		bool result = false;
		if (base.WindowState == FormWindowState.Normal)
		{
			WindowStyles windowLong = (WindowStyles)WindowsAPI.GetWindowLong(base.Handle, -16);
			result = (windowLong & WindowStyles.WS_THICKFRAME) == WindowStyles.WS_THICKFRAME;
		}
		return result;
	}

	private void ProcessShortcut(ToolStripItem item)
	{
		if (item is IShortcutSupport)
		{
			((IShortcutSupport)item).ProcessShortcut();
		}
		else if (item is ToolStripControlHost)
		{
			((ToolStripControlHost)item).Control.Select();
		}
		else
		{
			item.PerformClick();
		}
	}

	private void UpdateRenderers()
	{
		foreach (Control control in base.Controls)
		{
			if (control is RibbonControlAdv ribbonControlAdv)
			{
				ribbonControlAdv.UpdateRenderers();
			}
			if (control is StatusStripEx statusStripEx)
			{
				statusStripEx.UpdateRenderer();
			}
		}
	}

	internal object GetShortcutTarget(object key)
	{
		if (m_hShortcuts.Contains(key))
		{
			return m_hShortcuts[key];
		}
		return null;
	}

	internal HitTest GetHitTest(Point pt)
	{
		HitTest result = HitTest.HTNOWHERE;
		if (IsSizeable())
		{
			RECT rect = default(RECT);
			WindowsAPI.GetWindowRect(base.Handle, ref rect);
			Rectangle rectangle = rect;
			if (rectangle.Contains(pt))
			{
				int num = rectangle.Bottom - pt.Y;
				int num2 = rectangle.Right - pt.X;
				int num3 = pt.X - rectangle.Left;
				int num4 = pt.Y - rectangle.Top;
				if (num4 <= TopLeftRadius && num3 <= TopLeftRadius && RightToLeft == RightToLeft.No)
				{
					int num5 = TopLeftRadius - num3;
					int num6 = TopLeftRadius - num4;
					int num7 = (int)Math.Sqrt(num5 * num5 + num6 * num6);
					if (TopLeftRadius - num7 < 12)
					{
						result = HitTest.HTTOPLEFT;
					}
				}
				else if (num4 <= TopLeftRadius && num2 <= TopLeftRadius && RightToLeft == RightToLeft.Yes)
				{
					int num8 = TopLeftRadius - num2;
					int num9 = TopLeftRadius - num4;
					int num10 = (int)Math.Sqrt(num8 * num8 + num9 * num9);
					if (TopLeftRadius - num10 < 12)
					{
						result = HitTest.HTTOPRIGHT;
					}
				}
				else if (num4 <= 8)
				{
					if (num3 <= 8 && RightToLeft == RightToLeft.Yes)
					{
						result = HitTest.HTTOPLEFT;
					}
					else if (num2 <= 8 && RightToLeft == RightToLeft.No)
					{
						result = HitTest.HTTOPRIGHT;
					}
					else if (num4 <= 12)
					{
						result = HitTest.HTTOP;
					}
				}
				else if (num <= 8)
				{
					if (num3 <= 8)
					{
						result = HitTest.HTBOTTOMLEFT;
					}
					else if (num2 <= 8)
					{
						result = HitTest.HTBOTTOMRIGHT;
					}
					else if (num <= 12)
					{
						result = HitTest.HTBOTTOM;
					}
				}
				else if (num3 <= 12)
				{
					result = HitTest.HTLEFT;
				}
				else if (num2 <= 12)
				{
					result = HitTest.HTRIGHT;
				}
			}
		}
		return result;
	}

	private void PerformExtendedLayout()
	{
		bool compositionEnabled = CompositionEnabled;
		Size clientSize = base.ClientSize;
		Padding bordersInternal = BordersInternal;
		int num = 0;
		int num2 = 0;
		int num3 = clientSize.Height - bordersInternal.Bottom;
		int num4 = ((!compositionEnabled) ? 1 : (-(m_Borders.Left - 3)));
		int num5 = clientSize.Width - 2 * num4;
		int left = bordersInternal.Left;
		int num6 = clientSize.Width - bordersInternal.Horizontal;
		ArrayList arrayList = new ArrayList();
		foreach (Control control in base.Controls)
		{
			if (control is IDockExtended dockExtended)
			{
				switch (dockExtended.Dock)
				{
				case DockStyleEx.TopMost:
				{
					int num8 = (control.AutoSize ? control.GetPreferredSize(Size.Empty).Height : control.Height);
					control.SetBounds(num4, num, num5, num8);
					num += num8;
					arrayList.Add(control);
					break;
				}
				case DockStyleEx.BottomMost:
				{
					int num7 = (control.AutoSize ? control.GetPreferredSize(Size.Empty).Height : control.Height);
					num3 -= num7;
					num2 += num7;
					control.SetBounds(left, num3, num6, num7);
					arrayList.Add(control);
					break;
				}
				}
			}
		}
		m_nTopHeight = num;
		m_nBottomHeight = num2;
		if (arrayList.Count <= 0)
		{
			return;
		}
		LayoutEngine layoutEngine = LayoutEngine;
		if (layoutEngine != null)
		{
			foreach (Control item in arrayList)
			{
				layoutEngine.InitLayout(item, BoundsSpecified.All);
			}
		}
		arrayList.Clear();
	}

	private void UpdateStartupBounds(ref CreateParams cp)
	{
		int num = base.Width;
		int num2 = base.Height;
		Size maximumSize = MaximumSize;
		Size minimumSize = MinimumSize;
		if (maximumSize.Width > 0 && num > maximumSize.Width)
		{
			num = maximumSize.Width;
		}
		if (maximumSize.Height > 0 && num2 > maximumSize.Height)
		{
			num2 = maximumSize.Height;
		}
		if (num < minimumSize.Width)
		{
			num = minimumSize.Width;
		}
		if (num2 < minimumSize.Height)
		{
			num2 = minimumSize.Height;
		}
		if (cp.Width != num || cp.Height != num2)
		{
			if (base.StartPosition == FormStartPosition.CenterScreen)
			{
				cp.X += (cp.Width - num) / 2;
				cp.Y += (cp.Height - num2) / 2;
			}
			cp.Width = num;
			cp.Height = num2;
		}
	}

	private void AdjustWorkingArea(ref Rectangle rc)
	{
		APPBARDATA pData = default(APPBARDATA);
		pData.cbSize = (uint)Marshal.SizeOf((object)pData);
		ABState aBState = (ABState)(int)WindowsAPI.SHAppBarMessage(4, ref pData);
		if ((aBState & ABState.ABS_AUTOHIDE) == ABState.ABS_AUTOHIDE)
		{
			rc.Height--;
		}
	}

	private void MoveForm(IntPtr lParam)
	{
		WindowsAPI.SendMessage(base.Handle, Msg.WM_SYSCOMMAND, 61458, (int)lParam);
	}

	private void ResizeForm(int direction, IntPtr lParam)
	{
		if (IsSizeable())
		{
			WindowsAPI.SendMessage(base.Handle, Msg.WM_SYSCOMMAND, 0xF000 | direction, (int)lParam);
		}
	}

	private void DrawBorders(PaintEventArgs e)
	{
		Graphics graphics = e.Graphics;
		RECT rc = default(RECT);
		WindowsAPI.GetClientRect(base.Handle, ref rc);
		Padding bordersInternal = BordersInternal;
		Rectangle rect = new Rectangle(0, 0, rc.Width, rc.Height);
		Rectangle rect2 = new Rectangle(rect.X + bordersInternal.Left, rect.Y + bordersInternal.Top + m_nTopHeight, rect.Width - bordersInternal.Horizontal, rect.Height - bordersInternal.Vertical - m_nTopHeight);
		Color color = (ActiveState ? m_ColorTable.RibbonBorder : m_ColorTable.RibbonBorderInactive);
		using (Region region = new Region(rect))
		{
			GraphicsState gstate = graphics.Save();
			region.Exclude(Rectangle.Inflate(rect2, 1, 1));
			if (!IsMaximized())
			{
				using GraphicsPath path = GetFormPath(Rectangle.Inflate(rect, -1, -1));
				using Brush brush = new SolidBrush(m_ColorTable.ToolStripBorder);
				graphics.SetClip(path, CombineMode.Exclude);
				graphics.FillRegion(brush, region);
				graphics.SetClip(path, CombineMode.Replace);
			}
			using (Brush brush2 = new SolidBrush(color))
			{
				graphics.FillRegion(brush2, region);
			}
			graphics.Restore(gstate);
		}
		Point[] array = new Point[3]
		{
			new Point(rect2.Right, rect2.Top - 1),
			new Point(rect2.Right, rect2.Bottom),
			new Point(rect2.Left - 1, rect2.Bottom)
		};
		Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(Color.White, color, 160);
		using (Pen pen = new Pen(alphaBlendedColor))
		{
			graphics.DrawLine(pen, array[0], array[1]);
			graphics.DrawLine(pen, array[1], array[2]);
		}
		Point[] array2 = new Point[3]
		{
			new Point(rect2.Left - 1, rect2.Bottom - 1),
			new Point(rect2.Left - 1, rect2.Top - 1),
			new Point(rect2.Right - 1, rect2.Top - 1)
		};
		Color alphaBlendedColor2 = Office12ColorTable.GetAlphaBlendedColor(Color.Black, color, 32);
		using Pen pen2 = new Pen(alphaBlendedColor2);
		graphics.DrawLine(pen2, array2[0], array2[1]);
		graphics.DrawLine(pen2, array2[1], array2[2]);
	}

	private void DrawFrame(Graphics g, Rectangle rc)
	{
		DrawFrameBackground(g, rc);
		DrawFrameCaption(g, rc);
	}

	private void DrawFrameBackground(Graphics g, Rectangle rc)
	{
		Color color = (ActiveState ? m_ColorTable.ActiveTitleGradientBegin : m_ColorTable.InActiveTitleGradientBegin);
		Color color2 = (ActiveState ? m_ColorTable.ActiveTitleGradientEnd : m_ColorTable.InActiveTitleGradientEnd);
		int num = rc.Left - 1;
		int num2 = rc.Width + 1;
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(0, rc.Top, 1, rc.Height), color, color2, 90f);
		linearGradientBrush.Blend = m_blTitle;
		g.FillRectangle(linearGradientBrush, new Rectangle(num, rc.Top, num2, rc.Height));
	}

	private void DrawFrameCaption(Graphics g, Rectangle rc)
	{
		FrameLayoutInfo frameLayout = FrameLayout;
		DrawFrameIcon(g, frameLayout.IconBox);
		DrawFrameButton(g, frameLayout.CloseBox, SystemCommand.SC_CLOSE, CloseBox);
		DrawFrameButton(g, frameLayout.MaximizeBox, SystemCommand.SC_MAXIMIZE, base.MaximizeBox);
		DrawFrameButton(g, frameLayout.MinimizeBox, SystemCommand.SC_RESTORE, base.MinimizeBox);
		DrawFrameButton(g, frameLayout.HelpButton, SystemCommand.SC_CONTEXTHELP, base.HelpButton);
		DrawFrameText(g, frameLayout.TextBox);
	}

	private void DrawFrameIcon(Graphics g, Rectangle rc)
	{
		if (rc.Width > 0 && rc.Height > 0 && base.Icon != null)
		{
			Icon icon = new Icon(base.Icon, rc.Size);
			if (icon != null)
			{
				rc.X = FrameLayout.BorderWidth;
				g.DrawIcon(icon, rc);
			}
		}
	}

	private void DrawFrameButton(Graphics g, Rectangle rc, SystemCommand buttonId, bool bEnabled)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		Image buttonImage = GetButtonImage(buttonId);
		if (buttonImage == null)
		{
			return;
		}
		Size size = buttonImage.Size;
		int num = rc.X + (rc.Width - size.Width) / 2 - (IsRightToLeft ? 1 : 0);
		int num2 = rc.Y + (rc.Height - size.Height) / 2 + 1;
		if (bEnabled)
		{
			if (HighlightedButton == buttonId)
			{
				if (PressedButton == buttonId)
				{
					DrawFrameButtonBackgroundPressed(g, ref rc);
				}
				else
				{
					DrawFrameButtonBackgroundSelected(g, ref rc);
				}
			}
			g.DrawImage(buttonImage, num, num2);
		}
		else
		{
			ControlPaint.DrawImageDisabled(g, buttonImage, num, num2, Color.White);
		}
	}

	private void DrawFrameButtonBackgroundSelected(Graphics g, ref Rectangle rc)
	{
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		DrawFrameButtonGradient(g, ref rc, m_ColorTable.SystemButtonSelectedGradientBegin, m_ColorTable.SystemButtonSelectedGradientEnd);
		DrawFrameButtonBorder(g, ref rc, m_ColorTable.SystemButtonBorderSelected);
		g.SmoothingMode = smoothingMode;
	}

	private void DrawFrameButtonBackgroundPressed(Graphics g, ref Rectangle rc)
	{
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		DrawFrameButtonGradient(g, ref rc, m_ColorTable.SystemButtonPressedGradientBegin, m_ColorTable.SystemButtonPressedGradientEnd);
		DrawFrameButtonFlash(g, ref rc);
		DrawFrameButtonBorder(g, ref rc, m_ColorTable.SystemButtonBorderPressed);
		g.SmoothingMode = smoothingMode;
	}

	private void DrawFrameButtonGradient(Graphics g, ref Rectangle rc, Color clBegin, Color clEnd)
	{
		IntPtr intPtr = WindowsAPI.CreateRoundRectRgn(rc.X, rc.Y, rc.Right, rc.Bottom, 2, 2);
		if (!(intPtr != IntPtr.Zero))
		{
			return;
		}
		using (Region region = Region.FromHrgn(intPtr))
		{
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(rc.X, rc.Y, 1, rc.Height), clBegin, clEnd, 90f);
			linearGradientBrush.Blend = m_blFrameButton;
			linearGradientBrush.WrapMode = WrapMode.TileFlipY;
			g.FillRegion(linearGradientBrush, region);
		}
		WindowsAPI.DeleteObject(intPtr);
	}

	private void DrawFrameButtonFlash(Graphics g, ref Rectangle rc)
	{
		Rectangle rect = new Rectangle(rc.X, rc.Y + rc.Height * 3 / 5, rc.Width, rc.Height);
		using GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddEllipse(rect);
		using PathGradientBrush pathGradientBrush = new PathGradientBrush(graphicsPath);
		pathGradientBrush.CenterColor = Color.White;
		pathGradientBrush.SurroundColors = new Color[1] { Color.Transparent };
		g.FillRectangle(pathGradientBrush, rc);
	}

	private void DrawFrameButtonBorder(Graphics g, ref Rectangle rc, Color color)
	{
		Rectangle rect = new Rectangle(rc.X, rc.Y, 1, rc.Height);
		using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.White, Color.Transparent, 90f))
		{
			linearGradientBrush.Blend = m_blFrameButtonBorder;
			using Pen pen = new Pen(linearGradientBrush);
			g.DrawRectangle(pen, rc.X + 1, rc.Y + 1, rc.Width - 3, rc.Height - 3);
		}
		using Pen pen2 = new Pen(color);
		g.DrawPolygon(pen2, RendererUtils.GetRoundedPolygon(rc, 1));
	}

	private void DrawFrameText(Graphics g, Rectangle rc)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		string text = Text;
		if (!(text != string.Empty))
		{
			return;
		}
		using StringFormat stringFormat = StringFormat.GenericDefault;
		stringFormat.FormatFlags |= StringFormatFlags.LineLimit;
		stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		stringFormat.Alignment = ((IsRightToLeft || RightToLeft == RightToLeft.Yes) ? StringAlignment.Far : StringAlignment.Near);
		using Brush brush = new SolidBrush(m_ColorTable.RibbonTitleText);
		g.DrawString(text, Font, brush, rc, stringFormat);
	}

	private Image GetButtonImage(SystemCommand buttonId)
	{
		Image result = null;
		Color color = ((buttonId != SelectedButton) ? m_ColorTable.SystemButtonForeground : m_ColorTable.SystemButtonForegroundSelected);
		switch (buttonId)
		{
		case SystemCommand.SC_CLOSE:
			result = SystemImages.GetImageClose(color);
			break;
		case SystemCommand.SC_RESTORE:
			result = SystemImages.GetImageRestore(color);
			break;
		case SystemCommand.SC_MAXIMIZE:
			result = SystemImages.GetImageMaximize(color);
			break;
		case SystemCommand.SC_CONTEXTHELP:
			result = SystemImages.GetImageHelp();
			break;
		}
		return result;
	}

	private SystemCommand GetButtonId(IntPtr points)
	{
		int num = WindowsAPI.LOW_ORDER(points);
		int num2 = WindowsAPI.HIGH_ORDER(points);
		return GetButtonId(new Point(num, num2));
	}

	private SystemCommand GetButtonId(Point pt)
	{
		RECT rect = default(RECT);
		WindowsAPI.GetWindowRect(base.Handle, ref rect);
		int num = pt.X - rect.left;
		int num2 = pt.Y - rect.top;
		FrameLayoutInfo frameLayout = FrameLayout;
		if (frameLayout.CloseBox.Contains(num, num2))
		{
			return SystemCommand.SC_CLOSE;
		}
		if (frameLayout.MaximizeBox.Contains(num, num2))
		{
			return SystemCommand.SC_MAXIMIZE;
		}
		if (frameLayout.MinimizeBox.Contains(num, num2))
		{
			return SystemCommand.SC_RESTORE;
		}
		if (frameLayout.HelpButton.Contains(num, num2))
		{
			return SystemCommand.SC_CONTEXTHELP;
		}
		return (SystemCommand)0;
	}

	private bool IsButtonEnabled(SystemCommand buttonId)
	{
		bool result = true;
		switch (buttonId)
		{
		case SystemCommand.SC_MAXIMIZE:
			result = base.MaximizeBox;
			break;
		case SystemCommand.SC_RESTORE:
			result = base.MinimizeBox;
			break;
		case SystemCommand.SC_CLOSE:
			result = CloseBox;
			break;
		}
		return result;
	}

	private void InvalidateFrame()
	{
		if (base.IsHandleCreated)
		{
			WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, (RedrawWindowFlags)1025);
		}
	}

	private void BaseWndProc(ref Message m)
	{
		using (new CaptionManager(this, bHideCaption: true))
		{
			base.WndProc(ref m);
		}
	}

	private Rectangle GetMdiMaxBounds()
	{
		IntPtr handle = base.Parent.Handle;
		int windowLong = WindowsAPI.GetWindowLong(handle, -16);
		int windowLong2 = WindowsAPI.GetWindowLong(handle, -20);
		RECT lpRect = default(RECT);
		WindowsAPI.AdjustWindowRectEx(ref lpRect, windowLong & -3145729, bMenu: false, windowLong2);
		RECT rect = default(RECT);
		WindowsAPI.GetWindowRect(base.Parent.Handle, ref rect);
		Padding pdMargings = Borders;
		if (this.GetMargins != null)
		{
			this.GetMargins(ref pdMargings);
		}
		return new Rectangle(-pdMargings.Left, -pdMargings.Top, rect.Width - lpRect.Width + pdMargings.Horizontal, rect.Height - lpRect.Height + pdMargings.Vertical);
	}

	private bool ShouldSerializeAppearance()
	{
		return m_Appearance != AppearanceType.Office2007;
	}

	private void ResetAppearance()
	{
		m_Appearance = AppearanceType.Office2007;
	}

	private bool ShouldSerializeColorScheme()
	{
		return m_ColorScheme != ColorSchemeType.Managed;
	}

	private void ResetColorScheme()
	{
		ColorScheme = ColorSchemeType.Managed;
	}

	private bool ShouldSerializeMinimumSize()
	{
		return base.MinimumSize != base.DefaultMinimumSize;
	}

	private void ResetMinimumSize()
	{
		base.MinimumSize = base.DefaultMinimumSize;
	}

	private bool ShouldSerializeBorder()
	{
		return m_Borders != new Padding(6, 1, 6, 6);
	}

	private void ResetBorder()
	{
		m_Borders = new Padding(6, 1, 6, 6);
	}

	private bool ShouldSerializeShortcut(Component component)
	{
		foreach (Component value in m_hShortcuts.Values)
		{
			if (value.Equals(component))
			{
				return true;
			}
		}
		return false;
	}

	private void ResetShortcut(Component component)
	{
		SetShortcut(component, Keys.None);
	}

	[Editor(typeof(RibbonFormShortcutEditor), typeof(UITypeEditor))]
	public Keys GetShortcut(Component component)
	{
		foreach (DictionaryEntry hShortcut in m_hShortcuts)
		{
			if (hShortcut.Value.Equals(component))
			{
				return (Keys)hShortcut.Key;
			}
		}
		return Keys.None;
	}

	[Editor(typeof(RibbonFormShortcutEditor), typeof(UITypeEditor))]
	public void SetShortcut(Component component, Keys value)
	{
		Keys shortcut = GetShortcut(component);
		if (shortcut != Keys.None)
		{
			m_hShortcuts.Remove(shortcut);
		}
		if (value != Keys.None)
		{
			m_hShortcuts[value] = component;
		}
	}
}
