using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Text;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Renderers;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
public class FloatingForm : Form, IDraggable, IDockingManagerDesignerMouseHook, IDockable
{
	private const int DEF_TEXT_IMAGE_INDENT = 4;

	private const int DEF_TEXT_BORDER_INDENT = 3;

	private const int c_autopopDelay = 5000;

	private const int c_initialDelay = 1000;

	protected FloatingFormController dcInternal;

	protected Rectangle rcDrag = Rectangle.Empty;

	internal int nDsgnrNCHit;

	internal Point ptInitNCHit = Point.Empty;

	protected string formCaption = "";

	protected bool bActive;

	protected bool bCloseButtonVisibility = true;

	protected bool m_bUsed = true;

	protected DockStateControllerBase m_owner;

	private Control m_lastActiveControl;

	private bool m_bCancelMode;

	private bool m_bInSizeMove;

	private Point m_dragOffset = Point.Empty;

	private bool cancelVisibleChanging;

	protected static int nNamingCount;

	private NotifyNativeWindow nativeWindow;

	private bool m_bPassbyHitTest;

	private ToolTip m_internalTip;

	private IntPtr m_lastHitTest;

	private Point m_dragPoint = Point.Empty;

	private bool m_toolTipVisible;

	private bool m_dwmNCRenderingDisabled;

	private readonly Point c_toolTipOffset = new Point(5, 25);

	private Timer m_timer;

	private bool m_timerRunning;

	private int borderWidth;

	private int captionWidth;

	private HitTestArea hitArea;

	internal Point DragOffset
	{
		get
		{
			return m_dragOffset;
		}
		set
		{
			if (m_dragOffset != value)
			{
				m_dragOffset = value;
			}
		}
	}

	internal bool InSizeMove => m_bInSizeMove;

	internal DockStateControllerBase FormOwner
	{
		get
		{
			return m_owner;
		}
		set
		{
			m_owner = value;
		}
	}

	internal bool Used
	{
		get
		{
			return m_bUsed;
		}
		set
		{
			if (m_bUsed != value)
			{
				m_bUsed = value;
			}
		}
	}

	public Rectangle ImageRect => GetImageRect(base.Bounds);

	public bool CloseButtonVisibility
	{
		get
		{
			return bCloseButtonVisibility;
		}
		set
		{
			if (bCloseButtonVisibility != value)
			{
				bCloseButtonVisibility = value;
				PaintNCArea();
			}
		}
	}

	public DockControllerBase InternalController
	{
		get
		{
			return dcInternal;
		}
		set
		{
			dcInternal = value as FloatingFormController;
		}
	}

	public DockInfo DragDockInfo
	{
		get
		{
			return dcInternal.DICurrent;
		}
		set
		{
			dcInternal.DICurrent = value;
		}
	}

