using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Reflection;
using System.Resources;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MdiSysMenuProvider : DisposableWithDisposedProp
{
	[DocumentationExclude]
	protected enum SysButtons
	{
		Minimize,
		Restore,
		Close,
		None
	}

	protected internal const string ICO_MINIMIZE = "Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.bmps.minimizemc.ico";

	protected internal const string ICO_RESTORE = "Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.bmps.restoremc.ico";

	protected internal const string ICO_CLOSE = "Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.bmps.closemc.ico";

	protected internal const int UM_REMOVE_MAIN_MENU = 32771;

	protected internal const int UM_RESTORE_MAIN_MENU = 32772;

	private static Icon _icoRestore;

	private static Icon _icoMinimize;

	private static Icon _icoClose;

	private bool m_bNeedInvalidate = true;

	private MdiClientNativeWnd m_nwMdiClient;

	protected internal MdiClient m_wndMdiClient;

	protected internal IntPtr m_mnuActiveChild = IntPtr.Zero;

	private Form m_wndActiveChild;

	private SysButtons m_sbHilight = SysButtons.None;

	private SysButtons m_sbMouseClick = SysButtons.None;

	private MdiPopupMenu m_systemMenu;

	private bool m_bShowControlBox = true;

	private GCHandle m_ProcHandle;

	private IntPtr m_MsgHookProc;

	private bool m_bChildMaximized;

	private IntPtr m_hwndChild;

	private Form m_frmMain;

	private Control m_ctrlCanvas;

	private Rectangle m_rcSysIcon = Rectangle.Empty;

	private Rectangle m_rcControlBox = Rectangle.Empty;

	protected internal Hashtable m_hashMenus = new Hashtable();

	private VisualStyle m_style;

	private ImageList imageList1;

	private IContainer components;

	private ToolTip m_ctrlBoxToolTip = new ToolTip();

	private bool m_showSysBtnToolTipOnMDIChildMax = true;

	private bool m_bNeedPaintPopupSystemMenu;

	private bool m_bIsVertical;

	public bool NeedMenuButtons => IsChildMaximized;

	public Form WndActiveChild
	{
		get
		{
			return m_wndActiveChild;
		}
		set
		{
			if (m_wndActiveChild != value)
			{
				Form wndActiveChild = m_wndActiveChild;
				m_wndActiveChild = value;
				if (wndActiveChild == null || m_wndActiveChild == null)
				{
					OnNeedMenuButtonsChanged(EventArgs.Empty);
				}
			}
		}
	}

	public bool ShowToolTipOnMDIChildMax
	{
		get
		{
			return m_showSysBtnToolTipOnMDIChildMax;
		}
		set
		{
			m_showSysBtnToolTipOnMDIChildMax = value;
		}
	}

	public bool NeedUpdateHostedForm
	{
		get
		{
			return m_bNeedInvalidate;
		}
		set
		{
			if (value != m_bNeedInvalidate)
			{
				m_bNeedInvalidate = value;
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	public static int ButtonHeight => SystemInformation.MenuFont.Height + 2;

	public VisualStyle Style
	{
		get
		{
			return m_style;
		}
		set
		{
			m_style = value;
		}
	}

	public bool ShowControlBox
	{
		get
		{
			return m_bShowControlBox;
		}
		set
		{
			if (m_bShowControlBox != value)
			{
				m_bShowControlBox = value;
				if (m_ctrlCanvas != null)
				{
					m_ctrlCanvas.Invalidate();
				}
			}
		}
	}

	public PopupMenu SystemMenu => m_systemMenu;

	public Rectangle SystemIconRect
	{
		get
		{
			return m_rcSysIcon;
		}
		set
		{
			int buttonHeight = ButtonHeight;
			m_rcSysIcon = new Rectangle(value.X, value.Y, buttonHeight, buttonHeight);
			if (IsVertical)
			{
				m_rcSysIcon = Transform(m_rcSysIcon);
			}
		}
	}

	public Rectangle ControlBoxRect
	{
		get
		{
			return m_rcControlBox;
		}
		set
		{
			int buttonHeight = ButtonHeight;
			m_rcControlBox = new Rectangle(value.X, (int)Math.Ceiling((float)(value.Height - buttonHeight) / 2f), value.Width, buttonHeight);
		}
	}

	public Control Canvas
	{
		get
		{
			return m_ctrlCanvas;
		}
		set
		{
			if (m_ctrlCanvas != value)
			{
				if (m_ctrlCanvas != null)
				{
					m_ctrlCanvas.Resize -= ControlCanvas_Resize;
				}
				m_ctrlCanvas = value;
				if (m_ctrlCanvas != null)
				{
					m_ctrlCanvas.Resize += ControlCanvas_Resize;
				}
			}
		}
	}

	public Form MainForm
	{
		get
		{
			return m_frmMain;
		}
		set
		{
			if (m_frmMain != value)
			{
				if (m_frmMain != null)
				{
					UnInitializeProvider();
				}
				m_frmMain = value;
				if (m_frmMain != null)
				{
					InitializeProvider(value);
					InitSystemMenu();
				}
			}
		}
	}

	protected Rectangle rcMinButton
	{
		get
		{
			Rectangle rectangle = Rectangle.Empty;
			if (m_wndActiveChild == null || !MinimizeButtonHidden)
			{
				rectangle = new Rectangle(0, m_rcControlBox.Top, ButtonHeight, m_rcControlBox.Height);
				if (IsCanvasRTL)
				{
					rectangle.X = m_rcControlBox.Left + 2 * ButtonHeight;
				}
				else
				{
					rectangle.X = m_rcControlBox.Left;
				}
			}
			if (IsVertical)
			{
				rectangle = Transform(rectangle);
			}
			return rectangle;
		}
	}

	protected Rectangle rcRestoreButton
	{
		get
		{
			Rectangle rectangle = Rectangle.Empty;
			if (m_wndActiveChild == null || !RestoreButtonHidden)
			{
				int buttonHeight = ButtonHeight;
				rectangle = new Rectangle(m_rcControlBox.Left + buttonHeight, m_rcControlBox.Top, buttonHeight, m_rcControlBox.Height);
			}
			if (IsVertical)
			{
				rectangle = Transform(rectangle);
			}
			return rectangle;
		}
	}

	protected Rectangle rcCloseButton
	{
		get
		{
			Rectangle rectangle = Rectangle.Empty;
			if (m_wndActiveChild == null || !CloseButtonHidden)
			{
				int buttonHeight = ButtonHeight;
				rectangle = new Rectangle(0, m_rcControlBox.Top, buttonHeight, m_rcControlBox.Height);
				if (IsCanvasRTL)
				{
					rectangle.X = m_rcControlBox.Left;
				}
				else
				{
					int num = ((!MinimizeButtonHidden) ? (2 * buttonHeight + 2) : 0);
					rectangle.X = m_rcControlBox.Left + num;
				}
			}
			if (IsVertical)
			{
				rectangle = Transform(rectangle);
			}
			return rectangle;
		}
	}

	protected bool IsCanvasRTL
	{
		get
		{
			if (m_ctrlCanvas != null)
			{
				return RightToLeft.Yes == m_ctrlCanvas.RightToLeft;
			}
			return false;
		}
	}

	protected internal bool MinimizeButtonHidden
	{
		get
		{
			if (m_wndActiveChild.MinimizeBox || m_wndActiveChild.MaximizeBox)
			{
				return !ShowControlBox;
			}
			return true;
		}
	}

	protected internal bool RestoreButtonHidden => MinimizeButtonHidden;

	protected internal bool CloseButtonHidden => !ShowControlBox;

	protected bool MinimizeButtonDisabled => !m_wndActiveChild.MinimizeBox;

	protected bool RestoreButtonDisabled => !m_wndActiveChild.MaximizeBox;

	protected bool IsChildMaximized => m_bChildMaximized;

	public bool IsVertical
	{
		get
		{
			return m_bIsVertical;
		}
		set
		{
			if (value != m_bIsVertical)
			{
				m_bIsVertical = value;
			}
		}
	}

	protected bool CloseButtonEnabled
	{
		get
		{
			if (m_wndActiveChild == null || !m_wndActiveChild.IsHandleCreated || !m_wndActiveChild.ControlBox)
			{
				return false;
			}
			int classLong = Syncfusion.Runtime.InteropServices.NativeMethods.GetClassLong(m_wndActiveChild.Handle, -26);
			if ((classLong & 0x200) == 512)
			{
				return false;
			}
			return true;
		}
	}

	public event EventHandler NeedMenuButtonsChanged;

	public event TransformEventHandler PerformingTransform;

	protected virtual void OnPerformingTransform(TransformEventArgs e)
	{
		if (this.PerformingTransform != null)
		{
			this.PerformingTransform(this, e);
		}
	}

	private Rectangle Transform(Rectangle rect)
	{
		TransformEventArgs e = new TransformEventArgs();
		OnPerformingTransform(e);
		Rectangle result = new Rectangle(rect.Top, rect.Left, rect.Width, rect.Height);
		if (e.TransformOffsetY != 0)
		{
			result.X = e.TransformOffsetY - result.Height;
		}
		return result;
	}

	static MdiSysMenuProvider()
	{
		_icoMinimize = GetIcon("Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.bmps.minimizemc.ico");
		_icoRestore = GetIcon("Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.bmps.restoremc.ico");
		_icoClose = GetIcon("Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.bmps.closemc.ico");
	}

	protected static Icon GetIcon(string resourceName)
	{
		Type typeFromHandle = typeof(MdiSysMenuProvider);
		Assembly assembly = typeFromHandle.Module.Assembly;
		Stream manifestResourceStream = assembly.GetManifestResourceStream(resourceName);
		if (manifestResourceStream == null)
		{
			throw new ArgumentException("Could not find specified resource. resorce name: " + resourceName);
		}
		return new Icon(manifestResourceStream);
	}

	public MdiSysMenuProvider()
	{
		InitializeComponent();
		AttachHook();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			if (m_ctrlBoxToolTip != null)
			{
				m_ctrlBoxToolTip.Dispose();
			}
			DetachHook();
			m_nwMdiClient.ReleaseHandle();
			m_wndMdiClient = null;
			m_wndActiveChild = null;
			m_frmMain = null;
			if (m_hashMenus != null)
			{
				m_hashMenus.Clear();
				m_hashMenus = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		components = new Container();
		ResourceManager resourceManager = new ResourceManager(typeof(MdiSysMenuProvider));
		imageList1 = new ImageList(components);
		imageList1.ColorDepth = ColorDepth.Depth8Bit;
		imageList1.ImageSize = new Size(16, 16);
		imageList1.ImageStream = (ImageListStreamer)resourceManager.GetObject("imageList1.ImageStream");
		imageList1.TransparentColor = Color.Transparent;
	}

	protected void InitializeProvider(Form mainfrm)
	{
		if (!mainfrm.IsMdiContainer)
		{
			return;
		}
		m_frmMain = mainfrm;
		foreach (Control control in mainfrm.Controls)
		{
			if (control is MdiClient)
			{
				m_wndMdiClient = control as MdiClient;
				break;
			}
		}
		m_nwMdiClient = new MdiClientNativeWnd(this);
	}

	public void ActivateProvider(Control canvas)
	{
		if (MainForm != null)
		{
			Canvas = canvas;
		}
	}

	public void DeactivateProvider()
	{
		if (MainForm != null)
		{
			Canvas = null;
		}
	}

	protected void UnInitializeProvider()
	{
		if (m_frmMain != null)
		{
			DeactivateProvider();
			m_wndMdiClient = null;
			m_frmMain = null;
		}
	}

	public void CorrectLayout()
	{
	}

	public void HandlePaint(Graphics gph)
	{
		if (m_wndActiveChild != null && !(m_mnuActiveChild == IntPtr.Zero) && m_wndActiveChild.WindowState == FormWindowState.Maximized)
		{
			Icon icon = ((m_rcSysIcon.Height < 32) ? new Icon(m_wndActiveChild.Icon, 16, 16) : new Icon(m_wndActiveChild.Icon, 32, 32));
			if (icon.Size == m_rcSysIcon.Size)
			{
				gph.DrawIconUnstretched(icon, m_rcSysIcon);
			}
			else
			{
				gph.DrawIcon(icon, m_rcSysIcon);
			}
			DrawMinimizeButton(gph, btndown: false);
			DrawRestoreButton(gph, btndown: false);
			DrawCloseButton(gph, btndown: false);
			icon.Dispose();
		}
	}

	private void ShowControlBoxToolTips(Rectangle ctrlButton)
	{
		if (!m_showSysBtnToolTipOnMDIChildMax)
		{
			return;
		}
		m_ctrlBoxToolTip.InitialDelay = 2000;
		int duration = 750;
		string text = string.Empty;
		if (MainForm != null)
		{
			if (ctrlButton == rcMinButton)
			{
				text = "Minimize";
			}
			else if (ctrlButton == rcCloseButton)
			{
				text = "Close";
			}
			else if (ctrlButton == rcRestoreButton)
			{
				text = "Restore Down";
			}
			m_ctrlBoxToolTip.Show(text, MainForm, new Point(ctrlButton.Location.X + ctrlButton.Width, ctrlButton.Location.Y + ctrlButton.Height * 4), duration);
		}
	}

	public void HandleMouseMove(Point ptclient)
	{
		if (m_wndActiveChild == null || m_mnuActiveChild == IntPtr.Zero)
		{
			return;
		}
		if (rcMinButton.Contains(ptclient) && !MinimizeButtonDisabled)
		{
			if (m_sbMouseClick != SysButtons.None)
			{
				if (m_sbMouseClick == SysButtons.Minimize)
				{
					DrawButtonHilight(m_sbMouseClick, btndown: true);
					m_sbHilight = SysButtons.Minimize;
				}
				else
				{
					DrawButtonHilight(m_sbMouseClick, btndown: false);
					m_sbHilight = SysButtons.None;
				}
				return;
			}
			if (m_sbHilight != SysButtons.None && m_sbHilight != SysButtons.Minimize)
			{
				EraseButtonHilight(m_sbHilight);
				m_sbHilight = SysButtons.None;
			}
			if (m_wndActiveChild.MinimizeBox && m_sbHilight == SysButtons.None)
			{
				m_sbHilight = SysButtons.Minimize;
				DrawButtonHilight(m_sbHilight, btndown: false);
				ShowControlBoxToolTips(rcMinButton);
			}
		}
		else if (rcRestoreButton.Contains(ptclient) && !RestoreButtonDisabled)
		{
			if (m_sbMouseClick != SysButtons.None)
			{
				if (m_sbMouseClick == SysButtons.Restore)
				{
					DrawButtonHilight(m_sbMouseClick, btndown: true);
					m_sbHilight = SysButtons.Restore;
				}
				else
				{
					DrawButtonHilight(m_sbMouseClick, btndown: false);
					m_sbHilight = SysButtons.None;
				}
				return;
			}
			if (m_sbHilight != SysButtons.None && m_sbHilight != SysButtons.Restore)
			{
				EraseButtonHilight(m_sbHilight);
				m_sbHilight = SysButtons.None;
			}
			if (m_sbHilight == SysButtons.None)
			{
				m_sbHilight = SysButtons.Restore;
				DrawButtonHilight(m_sbHilight, btndown: false);
				ShowControlBoxToolTips(rcRestoreButton);
			}
		}
		else if (rcCloseButton.Contains(ptclient))
		{
			if (m_sbMouseClick != SysButtons.None)
			{
				if (m_sbMouseClick == SysButtons.Close)
				{
					DrawButtonHilight(m_sbMouseClick, btndown: true);
					m_sbHilight = SysButtons.Close;
				}
				else
				{
					DrawButtonHilight(m_sbMouseClick, btndown: false);
					m_sbHilight = SysButtons.None;
				}
				return;
			}
			if (m_sbHilight != SysButtons.None && m_sbHilight != SysButtons.Close)
			{
				EraseButtonHilight(m_sbHilight);
				m_sbHilight = SysButtons.None;
			}
			if (m_wndActiveChild.ControlBox && m_sbHilight == SysButtons.None && CloseButtonEnabled)
			{
				m_sbHilight = SysButtons.Close;
				DrawButtonHilight(m_sbHilight, btndown: false);
				ShowControlBoxToolTips(rcCloseButton);
			}
		}
		else if (m_sbHilight != SysButtons.None)
		{
			if (m_sbMouseClick != SysButtons.None)
			{
				DrawButtonHilight(m_sbMouseClick, btndown: false);
			}
			else
			{
				EraseButtonHilight(m_sbHilight);
			}
			m_sbHilight = SysButtons.None;
		}
	}

	public void HandleMouseDoubleClick(Point ptclient)
	{
		if (m_wndActiveChild != null && !(m_mnuActiveChild == IntPtr.Zero) && !m_systemMenu.IsShowing() && m_rcSysIcon.Contains(ptclient))
		{
			DestroyMDIActiveChild();
		}
	}

	public void HandleMouseDown(Point ptclient)
	{
		if (m_wndActiveChild != null && !(m_mnuActiveChild == IntPtr.Zero))
		{
			m_bNeedPaintPopupSystemMenu = !m_bNeedPaintPopupSystemMenu;
			if (m_sbHilight != SysButtons.None)
			{
				DrawButtonHilight(m_sbHilight, btndown: true);
				m_sbMouseClick = m_sbHilight;
			}
			if (m_rcSysIcon.Contains(ptclient) && m_bNeedPaintPopupSystemMenu)
			{
				Point pt = new Point(IsCanvasRTL ? m_rcSysIcon.Right : m_rcSysIcon.Left, m_rcSysIcon.Bottom);
				PopupSystemMenu(pt);
				m_bNeedPaintPopupSystemMenu = false;
			}
			else
			{
				m_systemMenu.Hide();
			}
		}
	}

	public void HandleMouseUp(Point ptclient)
	{
		if (m_wndActiveChild == null || m_mnuActiveChild == IntPtr.Zero)
		{
			return;
		}
		if (m_sbMouseClick != SysButtons.None)
		{
			if (m_sbHilight == m_sbMouseClick)
			{
				DrawButtonHilight(m_sbMouseClick, btndown: false);
			}
			else
			{
				EraseButtonHilight(m_sbMouseClick);
			}
		}
		if (m_sbMouseClick != SysButtons.None && m_sbMouseClick == m_sbHilight)
		{
			switch (m_sbMouseClick)
			{
			case SysButtons.Minimize:
				MinimizeMDIActiveChild();
				break;
			case SysButtons.Restore:
				RestoreMDIActiveChild();
				break;
			case SysButtons.Close:
				DestroyMDIActiveChild();
				break;
			}
		}
		m_sbMouseClick = SysButtons.None;
	}

	public void HandleMouseLeave()
	{
		if (m_wndActiveChild != null && !(m_mnuActiveChild == IntPtr.Zero) && m_sbHilight != SysButtons.None)
		{
			EraseButtonHilight(m_sbHilight);
			m_sbHilight = SysButtons.None;
		}
	}

	protected void OnNeedMenuButtonsChanged(EventArgs e)
	{
		if (this.NeedMenuButtonsChanged != null)
		{
			this.NeedMenuButtonsChanged(this, e);
		}
	}

	protected void ControlCanvas_Resize(object sender, EventArgs arg)
	{
		if (m_wndActiveChild != null && m_mnuActiveChild != IntPtr.Zero && Canvas != null)
		{
			Canvas.Invalidate(invalidateChildren: true);
		}
	}

	protected void DrawMinimizeButton(Graphics gph, bool btndown)
	{
		if (!MinimizeButtonHidden)
		{
			ImageAttributes imageAttributes = new ImageAttributes();
			ColorMap[] array = new ColorMap[1]
			{
				new ColorMap()
			};
			if (MinimizeButtonDisabled)
			{
				array[0].OldColor = SystemColors.ControlText;
				array[0].NewColor = SystemColors.GrayText;
				imageAttributes.SetRemapTable(array);
			}
			else if (btndown)
			{
				array[0].OldColor = SystemColors.ControlText;
				array[0].NewColor = SystemColors.ActiveCaptionText;
				imageAttributes.SetRemapTable(array);
			}
			Icon icon = new Icon(_icoMinimize, 18, 18);
			Bitmap bitmap = icon.ToBitmap();
			Point point = new Point(rcMinButton.Left + (rcMinButton.Width - 18) / 2, rcMinButton.Top + (rcMinButton.Height - 18) / 2);
			gph.DrawImage(bitmap, new Rectangle(point.X, point.Y, 18, 18), 0, 0, 18, 18, GraphicsUnit.Pixel, imageAttributes);
			icon.Dispose();
			bitmap.Dispose();
		}
	}

	protected void DrawRestoreButton(Graphics gph, bool btndown)
	{
		if (!RestoreButtonHidden)
		{
			Icon icon = new Icon(_icoRestore, 18, 18);
			Bitmap bitmap = icon.ToBitmap();
			Point point = new Point(rcRestoreButton.Left + (rcRestoreButton.Width - 18) / 2 + 1, rcRestoreButton.Top + (rcRestoreButton.Height - 18) / 2 + 1);
			if (RestoreButtonDisabled)
			{
				ImageAttributes imageAttributes = new ImageAttributes();
				ColorMap[] array = new ColorMap[1]
				{
					new ColorMap()
				};
				array[0].OldColor = SystemColors.ControlText;
				array[0].NewColor = SystemColors.GrayText;
				imageAttributes.SetRemapTable(array);
				gph.DrawImage(bitmap, new Rectangle(point.X, point.Y, 18, 18), 0, 0, 18, 18, GraphicsUnit.Pixel, imageAttributes);
			}
			else if (btndown)
			{
				ImageAttributes imageAttributes2 = new ImageAttributes();
				ColorMap[] array2 = new ColorMap[1]
				{
					new ColorMap()
				};
				array2[0].OldColor = SystemColors.ControlText;
				array2[0].NewColor = SystemColors.ActiveCaptionText;
				imageAttributes2.SetRemapTable(array2);
				gph.DrawImage(bitmap, new Rectangle(point.X, point.Y, 18, 18), 0, 0, 18, 18, GraphicsUnit.Pixel, imageAttributes2);
			}
			else
			{
				gph.DrawImage(bitmap, point);
			}
			icon.Dispose();
			bitmap.Dispose();
		}
	}

	protected void DrawCloseButton(Graphics gph, bool btndown)
	{
		if (!CloseButtonHidden)
		{
			ImageAttributes imageAttributes = new ImageAttributes();
			ColorMap[] array = new ColorMap[1]
			{
				new ColorMap()
			};
			if (!m_wndActiveChild.ControlBox || !CloseButtonEnabled)
			{
				array[0].OldColor = SystemColors.ControlText;
				array[0].NewColor = SystemColors.GrayText;
				imageAttributes.SetRemapTable(array);
			}
			else if (btndown)
			{
				array[0].OldColor = SystemColors.ControlText;
				array[0].NewColor = SystemColors.ActiveCaptionText;
				imageAttributes.SetRemapTable(array);
			}
			Icon icon = new Icon(_icoClose, 18, 18);
			Bitmap bitmap = icon.ToBitmap();
			Point point = new Point(rcCloseButton.Left + (rcCloseButton.Width - 18) / 2, rcCloseButton.Top + (rcCloseButton.Height - 18) / 2);
			gph.DrawImage(bitmap, new Rectangle(point.X, point.Y, 18, 18), 0, 0, 18, 18, GraphicsUnit.Pixel, imageAttributes);
			icon.Dispose();
			bitmap.Dispose();
		}
	}

	protected void DrawButtonHilight(SysButtons button, bool btndown)
	{
		Color highlight = SystemColors.Highlight;
		Color highlightButtonColor = GetHighlightButtonColor(Style, btndown);
		Graphics graphics = m_ctrlCanvas.CreateGraphics();
		Rectangle empty = Rectangle.Empty;
		switch (button)
		{
		case SysButtons.Minimize:
			empty = rcMinButton;
			break;
		case SysButtons.Restore:
			empty = rcRestoreButton;
			break;
		case SysButtons.Close:
			empty = rcCloseButton;
			break;
		}
		Pen pen = new Pen(highlight, 1f);
		graphics.DrawRectangle(pen, empty);
		pen.Dispose();
		SolidBrush brush = new SolidBrush(highlightButtonColor);
		graphics.FillRectangle(brush, new Rectangle(empty.Left + 1, empty.Top + 1, empty.Width - 1, empty.Height - 1));
		switch (button)
		{
		case SysButtons.Minimize:
			DrawMinimizeButton(graphics, btndown);
			break;
		case SysButtons.Restore:
			DrawRestoreButton(graphics, btndown);
			break;
		case SysButtons.Close:
			DrawCloseButton(graphics, btndown);
			break;
		}
		graphics.Dispose();
	}

	private Color GetHighlightButtonColor(VisualStyle style, bool bDown)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => bDown ? Office2003Colors.PressedSelColor : Office2003Colors.SelColor, 
			VisualStyle.VS2005 => bDown ? VS2005Colors.BarItemPressLightColor : VS2005Colors.MenuSelectedItemColor, 
			_ => bDown ? Color.FromArgb(148, 148, 184) : Color.FromArgb(173, 173, 209), 
		};
	}

	protected void EraseButtonHilight(SysButtons button)
	{
		Rectangle empty = Rectangle.Empty;
		switch (button)
		{
		case SysButtons.Minimize:
			empty = rcMinButton;
			break;
		case SysButtons.Restore:
			empty = rcRestoreButton;
			break;
		case SysButtons.Close:
			empty = rcCloseButton;
			break;
		}
		m_ctrlCanvas.Invalidate(Rectangle.Inflate(empty, 1, 1), invalidateChildren: false);
		m_ctrlCanvas.Update();
	}

	protected void AttachHook()
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.HookProc hookProc = MsgHook;
		m_ProcHandle = GCHandle.Alloc(hookProc);
		m_MsgHookProc = Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowsHookEx(3, hookProc, IntPtr.Zero, Syncfusion.Runtime.InteropServices.NativeMethods.GetCurrentThreadId());
	}

	protected void DetachHook()
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.UnhookWindowsHookEx(m_MsgHookProc);
		m_ProcHandle.Free();
		m_MsgHookProc = IntPtr.Zero;
	}

	protected IntPtr MsgHook(int nCode, IntPtr wParam, IntPtr lParam)
	{
		if (nCode != 553 && nCode != 560)
		{
			bool bChildMaximized = m_bChildMaximized;
			IntPtr handle;
			bool mdiActiveChild = GetMdiActiveChild(out handle);
			m_bChildMaximized = handle != IntPtr.Zero && mdiActiveChild;
			if (m_bChildMaximized && (m_hwndChild != handle || bChildMaximized != m_bChildMaximized))
			{
				m_hwndChild = handle;
				SetToolbarButtons(FindChildByHandle(m_hwndChild));
			}
			if (bChildMaximized != m_bChildMaximized && !m_bChildMaximized)
			{
				RemoveToolbarButtons();
			}
		}
		return Syncfusion.Runtime.InteropServices.NativeMethods.CallNextHookEx(m_MsgHookProc, nCode, wParam, lParam);
	}

	protected Form FindChildByHandle(IntPtr child)
	{
		if (child == IntPtr.Zero || m_frmMain == null || !m_frmMain.IsHandleCreated)
		{
			return null;
		}
		Form[] mdiChildren = MainForm.MdiChildren;
		foreach (Form form in mdiChildren)
		{
			if (form.IsHandleCreated && form.Handle == child)
			{
				return form;
			}
		}
		return null;
	}

	protected internal void PopupSystemMenu(Point pt)
	{
		m_systemMenu.Hide();
		SetSysMenuCaptions();
		m_systemMenu.Show(m_ctrlCanvas, pt);
	}

	protected void ApplyMenuCaption(IntPtr hsysmenu, long commandID, BarItem itemDest)
	{
		string text = new string('t', 30);
		int num = Syncfusion.Runtime.InteropServices.NativeMethods.GetMenuString(hsysmenu, (uint)commandID, text, 30, 0u);
		if (num > 0)
		{
			int num2 = text.IndexOf('\t');
			if (num2 != -1)
			{
				num = num2;
			}
			text = text.Substring(0, num);
			itemDest.Text = text;
		}
	}

	protected void SetSysMenuCaptions()
	{
		if (m_wndActiveChild != null && m_wndActiveChild.Handle != IntPtr.Zero)
		{
			IntPtr systemMenu = Syncfusion.Runtime.InteropServices.NativeMethods.GetSystemMenu(m_wndActiveChild.Handle, bRevert: false);
			bool enabled = !RestoreButtonHidden && !RestoreButtonDisabled;
			ApplyMenuCaption(systemMenu, 61728L, m_systemMenu.ParentBarItem.Items[0]);
			m_systemMenu.ParentBarItem.Items[0].Enabled = enabled;
			ApplyMenuCaption(systemMenu, 61472L, m_systemMenu.ParentBarItem.Items[1]);
			m_systemMenu.ParentBarItem.Items[1].Enabled = enabled;
			ApplyMenuCaption(systemMenu, 61536L, m_systemMenu.ParentBarItem.Items[2]);
			m_systemMenu.ParentBarItem.Items[2].Enabled = CloseButtonEnabled && !CloseButtonHidden;
			ApplyMenuCaption(systemMenu, 61504L, m_systemMenu.ParentBarItem.Items[3]);
			m_systemMenu.ActiveBounds = m_rcSysIcon;
		}
	}

	protected virtual void InitSystemMenu()
	{
		m_systemMenu = new MdiPopupMenu();
		m_systemMenu.ActiveBounds = m_rcSysIcon;
		m_systemMenu.ParentBarItem = new ParentBarItem();
		m_systemMenu.ParentBarItem.Items.Add(new BarItem("&Restore", SystemMenuClicked));
		m_systemMenu.ParentBarItem.Items.Add(new BarItem("Mi&nimize", SystemMenuClicked));
		m_systemMenu.ParentBarItem.Items.Add(new BarItem("&Close", SystemMenuClicked, Shortcut.CtrlF4));
		m_systemMenu.ParentBarItem.Items.Add(new BarItem("Next", SystemMenuClicked, Shortcut.CtrlF6));
		m_systemMenu.ParentBarItem.BeginGroupAt(m_systemMenu.ParentBarItem.Items[2]);
		m_systemMenu.ParentBarItem.BeginGroupAt(m_systemMenu.ParentBarItem.Items[3]);
		m_systemMenu.ParentBarItem.Items[0].ImageList = imageList1;
		m_systemMenu.ParentBarItem.Items[0].ImageIndex = 2;
		m_systemMenu.ParentBarItem.Items[1].ImageList = imageList1;
		m_systemMenu.ParentBarItem.Items[1].ImageIndex = 1;
		m_systemMenu.ParentBarItem.Items[2].ImageList = imageList1;
		m_systemMenu.ParentBarItem.Items[2].ImageIndex = 0;
	}

	protected virtual void SystemMenuClicked(object sender, EventArgs e)
	{
		switch (m_systemMenu.ParentBarItem.Items.IndexOf(sender))
		{
		case 0:
			RestoreMDIActiveChild();
			break;
		case 1:
			MinimizeMDIActiveChild();
			break;
		case 2:
			DestroyMDIActiveChild();
			break;
		case 3:
			NextWindowMDIActiveChild(bprevious: false);
			break;
		}
	}

	protected void MinimizeMDIActiveChild()
	{
		if (m_frmMain != null && m_frmMain.ActiveMdiChild != null)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_frmMain.ActiveMdiChild.Handle, 274, (IntPtr)61472, IntPtr.Zero);
		}
	}

	protected void NextWindowMDIActiveChild(bool bprevious)
	{
		if (m_frmMain != null && m_frmMain.ActiveMdiChild != null && m_wndMdiClient != null)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_wndMdiClient.Handle, 548, m_frmMain.ActiveMdiChild.Handle, bprevious ? ((IntPtr)1) : IntPtr.Zero);
		}
	}

	protected void MDIChildActivate(IntPtr wndHandle)
	{
		if (m_wndMdiClient != null)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_wndMdiClient.Handle, 546, wndHandle, IntPtr.Zero);
		}
	}

	protected void DestroyMDIActiveChild()
	{
		if (m_frmMain != null && m_frmMain.ActiveMdiChild != null)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.PostMessage(m_frmMain.ActiveMdiChild.Handle, 274, (IntPtr)61536, IntPtr.Zero);
		}
	}

	protected void RestoreMDIActiveChild()
	{
		if (m_frmMain == null || m_frmMain.ActiveMdiChild == null || m_wndMdiClient == null)
		{
			return;
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_wndMdiClient.Handle, 547, m_frmMain.ActiveMdiChild.Handle, IntPtr.Zero);
		foreach (Control control in m_frmMain.Controls)
		{
			if (control is RibbonControlAdv)
			{
				RibbonControlAdv ribbonControlAdv = (RibbonControlAdv)control;
				ribbonControlAdv.HeaderInternal.UpdateSystemButtons();
				break;
			}
		}
	}

	protected internal void InvalidateHostedForm()
	{
		if (NeedUpdateHostedForm && m_frmMain != null)
		{
			m_frmMain.Invalidate(invalidateChildren: true);
		}
	}

	protected internal void BeginUpdate()
	{
		if (NeedUpdateHostedForm && m_frmMain != null && !(m_frmMain.Handle == IntPtr.Zero))
		{
			NativeMethodsHelper.SuspendRedrawWindow(m_frmMain.Handle);
		}
	}

	protected internal void EndUpdate()
	{
		if (NeedUpdateHostedForm && m_frmMain != null && !(m_frmMain.Handle == IntPtr.Zero))
		{
			NativeMethodsHelper.ResumeRedrawWindow(m_frmMain.Handle, bRedraw: false);
		}
	}

	protected void ForceRedrawCompletly()
	{
		if (m_frmMain != null && !(m_frmMain.Handle == IntPtr.Zero))
		{
			IntPtr handle = m_frmMain.Handle;
			NativeMethodsHelper.RedrawWindow(handle, 1927);
		}
	}

	protected void ForceRedrawCaptionOnly()
	{
		NativeMethodsHelper.RedrawWindow(MainForm.Handle, 1281);
	}

	protected void SetToolbarButtons(Form activeChild)
	{
		if (activeChild != null)
		{
			if (m_mnuActiveChild == IntPtr.Zero)
			{
				m_mnuActiveChild = Syncfusion.Runtime.InteropServices.NativeMethods.GetMenu(activeChild.Handle);
			}
			if (m_mnuActiveChild != IntPtr.Zero)
			{
				m_hashMenus[activeChild.Handle] = m_mnuActiveChild;
			}
			if (m_mnuActiveChild == IntPtr.Zero && m_hashMenus.Count > 0 && m_hashMenus[activeChild.Handle] != null)
			{
				m_mnuActiveChild = (IntPtr)m_hashMenus[activeChild.Handle];
				if (m_mnuActiveChild != IntPtr.Zero)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetMenu(activeChild.Handle, m_mnuActiveChild);
				}
			}
		}
		ShowControlBox = true;
		WndActiveChild = activeChild;
		if (Canvas != null)
		{
			Canvas.Invalidate(invalidateChildren: true);
		}
	}

	protected void RemoveToolbarButtons()
	{
		m_mnuActiveChild = IntPtr.Zero;
		WndActiveChild = null;
		ShowControlBox = false;
		if (Canvas != null)
		{
			Canvas.Invalidate(invalidateChildren: true);
		}
	}

	protected bool GetMdiActiveChild(out IntPtr handle)
	{
		bool bValue = false;
		handle = IntPtr.Zero;
		if (m_wndMdiClient != null && m_wndMdiClient.IsHandleCreated && !m_wndMdiClient.IsDisposed)
		{
			handle = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_wndMdiClient.Handle, 553, IntPtr.Zero, out bValue);
		}
		return bValue;
	}
}
