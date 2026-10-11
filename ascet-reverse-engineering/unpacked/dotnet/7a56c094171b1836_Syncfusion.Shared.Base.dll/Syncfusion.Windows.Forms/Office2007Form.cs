using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class Office2007Form : Form
{
	private delegate IntPtr SendMessageDelegate(IntPtr hWnd, int msg, int wParam, int lParam);

	private class FrameLayoutInfo
	{
		private Office2007Form m_form;

		private Rectangle m_rcText = Rectangle.Empty;

		public Rectangle m_rcIcon = Rectangle.Empty;

		public Rectangle m_rcMin = Rectangle.Empty;

		public Rectangle m_rcMax = Rectangle.Empty;

		public Rectangle m_rcClose = Rectangle.Empty;

		public Rectangle m_rcHelpButton = Rectangle.Empty;

		public Rectangle m_rcMdiIcon = Rectangle.Empty;

		public Rectangle m_rcMdiMin = Rectangle.Empty;

		public Rectangle m_rcMdiMax = Rectangle.Empty;

		public Rectangle m_rcMdiClose = Rectangle.Empty;

		public Rectangle m_rcMdiHelpButton = Rectangle.Empty;

		private int m_titleHeight;

		private int m_captionHeight;

		private int m_captionMinWidth;

		private int m_iBorderWidth = 6;

		public Rectangle TextBox => m_rcText;

		public Rectangle IconBox => m_rcIcon;

		public Rectangle MinimizeBox => m_rcMin;

		public Rectangle MaximizeBox => m_rcMax;

		public Rectangle CloseBox => m_rcClose;

		public Rectangle HelpButton => m_rcHelpButton;

		public Rectangle MdiIconBox => m_rcMdiIcon;

		public Rectangle MdiMinimizeBox => m_rcMdiMin;

		public Rectangle MdiMaximizeBox => m_rcMdiMax;

		public Rectangle MdiCloseBox => m_rcMdiClose;

		public Rectangle MdiHelpButton => m_rcMdiHelpButton;

		public int TitleHeight => m_titleHeight;

		public int CaptionHeight => m_captionHeight;

		public int CaptionMinWidth => m_captionMinWidth;

		public int BorderWidth => m_iBorderWidth;

		private int SysCaptionHeight
		{
			get
			{
				CreateParams createParams = m_form.CreateParams;
				NativeMethods.RECT rc = default(NativeMethods.RECT);
				if (AdjustWindowRectEx(ref rc, createParams.Style, bMenu: false, createParams.ExStyle))
				{
					return -rc.top;
				}
				return 0;
			}
		}

		private int SysBorderWidth
		{
			get
			{
				CreateParams createParams = m_form.CreateParams;
				NativeMethods.RECT rc = default(NativeMethods.RECT);
				if (AdjustWindowRectEx(ref rc, createParams.Style, bMenu: false, createParams.ExStyle))
				{
					return rc.Width / 2;
				}
				return 0;
			}
		}

		public FrameLayoutInfo(Office2007Form form)
		{
			m_form = form;
		}

		public void PerformLayout(int width, int height)
		{
			m_titleHeight = 0;
			m_captionHeight = 0;
			m_captionMinWidth = 0;
			m_rcIcon = Rectangle.Empty;
			m_rcMin = Rectangle.Empty;
			m_rcMax = Rectangle.Empty;
			m_rcClose = Rectangle.Empty;
			m_rcHelpButton = Rectangle.Empty;
			m_rcMdiIcon = Rectangle.Empty;
			m_rcMdiMin = Rectangle.Empty;
			m_rcMdiMax = Rectangle.Empty;
			m_rcMdiClose = Rectangle.Empty;
			m_rcMdiHelpButton = Rectangle.Empty;
			m_rcText = Rectangle.Empty;
			bool flag = m_form.FormBorderStyle == FormBorderStyle.None;
			m_iBorderWidth = ((!flag) ? 6 : 0);
			Size smallIconSize = SystemInformation.SmallIconSize;
			bool isRightToLeft = m_form.IsRightToLeft;
			int num = (smallIconSize.Width & -2) + 3;
			int num2 = smallIconSize.Height + 2;
			int sysBorderWidth = SysBorderWidth;
			int num3 = sysBorderWidth + 2;
			if (!flag)
			{
				Font captionFont = m_form.CaptionFont;
				int num4 = Math.Max(captionFont.Height, num2);
				if (!m_form.ShouldSerializeCaptionFont())
				{
					captionFont.Dispose();
				}
				if (!m_form.ControlBox && m_form.Text == string.Empty)
				{
					m_titleHeight = BorderWidth;
				}
				else
				{
					m_titleHeight = Math.Max(num3 + num4 + 2, SysCaptionHeight);
				}
				m_captionHeight = m_titleHeight;
				int y = (m_form.IsMinimized ? ((height - num2) / 2) : (sysBorderWidth + (m_titleHeight - sysBorderWidth - 2 - num2) / 2));
				int num5 = num3;
				int num6 = width - num3;
				if (m_form.ControlBox)
				{
					if (m_form.ShowIcon)
					{
						m_rcIcon.Size = smallIconSize;
						m_rcIcon.Y = y;
						if (isRightToLeft)
						{
							num6 -= smallIconSize.Width;
							m_rcIcon.X = num6;
						}
						else
						{
							m_rcIcon.X = num5;
							num5 = m_rcIcon.Right;
						}
						m_captionMinWidth += smallIconSize.Width;
					}
					m_rcClose.Y = y;
					m_rcClose.Width = num;
					m_rcClose.Height = num2;
					if (isRightToLeft)
					{
						m_rcClose.X = num5;
						num5 = m_rcClose.Right;
					}
					else
					{
						num6 -= num;
						m_rcClose.X = num6;
					}
					m_captionMinWidth += num;
					if (m_form.MaximizeBox || m_form.MinimizeBox)
					{
						m_rcMax = m_rcClose;
						m_rcMin = m_rcClose;
						if (isRightToLeft)
						{
							m_rcMax.X = num5;
							m_rcMin.X = m_rcMax.Right;
							num5 = m_rcMin.Right;
						}
						else
						{
							m_rcMax.X = num6 - num;
							m_rcMin.X = m_rcMax.X - num;
							num6 = m_rcMin.X;
						}
						m_captionMinWidth += 2 * num;
					}
					else if (m_form.HelpButton)
					{
						m_rcHelpButton = m_rcClose;
						if (isRightToLeft)
						{
							m_rcHelpButton.X = num5;
							num5 = m_rcHelpButton.Right;
						}
						else
						{
							num6 -= num;
							m_rcHelpButton.X = num6;
						}
						m_captionMinWidth += num;
					}
				}
				m_rcText = new Rectangle(num5 + 4, sysBorderWidth, num6 - num5 - 8, m_titleHeight - sysBorderWidth);
				if (m_form.IsRightToLeft)
				{
					m_rcText.X = width - m_rcText.Right;
				}
			}
			if (!m_form.IsMdiContainer)
			{
				return;
			}
			Form activeMdiChild = m_form.ActiveMdiChild;
			if (activeMdiChild == null || !IsMaximized(activeMdiChild))
			{
				return;
			}
			Control parent = activeMdiChild.Parent;
			if (parent == null || !(NativeMethods.SendMessage(parent.Handle, 564, 0, 0) != IntPtr.Zero))
			{
				return;
			}
			if (activeMdiChild.ControlBox)
			{
				if (activeMdiChild.ShowIcon)
				{
					m_rcMdiIcon.X = (isRightToLeft ? (width - num3 - smallIconSize.Width) : num3);
					m_rcMdiIcon.Y = m_captionHeight + 1;
					m_rcMdiIcon.Size = smallIconSize;
				}
				m_rcMdiClose.X = (isRightToLeft ? num3 : (width - num3 - num));
				m_rcMdiClose.Y = m_captionHeight;
				m_rcMdiClose.Width = num;
				m_rcMdiClose.Height = num2;
				if (activeMdiChild.MaximizeBox || activeMdiChild.MinimizeBox)
				{
					m_rcMdiMax = m_rcMdiClose;
					m_rcMdiMin = m_rcMdiClose;
					if (isRightToLeft)
					{
						m_rcMdiMax.X = m_rcMdiClose.Right;
						m_rcMdiMin.X = m_rcMdiMax.Right;
					}
					else
					{
						m_rcMdiMax.X = m_rcMdiClose.X - num;
						m_rcMdiMin.X = m_rcMdiMax.X - num;
					}
				}
				else if (activeMdiChild.HelpButton)
				{
					m_rcMdiHelpButton = m_rcMdiClose;
					if (isRightToLeft)
					{
						m_rcMdiHelpButton.X = m_rcMdiClose.Right;
					}
					else
					{
						m_rcMdiHelpButton.X = m_rcMdiClose.X - num;
					}
				}
			}
			m_captionHeight += num2 + 2;
		}

		private static bool IsMaximized(Form f)
		{
			if (f.IsHandleCreated)
			{
				int windowLong = NativeMethods.GetWindowLong(f.Handle, -16);
				return (windowLong & 0x1000000) != 0;
			}
			return f.WindowState == FormWindowState.Maximized;
		}

		[DllImport("User32.dll", CharSet = CharSet.Auto)]
		private static extern bool AdjustWindowRectEx(ref NativeMethods.RECT rc, int dwStyle, bool bMenu, int dwExStyle);
	}

	private class ColorSchemeTypeConverter : EnumConverter
	{
		public ColorSchemeTypeConverter(Type type)
			: base(type)
		{
		}

		public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
		{
			if (destinationType == typeof(string) && (int)value < 0)
			{
				return "Managed";
			}
			return base.ConvertTo(context, culture, value, destinationType);
		}
	}

	private class CaptionManager : IDisposable
	{
		private const int MASK = 12582912;

		private Office2007Form m_form;

		private int m_style;

		public CaptionManager(Office2007Form f, bool bHideCaption)
		{
			if (f == null || !f.IsHandleCreated)
			{
				return;
			}
			IntPtr handle = f.Handle;
			m_style = NativeMethods.GetWindowLong(handle, -16);
			if (bHideCaption)
			{
				if ((m_style & 0xC00000) != 0)
				{
					NativeMethods.SetWindowLong(handle, -16, (IntPtr)(m_style & -12582913));
					m_form = f;
				}
				return;
			}
			int num = f.CreateParams.Style & 0xC00000;
			if (num != 0 && (m_style & num) == 0 && (m_style & 0x40000) != 0)
			{
				NativeMethods.SetWindowLong(handle, -16, (IntPtr)(m_style | num));
				m_form = f;
			}
		}

		void IDisposable.Dispose()
		{
			if (m_form != null && m_form.IsHandleCreated)
			{
				NativeMethods.SetWindowLong(m_form.Handle, -16, (IntPtr)m_style);
			}
		}
	}

	private const int BORDER_WIDTH = 6;

	private const int FRAME_PADDING = 2;

	private const int CURVE_WIDTH = 12;

	private const int SEPARATOR_WIDTH = 2;

	private const int SRCCOPY = 13369376;

	private const int SB_CLOSE = 0;

	private const int SB_MAXIMIZE = 1;

	private const int SB_MINIMIZE = 2;

	private const int SB_RESTORE = 3;

	private const int SB__MAX = 4;

	private const int SB_MDICLOSE = 16;

	private const int SB_MDIMINIMIZE = 18;

	private const int SB_MDIRESTORE = 19;

	private const int SB_HELPBUTTON = 20;

	private const int SB_MDIHELPBUTTON = 21;

	private const int SWP_NORELOCATE = 3;

	private const int SWP_FRAME = 55;

	private const int WMSZ_LEFT = 1;

	private const int WMSZ_RIGHT = 2;

	private const int WMSZ_TOP = 3;

	private const int WMSZ_TOPLEFT = 4;

	private const int WMSZ_TOPRIGHT = 5;

	private const int WMSZ_BOTTOM = 6;

	private const int WMSZ_BOTTOMLEFT = 7;

	private const int WMSZ_BOTTOMRIGHT = 8;

	private const int DT_CENTER = 1;

	private const int DT_RIGHT = 2;

	private const int DT_VCENTER = 4;

	private const int DT_SINGLELINE = 32;

	private const int DT_END_ELLIPSIS = 32768;

	private const int DT_NOPREFIX = 2048;

	private const int CS_NOCLOSE = 512;

	private const int GCL_STYLE = -26;

	private const int FW_NORMAL = 400;

	private const int TEXT_MARGIN = 4;

	private const int WM_DWMCOMPOSITIONCHANGED = 798;

	private Office2007Theme m_theme = Office2007Theme.Managed;

	private bool m_bActive;

	private bool m_bMouseIsTracked;

	private FrameLayoutInfo m_frameLayout;

	private int m_selectedButton = 4;

	private int m_pressedButton = 4;

	private int m_highlightedButton = 4;

	private bool m_bSuppressSizing;

	private Pen m_pBorder;

	private Pen m_pSeparatorDark;

	private Pen m_pSeparatorLight;

	private static ImageList m_systemButtons;

	private static Bitmap m_bmpHelpButton;

	private static int[] m_systemCommands;

	private static int m_iSystemHelpCommand;

	private static Blend m_blTitle;

	private static Blend m_blFrameButton;

	private static Blend m_blFrameButtonBorder;

	private bool m_bUseOffice2007ThemeBackground;

	private bool m_bDisableOffice2007Style;

	private bool applyAeroTheme = true;

	private bool m_bCompositionEnabled;

	private Font m_captionFont;

	private HorizontalAlignment m_captionAlign;

	private Color captionForeColor = Color.Empty;

	private static SendMessageDelegate m_sendMessageHandler;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual bool DisableOffice2007Style
	{
		get
		{
			if (!m_bDisableOffice2007Style)
			{
				if (m_bCompositionEnabled)
				{
					return applyAeroTheme;
				}
				return false;
			}
			return true;
		}
		set
		{
			if (m_bDisableOffice2007Style != value)
			{
				m_bDisableOffice2007Style = value;
				if (base.IsHandleCreated)
				{
					RecreateHandle();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Browsable(false)]
	[Description("Gets/sets if to Force the Default OS Aero theme look and feel when Office2007Visual style is enabled. This will not work for XP and lower OS versions")]
	public virtual bool ApplyAeroTheme
	{
		get
		{
			return applyAeroTheme;
		}
		set
		{
			if (applyAeroTheme != value)
			{
				applyAeroTheme = value;
				if (base.IsHandleCreated)
				{
					RecreateHandle();
				}
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

	[TypeConverter(typeof(ColorSchemeTypeConverter))]
	public Office2007Theme ColorScheme
	{
		get
		{
			return m_theme;
		}
		set
		{
			if (m_theme != value)
			{
				m_theme = value;
				OnColorSchemeChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Obsolete("Please, use Office2007Form.ColorScheme = Office2007Theme.Managed")]
	[DefaultValue(true)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool ColorSchemeIsManaged
	{
		get
		{
			return m_theme == Office2007Theme.Managed;
		}
		set
		{
			if (!ColorSchemeIsManaged)
			{
				ColorScheme = Office2007Theme.Managed;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the font of the form's title.")]
	public Font CaptionFont
	{
		get
		{
			if (m_captionFont == null)
			{
				IntPtr systemCaptionFont = SystemCaptionFont;
				Font result;
				if (systemCaptionFont != IntPtr.Zero)
				{
					result = Font.FromHfont(systemCaptionFont);
					NativeMethods.DeleteObject(systemCaptionFont);
				}
				else
				{
					result = Control.DefaultFont;
				}
				return result;
			}
			return m_captionFont;
		}
		set
		{
			if (m_captionFont != value)
			{
				m_captionFont = value;
				UpdateFrame();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the color for caption in titlebar.")]
	[DefaultValue(typeof(Color), "Empty")]
	public Color CaptionForeColor
	{
		get
		{
			if (captionForeColor == Color.Empty)
			{
				return ColorTable.FormTextColor;
			}
			return captionForeColor;
		}
		set
		{
			if (captionForeColor != value)
			{
				captionForeColor = value;
				UpdateFrame();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(typeof(HorizontalAlignment), "Left")]
	[Description("Gets or sets the alignment of of the form's title.")]
	public HorizontalAlignment CaptionAlign
	{
		get
		{
			return m_captionAlign;
		}
		set
		{
			if (m_captionAlign != value)
			{
				m_captionAlign = value;
				UpdateFrame();
			}
		}
	}

	protected Office2007Colors ColorTable => Office2007Colors.GetColorTable(ColorScheme);

	protected bool IsActive
	{
		get
		{
			if (base.IsMdiChild)
			{
				Form mdiParent = base.MdiParent;
				if (mdiParent != null)
				{
					return mdiParent.ActiveMdiChild == this;
				}
			}
			return m_bActive;
		}
	}

	protected bool IsRightToLeft
	{
		get
		{
			bool result = false;
			if (base.IsHandleCreated)
			{
				int windowLong = NativeMethods.GetWindowLong(base.Handle, -20);
				result = (windowLong & 0x400000) != 0;
			}
			return result;
		}
	}

	private int SelectedButton
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
				if (m_pressedButton != 4 && m_pressedButton != value)
				{
					value = 4;
				}
				if (m_highlightedButton != value)
				{
					m_highlightedButton = value;
					InvalidateFrame();
				}
			}
		}
	}

	private int PressedButton
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
				if (value == 4)
				{
					value = m_selectedButton;
				}
				m_highlightedButton = value;
				InvalidateFrame();
			}
		}
	}

	private int HighlightedButton
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

	private int MaximizeButton
	{
		get
		{
			if (base.WindowState != FormWindowState.Maximized)
			{
				return 1;
			}
			return 3;
		}
	}

	private int MinimizeButton
	{
		get
		{
			if (base.WindowState != FormWindowState.Minimized)
			{
				return 2;
			}
			return 3;
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

	private int CaptionHeight => FrameLayout.CaptionHeight;

	private int TitleHeight => FrameLayout.TitleHeight;

	private bool IsMinimized
	{
		get
		{
			if (base.IsHandleCreated)
			{
				int windowLong = NativeMethods.GetWindowLong(base.Handle, -16);
				return (windowLong & 0x20000000) != 0;
			}
			return base.WindowState == FormWindowState.Minimized;
		}
	}

	private bool IsMaximized
	{
		get
		{
			if (base.IsHandleCreated)
			{
				int windowLong = NativeMethods.GetWindowLong(base.Handle, -16);
				return (windowLong & 0x1000000) != 0;
			}
			return base.WindowState == FormWindowState.Maximized;
		}
	}

	private bool IsSizeable
	{
		get
		{
			bool result = false;
			if (base.WindowState == FormWindowState.Normal)
			{
				int windowLong = NativeMethods.GetWindowLong(base.Handle, -16);
				result = (windowLong & 0x40000) == 262144;
			}
			return result;
		}
	}

	private Rectangle DesktopRectangle
	{
		get
		{
			Screen screen = Screen.FromHandle(base.Handle);
			if (screen != null)
			{
				return new Rectangle(Screen.PrimaryScreen.WorkingArea.Location, screen.WorkingArea.Size);
			}
			return Rectangle.Empty;
		}
	}

	private Rectangle ParentClientRectangle
	{
		get
		{
			Control control = base.Parent;
			if (control != null && control.IsHandleCreated)
			{
				NativeMethods.RECT lpRect = default(NativeMethods.RECT);
				NativeMethods.GetClientRect(control.Handle, ref lpRect);
				return new Rectangle(0, 0, lpRect.Width, lpRect.Height);
			}
			return Rectangle.Empty;
		}
	}

	private bool IsVisible
	{
		get
		{
			bool result = false;
			if (base.IsHandleCreated)
			{
				int windowLong = NativeMethods.GetWindowLong(base.Handle, -16);
				result = (windowLong & 0x10000000) != 0;
			}
			return result;
		}
	}

	[DefaultValue(false)]
	[Description("Specifies whether current selected Office2007 scheme background color.")]
	[Category("Appearance")]
	public bool UseOffice2007SchemeBackColor
	{
		get
		{
			return m_bUseOffice2007ThemeBackground;
		}
		set
		{
			if (value != m_bUseOffice2007ThemeBackground)
			{
				m_bUseOffice2007ThemeBackground = value;
				Invalidate();
			}
		}
	}

	private IntPtr CaptionFontInternal
	{
		get
		{
			if (m_captionFont == null)
			{
				return SystemCaptionFont;
			}
			return m_captionFont.ToHfont();
		}
	}

	private IntPtr SystemCaptionFont
	{
		get
		{
			IntPtr result = IntPtr.Zero;
			NativeMethods.NONCLIENTMETRICS lpvParam = default(NativeMethods.NONCLIENTMETRICS);
			lpvParam.cbSize = Marshal.SizeOf((object)lpvParam);
			if (NativeMethods.SystemParametersInfo(41, 0, ref lpvParam, 0) != 0)
			{
				lpvParam.lfCaptionFont.lfWeight = 400;
				result = CreateFontIndirect(ref lpvParam.lfCaptionFont);
			}
			return result;
		}
	}

	private bool CloseBox => 0 == (CreateParams.ClassStyle & 0x200);

	static Office2007Form()
	{
		m_sendMessageHandler = NativeMethods.SendMessage;
		Bitmap value = new Bitmap(typeof(Office2007Form).Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Office2007Form.SystemButtons.bmp"));
		m_systemButtons = new ImageList();
		m_systemButtons.ImageSize = new Size(9, 9);
		m_systemButtons.Images.AddStrip(value);
		m_systemButtons.TransparentColor = Color.Magenta;
		m_bmpHelpButton = new Bitmap(typeof(Office2007Form).Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Office2007Form.HelpButton.bmp"));
		m_bmpHelpButton.MakeTransparent(Color.Magenta);
		m_systemCommands = new int[4] { 61536, 61488, 61472, 61728 };
		m_iSystemHelpCommand = 61824;
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

	public Office2007Form()
	{
		m_pBorder = new Pen(Color.FromArgb(64, Color.Black));
		m_pSeparatorDark = new Pen(Color.FromArgb(32, Color.Black));
		m_pSeparatorLight = new Pen(Color.FromArgb(64, Color.White));
		m_bCompositionEnabled = GetIsCompositionEnabled();
		base.AutoScroll = false;
	}

	private bool GetCloseBox(Control control)
	{
		bool result = true;
		if (control.IsHandleCreated)
		{
			int num = (int)GetClassLongPtr(control.Handle, -26);
			result = 0 == (num & 0x200);
		}
		return result;
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (!m_bSuppressSizing || DisableOffice2007Style)
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}

	protected override void SetClientSizeCore(int x, int y)
	{
		if (DisableOffice2007Style)
		{
			base.SetClientSizeCore(x, y);
			return;
		}
		int borderWidth = FrameLayout.BorderWidth;
		base.Size = new Size(x + 2 * borderWidth, y + CaptionHeight + borderWidth);
		UpdateBounds(base.Left, base.Top, x + 2 * borderWidth, y + CaptionHeight + borderWidth, x, y);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (!DisableOffice2007Style)
		{
			UpdateRegion();
		}
	}

	protected override void OnStyleChanged(EventArgs e)
	{
		if (!DisableOffice2007Style)
		{
			using (new CaptionManager(this, bHideCaption: true))
			{
				base.OnStyleChanged(e);
				return;
			}
		}
		base.OnStyleChanged(e);
	}

	protected override void WndProc(ref Message m)
	{
		if (!DisableOffice2007Style)
		{
			switch (m.Msg)
			{
			case 131:
				if (OnWmNcCalcSize(ref m))
				{
					return;
				}
				break;
			case 133:
				if (OnWmNcPaint(ref m))
				{
					return;
				}
				break;
			case 132:
				if (OnWmNcHitTest(ref m))
				{
					return;
				}
				break;
			case 134:
				if (OnWmNcActivate(ref m))
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
			case 128:
				if (OnWmSetIcon(ref m))
				{
					return;
				}
				break;
			case 12:
				if (OnWmSetText(ref m))
				{
					return;
				}
				break;
			case 36:
				if (OnWmGetMinMaxInfo(ref m))
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
				if (OnWmSysCommand(ref m))
				{
					return;
				}
				break;
			case 123:
				if (OnWmCotextMenu(ref m))
				{
					return;
				}
				break;
			case 798:
				OnCompositionChanged(ref m);
				break;
			}
		}
		base.WndProc(ref m);
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		if (m_bUseOffice2007ThemeBackground && !DisableOffice2007Style)
		{
			Office2007Colors colorTable = ColorTable;
			Color formBackground = colorTable.FormBackground;
			Graphics graphics = e.Graphics;
			Brush brush = new SolidBrush(formBackground);
			if (RightToLeft != RightToLeft.Yes)
			{
				graphics.FillRectangle(brush, base.ClientRectangle);
				return;
			}
			GraphicsState gstate = graphics.Save();
			_ = base.Location;
			graphics.TranslateTransform(-1f, 0f);
			graphics.FillRectangle(brush, base.ClientRectangle);
			graphics.Restore(gstate);
		}
		else
		{
			base.OnPaintBackground(e);
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		InvalidateOnDemand();
	}

	protected override void OnRightToLeftLayoutChanged(EventArgs e)
	{
		base.OnRightToLeftLayoutChanged(e);
		InvalidateOnDemand();
	}

	private bool OnWmNcCalcSize(ref Message m)
	{
		NativeMethods.RECT rECT = (NativeMethods.RECT)m.GetLParam(typeof(NativeMethods.RECT));
		using (new CaptionManager(this, bHideCaption: false))
		{
			base.WndProc(ref m);
		}
		FrameLayoutInfo frameLayout = FrameLayout;
		frameLayout.PerformLayout(rECT.Width, rECT.Height);
		int borderWidth = frameLayout.BorderWidth;
		rECT.top += frameLayout.CaptionHeight;
		rECT.left += borderWidth;
		rECT.right -= borderWidth;
		rECT.bottom -= borderWidth;
		Marshal.StructureToPtr((object)rECT, m.LParam, fDeleteOld: true);
		m.Result = IntPtr.Zero;
		return true;
	}

	private bool OnWmNcPaint(ref Message m)
	{
		IntPtr windowDC = NativeMethods.GetWindowDC(base.Handle);
		if (windowDC != IntPtr.Zero)
		{
			NativeMethods.RECT lpRect = default(NativeMethods.RECT);
			NativeMethods.GetWindowRect((int)base.Handle, ref lpRect);
			if (m.WParam.ToInt32() != 1)
			{
				int regionData = NativeMethods.GetRegionData(m.WParam, 0, IntPtr.Zero);
				if (regionData > 0)
				{
					IntPtr intPtr = Marshal.AllocHGlobal(regionData);
					if (NativeMethods.GetRegionData(m.WParam, regionData, intPtr) > 0)
					{
						Matrix matrix = new Matrix();
						matrix.Translate(-lpRect.left, -lpRect.top, MatrixOrder.Append);
						if (IsRightToLeft)
						{
							matrix.Scale(-1f, 1f, MatrixOrder.Append);
							matrix.Translate(lpRect.Width, 0f, MatrixOrder.Append);
						}
						NativeMethods.XFORM lpXform = new NativeMethods.XFORM
						{
							eM11 = matrix.Elements[0],
							eM12 = matrix.Elements[1],
							eM21 = matrix.Elements[2],
							eM22 = matrix.Elements[3],
							eDx = matrix.Elements[4],
							eDy = matrix.Elements[5]
						};
						IntPtr intPtr2 = NativeMethods.ExtCreateRegion(ref lpXform, regionData, intPtr);
						if (intPtr2 != IntPtr.Zero)
						{
							NativeMethods.SelectClipRgn(windowDC, intPtr2);
							NativeMethods.DeleteObject(intPtr2);
						}
					}
					Marshal.FreeHGlobal(intPtr);
				}
			}
			IntPtr intPtr3 = NativeMethods.CreateCompatibleDC(windowDC);
			if (intPtr3 != IntPtr.Zero)
			{
				IntPtr intPtr4 = NativeMethods.CreateCompatibleBitmap(windowDC, lpRect.Width, lpRect.Height);
				if (intPtr4 != IntPtr.Zero)
				{
					NativeMethods.SelectObject(intPtr3, intPtr4);
					using (Graphics g = Graphics.FromHdc(intPtr3))
					{
						DrawFrame(g, new Rectangle(0, 0, lpRect.Width, lpRect.Height));
						int borderWidth = FrameLayout.BorderWidth;
						int num = lpRect.Width - borderWidth;
						if (num - borderWidth > 0)
						{
							int captionHeight = CaptionHeight;
							int num2 = lpRect.Height - borderWidth;
							if (num2 - captionHeight > 0)
							{
								NativeMethods.ExcludeClipRect(windowDC, borderWidth, captionHeight, num, num2);
							}
						}
						NativeMethods.BitBlt(windowDC, 0, 0, lpRect.Width, lpRect.Height, intPtr3, 0, 0, 13369376);
					}
					NativeMethods.DeleteObject(intPtr4);
				}
				NativeMethods.DeleteDC(intPtr3);
			}
			NativeMethods.ReleaseDC(base.Handle, windowDC);
		}
		m.Result = IntPtr.Zero;
		return true;
	}

	private bool OnWmNcHitTest(ref Message m)
	{
		bool result = false;
		int num = NativeMethods.LOWORD(m.LParam);
		int num2 = NativeMethods.HIWORD(m.LParam);
		int hitTest = GetHitTest(num, num2);
		if (hitTest != -2)
		{
			m.Result = (IntPtr)hitTest;
			result = true;
		}
		return result;
	}

	private bool OnWmNcActivate(ref Message m)
	{
		bool result = false;
		m_bActive = m.WParam != IntPtr.Zero;
		if (!m_bActive)
		{
			m_highlightedButton = 4;
		}
		if (IsVisible)
		{
			if (!base.IsMdiContainer)
			{
				NativeMethods.LockWindowUpdate(base.Handle);
			}
			base.WndProc(ref m);
			NativeMethods.LockWindowUpdate(IntPtr.Zero);
			Message m2 = new Message
			{
				Msg = 133,
				HWnd = m.HWnd,
				WParam = (IntPtr)1,
				LParam = (IntPtr)0
			};
			OnWmNcPaint(ref m2);
			result = true;
		}
		return result;
	}

	private bool OnWmNcMouseMove(ref Message m)
	{
		SelectedButton = GetButtonId(m.LParam);
		if (!m_bMouseIsTracked)
		{
			NativeMethods.TRACKMOUSEEVENT lpEventTrack = default(NativeMethods.TRACKMOUSEEVENT);
			lpEventTrack.cbSize = Marshal.SizeOf((object)lpEventTrack);
			lpEventTrack.hwndTrack = base.Handle;
			lpEventTrack.dwFlags = 18;
			NativeMethods.TrackMouseEvent(ref lpEventTrack);
			m_bMouseIsTracked = true;
		}
		m.Result = IntPtr.Zero;
		return true;
	}

	private bool OnWmNcMouseLeave(ref Message m)
	{
		SelectedButton = 4;
		m_bMouseIsTracked = false;
		return false;
	}

	private bool OnWmNcLButtonDown(ref Message m)
	{
		int buttonId = GetButtonId(m.LParam);
		if (buttonId != 4)
		{
			if (IsButtonEnabled(buttonId))
			{
				PressedButton = buttonId;
				base.Capture = true;
			}
			m.Result = IntPtr.Zero;
		}
		else
		{
			BaseWndProc(ref m);
		}
		return true;
	}

	private bool OnWmMouseMove(ref Message m)
	{
		if (base.Capture)
		{
			Point p = new Point(NativeMethods.LOWORD(m.LParam), NativeMethods.HIWORD(m.LParam));
			SelectedButton = GetButtonId(PointToScreen(p));
		}
		return false;
	}

	private bool OnWmLButtonUp(ref Message m)
	{
		if (PressedButton != 4)
		{
			Point p = new Point(NativeMethods.LOWORD(m.LParam), NativeMethods.HIWORD(m.LParam));
			int buttonId = GetButtonId(PointToScreen(p));
			if (buttonId == PressedButton)
			{
				Form form = ((buttonId < 4 || buttonId == 20) ? this : base.ActiveMdiChild);
				if (form != null && form.IsHandleCreated)
				{
					form.BeginInvoke(m_sendMessageHandler, form.Handle, 274, GetButtonCommand(buttonId), 0);
				}
			}
		}
		return false;
	}

	private bool OnWmCaptureChanged(ref Message m)
	{
		PressedButton = 4;
		return false;
	}

	private bool OnWmSetIcon(ref Message m)
	{
		BaseWndProc(ref m);
		FrameLayout.PerformLayout(base.Width, base.Height);
		InvalidateFrame();
		return true;
	}

	private bool OnWmSetText(ref Message m)
	{
		BaseWndProc(ref m);
		InvalidateFrame();
		return true;
	}

	private bool OnWmGetMinMaxInfo(ref Message m)
	{
		NativeMethods.MINMAXINFO mINMAXINFO = (NativeMethods.MINMAXINFO)m.GetLParam(typeof(NativeMethods.MINMAXINFO));
		Rectangle maxRectangle = GetMaxRectangle();
		int num = MaximumSize.Width;
		int num2 = MaximumSize.Height;
		int num3 = MinimumSize.Width;
		int num4 = MinimumSize.Height;
		mINMAXINFO.ptMaxPosition.X = maxRectangle.X;
		mINMAXINFO.ptMaxPosition.Y = maxRectangle.Y;
		mINMAXINFO.ptMaxSize.X = maxRectangle.Width;
		mINMAXINFO.ptMaxSize.Y = maxRectangle.Height;
		if (num > 0)
		{
			if (mINMAXINFO.ptMaxSize.X > num)
			{
				mINMAXINFO.ptMaxSize.X = num;
			}
			if (mINMAXINFO.ptMaxTrackSize.X > num)
			{
				mINMAXINFO.ptMaxTrackSize.X = num;
			}
		}
		if (num2 > 0)
		{
			if (mINMAXINFO.ptMaxSize.Y > num2)
			{
				mINMAXINFO.ptMaxSize.Y = num2;
			}
			if (mINMAXINFO.ptMaxTrackSize.Y > num2)
			{
				mINMAXINFO.ptMaxTrackSize.Y = num2;
			}
		}
		FrameLayoutInfo frameLayout = FrameLayout;
		int borderWidth = frameLayout.BorderWidth;
		int num5 = frameLayout.CaptionMinWidth + borderWidth * 2;
		int num6 = frameLayout.CaptionHeight + borderWidth;
		mINMAXINFO.ptMinTrackSize.X = ((num3 > 0 && num3 > num5) ? num3 : num5);
		mINMAXINFO.ptMinTrackSize.Y = ((num4 > 0 && num4 > num6) ? num4 : num6);
		Marshal.StructureToPtr((object)mINMAXINFO, m.LParam, fDeleteOld: false);
		m.Result = IntPtr.Zero;
		return true;
	}

	private bool OnWmWindowPosChanging(ref Message m)
	{
		base.WndProc(ref m);
		if (!base.TopLevel && IsMaximized)
		{
			NativeMethods.WINDOWPOS wINDOWPOS = (NativeMethods.WINDOWPOS)m.GetLParam(typeof(NativeMethods.WINDOWPOS));
			if ((wINDOWPOS.flags & 3) != 3)
			{
				Rectangle maxRectangle = GetMaxRectangle();
				wINDOWPOS.x = maxRectangle.X;
				wINDOWPOS.y = maxRectangle.Y;
				wINDOWPOS.cx = maxRectangle.Width;
				wINDOWPOS.cy = maxRectangle.Height;
				wINDOWPOS.flags &= -4;
				Marshal.StructureToPtr((object)wINDOWPOS, m.LParam, fDeleteOld: false);
			}
		}
		return true;
	}

	private bool OnWmWindowPosChanged(ref Message m)
	{
		bool result = false;
		if ((((NativeMethods.WINDOWPOS)m.GetLParam(typeof(NativeMethods.WINDOWPOS))).flags & 1) == 0)
		{
			SelectedButton = 4;
			m_bSuppressSizing = true;
			UpdateRegion();
			base.WndProc(ref m);
			Invalidate();
			m_bSuppressSizing = false;
			UpdateRegion();
			result = true;
		}
		return result;
	}

	private bool OnWmSetCursor(ref Message m)
	{
		Cursor cursor;
		switch (NativeMethods.LOWORD(m.LParam))
		{
		case 12:
		case 15:
			cursor = Cursors.SizeNS;
			break;
		case 10:
		case 11:
			cursor = Cursors.SizeWE;
			break;
		case 13:
		case 17:
			cursor = Cursors.SizeNWSE;
			break;
		case 14:
		case 16:
			cursor = Cursors.SizeNESW;
			break;
		default:
			return false;
		}
		NativeMethods.SetCursor(cursor.Handle);
		m.Result = (IntPtr)1;
		return true;
	}

	private bool OnWmSysCommand(ref Message m)
	{
		int num = (int)m.WParam & 0xFFF0;
		if (num == 61584 || num == 61696 || num == 61824)
		{
			BaseWndProc(ref m);
			return true;
		}
		return false;
	}

	private bool OnWmCotextMenu(ref Message m)
	{
		if (m.WParam == m.HWnd)
		{
			Point p = new Point(NativeMethods.LOWORD(m.LParam), NativeMethods.HIWORD(m.LParam));
			if (PointToClient(p).Y < 0)
			{
				IntPtr systemMenu = NativeMethods.GetSystemMenu(base.Handle, bRevert: false);
				if (systemMenu != IntPtr.Zero)
				{
					int num = TrackPopupMenu(systemMenu, 256u, p.X, p.Y, 0, m.HWnd, IntPtr.Zero);
					if (num != 0)
					{
						NativeMethods.SendMessage(m.HWnd, 274, num, m.LParam);
					}
				}
				return true;
			}
		}
		return false;
	}

	private void OnCompositionChanged(ref Message m)
	{
		m_bCompositionEnabled = GetIsCompositionEnabled();
		base.Region = null;
		RecreateHandle();
	}

	private void BaseWndProc(ref Message m)
	{
		using (new CaptionManager(this, bHideCaption: true))
		{
			base.WndProc(ref m);
		}
	}

	private void UpdateRegion()
	{
		if (!base.IsHandleCreated)
		{
			return;
		}
		IntPtr handle = base.Handle;
		if (base.FormBorderStyle != FormBorderStyle.None)
		{
			NativeMethods.RECT lpRect = default(NativeMethods.RECT);
			NativeMethods.GetWindowRect((int)handle, ref lpRect);
			if (!IsMaximized || (IsMaximized && base.IsMdiChild))
			{
				IntPtr intPtr = NativeMethods.CreateRectRgn(0, 0, lpRect.Width + 1, lpRect.Height + 1);
				if (!(intPtr != IntPtr.Zero))
				{
					return;
				}
				IntPtr intPtr2 = NativeMethods.CreateRoundRectRgn(0, 0, lpRect.Width + 1, lpRect.Height + 6 + 1, 12, 12);
				if (intPtr2 != IntPtr.Zero)
				{
					if (NativeMethods.CombineRgn(intPtr, intPtr, intPtr2, 1) != 0)
					{
						NativeMethods.SetWindowRgn(handle, intPtr, bRedraw: true);
						intPtr = IntPtr.Zero;
					}
					NativeMethods.DeleteObject(intPtr2);
				}
				NativeMethods.DeleteObject(intPtr);
				return;
			}
			Screen screen = Screen.FromHandle(handle);
			if (screen != null)
			{
				Rectangle a = new Rectangle(lpRect.left, lpRect.top, lpRect.Width, lpRect.Height);
				Rectangle rectangle = Rectangle.Intersect(a, screen.WorkingArea);
				rectangle.Offset(-a.X, -a.Y);
				IntPtr intPtr3 = NativeMethods.CreateRectRgn(rectangle.X, rectangle.Y, rectangle.Right, rectangle.Bottom);
				if (intPtr3 != IntPtr.Zero)
				{
					NativeMethods.SetWindowRgn(handle, intPtr3, bRedraw: true);
				}
			}
		}
		else
		{
			NativeMethods.SetWindowRgn(handle, IntPtr.Zero, bRedraw: true);
		}
	}

	private void UpdateFrame()
	{
		m_frameLayout = null;
		if (base.IsHandleCreated)
		{
			NativeMethods.SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, 0, 0, 55);
		}
	}

	private GraphicsPath GetFormPath()
	{
		GraphicsPath result = null;
		if (base.WindowState == FormWindowState.Normal)
		{
			NativeMethods.RECT lpRect = default(NativeMethods.RECT);
			NativeMethods.GetWindowRect((int)base.Handle, ref lpRect);
			result = GetFormPath(lpRect.Width, lpRect.Height);
		}
		return result;
	}

	private GraphicsPath GetFormPath(int width, int height)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int num = 6;
		int num2 = num * 2;
		graphicsPath.AddArc(0, 0, num2, num2, 180f, 90f);
		graphicsPath.AddLine(num, 0, width - num, 0);
		graphicsPath.AddArc(width - num2 - 1, 0, num2, num2, -89f, 89f);
		graphicsPath.AddLine(width, num, width, height);
		graphicsPath.AddLine(width, height, 0, height);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	private Point[] GetRoundedPolygon(Rectangle rc, int radius)
	{
		int num = rc.X;
		int num2 = rc.Y;
		int num3 = rc.Right - 1;
		int num4 = rc.Bottom - 1;
		return new Point[8]
		{
			new Point(num, num2 + radius),
			new Point(num + radius, num2),
			new Point(num3 - radius, num2),
			new Point(num3, num2 + radius),
			new Point(num3, num4 - radius),
			new Point(num3 - radius, num4),
			new Point(num + radius, num4),
			new Point(num, num4 - radius)
		};
	}

	private void InvalidateFrame()
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
		}
	}

	private int GetHitTest(int x, int y)
	{
		NativeMethods.RECT lpRect = default(NativeMethods.RECT);
		NativeMethods.GetWindowRect((int)base.Handle, ref lpRect);
		if (NativeMethods.PtInRect(ref lpRect, new NativeMethods.POINT(x, y)))
		{
			int num = x - lpRect.left;
			int num2 = y - lpRect.top;
			int num3 = lpRect.Width - num;
			int num4 = lpRect.Height - num2;
			FrameLayoutInfo frameLayout = FrameLayout;
			int captionHeight = frameLayout.CaptionHeight;
			int borderWidth = frameLayout.BorderWidth;
			if (num < borderWidth || num3 < borderWidth || num2 < captionHeight || num4 < borderWidth)
			{
				if (IsSizeable)
				{
					if (num < borderWidth)
					{
						if (num2 < captionHeight)
						{
							return 13;
						}
						if (num4 < borderWidth)
						{
							return 16;
						}
						return 10;
					}
					if (num3 < borderWidth)
					{
						if (num2 < captionHeight)
						{
							return 14;
						}
						if (num4 < borderWidth)
						{
							return 17;
						}
						return 11;
					}
					if (num2 < borderWidth)
					{
						return 12;
					}
					if (num4 < borderWidth)
					{
						return 15;
					}
				}
				if (num2 < TitleHeight)
				{
					if (frameLayout.IconBox.Contains(num, num2))
					{
						return 3;
					}
					if (frameLayout.CloseBox.Contains(num, num2))
					{
						return 20;
					}
					if (frameLayout.MaximizeBox.Contains(num, num2))
					{
						return 9;
					}
					if (frameLayout.MinimizeBox.Contains(num, num2))
					{
						return 8;
					}
					if (frameLayout.HelpButton.Contains(num, num2))
					{
						return 21;
					}
					return 2;
				}
				return 5;
			}
		}
		return -2;
	}

	private int GetButtonId(IntPtr points)
	{
		int num = NativeMethods.LOWORD(points);
		int num2 = NativeMethods.HIWORD(points);
		return GetButtonId(new Point(num, num2));
	}

	private int GetButtonId(Point pt)
	{
		NativeMethods.RECT lpRect = default(NativeMethods.RECT);
		NativeMethods.GetWindowRect((int)base.Handle, ref lpRect);
		int num = pt.X - lpRect.left;
		int num2 = pt.Y - lpRect.top;
		FrameLayoutInfo frameLayout = FrameLayout;
		if (frameLayout.CloseBox.Contains(num, num2))
		{
			return 0;
		}
		if (frameLayout.MaximizeBox.Contains(num, num2))
		{
			return MaximizeButton;
		}
		if (frameLayout.MinimizeBox.Contains(num, num2))
		{
			return MinimizeButton;
		}
		if (frameLayout.HelpButton.Contains(num, num2))
		{
			return 20;
		}
		if (frameLayout.MdiMaximizeBox.Contains(num, num2))
		{
			return 19;
		}
		if (frameLayout.MdiMinimizeBox.Contains(num, num2))
		{
			return 18;
		}
		if (frameLayout.MdiCloseBox.Contains(num, num2))
		{
			return 16;
		}
		if (frameLayout.MdiHelpButton.Contains(num, num2))
		{
			return 21;
		}
		return 4;
	}

	private bool IsButtonEnabled(int button)
	{
		bool result = true;
		switch (button)
		{
		case 1:
			result = base.MaximizeBox;
			break;
		case 2:
			result = base.MinimizeBox;
			break;
		case 0:
			result = CloseBox;
			break;
		case 18:
			if (base.IsMdiContainer)
			{
				Form activeMdiChild = base.ActiveMdiChild;
				if (activeMdiChild != null)
				{
					result = activeMdiChild.MinimizeBox;
				}
			}
			break;
		}
		return result;
	}

	private void DrawFrame(Graphics g, Rectangle rc)
	{
		DrawFrameBackground(g, rc);
		DrawFrameCaption(g, rc);
		if (base.FormBorderStyle != FormBorderStyle.None)
		{
			DrawFrameBorders(g, rc);
		}
	}

	private void DrawFrameBackground(Graphics g, Rectangle rc)
	{
		Office2007Colors colorTable = ColorTable;
		Color color = (IsActive ? colorTable.ActiveTitleGradientBegin : colorTable.InactiveTitleGradientBegin);
		Color color2 = (IsActive ? colorTable.ActiveTitleGradientEnd : colorTable.InactiveTitleGradientEnd);
		if (Text == string.Empty && !base.ControlBox)
		{
			color = (color2 = (IsActive ? colorTable.ActiveFormBorderColor : colorTable.InactiveFormBorderColor));
		}
		int num = rc.Left - 1;
		int num2 = rc.Width + 1;
		int titleHeight = TitleHeight;
		if (titleHeight > 0)
		{
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(0, rc.Top, 1, titleHeight), color, color2, 90f);
			linearGradientBrush.Blend = m_blTitle;
			g.FillRectangle(linearGradientBrush, new Rectangle(num, rc.Top, num2, titleHeight));
		}
		using Brush brush = new SolidBrush(IsActive ? colorTable.ActiveFormBorderColor : colorTable.InactiveFormBorderColor);
		g.FillRectangle(brush, new Rectangle(num, rc.Top + titleHeight, num2, rc.Height - titleHeight));
	}

	private void DrawFrameCaption(Graphics g, Rectangle rc)
	{
		FrameLayoutInfo frameLayout = FrameLayout;
		DrawFrameIcon(g, frameLayout.IconBox);
		DrawFrameButton(g, frameLayout.CloseBox, 0, CloseBox);
		DrawFrameButton(g, frameLayout.MaximizeBox, MaximizeButton, base.MaximizeBox);
		DrawFrameButton(g, frameLayout.MinimizeBox, MinimizeButton, base.MinimizeBox);
		DrawFrameButton(g, frameLayout.HelpButton, 20, base.HelpButton);
		if (base.IsMdiContainer)
		{
			Form activeMdiChild = base.ActiveMdiChild;
			if (activeMdiChild != null && activeMdiChild.WindowState == FormWindowState.Maximized)
			{
				DrawFrameIcon(g, frameLayout.MdiIconBox);
				DrawFrameButton(g, frameLayout.MdiCloseBox, 16, GetCloseBox(activeMdiChild));
				DrawFrameButton(g, frameLayout.MdiMaximizeBox, 19, activeMdiChild.MaximizeBox);
				DrawFrameButton(g, frameLayout.MdiMinimizeBox, 18, activeMdiChild.MinimizeBox);
				DrawFrameButton(g, frameLayout.MdiHelpButton, 21, activeMdiChild.HelpButton);
			}
		}
		DrawFrameText(g, frameLayout.TextBox);
	}

	private void DrawFrameIcon(Graphics g, Rectangle rc)
	{
		if (rc.Width <= 0 || rc.Height <= 0 || base.Icon == null)
		{
			return;
		}
		Icon icon = new Icon(base.Icon, rc.Size);
		if (icon != null)
		{
			if (IsRightToLeft)
			{
				rc.X = base.Width - rc.Right;
			}
			g.DrawIcon(icon, rc);
		}
	}

	private void DrawFrameButton(Graphics g, Rectangle rc, int buttonId, bool bEnabled)
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
		int num2 = rc.Y + (rc.Height - size.Height) / 2 + ((buttonId != 20 && buttonId != 21) ? 1 : 0);
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
		Office2007Colors colorTable = ColorTable;
		DrawFrameButtonGradient(g, ref rc, colorTable.SystemButtonSelectedGradientBegin, colorTable.SystemButtonSelectedGradientEnd);
		DrawFrameButtonBorder(g, ref rc, colorTable.SystemButtonBorderSelected);
		g.SmoothingMode = smoothingMode;
	}

	private void DrawFrameButtonBackgroundPressed(Graphics g, ref Rectangle rc)
	{
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		Office2007Colors colorTable = ColorTable;
		DrawFrameButtonGradient(g, ref rc, colorTable.SystemButtonPressedGradientBegin, colorTable.SystemButtonPressedGradientEnd);
		DrawFrameButtonFlash(g, ref rc);
		DrawFrameButtonBorder(g, ref rc, colorTable.SystemButtonBorderPressed);
		g.SmoothingMode = smoothingMode;
	}

	private void DrawFrameButtonGradient(Graphics g, ref Rectangle rc, Color clBegin, Color clEnd)
	{
		IntPtr intPtr = NativeMethods.CreateRoundRectRgn(rc.X, rc.Y, rc.Right, rc.Bottom, 2, 2);
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
		NativeMethods.DeleteObject(intPtr);
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
		g.DrawPolygon(pen2, GetRoundedPolygon(rc, 1));
	}

	private void DrawFrameText(Graphics g, Rectangle rc)
	{
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		string text = Text;
		int lCID = InputLanguage.CurrentInputLanguage.Culture.LCID;
		if (RightToLeft == RightToLeft.Yes && (lCID == 1037 || lCID == 13))
		{
			string empty = string.Empty;
			if (text.EndsWith("."))
			{
				string[] array = text.Split('.');
				empty = array[0];
				text = "." + empty;
			}
			else if (text.EndsWith(".]"))
			{
				int startIndex = text.LastIndexOf('.');
				empty = text.Remove(startIndex, 2);
				text = "[." + empty;
			}
		}
		if (!(text != string.Empty))
		{
			return;
		}
		IntPtr hdc = g.GetHdc();
		IntPtr captionFontInternal = CaptionFontInternal;
		if (captionFontInternal != IntPtr.Zero)
		{
			int iBkMode = NativeMethods.SetBkMode(hdc, 1);
			int num = 0;
			num = ((!(CaptionForeColor != Color.Empty) || !(CaptionForeColor != ColorTable.FormTextColor)) ? NativeMethods.SetTextColor(hdc, ColorTranslator.ToWin32(ColorTable.FormTextColor)) : NativeMethods.SetTextColor(hdc, ColorTranslator.ToWin32(CaptionForeColor)));
			IntPtr hObject = NativeMethods.SelectObject(hdc, captionFontInternal);
			int num2 = 34852;
			HorizontalAlignment captionAlign = CaptionAlign;
			HorizontalAlignment horizontalAlignment = captionAlign;
			if (horizontalAlignment == HorizontalAlignment.Center)
			{
				num2 |= 1;
			}
			else if ((RightToLeft == RightToLeft.Yes && !IsRightToLeft) ^ (captionAlign == HorizontalAlignment.Right))
			{
				num2 |= 2;
			}
			NativeMethods.RECT lpRect = new NativeMethods.RECT(rc);
			NativeMethods.DrawText(hdc, text, text.Length, ref lpRect, num2);
			NativeMethods.SelectObject(hdc, hObject);
			NativeMethods.SetTextColor(hdc, num);
			NativeMethods.SetBkMode(hdc, iBkMode);
			NativeMethods.DeleteObject(captionFontInternal);
		}
		g.ReleaseHdc(hdc);
	}

	private void DrawFrameBorders(Graphics g, Rectangle rc)
	{
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		if (base.WindowState != FormWindowState.Maximized)
		{
			GraphicsPath formPath = GetFormPath(rc.Width - 1, rc.Height - 1);
			if (formPath != null)
			{
				g.DrawPath(m_pBorder, formPath);
				formPath.Dispose();
			}
		}
		int x = rc.Left + 1;
		int x2 = rc.Right - 1;
		int num = rc.Top + TitleHeight - 2;
		if (Text != string.Empty || base.ControlBox)
		{
			g.DrawLine(m_pSeparatorDark, x, num, x2, num);
			g.DrawLine(m_pSeparatorLight, x, num + 1, x2, num + 1);
		}
		g.SmoothingMode = smoothingMode;
	}

	private Rectangle GetMaxRectangle()
	{
		Rectangle result = (base.TopLevel ? DesktopRectangle : ParentClientRectangle);
		int borderWidth = FrameLayout.BorderWidth;
		if (base.IsMdiChild)
		{
			result.X -= borderWidth;
			result.Y -= CaptionHeight;
			result.Width += 2 * borderWidth;
			result.Height += CaptionHeight + borderWidth;
		}
		else
		{
			result = new Rectangle(-borderWidth, -borderWidth, result.Width + 2 * borderWidth, result.Height + 2 * borderWidth);
		}
		return result;
	}

	private Image GetButtonImage(int buttonID)
	{
		Image result = null;
		switch (buttonID)
		{
		case 20:
		case 21:
			result = m_bmpHelpButton;
			break;
		default:
		{
			int num = (int)((m_theme >= Office2007Theme.Blue) ? m_theme : Office2007Theme.Blue);
			try
			{
				result = m_systemButtons.Images[num * 4 + (buttonID & 0xF)];
			}
			catch (ArgumentOutOfRangeException)
			{
				UpdateSystemButtonsImages();
				result = m_systemButtons.Images[num * 4 + (buttonID & 0xF)];
			}
			catch
			{
			}
			break;
		}
		}
		return result;
	}

	private void UpdateSystemButtonsImages()
	{
		m_systemButtons.Images.Clear();
		m_systemButtons = null;
		Bitmap value = new Bitmap(typeof(Office2007Form).Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Office2007Form.SystemButtons.bmp"));
		m_systemButtons = new ImageList();
		m_systemButtons.ImageSize = new Size(9, 9);
		m_systemButtons.Images.AddStrip(value);
		m_systemButtons.TransparentColor = Color.Magenta;
	}

	private int GetButtonCommand(int buttonID)
	{
		int num = 0;
		switch (buttonID)
		{
		case 20:
		case 21:
			return m_iSystemHelpCommand;
		default:
			return m_systemCommands[buttonID & 3];
		}
	}

	private void MoveWindow(ref Message m)
	{
		if (base.WindowState != FormWindowState.Maximized)
		{
			NativeMethods.SendMessage(m.HWnd, 274, 61458, m.LParam);
		}
	}

	private void SizeWindow(ref Message m, int direction)
	{
		NativeMethods.SendMessage(m.HWnd, 274, 0xF000 | direction, m.LParam);
	}

	private bool GetIsCompositionEnabled()
	{
		bool pfEnabled = false;
		if (Environment.OSVersion.Version.Major >= 6)
		{
			DwmIsCompositionEnabled(ref pfEnabled);
		}
		return pfEnabled;
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern int TrackPopupMenu(IntPtr hMenu, uint uFlags, int x, int y, int nReserved, IntPtr hWnd, IntPtr prcRect);

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern bool AdjustWindowRectEx(ref NativeMethods.RECT lpRect, int dwStyle, bool bMenu, int dwExStyle);

	[DllImport("gdi32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr CreateFontIndirect(ref NativeMethods.LOGFONT lplf);

	[DllImport("dwmapi.dll")]
	private static extern int DwmIsCompositionEnabled(ref bool pfEnabled);

	[DllImport("user32.dll", EntryPoint = "GetClassLong")]
	private static extern uint GetClassLongPtr32(IntPtr hWnd, int nIndex);

	[DllImport("user32.dll", EntryPoint = "GetClassLongPtr")]
	private static extern IntPtr GetClassLongPtr64(IntPtr hWnd, int nIndex);

	private static IntPtr GetClassLongPtr(IntPtr hWnd, int nIndex)
	{
		if (IntPtr.Size > 4)
		{
			return GetClassLongPtr64(hWnd, nIndex);
		}
		return new IntPtr(GetClassLongPtr32(hWnd, nIndex));
	}

	private void InvalidateOnDemand()
	{
		if (UseOffice2007SchemeBackColor)
		{
			Invalidate();
		}
	}

	protected virtual void OnColorSchemeChanged()
	{
		InvalidateFrame();
		InvalidateOnDemand();
	}

	private bool ShouldSerializeColorScheme()
	{
		return m_theme >= Office2007Theme.Blue;
	}

	private void ResetColorScheme()
	{
		m_theme = Office2007Theme.Managed;
	}

	private bool ShouldSerializeCaptionFont()
	{
		return m_captionFont != null;
	}

	private void ResetCaptionFont()
	{
		CaptionFont = null;
	}
}