	public Rectangle DragRectangle
	{
		get
		{
			return new Rectangle(base.Location.X, base.Location.Y, base.Bounds.Width, base.Bounds.Height);
		}
		set
		{
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (!base.DesignMode && dcInternal != null)
			{
				if (dcInternal.DockingManager.IsMirrored)
				{
					int version = Syncfusion.Runtime.InteropServices.NativeMethods.GetVersion();
					if (Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(version) != 4)
					{
						createParams.ExStyle |= 1048576;
						if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005)
						{
							createParams.ExStyle |= 4194304;
						}
						else
						{
							createParams.ExStyle |= 8192;
						}
					}
				}
				createParams.Style |= int.MinValue;
				createParams.X = Screen.PrimaryScreen.Bounds.Width;
				createParams.Y = Screen.PrimaryScreen.Bounds.Height;
			}
			return createParams;
		}
	}

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

	public override string Text
	{
		get
		{
			return " ";
		}
		set
		{
			if (formCaption != value)
			{
				formCaption = value;
				OnTextChanged(EventArgs.Empty);
			}
		}
	}

	internal bool PassbyHitTest
	{
		get
		{
			return m_bPassbyHitTest;
		}
		set
		{
			if (m_bPassbyHitTest != value)
			{
				m_bPassbyHitTest = value;
			}
		}
	}

	internal bool CancelVisibleChanging
	{
		get
		{
			return cancelVisibleChanging;
		}
		set
		{
			cancelVisibleChanging = value;
		}
	}

	private DockingManagerRenderer renderer => dcInternal.DockingManager.Renderer;

	public void Enable()
	{
		Enable(show: true);
	}

	public void Enable(bool show)
	{
		base.Visible = show;
		if (InternalController != null && !InternalController.DockingManager.DesignMode)
		{
			base.Enabled = true;
		}
		Form form = InternalController.DockingManager.HostControl as Form;
		if (form == null)
		{
			form = InternalController.DockingManager.frmOwner;
		}
		base.Owner = null;
		base.Owner = form;
		InternalController.DockingManager.HiddenFFControllers.Remove(dcInternal);
		InternalController.DockingManager.AddFFController(dcInternal);
	}

	public void Disable()
	{
		if (InternalController != null && !InternalController.DockingManager.DesignMode)
		{
			base.Enabled = false;
		}
		InternalController.DockingManager.RemoveFFController(dcInternal);
		if (!InternalController.DockingManager.HiddenFFControllers.Contains(dcInternal))
		{
			InternalController.DockingManager.HiddenFFControllers.Add(dcInternal);
		}
		base.Visible = false;
		StopToolTipTimer();
	}

	protected Rectangle GetImageRect(RectangleF rcBoundsF)
	{
		return GetImageRect(new Rectangle((int)rcBoundsF.Left, (int)rcBoundsF.Top, (int)rcBoundsF.Width, (int)rcBoundsF.Height));
	}

	protected Rectangle GetImageRect(Rectangle rcBounds)
	{
		if (dcInternal.ImageIndex < 0 || dcInternal.DockingManager.ImageList == null || dcInternal.ImageIndex >= dcInternal.DockingManager.ImageList.Images.Count || !dcInternal.DockingManager.ShowCaptionImages)
		{
			return Rectangle.Empty;
		}
		int num = (base.ControlBox ? SystemInformation.ToolWindowCaptionButtonSize.Width : 0);
		if (base.Width <= num + SystemInformation.SmallIconSize.Width + 2 * SystemInformation.FrameBorderSize.Width)
		{
			return Rectangle.Empty;
		}
		int num2 = 1;
		int num3 = ((SystemInformation.ToolWindowCaptionHeight > SystemInformation.SmallIconSize.Height) ? SystemInformation.SmallIconSize.Height : (SystemInformation.ToolWindowCaptionHeight - num2));
		int num4 = SystemInformation.BorderSize.Height + (SystemInformation.ToolWindowCaptionHeight - num3) / 2 + num2;
		if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive)
		{
			num4 += SystemInformation.Border3DSize.Height;
		}
		int num5 = (((CreateParams.ExStyle & 0x400000) == 0) ? (SystemInformation.FrameBorderSize.Width + num2) : (rcBounds.Width - SystemInformation.FrameBorderSize.Width - num3 - num2));
		return new Rectangle(num5, num4, num3, num3);
	}

	public FloatingForm(DockingManager dmgr)
	{
		dcInternal = new FloatingFormController(dmgr, this);
		m_internalTip = new ToolTip();
		m_internalTip.ReshowDelay = 500;
		m_internalTip.InitialDelay = 1000;
		m_timer = new Timer();
		m_timer.Interval = 1000;
		base.Visible = false;
		if (dcInternal.DockingManager.HostControl is Form)
		{
			base.Owner = dcInternal.DockingManager.HostControl as Form;
		}
		else if (!dcInternal.DockingManager.DesignProcess)
		{
			if (dcInternal.DockingManager.frmOwner != null)
			{
				base.Owner = dcInternal.DockingManager.frmOwner;
			}
		}
		else
		{
			base.TopMost = true;
		}
		if (base.Owner != null)
		{
			BackColor = base.Owner.BackColor;
			ForeColor = base.Owner.ForeColor;
		}
		UpdateFormBorderStyle();
		base.ShowInTaskbar = false;
		base.Size = new Size(0, 0);
		CreateControl();
		CloseButtonVisibility = dmgr.CloseEnabled;
		nNamingCount++;
		base.Name = "FloatingForm_" + nNamingCount;
		nativeWindow = new NotifyNativeWindow(dcInternal.DockingManager, this);
		nativeWindow.AssignHandle(base.Handle);
		SubscribeToResizeEvent(subscribe: true);
	}

	public void UpdateFormBorderStyle()
	{
		if (Environment.OSVersion.Version.Major == 6 && base.Visible)
		{
			if (!IsDefaultRendering())
			{
				if (Syncfusion.Runtime.InteropServices.NativeMethods.IsCompositionEnabled() && !m_dwmNCRenderingDisabled)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetDwmNCRendering(base.Handle, enable: false);
				}
			}
			else if (Syncfusion.Runtime.InteropServices.NativeMethods.IsCompositionEnabled() && m_dwmNCRenderingDisabled)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SetDwmNCRendering(base.Handle, enable: true);
			}
		}
		if (dcInternal.DockingManager.FreezeResizing && base.FormBorderStyle != FormBorderStyle.FixedToolWindow)
		{
			base.FormBorderStyle = FormBorderStyle.FixedToolWindow;
		}
		else if (!dcInternal.DockingManager.FreezeResizing && base.FormBorderStyle != FormBorderStyle.SizableToolWindow)
		{
			base.FormBorderStyle = FormBorderStyle.SizableToolWindow;
		}
		SetCaption();
	}

	internal void SetCaption()
	{
		if (IsDefaultRendering())
		{
			if (HasIcon())
			{
				Bitmap bitmap = (Bitmap)dcInternal.DockingManager.ImageList.Images[dcInternal.ImageIndex];
				base.ShowIcon = true;
				base.Icon = Icon.FromHandle(bitmap.GetHicon());
			}
			else
			{
				base.ShowIcon = false;
			}
			if (base.Text != formCaption)
			{
				base.Text = formCaption;
			}
		}
	}

	private bool HasIcon()
	{
		if (dcInternal.ImageIndex < 0 || dcInternal.DockingManager.ImageList == null || dcInternal.ImageIndex >= dcInternal.DockingManager.ImageList.Images.Count || !dcInternal.DockingManager.ShowCaptionImages)
		{
			return false;
		}
		return true;
	}

	public bool IsSuitableDockTarget(DockControllerBase dc)
	{
		bool result = true;
		if (dc is DockStateControllerBase { AutoHideMode: not false })
		{
			result = false;
		}
		if (dc.HostControl.Parent == this)
		{
			result = false;
		}
		return result;
	}

	public bool InitiateDrag(MouseAction action, Point ptscreen)
	{
		int num = ((dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005) ? SystemInformation.ToolWindowCaptionHeight : renderer.CaptionWidth);
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive)
		{
			num += 4;
		}
		Point point = PointToClient(ptscreen);
		if (point.X >= 0 && point.X <= base.Width && point.Y >= -num && point.Y <= 0)
		{
			return true;
		}
		return false;
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
		if (dcInternal.DockingManager.DragProvider.DraggingControl == this)
		{
			dcInternal.DockingManager.DragProvider.ForceStopDrag();
			if (base.Capture)
			{
				base.Capture = false;
			}
			dcInternal.DockingManager.DragProvider.TerminateDrag(this, Point.Empty);
			dcInternal.DICurrent = DockInfo.NullInfo;
			if (dcInternal.DockingManager.DesignMode)
			{
				dcInternal.DockingManager.UpdateDesigner();
			}
		}
	}

	public bool QueryDragProceedWithDock()
	{
		return true;
	}

	public bool IsDefaultRendering()
	{
		if (dcInternal == null)
		{
			return false;
		}
		if (dcInternal.DockingManager.IsDefaultRendering())
		{
			return true;
		}
		return false;
	}

	protected Font GetCaptionFont()
	{
		return dcInternal.DockingManager.CaptionTextFont;
	}

	protected Rectangle GetTextRectFromBounds(RectangleF bounds, ref Rectangle imageRect)
	{
		imageRect = GetImageRect(bounds);
		int num = SystemInformation.FrameBorderSize.Width;
		int num2 = (CloseButtonVisibility ? SystemInformation.ToolWindowCaptionButtonSize.Width : 0);
		Rectangle result = new Rectangle(0, SystemInformation.FrameBorderSize.Height, Convert.ToInt32(bounds.Width) - num2, SystemInformation.ToolWindowCaptionHeight);
		result.Inflate(-(3 + num), 0);
		if (dcInternal.DockingManager.IsMirrored)
		{
			result.Offset(num2, 0);
		}
		if (imageRect != Rectangle.Empty)
		{
			if (dcInternal.DockingManager.ShowCaptionImages)
			{
				long num3 = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(base.Handle, -20);
				result.Width -= imageRect.Width + 4;
				if ((num3 | 0x400000) != num3)
				{
					result.X += imageRect.Width + 4;
				}
			}
			else
			{
				imageRect = Rectangle.Empty;
			}
		}
		return result;
	}

	protected internal void DrawWindowTextAndImage(ref Message msg)
	{
		IntPtr windowDC = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowDC(msg.HWnd);
		try
		{
			if (windowDC != IntPtr.Zero)
			{
				int version = Syncfusion.Runtime.InteropServices.NativeMethods.GetVersion();
				if (Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(version) != 4)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetLayout(windowDC, 0);
				}
				using (Graphics graphics = Graphics.FromHdc(windowDC))
				{
					using SolidBrush brush = new SolidBrush(bActive ? SystemColors.ActiveCaptionText : SystemColors.InactiveCaptionText);
					StringFormat stringFormat = new StringFormat();
					stringFormat.FormatFlags = StringFormatFlags.NoWrap;
					if (dcInternal.DockingManager.IsMirrored)
					{
						stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
					}
					switch (dcInternal.DockingManager.DockLabelAlignment)
					{
					case DockLabelAlignmentStyle.Left:
						stringFormat.Alignment = StringAlignment.Near;
						break;
					case DockLabelAlignmentStyle.Center:
						stringFormat.Alignment = StringAlignment.Center;
						break;
					case DockLabelAlignmentStyle.Right:
						stringFormat.Alignment = StringAlignment.Far;
						break;
					default:
						stringFormat.Alignment = StringAlignment.Near;
						break;
					}
					stringFormat.LineAlignment = StringAlignment.Center;
					stringFormat.Trimming = StringTrimming.EllipsisCharacter;
					Rectangle imageRect = Rectangle.Empty;
					Rectangle textRectFromBounds = GetTextRectFromBounds(graphics.VisibleClipBounds, ref imageRect);
					Font captionFont = GetCaptionFont();
					if (textRectFromBounds.Width > 0)
					{
						graphics.TextRenderingHint = TextRenderingHint.AntiAliasGridFit;
						graphics.DrawString(formCaption, captionFont, brush, textRectFromBounds, stringFormat);
					}
					if (!imageRect.Equals(Rectangle.Empty) && dcInternal.DockingManager.ImageList != null && dcInternal.DockingManager.ImageList.Images.Count > 0)
					{
						Image image = dcInternal.DockingManager.ImageList.Images[dcInternal.ImageIndex];
						graphics.DrawImage(image, imageRect);
					}
				}
				msg.Result = (IntPtr)1;
			}
		}
		finally
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(msg.HWnd, windowDC);
		}
		dcInternal.DockingManager.ctrlLastPainted = this;
	}

	private void EnsureDwmNCRendering(bool enabled)
	{
		if (Syncfusion.Runtime.InteropServices.NativeMethods.IsCompositionEnabled())
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetDwmNCRendering(base.Handle, enabled);
		}
	}

	protected override void WndProc(ref Message msg)
	{
		if (dcInternal != null)
		{
			if (!dcInternal.DockingManager.DesignProcess)
			{
				switch (msg.Msg)
				{
				case 799:
					if ((int)msg.WParam > 0)
					{
						m_dwmNCRenderingDisabled = false;
					}
					else
					{
						m_dwmNCRenderingDisabled = true;
					}
					base.WndProc(ref msg);
					break;
				case 131:
					base.WndProc(ref msg);
					if (dcInternal.DockingManager.VisualStyle != VisualStyle.Default && dcInternal.DockingManager.VisualStyle != VisualStyle.VS2005)
					{
						ProcessNCCalcSize(msg);
						if (dcInternal.DockingManager.NeedFloatFormRepaint)
						{
							Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
						}
					}
					break;
				case 561:
					m_bInSizeMove = true;
					base.WndProc(ref msg);
					break;
				case 534:
					base.WndProc(ref msg);
					if (!SystemInformation.DragFullWindows)
					{
						Syncfusion.Runtime.InteropServices.NativeMethods.RECT rECT = (Syncfusion.Runtime.InteropServices.NativeMethods.RECT)Marshal.PtrToStructure(msg.LParam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.RECT));
						base.Location = new Point(rECT.left, rECT.top);
					}
					break;
				case 6:
					base.WndProc(ref msg);
					if (dcInternal.DockingManager.VisualStyle != VisualStyle.Default && dcInternal.DockingManager.VisualStyle != VisualStyle.VS2005 && base.Visible)
					{
						renderer.ControlBounds = new Rectangle(Point.Empty, base.Size);
						PaintNCArea();
					}
					break;
				case 33:
					base.WndProc(ref msg);
					if (base.ActiveControl != null && base.ActiveControl is DockHost dockHost2)
					{
						dcInternal.DockingManager.DHCInFocus = dockHost2.InternalController as DockHostController;
					}
					break;
				case 532:
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.RECT rECT2 = (Syncfusion.Runtime.InteropServices.NativeMethods.RECT)Marshal.PtrToStructure(msg.LParam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.RECT));
					Direction direction = dcInternal.CanResize();
					if ((direction & Direction.Horizontal) != Direction.Horizontal)
					{
						if (msg.WParam.ToInt32() == 1 || msg.WParam.ToInt32() == 4 || msg.WParam.ToInt32() == 7)
						{
							rECT2.left = base.Left;
						}
						rECT2.Width = base.Width;
					}
					if ((direction & Direction.Vertical) != Direction.Vertical)
					{
						if (msg.WParam.ToInt32() == 3 || msg.WParam.ToInt32() == 4 || msg.WParam.ToInt32() == 5)
						{
							rECT2.top = base.Top;
						}
						rECT2.Height = base.Height;
					}
					Marshal.StructureToPtr((object)rECT2, msg.LParam, fDeleteOld: true);
					break;
				}
				case 133:
					if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005)
					{
						base.WndProc(ref msg);
						if (!IsDefaultRendering() && Text == " ")
						{
							DrawWindowTextAndImage(ref msg);
						}
					}
					else if (Syncfusion.Runtime.InteropServices.NativeMethods.IsDwmNCRenderingEnabled(base.Handle))
					{
						base.WndProc(ref msg);
					}
					else
					{
						renderer.ControlBounds = new Rectangle(Point.Empty, base.Size);
						PaintNCArea();
					}
					break;
				case 70:
				{
					DockingManager dockingManager2 = InternalController.DockingManager;
					if (!dockingManager2.EscapeKeyPressed && !m_bCancelMode)
					{
						break;
					}
					m_bCancelMode = false;
					Syncfusion.Runtime.InteropServices.NativeMethods.WINDOWPOS wINDOWPOS = (Syncfusion.Runtime.InteropServices.NativeMethods.WINDOWPOS)msg.GetLParam(typeof(Syncfusion.Runtime.InteropServices.NativeMethods.WINDOWPOS));
					if (wINDOWPOS.flags == 1)
					{
						wINDOWPOS.flags |= 2;
						Marshal.StructureToPtr((object)wINDOWPOS, msg.LParam, fDeleteOld: true);
						if (dockingManager2.DragProvider.DraggingControl != null)
						{
							dockingManager2.DragProvider.DraggingControl.AbortDrag();
						}
					}
					base.WndProc(ref msg);
					break;
				}
				case 134:
					if (base.Visible)
					{
						if (base.Controls.Count > 0 && base.ActiveControl != null)
						{
							m_lastActiveControl = (base.ActiveControl as DockHost).ActiveControl;
						}
						if (msg.WParam == IntPtr.Zero)
						{
							bActive = false;
						}
						else
						{
							bActive = true;
						}
						base.WndProc(ref msg);
						if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005)
						{
							if (!IsDefaultRendering() && Text == " ")
							{
								DrawWindowTextAndImage(ref msg);
							}
						}
						else
						{
							renderer.ControlBounds = new Rectangle(Point.Empty, base.Size);
							PaintNCArea();
						}
					}
					else
					{
						base.WndProc(ref msg);
					}
					break;
				case 126:
					UpdateFormPosition(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(msg.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(msg.LParam));
					break;
				case 132:
				case 674:
					if (PassbyHitTest)
					{
						msg.Result = (IntPtr)(-1);
						break;
					}
					base.WndProc(ref msg);
					if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005)
					{
						if (msg.Msg == 132)
						{
							int value = 20;
							int value2 = 2;
							m_lastHitTest = msg.Result;
							if (msg.Result == new IntPtr(value))
							{
								msg.Result = new IntPtr(value2);
								StartToolTipTimer();
							}
							else
							{
								HideToolTip();
							}
						}
					}
					else
					{
						Point p = new Point((short)Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(msg.LParam), (short)Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(msg.LParam));
						p = PointToClient(p);
						p.Offset(renderer.ThickBorderWidth, renderer.ThickBorderWidth + renderer.CaptionWidth);
						RefreshRenderer();
						HitTestArea hitTestArea = renderer.HitTest(MouseButtons.None, p);
						if (hitTestArea != hitArea || dcInternal.DockingManager.Renderer.GetHitButtonIndex() != dcInternal.DockingManager.Renderer.GetHighlightedButtonIndex())
						{
							hitArea = hitTestArea;
							PaintNCArea();
						}
						if (hitTestArea == HitTestArea.Button)
						{
							StartToolTipTimer();
						}
						else
						{
							HideToolTip();
						}
						if (msg.Msg == 132 && hitTestArea == HitTestArea.Button)
						{
							msg.Result = new IntPtr(20);
						}
					}
					if (msg.Msg == 674)
					{
						HideToolTip();
					}
					break;
				case 16:
				{
					dcInternal.bClosingByMouse = true;
					dcInternal.CloseController();
					dcInternal.bClosingByMouse = false;
					if (dcInternal == null)
					{
						break;
					}
					FloatingFormController floatingFormController = dcInternal;
					if (floatingFormController == null || floatingFormController.HostControl == null || !(floatingFormController.HostControl is FloatingForm floatingForm) || cancelVisibleChanging)
					{
						break;
					}
					if (floatingFormController.ChildControllers[0] is DockTabController)
					{
						DockTabController dockTabController2 = floatingFormController.ChildControllers[0] as DockTabController;
						DockTabControl tabControl = dockTabController2.TabControl;
						if (tabControl.TabPages.Count == 0)
						{
							floatingForm.Disable();
						}
					}
					else if (!(floatingFormController.ChildControllers[0] is DockHostController))
					{
						floatingForm.Disable();
					}
					break;
				}
				case 162:
					if (dcInternal.DockingManager.VisualStyle != VisualStyle.Default && dcInternal.DockingManager.VisualStyle != VisualStyle.VS2005 && hitArea == HitTestArea.Button)
					{
						PaintNCArea();
						dcInternal.bClosingByMouse = true;
						dcInternal.CloseController();
						dcInternal.bClosingByMouse = false;
					}
					m_dragPoint = Point.Empty;
					if (!SystemInformation.DragFullWindows)
					{
						base.Capture = false;
					}
					break;
				case 161:
					if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005)
					{
						if (!IsDefaultRendering())
						{
							msg.WParam = m_lastHitTest;
						}
					}
					else
					{
						PaintNCArea();
					}
					if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005 || hitArea != HitTestArea.Button)
					{
						int num = (int)msg.WParam;
						if (num == 2)
						{
							Point p2 = (m_dragPoint = Cursor.Position);
							DockingManager dockingManager3 = dcInternal.DockingManager;
							dockingManager3.StopActivationEvents = true;
							try
							{
								if (!base.ContainsFocus)
								{
									if (base.Controls[0].Controls.Count > 0 && m_lastActiveControl != null)
									{
										m_lastActiveControl.Focus();
									}
									else
									{
										Focus();
									}
								}
							}
							finally
							{
								dockingManager3.StopActivationEvents = false;
							}
							RefreshRenderer();
							Control control = dcInternal.DockingManager.DragProvider.DraggingControl as Control;
							if (!base.Capture && control != this && !base.Controls.Contains(control))
							{
								DockControllerBase childAt = dcInternal.GetChildAt(0);
								if (childAt is DockHostController)
								{
									DockHostController dockHostController = childAt as DockHostController;
									dockHostController.HandleMouseDownImp(MouseButtons.Left, dockHostController.HostControl.PointToClient(p2));
								}
								else if (childAt is DockTabController)
								{
									DockTabController dockTabController = childAt as DockTabController;
									dockTabController.HostController.HandleMouseDownImp(MouseButtons.Left, dockTabController.HostControl.PointToClient(p2));
								}
								else
								{
									dcInternal.HandleMouseDownImp(MouseButtons.Left, PointToClient(p2));
								}
							}
						}
					}
					if (msg.WParam.ToInt32() == 2 && !SystemInformation.DragFullWindows)
					{
						if (m_dragOffset == Point.Empty)
						{
							int num2 = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(msg.LParam);
							int num3 = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(msg.LParam);
							m_dragPoint = new Point(num2 - base.Location.X, num3 - base.Location.Y);
						}
						else
						{
							m_dragPoint = m_dragOffset;
						}
						m_dragOffset = Point.Empty;
						base.Capture = true;
					}
					else
					{
						base.WndProc(ref msg);
					}
					break;
				case 562:
					if (base.Visible && !dcInternal.DockingManager.EscapeKeyPressed)
					{
						Point position2 = Cursor.Position;
						HandleMouseUp(MouseButtons.Left, position2);
					}
					base.WndProc(ref msg);
					m_bInSizeMove = false;
					break;
				case 31:
					m_bCancelMode = true;
					base.WndProc(ref msg);
					break;
				case 163:
					if ((int)msg.WParam == 2)
					{
						if (!dcInternal.DockingManager.EnableDoubleClickOnCaption)
						{
							break;
						}
						Point position = Cursor.Position;
						DockingManager dockingManager = dcInternal.DockingManager;
						dockingManager.LockActivationEvents++;
						try
						{
							if (base.ActiveControl is DockHost dockHost)
							{
								m_lastActiveControl = dockHost.ActiveControl;
							}
							HandleDoubleClick(position);
							break;
						}
						finally
						{
							dockingManager.LockActivationEvents--;
						}
					}
					goto default;
				case 164:
				case 523:
				case 524:
					break;
				case 165:
					if ((int)msg.WParam == 2)
					{
						dcInternal.HandleMouseUpImp(MouseButtons.Right, PointToClient(Cursor.Position));
						break;
					}
					goto default;
				default:
					base.WndProc(ref msg);
					break;
				}
			}
			else if (msg.Msg != 16 && ((msg.Msg != 160 && msg.Msg != 161 && msg.Msg != 162) || (int)msg.WParam != 20) && msg.Msg != 163)
			{
				base.WndProc(ref msg);
			}
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	private void RepaintChildren()
	{
		foreach (Control control in base.Controls)
		{
			control.Invalidate(invalidateChildren: true);
			control.Update();
		}
	}

	internal void RefreshRenderer()
	{
		if (dcInternal.DockingManager.ctrlLastPainted != this)
		{
			PaintDockControlArgs paintInfo = GetPaintInfo();
			renderer.RefreshPaintInfo(new Rectangle(Point.Empty, base.Size), paintInfo);
			dcInternal.DockingManager.ctrlLastPainted = this;
		}
	}

	private void StartToolTipTimer()
	{
		if (!m_timerRunning)
		{
			m_timer.Tick += ShowTimerTick;
			m_timer.Start();
			m_timerRunning = true;
		}
	}

	private void ShowTimerTick(object sender, EventArgs e)
	{
		StopToolTipTimer();
		ShowToolTip();
	}

	private void StopToolTipTimer()
	{
		if (m_timer != null)
		{
			m_timer.Stop();
			m_timer.Tick -= ShowTimerTick;
			m_timerRunning = false;
		}
	}

	private void ShowToolTip()
	{
		if (m_toolTipVisible)
		{
			return;
		}
		m_toolTipVisible = true;
		Point empty = Point.Empty;
		if (dcInternal.DockingManager.EnableSuperToolTip)
		{
			empty = c_toolTipOffset;
			empty.Offset(Cursor.Position);
			ToolTipInfo toolTipInfo = null;
			CaptionButton captionButton = null;
			foreach (CaptionButton captionButton2 in dcInternal.DockingManager.CaptionButtons)
			{
				if (captionButton2.Type == CaptionButtonType.Close)
				{
					captionButton = captionButton2;
					break;
				}
			}
			SuperToolTip superToolTip = dcInternal.DockingManager.SuperToolTip;
			if (superToolTip != null && captionButton != null)
			{
				superToolTip.ToolTipDuration = dcInternal.DockingManager.ToolTipInterval / 1000;
				if (dcInternal.DockingManager.UseBalloonStyleToolTip)
				{
					superToolTip.Style = SuperToolTip.SuperToolTipStyle.Balloon;
				}
				else
				{
					superToolTip.Style = SuperToolTip.SuperToolTipStyle.Normal;
				}
				if (captionButton.SuperToolTipInfo == null)
				{
					captionButton.SuperToolTipInfo = new ToolTipInfo();
				}
				toolTipInfo = captionButton.SuperToolTipInfo;
				if (toolTipInfo.Body.Text == null && toolTipInfo.Footer.Text == null && toolTipInfo.Header.Text == null)
				{
					toolTipInfo.Body.Text = captionButton.ToolTip;
				}
				superToolTip.Show(toolTipInfo, empty, 5000);
			}
		}
		else if (InternalController.DockingManager.VisualStyle == VisualStyle.VS2005 || InternalController.DockingManager.VisualStyle == VisualStyle.Default)
		{
			empty = PointToClient(Cursor.Position);
			if (!dcInternal.DockingManager.UseBalloonStyleToolTip)
			{
				empty.Offset(c_toolTipOffset.X * 2, c_toolTipOffset.Y * 2);
			}
			else
			{
				empty.Offset(c_toolTipOffset.X, c_toolTipOffset.Y);
			}
			string text = string.Empty;
			if (dcInternal.DockingManager.ShowToolTips)
			{
				text = dcInternal.DockingManager.GetCloseButtonToolTip();
			}
			if (m_internalTip != null)
			{
				m_internalTip.IsBalloon = dcInternal.DockingManager.UseBalloonStyleToolTip;
				m_internalTip.AutoPopDelay = dcInternal.DockingManager.ToolTipInterval;
				m_internalTip.Show(text, this, empty, 5000);
			}
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		HideToolTip();
		base.OnMouseLeave(e);
	}

	private void HideToolTip()
	{
		if (m_timerRunning)
		{
			m_timer.Stop();
			m_timer.Tick -= ShowTimerTick;
			m_timerRunning = false;
		}
		if (m_toolTipVisible)
		{
			m_toolTipVisible = false;
			if (dcInternal.DockingManager.EnableSuperToolTip)
			{
				dcInternal.DockingManager.SuperToolTip?.Hide();
			}
			else
			{
				m_internalTip.Hide(this);
			}
		}
	}

	internal void ProcessNCCalcSize(Message m)
	{
		if (m.WParam != IntPtr.Zero)
		{
			borderWidth = SystemInformation.FrameBorderSize.Width;
			captionWidth = SystemInformation.ToolWindowCaptionHeight;
			Syncfusion.Runtime.InteropServices.NativeMethods.NCCALCSIZE_PARAMS nCCALCSIZE_PARAMS = (Syncfusion.Runtime.InteropServices.NativeMethods.NCCALCSIZE_PARAMS)Marshal.PtrToStructure(m.LParam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.NCCALCSIZE_PARAMS));
			nCCALCSIZE_PARAMS.rgrc0.left += renderer.ThickBorderWidth - borderWidth;
			nCCALCSIZE_PARAMS.rgrc0.right -= renderer.ThickBorderWidth - borderWidth;
			nCCALCSIZE_PARAMS.rgrc0.top += renderer.CaptionWidth - captionWidth + (renderer.ThickBorderWidth - borderWidth);
			nCCALCSIZE_PARAMS.rgrc0.bottom -= renderer.ThickBorderWidth - borderWidth;
			Marshal.StructureToPtr((object)nCCALCSIZE_PARAMS, m.LParam, fDeleteOld: false);
		}
	}

	internal PaintDockControlArgs GetPaintInfo()
	{
		if (hitArea == HitTestArea.Button)
		{
			GetActiveButtonState();
		}
		dcInternal.DockingManager.UpdateFloatingFormsImages();
		Caption caption = new Caption();
		caption.CaptionState = (bActive ? CaptionState.Active : CaptionState.Normal);
		caption.TextAlignment = dcInternal.DockingManager.DockLabelAlignment;
		caption.Font = dcInternal.DockingManager.CaptionTextFont;
		caption.Text = formCaption;
		int captionImageIndex = (dcInternal.DockingManager.ShowCaptionImages ? dcInternal.ImageIndex : (-1));
		CaptionButtonOptionsTable captionButtonOptionsTable = new CaptionButtonOptionsTable();
		if (CloseButtonVisibility)
		{
			CaptionButton captionButton = new CaptionButton(CaptionButtonType.Close);
			if (dcInternal.DockingManager.CaptionButtons.Count > 0 && dcInternal.DockingManager.CaptionButtons[0].Type == CaptionButtonType.Close)
			{
				captionButton.ImageIndex = dcInternal.DockingManager.CaptionButtons[0].ImageIndex;
			}
			CaptionButtonOptions options = new CaptionButtonOptions();
			captionButtonOptionsTable.Add(captionButton, options);
		}
		PaintDockControlArgs paintDockControlArgs = new PaintDockControlArgs(caption, captionButtonOptionsTable, bPaintBorders: true, bFloating: true, captionImageIndex, dcInternal.DockingManager.ImageList);
		ProvideGraphicsItemsEventArgs provideGraphicsItemsArgs = null;
		if (dcInternal.HideChildCaptions)
		{
			Control control = null;
			foreach (Control control2 in base.Controls)
			{
				if (control2 is DockHost dockHost && dockHost.Controls.Count > 0)
				{
					control = dockHost.Controls[0];
					if (dcInternal.DockingManager.alEnableDocking.Contains(control) && control.Visible)
					{
						break;
					}
					control = null;
				}
			}
			if (dcInternal.DockingManager.VisualStyle != VisualStyle.Default)
			{
				if (control != null)
				{
					provideGraphicsItemsArgs = new ProvideGraphicsItemsEventArgs(control, dcInternal.DockingManager.Renderer.CaptionBounds, bActive);
				}
			}
			else
			{
				provideGraphicsItemsArgs = new ProvideGraphicsItemsEventArgs(null, Rectangle.Empty, active: false);
			}
		}
		else
		{
			provideGraphicsItemsArgs = new ProvideGraphicsItemsEventArgs(null, Rectangle.Empty, active: false);
		}
		paintDockControlArgs.ProvideGraphicsItemsArgs = provideGraphicsItemsArgs;
		paintDockControlArgs.DesignMode = dcInternal.DockingManager.DesignProcess;
		return paintDockControlArgs;
	}

	internal void PaintNCArea()
	{
		if (InternalController.DockingManager.VisualStyle == VisualStyle.Default || InternalController.DockingManager.VisualStyle == VisualStyle.VS2005)
		{
			NativeMethodsHelper.RedrawWindow(base.Handle, 1025);
			return;
		}
		IntPtr windowDC = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowDC(base.Handle);
		try
		{
			using Graphics g = Graphics.FromHdc(windowDC);
			PaintDockControlArgs paintDockControlArgs = null;
			if (base.Controls.Count > 0)
			{
				paintDockControlArgs = GetPaintInfo();
				dcInternal.DockingManager.FireProvideGraphicsItemsEvent(paintDockControlArgs.ProvideGraphicsItemsArgs);
				if (dcInternal.DockingManager.ctrlLastPainted != this)
				{
					renderer.ResetButtonsHitTest();
				}
				renderer.PaintDockedControl(g, new Rectangle(Point.Empty, base.Size), paintDockControlArgs);
			}
		}
		finally
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(base.Handle, windowDC);
		}
		DockingManager dockingManager = dcInternal.DockingManager;
		dockingManager.ctrlLastPainted = this;
		if (!Syncfusion.Runtime.InteropServices.NativeMethods.IsDwmNCRenderingEnabled(base.Handle) && Environment.OSVersion.Version.Major >= 6 && dockingManager.VisualStyle != VisualStyle.VS2005 && dockingManager.VisualStyle != VisualStyle.Default && dcInternal.DockingManager.NeedFloatFormRepaint)
		{
			RepaintChildren();
		}
	}

	private CaptionButtonState GetActiveButtonState()
	{
		if ((Control.MouseButtons | MouseButtons.Left) != Control.MouseButtons)
		{
			return CaptionButtonState.Active;
		}
		return CaptionButtonState.Pushed;
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		m_internalTip.Dispose();
		base.OnHandleDestroyed(e);
	}

	protected override bool ProcessCmdKey(ref Message m, Keys keydata)
	{
		if (keydata == (Keys.F4 | Keys.Alt) && !base.ControlBox)
		{
			return true;
		}
		if (dcInternal.DockingManager.ForwardMenuShortcuts)
		{
			Form form = ((dcInternal.DockingManager.HostForm == null) ? dcInternal.DockingManager.HostControl.ParentForm : dcInternal.DockingManager.HostForm);
			BarManager barManager = null;
			if (form != null)
			{
				if (form.Menu != null)
				{
					if ((keydata & Keys.Modifiers) == Keys.Alt && keydata == (Keys.Menu | Keys.Alt))
					{
						form.Focus();
					}
				}
				else
				{
					barManager = BarManager.GetManagerFromForm(form);
					if (barManager != null)
					{
						barManager = barManager.MainFrameBarManager;
						BarItem barItemFromShortcut = barManager.GetBarItemFromShortcut(keydata);
						if (barItemFromShortcut != null && barItemFromShortcut.Enabled)
						{
							barItemFromShortcut.PerformClick();
							return true;
						}
						if ((keydata & Keys.Modifiers) == Keys.Alt && keydata == (Keys.Menu | Keys.Alt))
						{
							barManager.ProcessCmdKey(ref m, keydata);
						}
					}
				}
			}
		}
		return base.ProcessCmdKey(ref m, keydata);
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		MinimumSize = new Size(30, 30);
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		UpdateControlBoxVisibility();
		UpdateFormBorderStyle();
		if (e.Control is DockHost dockHost && dockHost.Controls.Count > 0)
		{
			Control control = dockHost.Controls[0];
			if (control != null)
			{
				control.GotFocus += child_GotFocus;
			}
		}
		if (InternalController.DockingManager.ApplyMinMaxExtents)
		{
			UpdateFormMinimumSize();
		}
		RightToLeft rightToLeft = (dcInternal.DockingManager.IsMirrored ? RightToLeft.Yes : RightToLeft.No);
		e.Control.RightToLeft = rightToLeft;
	}

	private void child_GotFocus(object sender, EventArgs e)
	{
		if (sender is Control lastActiveControl)
		{
			LastActiveControl = lastActiveControl;
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		if (e.Control is DockHost dockHost && dockHost.Controls.Count > 0)
		{
			Control control = dockHost.Controls[0];
			if (control != null)
			{
				control.GotFocus -= child_GotFocus;
			}
		}
		base.OnControlRemoved(e);
		UpdateControlBoxVisibility();
		UpdateFormMinimumSize();
	}

	public void UpdateControlBoxVisibility()
	{
		bool flag = false;
		foreach (Control control in base.Controls)
		{
			if (control.Controls.Count <= 0 || !(control is DockHost))
			{
				continue;
			}
			DockHostController dockHostController = (control as DockHost).InternalController as DockHostController;
			CaptionButtonsCollection customCaptionButtons = dockHostController.DockingManager.GetCustomCaptionButtons(control.Controls[0]);
			if (customCaptionButtons != null)
			{
				if (customCaptionButtons.ContainsButtonType(CaptionButtonType.Close) && dockHostController.CloseButtonVisibility)
				{
					flag = true;
				}
			}
			else
			{
				if (dockHostController.DockingManager.TargetManagers.Count <= 0)
				{
					continue;
				}
				foreach (DockingManager targetManager in dockHostController.DockingManager.TargetManagers)
				{
					customCaptionButtons = targetManager.GetCustomCaptionButtons(control.Controls[0]);
					if (customCaptionButtons != null && customCaptionButtons.ContainsButtonType(CaptionButtonType.Close) && dockHostController.CloseButtonVisibility)
					{
						flag = true;
						break;
					}
				}
			}
		}
		if (dcInternal.DockingManager.VisualStyle == VisualStyle.Default || dcInternal.DockingManager.VisualStyle == VisualStyle.VS2005)
		{
			base.ControlBox = flag;
		}
		else
		{
			bool controlBox = base.ControlBox;
			base.ControlBox = false;
			if (controlBox)
			{
				UpdateBounds();
			}
		}
		CloseButtonVisibility = flag;
	}

	protected internal void UpdateFormMinimumSize()
	{
		if (dcInternal != null && dcInternal.dcChild != null && !(dcInternal.dcChild is DockHostController { Closing: not false }))
		{
			Size minimumSize = dcInternal.MinimumSize;
			Size empty = Size.Empty;
			if (minimumSize.Width != 0)
			{
				empty.Width = minimumSize.Width;
			}
			if (minimumSize.Height != 0)
			{
				empty.Height = minimumSize.Height;
			}
			Size frameBorderSize = SystemInformation.FrameBorderSize;
			empty.Height += SystemInformation.ToolWindowCaptionHeight + frameBorderSize.Height * 2 + 2;
			empty.Width += frameBorderSize.Width * 2 + 2;
			MinimumSize = empty;
		}
	}

	protected void UpdateFormPosition(int nScreenWidth, int nScreenHeight)
	{
		int num = 0;
		int num2 = 0;
		if (base.Location.X + base.Size.Width > nScreenWidth)
		{
			num = base.Location.X + base.Size.Width - nScreenWidth;
			if (num > base.Location.X)
			{
				num = base.Location.X;
			}
		}
		if (base.Location.Y + base.Size.Height > nScreenHeight)
		{
			num2 = base.Location.Y + base.Size.Height - nScreenHeight;
			if (num2 > base.Location.Y)
			{
				num2 = base.Location.Y;
			}
		}
		if (num > 0 || num2 > 0)
		{
			base.Location = new Point(base.Location.X - num, base.Location.Y - num2);
		}
	}

	public void HandleMouseDown(MouseButtons button, Point ptscreen)
	{
		PaintDockControlArgs paintInfo = GetPaintInfo();
		renderer.RefreshPaintInfo(new Rectangle(Point.Empty, base.Size), paintInfo);
		DockControllerBase childAt = dcInternal.GetChildAt(0);
		if (childAt is DockHostController)
		{
			DockHostController dockHostController = childAt as DockHostController;
			(dockHostController.HostControl as DockHost).HandleMouseDown(button, ptscreen);
		}
		else if (childAt is DockTabController)
		{
			DockTabController dockTabController = childAt as DockTabController;
			(dockTabController.HostControl as DockHost).HandleMouseDown(button, ptscreen);
		}
		else if (childAt is SizingController)
		{
			dcInternal.HandleMouseDownImp(button, PointToClient(ptscreen));
		}
		else
		{
			dcInternal.HandleMouseDownImp(button, PointToClient(ptscreen));
		}
	}

	public void HandleMouseMove(MouseButtons button, Point ptscreen)
	{
		if (nDsgnrNCHit >= 10 && nDsgnrNCHit <= 17)
		{
			Point position = Cursor.Position;
			Rectangle bounds = base.Bounds;
			int num = position.X - ptInitNCHit.X;
			int num2 = position.Y - ptInitNCHit.Y;
			ptInitNCHit = position;
			switch (nDsgnrNCHit)
			{
			case 10:
				bounds.X += num;
				bounds.Width = ((num < 0) ? (bounds.Width + Math.Abs(num)) : (bounds.Width - Math.Abs(num)));
				break;
			case 11:
				bounds.Width += num;
				break;
			case 12:
				bounds.Y += num2;
				bounds.Height = ((num2 < 0) ? (bounds.Height + Math.Abs(num2)) : (bounds.Height - Math.Abs(num2)));
				break;
			case 13:
				bounds.X += num;
				bounds.Width = ((num < 0) ? (bounds.Width + Math.Abs(num)) : (bounds.Width - Math.Abs(num)));
				bounds.Y += num2;
				bounds.Height = ((num2 < 0) ? (bounds.Height + Math.Abs(num2)) : (bounds.Height - Math.Abs(num2)));
				break;
			case 14:
				bounds.Width += num;
				bounds.Y += num2;
				bounds.Height = ((num2 < 0) ? (bounds.Height + Math.Abs(num2)) : (bounds.Height - Math.Abs(num2)));
				break;
			case 15:
				bounds.Height += num2;
				break;
			case 16:
				bounds.X += num;
				bounds.Width = ((num < 0) ? (bounds.Width + Math.Abs(num)) : (bounds.Width - Math.Abs(num)));
				bounds.Height += num2;
				break;
			case 17:
				bounds.Width += num;
				bounds.Height += num2;
				break;
			}
			base.Bounds = bounds;
		}
		else
		{
			DockControllerBase childAt = dcInternal.GetChildAt(0);
			if (childAt is DockHostController)
			{
				DockHostController dockHostController = childAt as DockHostController;
				(dockHostController.HostControl as DockHost).HandleMouseMove(button, ptscreen);
			}
			else if (childAt is DockTabController)
			{
				DockTabController dockTabController = childAt as DockTabController;
				(dockTabController.HostControl as DockHost).HandleMouseMove(button, ptscreen);
			}
			else if (childAt is SizingController)
			{
				dcInternal.HandleMouseMoveImp(button, PointToClient(ptscreen));
			}
			else
			{
				dcInternal.HandleMouseMoveImp(button, PointToClient(ptscreen));
			}
		}
	}

	public void HandleMouseUp(MouseButtons button, Point ptscreen)
	{
		if (dcInternal.DockingManager.VisualStyle != VisualStyle.Default && dcInternal.DockingManager.VisualStyle != VisualStyle.VS2005)
		{
			Control control = dcInternal.DockingManager.DragProvider.DraggingControl as Control;
			if (hitArea == HitTestArea.Button && !base.Controls.Contains(control) && control != this)
			{
				PaintNCArea();
				dcInternal.bClosingByMouse = true;
				dcInternal.CloseController();
				dcInternal.bClosingByMouse = false;
				if (base.Owner != null)
				{
					base.Owner.Focus();
				}
				return;
			}
		}
		if (nDsgnrNCHit >= 10 && nDsgnrNCHit <= 17)
		{
			nDsgnrNCHit = 0;
			ptInitNCHit = Point.Empty;
			dcInternal.DockingManager.UpdateDesigner();
		}
		else
		{
			dcInternal.HandleMouseUpImp(button, PointToClient(ptscreen));
		}
	}

	public void HandleDoubleClick(Point ptscreen)
	{
		if (base.Visible)
		{
			dcInternal.HandleDoubleClickImp(PointToClient(ptscreen));
		}
	}

	public void HandleMouseLeave()
	{
	}

	public void InitiateFloatingResize(Point ptscreen, int nchittest)
	{
		nDsgnrNCHit = nchittest;
		ptInitNCHit = ptscreen;
	}

	public bool GetDesignMode()
	{
		return dcInternal.DockingManager.DesignMode;
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess && base.Visible)
		{
			_ = dcInternal.DockingManager.DragProvider.DraggingControl;
			dcInternal.HandleMouseUpImp(e.Button, new Point(e.X, e.Y));
			if (nDsgnrNCHit >= 10 && nDsgnrNCHit <= 17)
			{
				nDsgnrNCHit = 0;
				ptInitNCHit = Point.Empty;
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		Point p = new Point(e.X, e.Y);
		p = PointToScreen(p);
		if (e.Button == MouseButtons.Left && !SystemInformation.DragFullWindows && dcInternal.DockingManager.DragProvider is WhidbeyDragProvider)
		{
			base.Location = new Point(p.X - m_dragPoint.X, p.Y - m_dragPoint.Y);
		}
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess)
		{
			IDraggable draggingControl = dcInternal.DockingManager.DragProvider.DraggingControl;
			if (draggingControl == null)
			{
				dcInternal.HandleMouseMoveImp(e.Button, new Point(e.X, e.Y));
			}
			else if (draggingControl == this || base.Controls.Contains(draggingControl as Control))
			{
				dcInternal.HandleMouseMoveImp(MouseButtons.Left, new Point(e.X, e.Y));
			}
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (base.Visible)
		{
			UpdateFormBorderStyle();
		}
		if (base.Visible && !dcInternal.DockingManager.bLoadVisibility)
		{
			base.Visible = false;
			dcInternal = null;
		}
		base.OnVisibleChanged(e);
	}

	protected override void OnLocationChanged(EventArgs e)
	{
		Point ptclient = PointToClient(Cursor.Position);
		if (dcInternal != null && !dcInternal.DockingManager.DesignProcess && base.Visible)
		{
			IDraggable draggingControl = dcInternal.DockingManager.DragProvider.DraggingControl;
			if (draggingControl == null || base.Controls.Contains(draggingControl as Control) || draggingControl == this)
			{
				dcInternal.HandleMouseMoveImp(MouseButtons.Left, ptclient);
			}
		}
		base.OnLocationChanged(e);
	}

	protected override void Dispose(bool bdisposing)
	{
		SubscribeToResizeEvent(subscribe: false);
		nativeWindow.ReleaseHandle();
		base.Dispose(bdisposing);
	}

	public override void Refresh()
	{
	}

	internal void RestoreStateOnRightToLeftUpdate()
	{
		if (Visible)
		{
			Visible = false;
			Rectangle bounds = Bounds;
			Bounds = new Rectangle(new Point(0, SystemInformation.VirtualScreen.Height), bounds.Size);
			Visible = true;
			Bounds = bounds;
		}
	}

	internal void UpdateChildsRightToLeft(RightToLeft rtlEffective)
	{
		foreach (Control control in base.Controls)
		{
			control.RightToLeft = rtlEffective;
		}
	}

	public DockControllerBase GetController()
	{
		return InternalController;
	}

	private void FloatingForm_Resize(object sender, EventArgs e)
	{
		if (dcInternal.DockingManager.VisualStyle != VisualStyle.Default && dcInternal.DockingManager.VisualStyle != VisualStyle.VS2005 && base.Controls.Count > 0)
		{
			renderer.ControlBounds = new Rectangle(Point.Empty, base.Size);
			PaintNCArea();
		}
	}

	private void SubscribeToResizeEvent(bool subscribe)
	{
		if (subscribe)
		{
			base.Resize += FloatingForm_Resize;
		}
		else
		{
			base.Resize -= FloatingForm_Resize;
		}
	}
}
