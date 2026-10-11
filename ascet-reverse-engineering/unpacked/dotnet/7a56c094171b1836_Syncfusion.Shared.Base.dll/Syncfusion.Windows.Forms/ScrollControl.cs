using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Text;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class ScrollControl : Control, ICancelModeProvider, ISplitterPaneSupport, IScrollBarWrapperContainer, ISupportUpdating, ISupportIntelliMouse, IQueryFocusInside, INonClientPaintingSupport, IDisposable
{
	internal delegate void CancelMouseDelegate(CancelMouseEventArgs e);

	private bool hasDoubleBufferSurface;

	private bool allowIncreaseSmallChange = true;

	private bool isPaneClosed;

	private static object elapsedSemaphor = true;

	private static object startstopSemaphor = true;

	private int lastMouseTick = int.MinValue;

	private ScrollBarWrapper hScrollBar;

	private ScrollBarWrapper vScrollBar;

	private bool hScroll;

	private bool vScroll;

	private Timer repeatScrollEventTimer;

	private ScrollBars autoScrolling;

	private Message repeatScrollMessage;

	private ScrollEventType repeatScrollEventType;

	private ScrollBarWrapper repeatScrollBar;

	private bool disableAutoScroll;

	private int savedHValue = -1;

	private int savedVValue = -1;

	private bool fillSplitterPane = true;

	private Cursor overrideCursor;

	private Rectangle autoScrollBounds = Rectangle.Empty;

	private IntelliMouseDragScroll imm;

	private bool disableScrollWindow;

	private int updateCount;

	private bool paintPending;

	private bool lockScrollBars;

	private ScrollControllMouseControllerDispatcher mouseControllerDispatcher;

	private BeginUpdateOptions updateOptions;

	private Point renderOriginPoint = Point.Empty;

	private bool useSharedScrollBars;

	private bool supportsThumbTrack;

	private BorderStyle borderStyle;

	private ScrollTipWindow scrollTip;

	private bool isThumbTracking;

	private ScrollBars thumbBar;

	private string scrollTipFormat = " Position {0} ";

	private Size insideScrollMargins = new Size(10, 10);

	private bool ignoreUICues;

	private Point mousePosition;

	private Form wiredParentForm;

	private static bool discardPaintMessagesAfterBeginUpdate = false;

	private bool inDispose;

	internal long nTimerCount;

	internal long nDelayScrollTimer = 60L;

	private ThemedWindowDrawing _themedDrawing;

	private ThemedScrollBarDrawing _themedScrollBarDrawing;

	private bool isPaneClosing;

	private int vScrollIncrement = 1;

	private int hScrollIncrement = 1;

	private bool isOnMouseWheel;

	private bool smoothMouseWheelScrolling = true;

	private int mouseWheelScrollLines;

	private bool inMouseDragScroll;

	private SizeBox sizeBox;

	[DocumentationExclude]
	internal Exception mouseEventException;

	private IntPtr cachedRgn = IntPtr.Zero;

	private int accStartInterval = 700;

	private int accStepInterval = 10;

	private int accMinInterval = 40;

	private int accDelayScrollTimer = 60;

	private AccelerateScrollingBehavior accelerateScrolling = AccelerateScrollingBehavior.Default;

	private SizeGripStyle showSizeGrip;

	private bool allowSizeGrip;

	private bool forceSizeBox;

	private bool smartSizeBox;

	private bool isActiveControl;

	private bool isValidating;

	private bool isDeactivatedCalled;

	private bool hasControlFocus;

	private bool isValidated;

	private bool isMousePressed;

	private DoubleBufferSurface doubleBufferSurface;

	private Rectangle savedBounds;

	private bool allowRaiseMouseMoveInOnDragOver = true;

	private bool inOleDragOver;

	private bool onPaintCalled;

	private bool preJitPaint;

	private bool m_bUpdatingStyles;

	public static bool IgnoreSizeGripStyleHideShow = false;

	private Office2007ColorScheme office2007ScrollBarsColorScheme;

	private bool office2007ScrollBars;

	private bool scrollbarsDirty;

	protected bool PreJitPaint
	{
		get
		{
			return preJitPaint;
		}
		set
		{
			preJitPaint = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ScrollBars AutoScrolling
	{
		get
		{
			return autoScrolling;
		}
		set
		{
			if (value != autoScrolling)
			{
				autoScrolling = value;
				nDelayScrollTimer = accDelayScrollTimer;
				if (autoScrolling == ScrollBars.None)
				{
					StopAutoScrollTimer();
				}
				OnAutoScrollingChanged(EventArgs.Empty);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool DisableScrollWindow
	{
		get
		{
			if (!disableScrollWindow && (!Updating || (updateOptions & BeginUpdateOptions.ScrollWindow) != BeginUpdateOptions.None) && !GetStyle(ControlStyles.SupportsTransparentBackColor))
			{
				return BackgroundImage != null;
			}
			return true;
		}
		set
		{
			disableScrollWindow = value;
		}
	}

	[Browsable(false)]
	[Obsolete("Use VerticalThumbTrack and HorizontalThumbTrack properties instead.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool SupportsThumbTrack
	{
		get
		{
			return supportsThumbTrack;
		}
		set
		{
			if (supportsThumbTrack != value)
			{
				supportsThumbTrack = value;
				HScrollBar.SupportsThumbTrack = value;
				VScrollBar.SupportsThumbTrack = value;
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(false)]
	[Category("Scrolling")]
	[Description("Specifies if the control should scroll while the user is dragging a vertical scrollbar thumb.")]
	public virtual bool VerticalThumbTrack
	{
		get
		{
			return VScrollBar.SupportsThumbTrack;
		}
		set
		{
			VScrollBar.SupportsThumbTrack = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[Category("Scrolling")]
	[Description("Specifies if the control should scroll while the user is dragging a horizontal scrollbar thumb.")]
	public virtual bool HorizontalThumbTrack
	{
		get
		{
			return HScrollBar.SupportsThumbTrack;
		}
		set
		{
			HScrollBar.SupportsThumbTrack = value;
		}
	}

	[Browsable(true)]
	[Category("Scrolling")]
	[Description("Specifies if the control should show ScrollTips while the user is dragging a vertical scrollbar thumb.")]
	[DefaultValue(false)]
	public virtual bool VerticalScrollTips
	{
		get
		{
			return VScrollBar.SupportsScrollTips;
		}
		set
		{
			VScrollBar.SupportsScrollTips = value;
		}
	}

	[Category("Scrolling")]
	[Browsable(true)]
	[Description("Specifies if the control should show ScrollTips while the user is dragging a horizontal scrollbar thumb.")]
	[DefaultValue(false)]
	public virtual bool HorizontalScrollTips
	{
		get
		{
			return HScrollBar.SupportsScrollTips;
		}
		set
		{
			HScrollBar.SupportsScrollTips = value;
		}
	}

	[Category("Scrolling")]
	[DefaultValue(SizeGripStyle.Auto)]
	[Description("Specifies if a size grip should be drawn at the bottom-right corner if both scrollbars are visible.")]
	public SizeGripStyle SizeGripStyle
	{
		get
		{
			return showSizeGrip;
		}
		set
		{
			showSizeGrip = value;
		}
	}

	[DefaultValue(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[Category("Scrolling")]
	[Description("Specifies if a size grip can be drawn inside the SizeBox and if the SizeGripStyle of the parent form is allowed to be changed.")]
	public bool AllowSizeGrip
	{
		get
		{
			return allowSizeGrip;
		}
		set
		{
			allowSizeGrip = value;
		}
	}

	[DefaultValue(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[Category("Scrolling")]
	[Description("Specifies if size box should always be drawn when both scrollbars are visible.")]
	public bool ForceSizeBox
	{
		get
		{
			return forceSizeBox;
		}
		set
		{
			forceSizeBox = value;
		}
	}

	[Category("Scrolling")]
	[DefaultValue(true)]
	[Browsable(false)]
	[Description("Specifies if size box should be drawn when both scrollbars are visible and the control is not docked in an MDIChild window.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool SmartSizeBox
	{
		get
		{
			return smartSizeBox;
		}
		set
		{
			smartSizeBox = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool AutoScrollTimerEnable => repeatScrollEventTimer != null;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ScrollBarWrapper VScrollBar => vScrollBar;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ScrollBarWrapper HScrollBar => hScrollBar;

	internal bool IsThumbTracking
	{
		get
		{
			return isThumbTracking;
		}
		set
		{
			if (isThumbTracking != value)
			{
				isThumbTracking = value;
				if (isThumbTracking)
				{
					ScrollTipFeedbacks();
				}
				else
				{
					HideScrollTips();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Specifies if the scroll control can increase the ScrollBar.SmallChange property when doing accelerated scrolling.")]
	[Category("Scrolling")]
	public virtual bool AllowIncreaseSmallChange
	{
		get
		{
			return allowIncreaseSmallChange;
		}
		set
		{
			allowIncreaseSmallChange = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Rectangle AutoScrollBounds
	{
		get
		{
			if (autoScrollBounds.IsEmpty)
			{
				return ClientRectangle;
			}
			return autoScrollBounds;
		}
		set
		{
			autoScrollBounds = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual Rectangle InsideScrollBounds
	{
		get
		{
			Rectangle result = AutoScrollBounds;
			result.Inflate(-InsideScrollMargins.Width, -InsideScrollMargins.Height);
			return result;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Size InsideScrollMargins
	{
		get
		{
			return insideScrollMargins;
		}
		set
		{
			insideScrollMargins = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ScrollTipWindow ScrollTip => scrollTip;

	[DefaultValue(" Position {0} ")]
	[Description("The text to be displayed in the ScrollTip window with a place holder for scroll position, e.g. Position {0}.")]
	[Category("Scrolling")]
	public string ScrollTipFormat
	{
		get
		{
			return scrollTipFormat;
		}
		set
		{
			scrollTipFormat = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	internal Cursor OverrideCursor
	{
		get
		{
			return overrideCursor;
		}
		set
		{
			if (!(overrideCursor != value))
			{
				return;
			}
			overrideCursor = value;
			try
			{
				if (!base.DesignMode && base.IsHandleCreated)
				{
					NativeMethods.SendMessage(base.Handle, 32, base.Handle, (IntPtr)1);
				}
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsMousePressed
	{
		get
		{
			return isMousePressed;
		}
		set
		{
			isMousePressed = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsValidating => isValidating;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsValidated => isValidated;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsActiveControl => isActiveControl;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsDeactivated => isDeactivatedCalled;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasControlFocus => hasControlFocus;

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IgnoreUICues
	{
		get
		{
			return ignoreUICues;
		}
		set
		{
			ignoreUICues = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string PaneDesc
	{
		get
		{
			StringBuilder stringBuilder = new StringBuilder();
			stringBuilder.Append((base.Parent != null) ? (" " + base.Parent.Name) : string.Empty);
			stringBuilder.Append((base.Name != null && base.Name.Length > 0) ? base.Name : Text);
			stringBuilder.Append(" ");
			if (base.Parent is IDynamicSplitterFrame)
			{
				IDynamicSplitterFrame dynamicSplitterFrame = (IDynamicSplitterFrame)base.Parent;
				if (dynamicSplitterFrame.FindPane(this, out var row, out var column))
				{
					stringBuilder.AppendFormat("P{0}.{1}", row, column);
				}
			}
			stringBuilder.Append(IsActiveControl ? "Act" : string.Empty);
			stringBuilder.Append(IsValidating ? "Val" : string.Empty);
			stringBuilder.Append(IsValidated ? "Vok" : string.Empty);
			stringBuilder.Append(HasControlFocus ? "Foh" : string.Empty);
			stringBuilder.Append(QueryFocusInside() ? "Foi" : string.Empty);
			stringBuilder.Append(base.CanFocus ? "Cfo" : string.Empty);
			stringBuilder.Append(IsMousePressed ? "Mop" : string.Empty);
			return stringBuilder.ToString();
		}
	}

	[Category("Scrolling")]
	[Description("Lets you control scrolling behavior when the user rolls the mouse wheel.")]
	public int MouseWheelScrollLines
	{
		get
		{
			if (mouseWheelScrollLines <= 0)
			{
				return SystemInformation.MouseWheelScrollLines;
			}
			return mouseWheelScrollLines;
		}
		set
		{
			mouseWheelScrollLines = value;
		}
	}

	[Category("Scrolling")]
	[DefaultValue(true)]
	[Description("Lets you control scrolling behavior when the user rolls the mouse wheel.")]
	public bool SmoothMouseWheelScrolling
	{
		get
		{
			return smoothMouseWheelScrolling;
		}
		set
		{
			smoothMouseWheelScrolling = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual int VScrollIncrement
	{
		get
		{
			return vScrollIncrement;
		}
		set
		{
			vScrollIncrement = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual int HScrollIncrement
	{
		get
		{
			return hScrollIncrement;
		}
		set
		{
			hScrollIncrement = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool UseSharedScrollBars
	{
		get
		{
			return useSharedScrollBars;
		}
		set
		{
			useSharedScrollBars = value;
		}
	}

	[DefaultValue(BorderStyle.None)]
	[Description("The border style of the control.")]
	[SRCategory("Appearance")]
	[DispId(-504)]
	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			if (borderStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				borderStyle = value;
				UpdateStyles();
			}
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[Description("Indicates whether the horizontal scroll bar is visible.")]
	[Category("Scrolling")]
	[DefaultValue(false)]
	public bool HScroll
	{
		get
		{
			return hScroll;
		}
		set
		{
			if (hScroll != value)
			{
				SetVisibleScrollbars(value, vScroll);
			}
		}
	}

	[Description("Indicates whether the vertical scroll bar is visible.")]
	[Category("Scrolling")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.All)]
	public bool VScroll
	{
		get
		{
			return vScroll;
		}
		set
		{
			if (vScroll != value)
			{
				SetVisibleScrollbars(hScroll, value);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsSplitterPaneClosed => isPaneClosed;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public MouseControllerDispatcher MouseControllerDispatcher
	{
		get
		{
			if (mouseControllerDispatcher == null && !base.IsDisposed)
			{
				mouseControllerDispatcher = new ScrollControllMouseControllerDispatcher(this);
			}
			return mouseControllerDispatcher;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IMouseController ActiveController => MouseControllerDispatcher.ActiveController;

	bool ISplitterPaneSupport.FillSplitterPane => FillSplitterPane;

	[Category("Scrolling")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("Toggles support for using the control inside a dynamic splitter window and sharing scrollbars with the parent window.")]
	public bool FillSplitterPane
	{
		get
		{
			return fillSplitterPane;
		}
		set
		{
			if (value == fillSplitterPane)
			{
				return;
			}
			if (VScroll || HScroll)
			{
				SetVisibleScrollbars(horiz: false, vert: false);
			}
			fillSplitterPane = value;
			try
			{
				OnFillSplitterPaneChanged(EventArgs.Empty);
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsSplitterPaneClosing => isPaneClosing;

	[DefaultValue(false)]
	[Category("Scrolling")]
	[Description("Toggles support for Intelli-Mouse panning.")]
	public bool EnableIntelliMouse
	{
		get
		{
			if (imm != null)
			{
				return imm.Enabled;
			}
			return false;
		}
		set
		{
			if (value != EnableIntelliMouse)
			{
				if (imm == null)
				{
					imm = new IntelliMouseDragScroll(this, hookMouseDownMessage: true);
					imm.AllowScrolling = ScrollBars.Both;
					imm.DragScroll += IntelliMouseDragScrollEvent;
				}
				imm.Enabled = value;
			}
		}
	}

	private ThemedWindowDrawing themedDrawing
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && _themedDrawing == null)
			{
				_themedDrawing = new ThemedWindowDrawing(this);
			}
			return _themedDrawing;
		}
	}

	private ThemedScrollBarDrawing themedScrollBarDrawing
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && _themedScrollBarDrawing == null)
			{
				_themedScrollBarDrawing = new ThemedScrollBarDrawing(this);
			}
			return _themedScrollBarDrawing;
		}
	}

	public static bool DiscardPaintMessagesAfterBeginUpdate
	{
		get
		{
			return discardPaintMessagesAfterBeginUpdate;
		}
		set
		{
			discardPaintMessagesAfterBeginUpdate = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	public bool IsDisposing => inDispose;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Point LastMousePosition
	{
		get
		{
			return mousePosition;
		}
		set
		{
			mousePosition = value;
		}
	}

	[Category("Scrolling")]
	[Description("Specifies the acceleration behavior for scrollbars.")]
	[DefaultValue(AccelerateScrollingBehavior.Default)]
	public AccelerateScrollingBehavior AccelerateScrolling
	{
		get
		{
			return accelerateScrolling;
		}
		set
		{
			if (accelerateScrolling != value)
			{
				accelerateScrolling = value;
				OnAccelerateScrollingChanged(EventArgs.Empty);
			}
		}
	}

	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool AllowRaiseMouseMoveInOnDragOver
	{
		get
		{
			return allowRaiseMouseMoveInOnDragOver;
		}
		set
		{
			allowRaiseMouseMoveInOnDragOver = value;
		}
	}

	[Category("Layout")]
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

	[Browsable(false)]
	public new Rectangle Bounds
	{
		get
		{
			return base.Bounds;
		}
		set
		{
			base.Bounds = value;
		}
	}

	public new int TabIndex
	{
		get
		{
			return base.TabIndex;
		}
		set
		{
			base.TabIndex = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual BeginUpdateOptions UpdateOptions => updateOptions;

	bool ISupportUpdating.Updating => Updating;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Updating => updateCount > 0;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public bool PaintPending => paintPending;

	[Browsable(false)]
	public bool HasDoubleBufferSurface => hasDoubleBufferSurface;

	[Browsable(false)]
	public DoubleBufferSurface DoubleBufferSurface
	{
		get
		{
			if (!hasDoubleBufferSurface)
			{
				return null;
			}
			if (Bounds == savedBounds && doubleBufferSurface != null)
			{
				return doubleBufferSurface;
			}
			savedBounds = Bounds;
			if (doubleBufferSurface != null)
			{
				doubleBufferSurface.Dispose();
			}
			Graphics graphics = CreateGraphics();
			OnPrepareDoubleBufferSurfaceGraphics(graphics);
			doubleBufferSurface = new DoubleBufferSurface(graphics, DisplayRectangle);
			return doubleBufferSurface;
		}
	}

	protected bool UpdatingStyles => m_bUpdatingStyles;

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			if (HScroll && !Office2007ScrollBars)
			{
				createParams.Style |= 1048576;
			}
			else
			{
				createParams.Style &= -1048577;
			}
			if (VScroll && !Office2007ScrollBars)
			{
				createParams.Style |= 2097152;
			}
			else
			{
				createParams.Style &= -2097153;
			}
			if (RightToLeft == RightToLeft.Yes)
			{
				createParams.ExStyle |= 8192;
			}
			else
			{
				createParams.ExStyle &= -8193;
			}
			switch (borderStyle)
			{
			case BorderStyle.Fixed3D:
				createParams.ExStyle |= 512;
				break;
			case BorderStyle.FixedSingle:
				createParams.Style |= 8388608;
				break;
			}
			return createParams;
		}
	}

	[SRCategory("Appearance")]
	[DefaultValue(false)]
	[Description("Toggle between standard and Office2007 scrollbars.")]
	public virtual bool Office2007ScrollBars
	{
		get
		{
			return office2007ScrollBars;
		}
		set
		{
			if (office2007ScrollBars != value)
			{
				office2007ScrollBars = value;
				if (base.IsHandleCreated)
				{
					scrollbarsDirty = true;
					Invalidate();
				}
			}
			OnOffice2007ScrollBarsChanged(EventArgs.Empty);
		}
	}

	[SRCategory("Appearance")]
	[DefaultValue(Office2007ColorScheme.Blue)]
	[Browsable(true)]
	[Description("Office 2007 style scrollbars.")]
	public virtual Office2007ColorScheme Office2007ScrollBarsColorScheme
	{
		get
		{
			return office2007ScrollBarsColorScheme;
		}
		set
		{
			if (office2007ScrollBarsColorScheme == value)
			{
				return;
			}
			office2007ScrollBarsColorScheme = value;
			if (Office2007ScrollBars)
			{
				if (HScrollBar.InnerScrollBar is ScrollBarCustomDraw)
				{
					ScrollBarCustomDraw scrollBarCustomDraw = (ScrollBarCustomDraw)HScrollBar.InnerScrollBar;
					scrollBarCustomDraw.VisualStyle = ScrollBarCustomDrawStyles.Office2007;
					scrollBarCustomDraw.OfficeColorScheme = Office2007ScrollBarsColorScheme;
				}
				if (VScrollBar.InnerScrollBar is ScrollBarCustomDraw)
				{
					ScrollBarCustomDraw scrollBarCustomDraw2 = (ScrollBarCustomDraw)VScrollBar.InnerScrollBar;
					scrollBarCustomDraw2.VisualStyle = ScrollBarCustomDrawStyles.Office2007;
					scrollBarCustomDraw2.OfficeColorScheme = Office2007ScrollBarsColorScheme;
				}
				OnOffice2007ScrollBarsColorSchemeChanged(EventArgs.Empty);
			}
			if (base.DesignMode)
			{
				Office2007ScrollBars = true;
			}
		}
	}

	public new Rectangle ClientRectangle
	{
		get
		{
			bool flag = vScroll && VScrollBar.InnerScrollBar is ScrollBarCustomDraw;
			bool flag2 = hScroll && HScrollBar.InnerScrollBar is ScrollBarCustomDraw;
			Rectangle clientRectangle = base.ClientRectangle;
			if (flag2)
			{
				clientRectangle.Height -= HScrollBar.InnerScrollBar.Height;
			}
			if (flag)
			{
				clientRectangle.Width -= VScrollBar.InnerScrollBar.Width;
				if (RightToLeft == RightToLeft.Yes)
				{
					clientRectangle.X += VScrollBar.InnerScrollBar.Width;
				}
			}
			return clientRectangle;
		}
	}

	public new Size ClientSize
	{
		get
		{
			bool flag = vScroll && VScrollBar.InnerScrollBar is ScrollBarCustomDraw;
			bool flag2 = hScroll && HScrollBar.InnerScrollBar is ScrollBarCustomDraw;
			Size clientSize = base.ClientSize;
			if (flag2)
			{
				clientSize.Height -= HScrollBar.InnerScrollBar.Height;
			}
			if (flag)
			{
				clientSize.Width -= VScrollBar.InnerScrollBar.Width;
			}
			return clientSize;
		}
		set
		{
			bool flag = vScroll && VScrollBar.InnerScrollBar is ScrollBarCustomDraw;
			bool flag2 = hScroll && HScrollBar.InnerScrollBar is ScrollBarCustomDraw;
			Size clientSize = value;
			if (flag2)
			{
				clientSize.Height += HScrollBar.InnerScrollBar.Height;
			}
			if (flag)
			{
				clientSize.Width += VScrollBar.InnerScrollBar.Width;
			}
			base.ClientSize = clientSize;
		}
	}

	[Category("Focus")]
	[Description("Occurs when both OnControlLostFocus and OnLeave occur.")]
	public event EventHandler Deactivated;

	[Category("Scrolling")]
	[Description("Occurs when the AccelerateScrolling property has been changed.")]
	public event EventHandler AccelerateScrollingChanged;

	[Category("Scrolling")]
	[Description("Occurs when vertical scrollbar is moved.")]
	public event ScrollEventHandler VerticalScroll;

	[Description("Occurs when horizontal scrollbar is moved.")]
	[Category("Scrolling")]
	public event ScrollEventHandler HorizontalScroll;

	[Description("Occurs when the user presses the mouse wheel and drags the mouse.")]
	[Category("Scrolling")]
	public event IntelliMouseDragScrollEventHandler IntelliMouseDragScrolling;

	[Description("The ShowContextMenu event occurs when the user right-clicks inside the control.")]
	[Category("Scrolling")]
	public event ShowContextMenuEventHandler ShowContextMenu;

	[Category("Scrolling")]
	[Description("Occurs when accelerated scrollbar scrolling or mouse drag-scrolling starts.")]
	public event StartAutoScrollingEventHandler StartAutoScrolling;

	[Category("Scrolling")]
	[Description("Occurs when the splitter control has closed the pane with this control.")]
	public event EventHandler SplitterPaneClosed;

	[Description("Occurs when the splitter control is closing the pane with this control.")]
	[Category("Scrolling")]
	public event EventHandler SplitterPaneClosing;

	[Description("Occurs when the user is dragging the scrollbar thumb.")]
	[Category("Scrolling")]
	public event ScrollTipFeedbackEventHandler ScrollTipFeedback;

	[Description("Occurs when scrollbars are hidden or shown.")]
	[Category("Scrolling")]
	public event EventHandler ScrollbarsVisibleChanged;

	[Description("Occurs when the user holds the Control Key and rolls the mouse wheel.")]
	[Category("Scrolling")]
	public event MouseWheelZoomEventHandler MouseWheelZoom;

	[Description("Occurs when the FillSplitterPane value has changed.")]
	[Category("Scrolling")]
	public event EventHandler FillSplitterPaneChanged;

	[Browsable(false)]
	[Category("Behavior")]
	[Description(" Occurs when BeginUpdate has been called the first time or EndUpdate has been called the last time.")]
	public event EventHandler UpdatingChanged;

	[Browsable(false)]
	[Description("Occurs after the window has been scrolled.")]
	[Category("Scrolling")]
	public event ScrollWindowEventHandler WindowScrolled;

	[Description("Occurs while the window is being scrolled.")]
	[Browsable(false)]
	[Category("Scrolling")]
	public event ScrollWindowEventHandler WindowScrolling;

	[Description("Occurs before a MouseDown event is raised and allows you to cancel the mouse event.")]
	[Category("Behavior")]
	public event CancelMouseEventHandler ScrollControlMouseDown;

	[Category("Behavior")]
	[Description("Occurs after a MouseDown is raised.")]
	public event MouseEventHandler ScrollControlHandledMouseDown;

	[Description("Occurs before a MouseMove is raised and allows you to cancel the mouse event.")]
	[Category("Behavior")]
	public event CancelMouseEventHandler ScrollControlMouseMove;

	[Category("Behavior")]
	[Description("Occurs after a MouseMovet event is raised and after auto-scrolling.")]
	public event MouseEventHandler ScrollControlHandledMouseMove;

	[Category("Behavior")]
	[Description("Occurs before a MouseUp is raised and allows you to cancel the mouse event.")]
	public event CancelMouseEventHandler ScrollControlMouseUp;

	[Description("Occurs after a MouseUp event is raised.")]
	[Category("Behavior")]
	public event MouseEventHandler ScrollControlHandledMouseUp;

	[Description("Occurs when the window receives a WM_CANCELMODE message.")]
	[Category("Behavior")]
	public event EventHandler CancelMode;

	[Category("Behavior")]
	[Description("Occurs when AutoScrolling property is changed.")]
	public event EventHandler AutoScrollingChanged;

	[Category("Appearance")]
	[Description("Occurs when the Office2007ScrollBarsColorScheme property has changed.")]
	public event EventHandler Office2007ScrollBarsColorSchemeChanged;

	[Description("Occurs when the SupportsOffice2007FlatScrollBars property has changed.")]
	[Category("Appearance")]
	public event EventHandler Office2007ScrollBarsChanged;

	public ScrollControl()
	{
		imm = new IntelliMouseDragScroll(this, hookMouseDownMessage: true);
		imm.AllowScrolling = ScrollBars.Both;
		imm.DragScroll += IntelliMouseDragScrollEvent;
		hScrollBar = new ScrollBarWrapper(this, ScrollBars.Horizontal);
		vScrollBar = new ScrollBarWrapper(this, ScrollBars.Vertical);
		WireScrollEvents();
	}

	public new void Dispose()
	{
		inDispose = true;
		base.Dispose();
		inDispose = false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (doubleBufferSurface != null)
			{
				doubleBufferSurface.Dispose();
			}
			if (repeatScrollEventTimer != null)
			{
				repeatScrollEventTimer.Tick -= repeatScrollEventTimer_Elapsed;
				repeatScrollEventTimer.Dispose();
				repeatScrollEventTimer = null;
			}
			repeatScrollBar = null;
			overrideCursor = null;
			if (wiredParentForm != null)
			{
				wiredParentForm.Enter -= wiredParentForm_Enter;
			}
			wiredParentForm = null;
			if (mouseControllerDispatcher != null)
			{
				mouseControllerDispatcher.Dispose();
				mouseControllerDispatcher = null;
			}
			UnwireScrollEvents();
			if (mouseControllerDispatcher != null)
			{
				mouseControllerDispatcher.Dispose();
				mouseControllerDispatcher = null;
			}
			if (_themedDrawing != null)
			{
				_themedDrawing.Dispose();
				_themedDrawing = null;
			}
			if (_themedScrollBarDrawing != null)
			{
				_themedScrollBarDrawing.Dispose();
				_themedScrollBarDrawing = null;
			}
			if (sizeBox != null)
			{
				base.Controls.Remove(sizeBox);
				sizeBox.Dispose();
				sizeBox = null;
			}
			if (scrollTip != null)
			{
				scrollTip.Dispose();
				scrollTip = null;
			}
			if (imm != null)
			{
				imm.DragScroll -= IntelliMouseDragScrollEvent;
				imm.Dispose();
				imm = null;
			}
			if (cachedRgn != IntPtr.Zero)
			{
				NativeMethods.DeleteObject(cachedRgn);
				cachedRgn = IntPtr.Zero;
			}
		}
		base.Dispose(disposing);
	}

	public void ResetMouseController()
	{
		if (mouseControllerDispatcher != null)
		{
			mouseControllerDispatcher.ProcessCancelMode();
		}
	}

	private bool ShouldSerializeFillSplitterPane()
	{
		if (GetScrollBarFrameOfComponent(this) == null)
		{
			return false;
		}
		return FillSplitterPane;
	}

	private bool ShouldSerializeBorderStyle()
	{
		return !FillSplitterPane;
	}

	private bool ShouldSerializeHScroll()
	{
		return !FillSplitterPane;
	}

	private bool ShouldSerializeVScroll()
	{
		return !FillSplitterPane;
	}

	public bool ShouldSerializeMouseWheelScrollLines()
	{
		return mouseWheelScrollLines > 0;
	}

	private bool ShouldSerializeInsideScrollMargins()
	{
		if (insideScrollMargins.Width == 10)
		{
			return insideScrollMargins.Height != 10;
		}
		return true;
	}

	private bool ShouldSerializeSize()
	{
		return !FillSplitterPane;
	}

	private bool ShouldSerializeTabIndex()
	{
		return !FillSplitterPane;
	}

	internal static int HIWORD(int n)
	{
		return (n >> 16) & 0xFFFF;
	}

	private static int MAKELPARAM(int low, int high)
	{
		return (high << 16) | (low & 0xFFFF);
	}

	private static int LOWORD(int n)
	{
		return n & 0xFFFF;
	}

	private static int LOWORD(IntPtr n)
	{
		return LOWORD((int)n);
	}

	public void OffsetRenderOriginPoint(int x, int y)
	{
		renderOriginPoint.X += x;
		renderOriginPoint.Y += y;
	}

	public Point LastMousePositionToClient()
	{
		return PointToClient(mousePosition);
	}

	public int HitTest(Point point)
	{
		IMouseController controller;
		return MouseControllerDispatcher.HitTest(point, MouseButtons.Left, 1, out controller);
	}

	public int HitTest(Point point, MouseButtons mouseButton)
	{
		IMouseController controller;
		return MouseControllerDispatcher.HitTest(point, mouseButton, 1, out controller);
	}

	public int HitTest(Point point, MouseButtons mouseButton, out IMouseController controller)
	{
		return MouseControllerDispatcher.HitTest(point, mouseButton, 1, out controller);
	}

	public int HitTest(Point point, MouseButtons mouseButton, int clicks, out IMouseController controller)
	{
		return MouseControllerDispatcher.HitTest(point, mouseButton, clicks, out controller);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		switch (msg.Msg)
		{
		case 131:
			WmNcCalcSize(ref msg);
			break;
		case 133:
			WmNcPaint(ref msg);
			break;
		case 276:
			WmHScroll(ref msg);
			break;
		case 277:
			WmVScroll(ref msg);
			break;
		case 32:
			WmSetCursor(ref msg);
			break;
		case 31:
			OnCancelMode(EventArgs.Empty);
			goto default;
		case 8:
			if (updateCount > 0)
			{
				while (updateCount > 1)
				{
					EndUpdate();
				}
			}
			goto default;
		case 15:
			paintPending = updateCount > 0 && msg.HWnd == base.Handle;
			if (!paintPending)
			{
				WmPaint(ref msg);
				break;
			}
			if (DiscardPaintMessagesAfterBeginUpdate)
			{
				NativeMethods.PAINTSTRUCT lpPaint = default(NativeMethods.PAINTSTRUCT);
				NativeMethods.BeginPaint(base.Handle, ref lpPaint);
				NativeMethods.EndPaint(base.Handle, ref lpPaint);
				msg.Result = IntPtr.Zero;
			}
			if (IsValidating)
			{
				CancelUpdate();
				paintPending = false;
				WmPaint(ref msg);
			}
			break;
		case 256:
			if (mouseControllerDispatcher != null && ((int)msg.WParam == 27 || Control.ModifierKeys == Keys.Alt))
			{
				mouseControllerDispatcher.ProcessCancelMode();
			}
			base.WndProc(ref msg);
			break;
		case 513:
		case 515:
		case 516:
		case 518:
		case 519:
		case 521:
		case 523:
		case 525:
			mousePosition = Control.MousePosition;
			WmMouseDown(ref msg);
			break;
		case 514:
		case 517:
		case 520:
		case 524:
			mousePosition = Control.MousePosition;
			WmMouseUp(ref msg);
			break;
		case 512:
		case 673:
			mousePosition = Control.MousePosition;
			if (inMouseDragScroll || repeatScrollEventTimer == null)
			{
				base.WndProc(ref msg);
			}
			break;
		case 123:
		{
			Point point = new Point(NativeMethods.LOWORD(msg.LParam), NativeMethods.HIWORD(msg.LParam));
			ShowContextMenuEventArgs e = new ShowContextMenuEventArgs(point);
			OnShowContextMenu(e);
			if (e.Cancel)
			{
				break;
			}
			goto default;
		}
		case 132:
			base.WndProc(ref msg);
			if (msg.Result.ToInt32() == 17 && SizeGripStyle == SizeGripStyle.Hide && !IgnoreSizeGripStyleHideShow)
			{
				msg.Result = new IntPtr(4);
			}
			break;
		case 5:
			base.WndProc(ref msg);
			if (!IgnoreSizeGripStyleHideShow)
			{
				WmNcPaint(ref msg);
			}
			break;
		default:
			base.WndProc(ref msg);
			break;
		}
	}

	private void WmNcCalcSize(ref Message msg)
	{
		if (IntPtr.Zero == msg.WParam)
		{
			NativeMethods.RECT rECT = (NativeMethods.RECT)msg.GetLParam(typeof(NativeMethods.RECT));
			Rectangle client = Rectangle.FromLTRB(rECT.left, rECT.top, rECT.right, rECT.bottom);
			OnNcCalcSize(ref client);
			rECT = new NativeMethods.RECT(client);
			Marshal.StructureToPtr((object)rECT, msg.LParam, fDeleteOld: false);
		}
		else
		{
			NativeMethods.NCCALCSIZE_PARAMS nCCALCSIZE_PARAMS = (NativeMethods.NCCALCSIZE_PARAMS)msg.GetLParam(typeof(NativeMethods.NCCALCSIZE_PARAMS));
			NativeMethods.RECT rgrc = nCCALCSIZE_PARAMS.rgrc0;
			Rectangle client2 = Rectangle.FromLTRB(rgrc.left, rgrc.top, rgrc.right, rgrc.bottom);
			OnNcCalcSize(ref client2);
			nCCALCSIZE_PARAMS.rgrc0 = new NativeMethods.RECT(client2);
			Marshal.StructureToPtr((object)nCCALCSIZE_PARAMS, msg.LParam, fDeleteOld: false);
		}
		base.WndProc(ref msg);
	}

	private void WmNcPaint(ref Message msg)
	{
		if (HScroll && VScroll)
		{
			if (cachedRgn != IntPtr.Zero)
			{
				NativeMethods.DeleteObject(cachedRgn);
				cachedRgn = IntPtr.Zero;
			}
			if (!Office2007ScrollBars)
			{
				cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref msg);
			}
		}
		if (this is IThemedControl && XPThemes.IsThemedOS && ((IThemedControl)this).ThemesEnabled && themedDrawing != null)
		{
			themedDrawing.DrawThemedBorderColor(this, ref msg);
		}
		base.WndProc(ref msg);
	}

	private void WmPaint(ref Message msg)
	{
		if (scrollbarsDirty)
		{
			ChangeScrollbars();
		}
		if (HasDoubleBufferSurface)
		{
			NativeMethods.PAINTSTRUCT lpPaint = default(NativeMethods.PAINTSTRUCT);
			NativeMethods.BeginPaint(base.Handle, ref lpPaint);
			Rectangle clipRect = Rectangle.FromLTRB(lpPaint.rcPaint_left, lpPaint.rcPaint_top, lpPaint.rcPaint_right, lpPaint.rcPaint_bottom);
			PaintEventArgs e = new PaintEventArgs(DoubleBufferSurface.Graphics, clipRect);
			OnPaint(e);
			DoubleBufferSurface.Render();
			NativeMethods.EndPaint(base.Handle, ref lpPaint);
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	private void WmSetCursor(ref Message m)
	{
		if (m.WParam == base.Handle && ((int)m.LParam & 0xFFFF) == 1)
		{
			OnSetCursor(ref m);
		}
		else
		{
			DefWndProc(ref m);
		}
	}

	private void WmHScroll(ref Message m)
	{
		base.WndProc(ref m);
		if (HScrollBar.IsReflect)
		{
			HScrollBar.ReflectScrollMessage(ref m);
		}
	}

	private void WmVScroll(ref Message m)
	{
		base.WndProc(ref m);
		if (VScrollBar.IsReflect)
		{
			VScrollBar.ReflectScrollMessage(ref m);
		}
	}

	private void WmMouseDown(ref Message msg)
	{
		isMousePressed = true;
		base.WndProc(ref msg);
	}

	private void WmMouseUp(ref Message msg)
	{
		isMousePressed = false;
		base.WndProc(ref msg);
	}

	private void ChangeScrollbars()
	{
		SyncReflectScrollBars();
		UpdateStyles();
		AdjustSizeBox();
		scrollbarsDirty = false;
	}

	protected virtual void OnOffice2007ScrollBarsChanged(EventArgs e)
	{
		if (this.Office2007ScrollBarsChanged != null)
		{
			this.Office2007ScrollBarsChanged(this, e);
		}
	}

	protected virtual void OnOffice2007ScrollBarsColorSchemeChanged(EventArgs e)
	{
		if (this.Office2007ScrollBarsColorSchemeChanged != null)
		{
			this.Office2007ScrollBarsColorSchemeChanged(this, e);
		}
	}

	internal int ReflectPosition(int position)
	{
		if (HScrollBar != null)
		{
			return HScrollBar.Minimum + (HScrollBar.Maximum - HScrollBar.LargeChange + 1) - position;
		}
		return -1;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		if (fillSplitterPane && GetScrollBarFrameOfComponent(this) == null && GetDynamicSplitterFrameOfComponent(this) == null)
		{
			fillSplitterPane = false;
		}
		Form form = FindForm();
		if (form != wiredParentForm)
		{
			if (wiredParentForm != null)
			{
				wiredParentForm.Enter -= wiredParentForm_Enter;
			}
			wiredParentForm = form;
			if (wiredParentForm != null)
			{
				wiredParentForm.Enter += wiredParentForm_Enter;
			}
		}
		hScrollBar.WireParent();
		vScrollBar.WireParent();
		base.OnParentChanged(e);
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		StopAutoScrollTimer();
		disableAutoScroll = true;
		isOnMouseWheel = true;
		try
		{
			int num = 1;
			if (e.Delta != 0)
			{
				if ((Control.ModifierKeys & Keys.Control) != Keys.None)
				{
					MouseWheelZoomEventArgs e2 = new MouseWheelZoomEventArgs(e.Delta);
					OnMouseWheelZoom(e2);
				}
				else
				{
					ScrollBarWrapper scrollBarWrapper = null;
					if (!HScrollBar.IsEmpty && HScrollBar.Maximum > HScrollBar.Minimum)
					{
						scrollBarWrapper = HScrollBar;
						num = HScrollIncrement;
					}
					if ((scrollBarWrapper == null || (Control.ModifierKeys & Keys.Shift) == 0) && !VScrollBar.IsEmpty && VScrollBar.Maximum > VScrollBar.Minimum)
					{
						scrollBarWrapper = VScrollBar;
						num = VScrollIncrement;
					}
					if (scrollBarWrapper != null)
					{
						int num2 = 1;
						if (e.Delta > 0)
						{
							num2 = -num2;
						}
						ScrollBars scrollBars = autoScrolling;
						autoScrolling = ScrollBars.None;
						int num3 = ((!smoothMouseWheelScrolling) ? 1 : MouseWheelScrollLines);
						if (!smoothMouseWheelScrolling)
						{
							num2 *= MouseWheelScrollLines;
						}
						for (int i = 0; i < num3; i++)
						{
							if (scrollBarWrapper == VScrollBar)
							{
								int val = VScrollBar.Value + num2 * num;
								val = Math.Max(VScrollBar.Minimum, Math.Min(val, VScrollBar.Maximum - VScrollBar.LargeChange + 1));
								if (val != VScrollBar.Value)
								{
									OnVScroll(this, new ScrollEventArgs(ScrollEventType.ThumbTrack, val));
								}
							}
							else
							{
								int val2 = HScrollBar.Value + num2 * num;
								val2 = Math.Max(HScrollBar.Minimum, Math.Min(val2, HScrollBar.Maximum - HScrollBar.LargeChange + 1));
								if (val2 != HScrollBar.Value)
								{
									OnHScroll(this, new ScrollEventArgs(ScrollEventType.ThumbTrack, val2));
								}
							}
						}
						autoScrolling = scrollBars;
					}
				}
			}
			base.OnMouseWheel(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		finally
		{
			disableAutoScroll = false;
			isOnMouseWheel = false;
		}
	}

	protected virtual void OnSplitterPaneClosed(EventArgs e)
	{
		if (this.SplitterPaneClosed != null)
		{
			this.SplitterPaneClosed(this, e);
		}
	}

	protected virtual void OnSplitterPaneClosing(EventArgs e)
	{
		if (this.SplitterPaneClosing != null)
		{
			this.SplitterPaneClosing(this, e);
		}
	}

	protected virtual void OnFillSplitterPaneChanged(EventArgs e)
	{
		if (!FillSplitterPane)
		{
			Rectangle bounds = Bounds;
			bounds.Inflate(-base.Width / 4, -base.Height / 4);
			Bounds = bounds;
		}
		else
		{
			BorderStyle = BorderStyle.None;
			Bounds = base.Parent.ClientRectangle;
		}
		PerformLayout();
		Refresh();
		if (this.FillSplitterPaneChanged != null)
		{
			this.FillSplitterPaneChanged(this, e);
		}
	}

	protected virtual void OnScrollbarsVisibleChanged(EventArgs e)
	{
		if (this.ScrollbarsVisibleChanged != null)
		{
			this.ScrollbarsVisibleChanged(this, e);
		}
		AdjustSizeBox();
	}

	protected virtual void OnMouseWheelZoom(MouseWheelZoomEventArgs e)
	{
		if (this.MouseWheelZoom != null)
		{
			this.MouseWheelZoom(this, e);
		}
	}

	protected virtual void OnScrollControlMouseDown(CancelMouseEventArgs e)
	{
		if (this.ScrollControlMouseDown != null)
		{
			this.ScrollControlMouseDown(this, e);
		}
	}

	protected virtual void OnScrollControlMouseMove(CancelMouseEventArgs e)
	{
		if (this.ScrollControlMouseMove != null)
		{
			this.ScrollControlMouseMove(this, e);
		}
	}

	protected virtual void OnScrollControlMouseUp(CancelMouseEventArgs e)
	{
		if (this.ScrollControlMouseUp != null)
		{
			this.ScrollControlMouseUp(this, e);
		}
	}

	protected virtual void OnScrollControlHandledMouseUp(MouseEventArgs e)
	{
		if (this.ScrollControlHandledMouseUp != null)
		{
			this.ScrollControlHandledMouseUp(this, e);
		}
	}

	protected virtual void OnScrollControlHandledMouseMove(MouseEventArgs e)
	{
		if (this.ScrollControlHandledMouseMove != null)
		{
			this.ScrollControlHandledMouseMove(this, e);
		}
	}

	protected virtual void OnScrollControlHandledMouseDown(MouseEventArgs e)
	{
		if (this.ScrollControlHandledMouseDown != null)
		{
			this.ScrollControlHandledMouseDown(this, e);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (RaiseCancelMouseEvent(e, OnScrollControlMouseDown) && imm != null)
		{
			ScrollBars scrollBars = ScrollBars.None;
			if (VScrollBar.Maximum > VScrollBar.Minimum)
			{
				scrollBars |= ScrollBars.Vertical;
			}
			if (HScrollBar.Maximum > HScrollBar.Minimum)
			{
				scrollBars |= ScrollBars.Horizontal;
			}
			imm.AllowScrolling = scrollBars;
		}
		base.OnMouseDown(e);
		if (base.IsHandleCreated)
		{
			OnScrollControlHandledMouseDown(e);
		}
		nDelayScrollTimer = 4L;
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		RaiseCancelMouseEvent(e, OnScrollControlMouseUp);
		if (!base.IsDisposed)
		{
			base.OnMouseUp(e);
			if (base.IsHandleCreated)
			{
				OnScrollControlHandledMouseUp(e);
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		try
		{
			if (!RaiseCancelMouseEvent(e, OnScrollControlMouseMove) || IntelliMouseDragScroll.ActiveIntelliMouseDragScroll != null)
			{
				return;
			}
			ScrollBarWrapper scrollBarWrapper = null;
			ScrollEventType et = ScrollEventType.SmallIncrement;
			int tickCount = Environment.TickCount;
			Point point = new Point(e.X, e.Y);
			Rectangle rectangle = AutoScrollBounds;
			Rectangle insideScrollBounds = InsideScrollBounds;
			if (AutoScrolling != ScrollBars.None && Control.MouseButtons != MouseButtons.None && !rectangle.IsEmpty)
			{
				bool flag = false;
				if ((AutoScrolling & ScrollBars.Horizontal) != ScrollBars.None)
				{
					bool flag2 = HScrollBar.InnerScrollBar != null && HScrollBar.InnerScrollBar.RightToLeft == RightToLeft.Yes;
					if (point.X <= insideScrollBounds.Left + 1 && ((!flag2 && HScrollBar.Value > HScrollBar.Minimum) || (flag2 && HScrollBar.Value + HScrollBar.LargeChange <= HScrollBar.Maximum)))
					{
						flag = true;
						scrollBarWrapper = HScrollBar;
						et = ScrollEventType.SmallDecrement;
					}
					else if (point.X > insideScrollBounds.Right && ((!flag2 && HScrollBar.Value + HScrollBar.LargeChange <= HScrollBar.Maximum) || (flag2 && HScrollBar.Value > HScrollBar.Minimum)))
					{
						flag = true;
						scrollBarWrapper = HScrollBar;
						et = ScrollEventType.SmallIncrement;
					}
					inMouseDragScroll = flag;
					if (scrollBarWrapper != null && nDelayScrollTimer < 0 && (nDelayScrollTimer < -20 || tickCount > lastMouseTick + 50))
					{
						lastMouseTick = tickCount;
						scrollBarWrapper.SendScrollMessage(et);
					}
				}
				scrollBarWrapper = null;
				if ((AutoScrolling & ScrollBars.Vertical) != ScrollBars.None)
				{
					if (point.Y < insideScrollBounds.Top && VScrollBar.Value > VScrollBar.Minimum)
					{
						flag = true;
						scrollBarWrapper = VScrollBar;
						et = ScrollEventType.SmallDecrement;
					}
					else if (point.Y > insideScrollBounds.Bottom && VScrollBar.Value + VScrollBar.LargeChange <= VScrollBar.Maximum)
					{
						flag = true;
						scrollBarWrapper = VScrollBar;
						et = ScrollEventType.SmallIncrement;
					}
					inMouseDragScroll = flag;
					if (scrollBarWrapper != null && nDelayScrollTimer < 0 && (nDelayScrollTimer < -20 || tickCount > lastMouseTick + 50))
					{
						scrollBarWrapper.SendScrollMessage(et);
						lastMouseTick = tickCount;
					}
				}
				inMouseDragScroll = flag;
				if (inOleDragOver)
				{
					if (!flag)
					{
						nTimerCount = 0L;
						nDelayScrollTimer = accDelayScrollTimer;
					}
					else
					{
						nDelayScrollTimer--;
					}
				}
				else if (!AutoScrollTimerEnable && flag && --nDelayScrollTimer < 0)
				{
					StartAutoScrollingEventArgs e2 = new StartAutoScrollingEventArgs(AutoScrollReason.MouseDragging, AutoScrolling, 200, 25, 5, 4);
					OnStartAutoScrolling(e2);
					if (!e2.Cancel)
					{
						accStartInterval = e2.AccStartInterval;
						accStepInterval = e2.AccStepInterval;
						accMinInterval = e2.AccMinInterval;
						accDelayScrollTimer = e2.AccDelayScrollTimer;
						StartAutoScrollTimer(Message.Create(base.Handle, 512, (IntPtr)0, (IntPtr)MAKELPARAM(point.X, point.Y)));
					}
				}
				else if (AutoScrollTimerEnable && !flag)
				{
					StopAutoScrollTimer();
					nDelayScrollTimer = 4L;
				}
			}
			else if (AutoScrollTimerEnable)
			{
				StopAutoScrollTimer();
				nDelayScrollTimer = 4L;
			}
		}
		finally
		{
			base.OnMouseMove(e);
			if (base.IsHandleCreated)
			{
				OnScrollControlHandledMouseMove(e);
			}
		}
	}

	protected virtual void OnStartAutoScrolling(StartAutoScrollingEventArgs e)
	{
		if (this.StartAutoScrolling != null)
		{
			this.StartAutoScrolling(this, e);
		}
	}

	[DocumentationExclude]
	protected virtual void OnSetCursor(ref Message m)
	{
		if (IntelliMouseDragScroll.ActiveIntelliMouseDragScroll != null)
		{
			Cursor.Current = imm.Cursor;
			return;
		}
		Cursor cursor = null;
		if (mouseControllerDispatcher != null)
		{
			cursor = mouseControllerDispatcher.DisplayCursor;
		}
		if (cursor != null)
		{
			Cursor.Current = cursor;
		}
		else
		{
			Cursor.Current = ((overrideCursor != null) ? overrideCursor : Cursors.Default);
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		Cursor = Cursors.Default;
	}

	protected override void OnMouseHover(EventArgs e)
	{
		StopAutoScrollTimer();
		base.OnMouseHover(e);
	}

	protected virtual void OnHScrollBarValueChanged(object sender, EventArgs e)
	{
	}

	protected virtual void OnVScrollBarValueChanged(object sender, EventArgs e)
	{
	}

	protected virtual void OnHorizontalScroll(ScrollEventArgs e)
	{
		if (this.HorizontalScroll != null)
		{
			this.HorizontalScroll(this, e);
		}
	}

	protected virtual void OnVerticalScroll(ScrollEventArgs e)
	{
		if (this.VerticalScroll != null)
		{
			this.VerticalScroll(this, e);
		}
	}

	protected virtual void OnHScroll(object sender, ScrollEventArgs se)
	{
		try
		{
			IScrollBarFrame scrollBarFrameOfComponent = GetScrollBarFrameOfComponent(this);
			if (scrollBarFrameOfComponent != null && !scrollBarFrameOfComponent.IsActive(this, ScrollBars.Horizontal))
			{
				return;
			}
			OnHorizontalScroll(se);
			thumbBar = ScrollBars.Horizontal;
			IsThumbTracking = se.Type == ScrollEventType.ThumbTrack && !isOnMouseWheel;
			if (IsThumbTracking)
			{
				UpdateScrollTips(se);
				return;
			}
			int num = HScrollBar.Value;
			if (office2007ScrollBars && RightToLeft == RightToLeft.Yes)
			{
				num = ReflectPosition(num);
			}
			if (se.NewValue != num)
			{
				ScrollEventType type = se.Type;
				switch (type)
				{
				case ScrollEventType.SmallDecrement:
				case ScrollEventType.SmallIncrement:
					if (IntelliMouseDragScroll.ActiveIntelliMouseDragScroll != null)
					{
						return;
					}
					IncreaseSmallChange(HScrollBar, nTimerCount);
					if (!AutoScrollTimerEnable && AutoScrolling == ScrollBars.None)
					{
						StartAutoScrollingEventArgs e = new StartAutoScrollingEventArgs(AutoScrollReason.AccelarateScrollbar, ScrollBars.Horizontal, accStartInterval, accStepInterval, accMinInterval, accDelayScrollTimer);
						OnStartAutoScrolling(e);
						if (!e.Cancel)
						{
							accStartInterval = e.AccStartInterval;
							accStepInterval = e.AccStepInterval;
							accMinInterval = e.AccMinInterval;
							accDelayScrollTimer = e.AccDelayScrollTimer;
							StartAutoScrollTimer(HScrollBar, type);
						}
					}
					return;
				case ScrollEventType.EndScroll:
					StopAutoScrollTimer();
					break;
				}
			}
			if (!AutoScrollTimerEnable)
			{
				nDelayScrollTimer = accDelayScrollTimer;
			}
		}
		finally
		{
			if (se.NewValue >= HScrollBar.Minimum && se.NewValue <= HScrollBar.Maximum)
			{
				HScrollBar.Value = se.NewValue;
			}
		}
	}

	protected virtual void OnVScroll(object sender, ScrollEventArgs se)
	{
		try
		{
			IScrollBarFrame scrollBarFrameOfComponent = GetScrollBarFrameOfComponent(this);
			if (scrollBarFrameOfComponent != null && !scrollBarFrameOfComponent.IsActive(this, ScrollBars.Vertical))
			{
				return;
			}
			OnVerticalScroll(se);
			thumbBar = ScrollBars.Vertical;
			IsThumbTracking = se.Type == ScrollEventType.ThumbTrack && !isOnMouseWheel;
			if (IsThumbTracking)
			{
				UpdateScrollTips(se);
				return;
			}
			if (se.Type == ScrollEventType.ThumbPosition)
			{
				OnVScrollBarValueChanged(this, EventArgs.Empty);
			}
			_ = VScrollBar.Value;
			if (se.NewValue != savedVValue)
			{
				ScrollEventType type = se.Type;
				switch (type)
				{
				case ScrollEventType.SmallDecrement:
				case ScrollEventType.SmallIncrement:
					if (IntelliMouseDragScroll.ActiveIntelliMouseDragScroll != null)
					{
						return;
					}
					IncreaseSmallChange(VScrollBar, nTimerCount);
					if (!AutoScrollTimerEnable && AutoScrolling == ScrollBars.None)
					{
						StartAutoScrollingEventArgs e = new StartAutoScrollingEventArgs(AutoScrollReason.AccelarateScrollbar, ScrollBars.Vertical, accStartInterval, accStepInterval, accMinInterval, accDelayScrollTimer);
						OnStartAutoScrolling(e);
						if (!e.Cancel)
						{
							accStartInterval = e.AccStartInterval;
							accStepInterval = e.AccStepInterval;
							accMinInterval = e.AccMinInterval;
							accDelayScrollTimer = e.AccDelayScrollTimer;
							StartAutoScrollTimer(VScrollBar, type);
						}
					}
					return;
				case ScrollEventType.EndScroll:
					StopAutoScrollTimer();
					break;
				}
			}
			if (!AutoScrollTimerEnable)
			{
				nDelayScrollTimer = accDelayScrollTimer;
			}
		}
		finally
		{
			if (se.NewValue >= VScrollBar.Minimum && se.NewValue <= VScrollBar.Maximum)
			{
				VScrollBar.Value = se.NewValue;
			}
		}
	}

	protected virtual void OnShowContextMenu(ShowContextMenuEventArgs e)
	{
		if (this.ShowContextMenu != null)
		{
			this.ShowContextMenu(this, e);
		}
	}

	protected virtual void OnCancelMode(EventArgs e)
	{
		isMousePressed = false;
		while (updateCount > 0)
		{
			updateCount = 1;
			EndUpdate();
		}
		for (int i = 0; i < 5; i++)
		{
			ResumeLayout(performLayout: false);
		}
		StopAutoScrollTimer();
		IsThumbTracking = false;
		if (this.CancelMode == null)
		{
			return;
		}
		try
		{
			this.CancelMode(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnIntelliMouseDragScrolling(IntelliMouseDragScrollEventArgs e)
	{
		if (this.IntelliMouseDragScrolling != null)
		{
			this.IntelliMouseDragScrolling(this, e);
		}
	}

	protected virtual void OnNcCalcSize(ref Rectangle client)
	{
	}

	protected virtual void OnScrollTipFeedback(ScrollTipFeedbackEventArgs e)
	{
		if (this.ScrollTipFeedback != null)
		{
			this.ScrollTipFeedback(this, e);
		}
	}

	protected virtual ScrollTipWindow OnCreateScrollTipWindow()
	{
		return new ScrollTipWindow();
	}

	[DocumentationExclude]
	protected virtual void UpdateScrollTips(ScrollEventArgs se)
	{
		if (thumbBar == ScrollBars.Vertical)
		{
			if (!VScrollBar.SupportsScrollTips)
			{
				return;
			}
		}
		else if (thumbBar == ScrollBars.Horizontal && !HScrollBar.SupportsScrollTips)
		{
			return;
		}
		if (scrollTip != null)
		{
			string text = string.Format(scrollTipFormat, se.NewValue);
			StringFormat stringFormat = new StringFormat(StringFormatFlags.NoWrap | StringFormatFlags.NoClip);
			stringFormat.Alignment = StringAlignment.Center;
			stringFormat.LineAlignment = StringAlignment.Center;
			stringFormat.Trimming = StringTrimming.Character;
			ScrollTipFeedbackEventArgs e = new ScrollTipFeedbackEventArgs(thumbBar, ScrollTipActions.Scroll, se.NewValue, text, scrollTip.Size, scrollTip.Location, scrollTip.Font, scrollTip.ForeColor, scrollTip.BackColor, scrollTip.BorderStyle, stringFormat);
			OnScrollTipFeedback(e);
			scrollTip.ForeColor = e.ForeColor;
			scrollTip.BackColor = e.BackColor;
			scrollTip.Location = e.Location;
			scrollTip.MinimumSize = e.Size;
			scrollTip.Size = e.Size;
			scrollTip.Font = e.Font;
			scrollTip.Format = (StringFormat)e.Format.Clone();
			scrollTip.BorderStyle = e.BorderStyle;
			scrollTip.Text = e.Text;
			scrollTip.ShowWindowTopMost();
			stringFormat.Dispose();
		}
	}

	protected virtual void OnAutoScrollingChanged(EventArgs e)
	{
		if (this.AutoScrollingChanged != null)
		{
			this.AutoScrollingChanged(this, e);
		}
	}

	protected virtual void OnUpdatingChanged(EventArgs e)
	{
		if (this.UpdatingChanged != null)
		{
			this.UpdatingChanged(this, e);
		}
	}

	protected override void OnInvalidated(InvalidateEventArgs e)
	{
		base.OnInvalidated(e);
		if (updateCount > 0)
		{
			paintPending = true;
		}
	}

	protected virtual void OnWindowScrolled(ScrollWindowEventArgs e)
	{
		if (this.WindowScrolled == null)
		{
			return;
		}
		try
		{
			this.WindowScrolled(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnWindowScrolling(ScrollWindowEventArgs e)
	{
		if (this.WindowScrolling == null)
		{
			return;
		}
		try
		{
			this.WindowScrolling(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected override void OnEnter(EventArgs e)
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			isActiveControl = true;
			isValidating = false;
			isValidated = false;
			base.OnEnter(e);
		}
	}

	protected override void OnLeave(EventArgs e)
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			isActiveControl = false;
			isValidating = false;
			base.OnLeave(e);
			if ((!base.CausesValidation || IsValidated) && !hasControlFocus)
			{
				OnDeactivated(e);
			}
		}
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			isValidating = true;
			base.OnValidating(e);
		}
	}

	protected override void OnValidated(EventArgs e)
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			isValidating = false;
			isValidated = true;
			base.OnValidated(e);
			if (!isActiveControl && !hasControlFocus)
			{
				OnDeactivated(e);
			}
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			RaiseControlLostFocus();
		}
	}

	protected override void OnGotFocus(EventArgs e)
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			RaiseControlGotFocus();
		}
	}

	protected virtual void OnDeactivated(EventArgs e)
	{
		isDeactivatedCalled = true;
		if (this.Deactivated != null)
		{
			this.Deactivated(this, e);
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		e.Control.GotFocus -= ChildGotFocus;
		e.Control.LostFocus -= ChildLostFocus;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		e.Control.GotFocus += ChildGotFocus;
		e.Control.LostFocus += ChildLostFocus;
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		if (base.Disposing || base.IsDisposed)
		{
			return;
		}
		base.OnSizeChanged(e);
		if (!ClientRectangle.IsEmpty)
		{
			AdjustSizeBox();
			if (wiredParentForm != null && sizeBox != null)
			{
				sizeBox.ParentFormWindowState = wiredParentForm.WindowState;
			}
		}
	}

	protected override void OnLocationChanged(EventArgs e)
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			base.OnLocationChanged(e);
			if (!ClientRectangle.IsEmpty)
			{
				AdjustSizeBox();
			}
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		onPaintCalled = true;
		base.OnPaint(e);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		EnsurePaintCodeJitted(ignoreVisible: false);
		Form form = FindForm();
		if (form != null)
		{
			if (wiredParentForm != null)
			{
				wiredParentForm.Enter -= wiredParentForm_Enter;
			}
			wiredParentForm = form;
			if (wiredParentForm != null)
			{
				wiredParentForm.Enter += wiredParentForm_Enter;
			}
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (!IsSplitterPaneClosing && base.Parent != null)
		{
			EnsurePaintCodeJitted(ignoreVisible: false);
			if (base.Visible)
			{
				SyncReflectScrollBars();
			}
			AdjustSizeBox();
		}
	}

	protected virtual void OnControlGotFocus()
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			base.OnGotFocus(EventArgs.Empty);
		}
	}

	protected virtual void OnControlLostFocus()
	{
		if (base.Disposing || base.IsDisposed)
		{
			return;
		}
		base.OnLostFocus(EventArgs.Empty);
		if (!isActiveControl && !isValidating && (!base.CausesValidation || isValidated))
		{
			OnDeactivated(EventArgs.Empty);
			return;
		}
		CancelUpdate();
		if (isValidating)
		{
			OnValidatingLostFocus();
		}
	}

	protected virtual void OnValidatingLostFocus()
	{
	}

	protected virtual void OnEnsurePaintCodeJitted()
	{
		if (!onPaintCalled)
		{
			Bitmap bitmap = new Bitmap(2, 2);
			Graphics graphics = Graphics.FromImage(bitmap);
			OnPaint(new PaintEventArgs(graphics, new Rectangle(Point.Empty, bitmap.Size)));
			graphics.Dispose();
			bitmap.Dispose();
		}
	}

	protected virtual void OnAccelerateScrollingChanged(EventArgs e)
	{
		if (this.AccelerateScrollingChanged != null)
		{
			this.AccelerateScrollingChanged(this, e);
		}
		_ApplyAccelerateScrolling();
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		inOleDragOver = true;
		base.OnDragOver(drgevent);
		if (!AllowRaiseMouseMoveInOnDragOver)
		{
			return;
		}
		Point p = new Point(drgevent.X, drgevent.Y);
		p = PointToClient(p);
		if (!AutoScrollTimerEnable && AutoScrolling != ScrollBars.None)
		{
			StartAutoScrollingEventArgs e = new StartAutoScrollingEventArgs(AutoScrollReason.OleDragOver, AutoScrolling, 200, 25, 5, 4);
			OnStartAutoScrolling(e);
			if (!e.Cancel)
			{
				accStartInterval = e.AccStartInterval;
				accStepInterval = e.AccStepInterval;
				accMinInterval = e.AccMinInterval;
				accDelayScrollTimer = e.AccDelayScrollTimer;
				StartAutoScrollTimer(Message.Create(base.Handle, 563, (IntPtr)0, (IntPtr)MAKELPARAM(p.X, p.Y)));
			}
		}
		if (!AutoScrollTimerEnable)
		{
			OnMouseMove(new MouseEventArgs(Control.MouseButtons, 1, p.X, p.Y, 0));
		}
		inOleDragOver = false;
	}

	private void wiredParentForm_Enter(object sender, EventArgs e)
	{
		if (!IsActiveControl)
		{
			OnEnter(e);
		}
	}

	private void WireScrollEvents()
	{
		vScrollBar.Scroll += OnVScroll;
		hScrollBar.Scroll += OnHScroll;
		vScrollBar.ValueChanged += OnVScrollBarValueChanged;
		hScrollBar.ValueChanged += OnHScrollBarValueChanged;
	}

	private void UnwireScrollEvents()
	{
		vScrollBar.Scroll -= OnVScroll;
		hScrollBar.Scroll -= OnHScroll;
		vScrollBar.ValueChanged -= OnVScrollBarValueChanged;
		hScrollBar.ValueChanged -= OnHScrollBarValueChanged;
	}

	void ISplitterPaneSupport.PaneClosing()
	{
		isPaneClosing = true;
		UnwireScrollEvents();
		try
		{
			OnSplitterPaneClosing(EventArgs.Empty);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	void ISplitterPaneSupport.PaneClosed()
	{
		isPaneClosed = true;
		try
		{
			OnSplitterPaneClosed(EventArgs.Empty);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	public static IScrollBarFrame GetScrollBarFrameOfComponent(object comp)
	{
		for (Control control = comp as Control; control != null; control = control.Parent)
		{
			if (control is IScrollBarFrame)
			{
				return (IScrollBarFrame)control;
			}
		}
		return null;
	}

	public static IDynamicSplitterFrame GetDynamicSplitterFrameOfComponent(object comp)
	{
		for (Control control = comp as Control; control != null; control = control.Parent)
		{
			if (control is IDynamicSplitterFrame)
			{
				return (IDynamicSplitterFrame)control;
			}
		}
		return null;
	}

	public void ProcessMouseWheel(MouseEventArgs e)
	{
		OnMouseWheel(e);
	}

	private void ResetCustomScrollBar(ScrollBarWrapper sb)
	{
		if (sb.InnerScrollBar is ScrollBarCustomDraw)
		{
			base.Controls.Remove(sb.InnerScrollBar);
			sb.InnerScrollBar = null;
		}
	}

	private void SyncReflectScrollBars()
	{
		if (useSharedScrollBars || IsSplitterPaneClosing)
		{
			return;
		}
		IScrollBarFrame scrollBarFrame = (FillSplitterPane ? GetScrollBarFrameOfComponent(this) : null);
		if (scrollBarFrame != null)
		{
			vScroll = false;
			hScroll = false;
			ResetCustomScrollBar(VScrollBar);
			ResetCustomScrollBar(HScrollBar);
			Control control = scrollBarFrame.GetHScrollBar(this);
			ScrollBarAdapter scrollBarAdapter = ((control != null) ? new ScrollBarAdapter(control) : null);
			Control control2 = scrollBarFrame.GetVScrollBar(this);
			ScrollBarAdapter scrollBarAdapter2 = ((control2 != null) ? new ScrollBarAdapter(control2) : null);
			if (scrollBarAdapter != null)
			{
				if (scrollBarAdapter.LargeChange > scrollBarAdapter.Maximum)
				{
					scrollBarAdapter.LargeChange = scrollBarAdapter.Maximum;
				}
				if (scrollBarAdapter.SmallChange > scrollBarAdapter.LargeChange)
				{
					scrollBarAdapter.SmallChange = scrollBarAdapter.LargeChange;
				}
				HScrollBar.SmallChange = scrollBarAdapter.SmallChange;
				HScrollBar.LargeChange = scrollBarAdapter.LargeChange;
			}
			HScrollBar.InnerScrollBar = control;
			if (scrollBarAdapter2 != null)
			{
				if (scrollBarAdapter2.LargeChange > scrollBarAdapter2.Maximum)
				{
					scrollBarAdapter2.LargeChange = scrollBarAdapter2.Maximum;
				}
				if (scrollBarAdapter2.SmallChange > scrollBarAdapter2.LargeChange)
				{
					scrollBarAdapter2.SmallChange = scrollBarAdapter2.LargeChange;
				}
				VScrollBar.SmallChange = scrollBarAdapter2.SmallChange;
				VScrollBar.LargeChange = scrollBarAdapter2.LargeChange;
			}
			VScrollBar.InnerScrollBar = control2;
			return;
		}
		if (vScroll)
		{
			if (Office2007ScrollBars)
			{
				if (!(VScrollBar.InnerScrollBar is ScrollBarCustomDraw))
				{
					ScrollBarCustomDraw scrollBarCustomDraw = new VScrollBarCustomDraw();
					scrollBarCustomDraw.VisualStyle = ScrollBarCustomDrawStyles.Office2007;
					scrollBarCustomDraw.OfficeColorScheme = Office2007ScrollBarsColorScheme;
					VScrollBar.InnerScrollBar = scrollBarCustomDraw;
					base.Controls.Add(scrollBarCustomDraw);
				}
			}
			else if (!(VScrollBar.InnerScrollBar is ReflectScrollBar))
			{
				ResetCustomScrollBar(VScrollBar);
				VScrollBar.InnerScrollBar = new ReflectScrollBar(this, ScrollBars.Vertical);
			}
		}
		else
		{
			ResetCustomScrollBar(VScrollBar);
			VScrollBar.InnerScrollBar = null;
		}
		if (hScroll)
		{
			if (Office2007ScrollBars)
			{
				if (!(HScrollBar.InnerScrollBar is ScrollBarCustomDraw))
				{
					ScrollBarCustomDraw scrollBarCustomDraw2 = new HScrollBarCustomDraw();
					scrollBarCustomDraw2.VisualStyle = ScrollBarCustomDrawStyles.Office2007;
					scrollBarCustomDraw2.OfficeColorScheme = Office2007ScrollBarsColorScheme;
					HScrollBar.InnerScrollBar = scrollBarCustomDraw2;
					base.Controls.Add(scrollBarCustomDraw2);
				}
			}
			else if (!(HScrollBar.InnerScrollBar is ReflectScrollBar))
			{
				ResetCustomScrollBar(HScrollBar);
				HScrollBar.InnerScrollBar = new ReflectScrollBar(this, ScrollBars.Horizontal);
			}
		}
		else
		{
			ResetCustomScrollBar(HScrollBar);
			HScrollBar.InnerScrollBar = null;
		}
	}

	private bool SetVisibleScrollbars(bool horiz, bool vert)
	{
		if (horiz == hScroll && vert == vScroll)
		{
			return false;
		}
		hScroll = horiz;
		vScroll = vert;
		UpdateStyles();
		SyncReflectScrollBars();
		try
		{
			OnScrollbarsVisibleChanged(EventArgs.Empty);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		return true;
	}

	public void ResetMouseWheelScrollLines()
	{
		mouseWheelScrollLines = 0;
	}

	internal bool RaiseCancelMouseEvent(MouseEventArgs e, CancelMouseDelegate d)
	{
		CancelMouseEventArgs e2 = new CancelMouseEventArgs(e);
		try
		{
			mouseEventException = null;
			d(e2);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			mouseEventException = ex;
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e2.Cancel = true;
			if (!base.IsDisposed)
			{
				NotifyCancelMode();
			}
		}
		if (base.IsHandleCreated)
		{
			return !e2.Cancel;
		}
		return false;
	}

	private void IntelliMouseDragScrollEvent(object sender, IntelliMouseDragScrollEventArgs e)
	{
		int dY = e.DY;
		int dX = e.DX;
		disableAutoScroll = true;
		try
		{
			OnIntelliMouseDragScrolling(e);
			if (!e.Cancel && !e.Scrolled)
			{
				if (Math.Abs(dY) > Math.Abs(dX))
				{
					VScrollBar.SendScrollMessage((dY > 0) ? ScrollEventType.SmallIncrement : ScrollEventType.SmallDecrement);
				}
				else
				{
					HScrollBar.SendScrollMessage((dX > 0) ? ScrollEventType.SmallIncrement : ScrollEventType.SmallDecrement);
				}
			}
		}
		finally
		{
			disableAutoScroll = false;
		}
	}

	protected internal virtual void InvalidateNc()
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
		}
	}

	protected internal virtual void InvalidateNc(Rectangle rc)
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.RECT lprcUpdate = new NativeMethods.RECT(rc);
			NativeMethods.RedrawWindow(base.Handle, ref lprcUpdate, IntPtr.Zero, 1025u);
		}
	}

	protected virtual void UpdateNc()
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
		}
	}

	protected internal virtual void OnNCPaint(NCPaintEventArgs ncEventArgs)
	{
		if (HScroll && VScroll && !Office2007ScrollBars && !IgnoreSizeGripStyleHideShow)
		{
			Graphics graphics = ncEventArgs.Graphics;
			Rectangle rectangle = ncEventArgs.DisplayRectangle;
			int windowLong = NativeMethods.GetWindowLong(base.Handle, -16);
			int num = 0;
			if ((windowLong & 0x800000) != 0)
			{
				num = 1;
			}
			windowLong = NativeMethods.GetWindowLong(base.Handle, -20);
			if ((windowLong & 0x200) != 0)
			{
				num += 2;
			}
			rectangle = ((RightToLeft != RightToLeft.Yes) ? new Rectangle(Bounds.Width - SystemInformation.VerticalScrollBarWidth - num, Bounds.Height - SystemInformation.HorizontalScrollBarHeight - num, SystemInformation.VerticalScrollBarWidth, SystemInformation.HorizontalScrollBarHeight) : new Rectangle(num, Bounds.Height - SystemInformation.HorizontalScrollBarHeight - num, SystemInformation.VerticalScrollBarWidth, SystemInformation.HorizontalScrollBarHeight));
			using (Brush brush = new SolidBrush(SystemColors.Control))
			{
				graphics.FillRectangle(brush, rectangle);
			}
			if (SizeGripStyle == SizeGripStyle.Show)
			{
				if (this is IThemedControl && XPThemes.IsThemedOS && ((IThemedControl)this).ThemesEnabled)
				{
					themedScrollBarDrawing.DrawSizeBox(graphics, rectangle);
				}
				else
				{
					ControlPaint.DrawSizeGrip(graphics, BackColor, rectangle);
				}
			}
		}
		Rectangle windowInScreenRectangle = ncEventArgs.WindowInScreenRectangle;
		ncEventArgs.ClipRegion = NativeMethods.CreateRectRgn(windowInScreenRectangle.Left, windowInScreenRectangle.Top, windowInScreenRectangle.Right, windowInScreenRectangle.Bottom);
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		NCPaintEventArgs e2 = new NCPaintEventArgs(e.Graphics, e.ClipRectangle, displayRect, windowRectInScreen, IntPtr.Zero);
		OnNCPaint(e2);
		return e2.ClipRegion;
	}

	public void NotifyCancelMode()
	{
		OnCancelMode(EventArgs.Empty);
	}

	public virtual void IncreaseSmallChange(ScrollBarWrapper scrollBar, long nTimerCount)
	{
		if (allowIncreaseSmallChange)
		{
			if (nTimerCount > 80)
			{
				scrollBar.SmallChange = 5;
			}
			else if (nTimerCount > 40)
			{
				scrollBar.SmallChange = 3;
			}
			else
			{
				scrollBar.SmallChange = 1;
			}
		}
	}

	private void ScrollTipFeedbacks()
	{
		if (thumbBar == ScrollBars.Vertical)
		{
			if (!VScrollBar.SupportsThumbTrack)
			{
				vScrollBar.ValueChanged -= OnVScrollBarValueChanged;
			}
			if (!VScrollBar.SupportsScrollTips)
			{
				return;
			}
		}
		else if (thumbBar == ScrollBars.Horizontal)
		{
			if (!HScrollBar.SupportsThumbTrack)
			{
				hScrollBar.ValueChanged -= OnHScrollBarValueChanged;
			}
			if (!HScrollBar.SupportsScrollTips)
			{
				return;
			}
		}
		if (scrollTip == null)
		{
			scrollTip = OnCreateScrollTipWindow();
		}
		if (scrollTip == null)
		{
			return;
		}
		Size preferredSize = scrollTip.GetPreferredSize(string.Format(scrollTipFormat, int.MaxValue));
		Point location = ((thumbBar != ScrollBars.Vertical) ? PointToScreen(new Point((ClientRectangle.Width - preferredSize.Width) / 2, ClientRectangle.Height - preferredSize.Height - SystemInformation.VerticalScrollBarThumbHeight)) : PointToScreen(new Point(ClientRectangle.Width - preferredSize.Width - SystemInformation.HorizontalScrollBarThumbWidth, (ClientRectangle.Height - preferredSize.Height) / 2)));
		Font font = FontUtil.CreateFont(Font, FontStyle.Bold);
		if (font != null)
		{
			StringFormat stringFormat = new StringFormat(StringFormatFlags.NoWrap | StringFormatFlags.NoClip);
			stringFormat.Alignment = StringAlignment.Center;
			stringFormat.LineAlignment = StringAlignment.Center;
			stringFormat.Trimming = StringTrimming.Character;
			ScrollTipFeedbackEventArgs e = new ScrollTipFeedbackEventArgs(thumbBar, ScrollTipActions.ThumbTrack, -1, "", preferredSize, location, font, SystemColors.InfoText, SystemColors.Info, BorderStyle.FixedSingle, stringFormat);
			if (!e.Cancel)
			{
				OnScrollTipFeedback(e);
				scrollTip.ForeColor = e.ForeColor;
				scrollTip.BackColor = e.BackColor;
				scrollTip.Location = e.Location;
				scrollTip.MinimumSize = e.Size;
				scrollTip.Size = e.Size;
				scrollTip.Font = e.Font;
				scrollTip.Format = (StringFormat)e.Format.Clone();
				scrollTip.BorderStyle = e.BorderStyle;
				stringFormat.Dispose();
			}
		}
	}

	private void HideScrollTips()
	{
		if (thumbBar == ScrollBars.Vertical)
		{
			if (!VScrollBar.SupportsThumbTrack)
			{
				vScrollBar.ValueChanged += OnVScrollBarValueChanged;
			}
			if (!VScrollBar.SupportsScrollTips)
			{
				return;
			}
		}
		else if (thumbBar == ScrollBars.Horizontal)
		{
			if (!HScrollBar.SupportsThumbTrack)
			{
				hScrollBar.ValueChanged += OnHScrollBarValueChanged;
			}
			if (!HScrollBar.SupportsScrollTips)
			{
				return;
			}
		}
		if (scrollTip != null)
		{
			ScrollTipFeedbackEventArgs e = new ScrollTipFeedbackEventArgs(thumbBar, ScrollTipActions.ThumbPosition, -1, "", Size.Empty, Point.Empty, null, Color.Empty, Color.Empty, BorderStyle.None, null);
			OnScrollTipFeedback(e);
			if (scrollTip != null)
			{
				scrollTip.Hide();
			}
		}
	}

	public void ResetInsideScrollMargins()
	{
		insideScrollMargins = new Size(10, 10);
	}

	protected void StartAutoScrollTimer(ScrollBarWrapper scrollBar, ScrollEventType saType)
	{
		repeatScrollBar = scrollBar;
		repeatScrollEventType = saType;
		StartAutoScrollTimer(Message.Create(IntPtr.Zero, 0, IntPtr.Zero, IntPtr.Zero), 50);
	}

	protected void StartAutoScrollTimer(Message m)
	{
		StartAutoScrollTimer(m, accStartInterval);
	}

	private void _ApplyAccelerateScrolling()
	{
		switch (accelerateScrolling)
		{
		case AccelerateScrollingBehavior.None:
		case AccelerateScrollingBehavior.Immediate:
			accStartInterval = 200;
			accStepInterval = 25;
			accMinInterval = 5;
			accDelayScrollTimer = 4;
			break;
		case AccelerateScrollingBehavior.Fast:
			accStartInterval = 500;
			accStepInterval = 20;
			accMinInterval = 15;
			accDelayScrollTimer = 20;
			break;
		case AccelerateScrollingBehavior.Default:
			accStartInterval = 700;
			accStepInterval = 10;
			accMinInterval = 40;
			accDelayScrollTimer = 60;
			break;
		}
		nDelayScrollTimer = accDelayScrollTimer;
	}

	protected void StartAutoScrollTimer(Message m, int interval)
	{
		if (disableAutoScroll || accelerateScrolling == AccelerateScrollingBehavior.None || repeatScrollEventTimer != null || --nDelayScrollTimer > 1)
		{
			return;
		}
		VScrollBar.SmallChange = 1;
		HScrollBar.SmallChange = 1;
		lock (startstopSemaphor)
		{
			repeatScrollMessage = Message.Create(m.HWnd, m.Msg, m.WParam, m.LParam);
			repeatScrollEventTimer = new Timer();
			repeatScrollEventTimer.Interval = interval;
			repeatScrollEventTimer.Tick += repeatScrollEventTimer_Elapsed;
			nTimerCount = 0L;
			repeatScrollEventTimer.Enabled = true;
		}
	}

	internal void SlowAutoScrollTimer()
	{
		lock (startstopSemaphor)
		{
			if (AutoScrollTimerEnable)
			{
				repeatScrollEventTimer.Interval = accStartInterval;
			}
			nTimerCount = 0L;
		}
	}

	internal void StopAutoScrollTimer()
	{
		inMouseDragScroll = false;
		savedHValue = -1;
		savedVValue = -1;
		if (AllowIncreaseSmallChange)
		{
			VScrollBar.SmallChange = 1;
			HScrollBar.SmallChange = 1;
		}
		lock (startstopSemaphor)
		{
			repeatScrollBar = null;
			Timer timer = repeatScrollEventTimer;
			repeatScrollEventTimer = null;
			if (timer != null)
			{
				timer.Tick -= repeatScrollEventTimer_Elapsed;
				timer.Dispose();
			}
			nTimerCount = 0L;
			nDelayScrollTimer = accDelayScrollTimer;
		}
		_ApplyAccelerateScrolling();
	}

	private void repeatScrollEventTimer_Elapsed(object source, EventArgs e)
	{
		try
		{
			if (repeatScrollEventTimer == null || !repeatScrollEventTimer.Enabled)
			{
				return;
			}
			nTimerCount++;
			if (repeatScrollEventTimer.Interval > accStepInterval)
			{
				repeatScrollEventTimer.Interval = Math.Max(accStepInterval, repeatScrollEventTimer.Interval - accStepInterval);
			}
			else
			{
				repeatScrollEventTimer.Interval = accMinInterval;
			}
			if (Control.MouseButtons == MouseButtons.None)
			{
				StopAutoScrollTimer();
			}
			else if (repeatScrollBar != null)
			{
				if (HScrollBar.Value == savedHValue && VScrollBar.Value == savedVValue)
				{
					StopAutoScrollTimer();
					return;
				}
				savedHValue = HScrollBar.Value;
				savedVValue = VScrollBar.Value;
				repeatScrollBar.SendScrollMessage(repeatScrollEventType);
			}
			else if (repeatScrollMessage.Msg == 512 || repeatScrollMessage.Msg == 563)
			{
				Point point = PointToClient(Control.MousePosition);
				repeatScrollMessage.LParam = (IntPtr)MAKELPARAM(point.X, point.Y);
				if (repeatScrollMessage.Msg == 563)
				{
					inOleDragOver = true;
				}
				OnMouseMove(new MouseEventArgs(Control.MouseButtons, 0, point.X, point.Y, 0));
				inOleDragOver = false;
			}
			else
			{
				SendMessage(repeatScrollMessage.Msg, repeatScrollMessage.WParam, repeatScrollMessage.LParam);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			StopAutoScrollTimer();
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	internal IntPtr SendMessage(int msg, IntPtr wparam, IntPtr lparam)
	{
		return NativeMethods.SendMessage(base.Handle, msg, wparam, lparam);
	}

	internal IntPtr SendMessage(int msg, IntPtr wparam, int lparam)
	{
		return NativeMethods.SendMessage(base.Handle, msg, wparam, (IntPtr)lparam);
	}

	internal IntPtr SendMessage(int msg, int wparam, IntPtr lparam)
	{
		return NativeMethods.SendMessage(base.Handle, msg, (IntPtr)wparam, lparam);
	}

	internal IntPtr SendMessage(int msg, int wparam, int lparam)
	{
		return NativeMethods.SendMessage(base.Handle, msg, (IntPtr)wparam, (IntPtr)lparam);
	}

	protected void FixRenderOrigin(Graphics g)
	{
		g.RenderingOrigin = renderOriginPoint;
	}

	public virtual void UpdateScrollBars()
	{
		if (!IsSplitterPaneClosing)
		{
			SyncReflectScrollBars();
			HScrollBar.InitScrollBar();
			VScrollBar.InitScrollBar();
		}
	}

	public bool ShouldPrepareUpdate()
	{
		return ShouldPrepareUpdate(markPaintPending: false);
	}

	public bool ShouldPrepareUpdate(bool markPaintPending)
	{
		if (markPaintPending)
		{
			paintPending |= markPaintPending;
		}
		if (updateCount != 0)
		{
			return (updateOptions & BeginUpdateOptions.Invalidate) != 0;
		}
		return true;
	}

	public void BeginUpdate()
	{
		BeginUpdate(BeginUpdateOptions.None);
	}

	public virtual void BeginUpdate(BeginUpdateOptions options)
	{
		if ((options & BeginUpdateOptions.Invalidate) == 0)
		{
			options = BeginUpdateOptions.None;
		}
		bool flag = (options & BeginUpdateOptions.SynchronizeScrollBars) == 0;
		if (flag && !lockScrollBars)
		{
			lockScrollBars = flag;
			OnBeginUpdateScrollBars();
		}
		if (updateCount++ == 0)
		{
			updateOptions = options;
			paintPending = false;
			OnUpdatingChanged(EventArgs.Empty);
		}
		else
		{
			updateOptions &= options;
		}
	}

	protected virtual void OnBeginUpdateScrollBars()
	{
		VScrollBar.BeginUpdate();
		HScrollBar.BeginUpdate();
	}

	protected virtual void OnEndUpdateScrollBars()
	{
		VScrollBar.EndUpdate();
		HScrollBar.EndUpdate();
	}

	public void EndUpdate()
	{
		EndUpdate(update: true);
	}

	public void CancelUpdate()
	{
		while (updateCount > 0)
		{
			EndUpdate();
		}
	}

	public virtual void EndUpdate(bool update)
	{
		if (updateCount <= 0)
		{
			return;
		}
		updateCount--;
		if (updateCount != 0)
		{
			return;
		}
		if (lockScrollBars)
		{
			lockScrollBars = false;
			OnEndUpdateScrollBars();
		}
		OnUpdatingChanged(EventArgs.Empty);
		if (paintPending && update)
		{
			if ((updateOptions & BeginUpdateOptions.Invalidate) != BeginUpdateOptions.None)
			{
				Update();
			}
			else
			{
				Refresh();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual Rectangle ScrollWindow(int xAmount, int yAmount, Rectangle rect, Rectangle clipRect, bool allowUpdate)
	{
		OnWindowScrolling(new ScrollWindowEventArgs(xAmount, yAmount, rect, clipRect, Rectangle.Empty));
		OffsetRenderOriginPoint(xAmount, yAmount);
		if (DisableScrollWindow)
		{
			if (!rect.IsEmpty)
			{
				clipRect = Rectangle.Union(rect, clipRect);
			}
			Invalidate(clipRect);
		}
		else if (HasDoubleBufferSurface)
		{
			Rectangle r = DoubleBufferSurface.ScrollWindow(xAmount, yAmount, rect, clipRect);
			if (allowUpdate)
			{
				ScrollWindowInvalidate(r);
			}
		}
		else
		{
			try
			{
				NativeMethods.RECT rectScrollRegion = new NativeMethods.RECT(rect);
				NativeMethods.RECT rectClip = new NativeMethods.RECT(clipRect);
				NativeMethods.RECT prcUpdate = default(NativeMethods.RECT);
				int flags = 1;
				if (allowUpdate)
				{
					IntPtr intPtr = NativeMethods.CreateRectRgn(0, 0, 0, 0);
					if (rect.IsEmpty)
					{
						NativeMethods.ScrollWindowEx(base.Handle, xAmount, yAmount, null, ref rectClip, intPtr, ref prcUpdate, flags);
					}
					else
					{
						NativeMethods.ScrollWindowEx(base.Handle, xAmount, yAmount, ref rectScrollRegion, ref rectClip, intPtr, ref prcUpdate, flags);
					}
					NativeMethods.RECT[] array = NativeMethods.RegionCracker.CrackRegionData(intPtr);
					for (int i = 0; i < array.Length; i++)
					{
						if (i == 0 && i < array.Length - 1)
						{
							Update();
						}
						ScrollWindowInvalidate(new Rectangle(array[i].left, array[i].top, array[i].Width, array[i].Height));
						if (i < array.Length - 1)
						{
							Update();
						}
					}
					NativeMethods.DeleteObject(intPtr);
				}
				else
				{
					flags = 3;
					if (rect.IsEmpty)
					{
						NativeMethods.ScrollWindowEx(base.Handle, xAmount, yAmount, null, ref rectClip, IntPtr.Zero, ref prcUpdate, flags);
					}
					else
					{
						NativeMethods.ScrollWindowEx(base.Handle, xAmount, yAmount, ref rectScrollRegion, ref rectClip, IntPtr.Zero, ref prcUpdate, flags);
					}
				}
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
				disableScrollWindow = true;
			}
		}
		Rectangle rectangle = clipRect;
		if (xAmount < 0)
		{
			rectangle.Width = -xAmount;
			rectangle.X += clipRect.Width + xAmount;
		}
		else if (xAmount > 0)
		{
			rectangle.Width = xAmount;
		}
		if (yAmount < 0)
		{
			rectangle.Height = -yAmount;
			rectangle.Y += clipRect.Height + yAmount;
		}
		else if (yAmount > 0)
		{
			rectangle.Height = yAmount;
		}
		if (!disableScrollWindow && !allowUpdate)
		{
			ScrollWindowInvalidate(rectangle);
		}
		OnWindowScrolled(new ScrollWindowEventArgs(xAmount, yAmount, rect, clipRect, rectangle));
		return rectangle;
	}

	protected virtual void ScrollWindowInvalidate(Rectangle r)
	{
		Invalidate(r);
	}

	public Rectangle DiscardPaintMessages()
	{
		NativeMethods.PAINTSTRUCT lpPaint = default(NativeMethods.PAINTSTRUCT);
		NativeMethods.BeginPaint(base.Handle, ref lpPaint);
		Rectangle result = Rectangle.FromLTRB(lpPaint.rcPaint_left, lpPaint.rcPaint_top, lpPaint.rcPaint_right, lpPaint.rcPaint_bottom);
		NativeMethods.EndPaint(base.Handle, ref lpPaint);
		return result;
	}

	private void ChildGotFocus(object sender, EventArgs e)
	{
		RaiseControlGotFocus();
	}

	private void ChildLostFocus(object sender, EventArgs e)
	{
		RaiseControlLostFocus();
	}

	public virtual bool QueryFocusInside()
	{
		return base.ContainsFocus;
	}

	private void RaiseControlGotFocus()
	{
		if (!base.Disposing && !base.IsDisposed && !hasControlFocus)
		{
			hasControlFocus = true;
			OnControlGotFocus();
		}
	}

	private void RaiseControlLostFocus()
	{
		if (!base.Disposing && !base.IsDisposed && hasControlFocus && !QueryFocusInside())
		{
			hasControlFocus = false;
			OnControlLostFocus();
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		if (base.IsHandleCreated && !ClientRectangle.IsEmpty)
		{
			AdjustSizeBox();
		}
	}

	private void AdjustSizeBox()
	{
		bool flag = vScroll && VScrollBar.InnerScrollBar is ScrollBarCustomDraw;
		bool flag2 = hScroll && HScrollBar.InnerScrollBar is ScrollBarCustomDraw;
		if (flag)
		{
			ScrollBarCustomDraw scrollBarCustomDraw = (ScrollBarCustomDraw)VScrollBar.InnerScrollBar;
			Rectangle clientRectangle = base.ClientRectangle;
			if (RightToLeft != RightToLeft.Yes)
			{
				clientRectangle.X = clientRectangle.Width - scrollBarCustomDraw.Width;
			}
			clientRectangle.Width = scrollBarCustomDraw.Width;
			int num = clientRectangle.Height;
			if (flag2)
			{
				num -= HScrollBar.InnerScrollBar.Height;
				clientRectangle.Height = num;
			}
			scrollBarCustomDraw.Bounds = clientRectangle;
			scrollBarCustomDraw.BringToFront();
		}
		if (flag2)
		{
			ScrollBarCustomDraw scrollBarCustomDraw2 = (ScrollBarCustomDraw)HScrollBar.InnerScrollBar;
			Rectangle clientRectangle2 = base.ClientRectangle;
			clientRectangle2.Y = clientRectangle2.Height - scrollBarCustomDraw2.Height;
			clientRectangle2.Height = scrollBarCustomDraw2.Height;
			int num2 = clientRectangle2.Width;
			if (flag)
			{
				num2 -= VScrollBar.InnerScrollBar.Width;
				clientRectangle2.Width = num2;
				if (RightToLeft == RightToLeft.Yes)
				{
					clientRectangle2.X += VScrollBar.InnerScrollBar.Width;
				}
			}
			scrollBarCustomDraw2.Bounds = clientRectangle2;
			scrollBarCustomDraw2.BringToFront();
		}
		bool flag3 = ((flag && flag2) || forceSizeBox) && base.Visible;
		bool flag4 = false;
		Form form = base.Parent as Form;
		if (smartSizeBox && base.Visible && form != null && HScroll && VScroll)
		{
			if (Dock != DockStyle.Fill)
			{
				flag3 = true;
				flag4 = false;
			}
			else if (!form.IsMdiChild)
			{
				if (form.FormBorderStyle == FormBorderStyle.Sizable && form.WindowState == FormWindowState.Normal && allowSizeGrip)
				{
					if (allowSizeGrip)
					{
						form.SizeGripStyle = SizeGripStyle.Show;
					}
				}
				else
				{
					if (allowSizeGrip)
					{
						form.SizeGripStyle = SizeGripStyle.Hide;
					}
					flag3 = true;
				}
			}
			else
			{
				flag3 = true;
				flag4 = form.WindowState != FormWindowState.Maximized;
			}
		}
		if (flag3)
		{
			if (sizeBox == null)
			{
				sizeBox = new SizeBox(this);
				sizeBox.BackColor = SystemColors.Control;
				sizeBox.Visible = false;
				base.Controls.Add(sizeBox);
			}
			sizeBox.SizeGripStyle = SizeGripStyle;
			sizeBox.Bounds = new Rectangle(VScrollBar.InnerScrollBar.Left, HScrollBar.InnerScrollBar.Top, SystemInformation.VerticalScrollBarWidth, SystemInformation.HorizontalScrollBarHeight);
			sizeBox.Visible = true;
			sizeBox.BringToFront();
		}
		else if (sizeBox != null)
		{
			sizeBox.Visible = false;
		}
	}

	public void EnsurePaintCodeJitted(bool ignoreVisible)
	{
		if ((ignoreVisible || (base.Visible && base.IsHandleCreated)) && !onPaintCalled)
		{
			OnEnsurePaintCodeJitted();
			onPaintCalled = true;
		}
	}

	public void EnableDoubleBufferSurface()
	{
		SetStyle(ControlStyles.Opaque, value: true);
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
		SetStyle(ControlStyles.OptimizedDoubleBuffer, value: false);
		hasDoubleBufferSurface = true;
	}

	private void OnPrepareDoubleBufferSurfaceGraphics(Graphics gr)
	{
	}

	public new void UpdateStyles()
	{
		m_bUpdatingStyles = true;
		base.UpdateStyles();
		m_bUpdatingStyles = false;
	}
}
