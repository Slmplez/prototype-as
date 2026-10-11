using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Enums;
using Syncfusion.Windows.Forms.Tools.Events;
using Syncfusion.Windows.Forms.Tools.Renderers;

namespace Syncfusion.Windows.Forms.Tools;

[Docking(DockingBehavior.AutoDock)]
[ToolboxBitmap(typeof(SplitContainerAdv), "ToolboxIcons.SplitContainerAdv.bmp")]
[Description("Represents a control with collapsible panels and splitters.")]
[Designer(typeof(SplitContainerAdvDesigner))]
public class SplitContainerAdv : Control, IMouseHookHLProcClient, IMessageFilter, ISupportInitialize
{
	private const int DEF_INCREMENT = 1;

	private const int DEF_SPLITTER_DISTANCE = 48;

	private const int DEF_SPLITTER_BORDER_WIDTH = 1;

	private const int DEF_MIN_SPLITTER_WIDTH = 1;

	private const int DEF_MIN_PANEL_SIZE = 25;

	private const int DEF_SPLITTER_WIDTH = 7;

	private const string DEF_PANEL1_NAME = "panel1";

	private const string DEF_PANEL2_NAME = "panel2";

	private static readonly Size DEF_SIZE = new Size(100, 100);

	private int fixedPanelHeight;

	private Point m_splitterOffset = Point.Empty;

	private int m_splitterIncrement = 1;

	private ICollection m_prevSelectedComponents;

	private bool m_bIsInitializing;

	private Form m_host;

	private int m_splitterDistance = (DEF_SIZE.Width - 7) / 2;

	private int m_fixedDistance;

	private int m_panel1MinSize = 25;

	private int m_panel2MinSize = 25;

	private bool m_bIsSplitterFixed;

	private bool m_bIsSizeChanging;

	private Syncfusion.Windows.Forms.Tools.Enums.FixedPanel m_fixedPanel;

	private BorderStyle m_borderStyle;

	private SplitPanelAdv m_panel1;

	private SplitPanelAdv m_panel2;

	private CollapsedPanel m_panelToBeCollapsed = CollapsedPanel.None;

	private bool m_bInitializing;

	private SplitPanelAdv m_selectedPanel;

	private Rectangle m_prevMovingRect = Rectangle.Empty;

	private Cursor m_prevCursor;

	private Size m_prevSize = Size.Empty;

	private bool m_bIsSplitterMoving;

	public RectangleF m_splitterRect = default(RectangleF);

	private Orientation m_orientation;

	private IRenderer m_renderer;

	private IRendererInfo m_rendererInfo;

	private BrushInfo m_bgBrush = BrushInfo.Empty;

	private BrushInfo m_bgHotBrush = BrushInfo.Empty;

	private bool m_bThemesEnabled;

	private ThemedControlDrawing m_tcd;

	private bool m_bIgnoreThemeBackground;

	private Style m_eStyle = Style.Default;

	private DrawState m_eDrawState;

	private DragState m_eDragState;

	private BrushInfo m_brushExpandFill = BrushInfo.Empty;

	private BrushInfo m_brushHotExpandFill = BrushInfo.Empty;

	private Color m_colorExpandLine = Color.Empty;

	private Color m_colorHotExpandLine = Color.Empty;

	private BrushInfo m_brushGripDark = BrushInfo.Empty;

	private BrushInfo m_brushHotGripDark = BrushInfo.Empty;

	private BrushInfo m_brushGripLight = BrushInfo.Empty;

	private BrushInfo m_brushHotGripLight = BrushInfo.Empty;

	private TogglePanelOn m_togglePanelOn;

	private bool m_bPanelToggled;

	private bool m_bCalculateAfterCollapsing;

	private bool m_bCalculateAfterSplitterDistanceChange;

	private double m_ratioSplitterDistance = 1.0;

	private IContainer components;

	protected Form Host => m_host;

	[Browsable(true)]
	[Description("Gets or Sets Panel1 minimum size.")]
	[DefaultValue(25)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Layout")]
	public int Panel1MinSize
	{
		get
		{
			return m_panel1MinSize;
		}
		set
		{
			if (value == m_panel1MinSize)
			{
				return;
			}
			if (!m_bIsInitializing)
			{
				int num = ((Orientation == Orientation.Horizontal) ? base.Width : base.Height);
				num -= m_panel2MinSize + SplitterWidth;
				if (value < 0 || value > num)
				{
					throw new ArgumentOutOfRangeException("Panel1MinSize", value, " Panel1 minimum size is greater then container size.");
				}
			}
			m_panel1MinSize = value;
			if (!m_bIsInitializing)
			{
				CorrectPanelsBounds();
			}
		}
	}

	[Browsable(true)]
	[Category("Layout")]
	[Description("Gets or Sets Panel2 minimum size.")]
	[DefaultValue(25)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public int Panel2MinSize
	{
		get
		{
			return m_panel2MinSize;
		}
		set
		{
			if (value == m_panel2MinSize)
			{
				return;
			}
			if (!m_bIsInitializing)
			{
				int num = ((Orientation == Orientation.Horizontal) ? base.Width : base.Height);
				num -= m_panel1MinSize + SplitterWidth;
				if (value < 0 || value > num)
				{
					throw new ArgumentOutOfRangeException("Panel2MinSize", value, " Panel2 minimum size is greater then container size.");
				}
			}
			m_panel2MinSize = value;
			if (!m_bIsInitializing)
			{
				CorrectPanelsBounds();
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets or Sets, whether user is allowed to move splitter or not.")]
	[DefaultValue(false)]
	public bool IsSplitterFixed
	{
		get
		{
			return m_bIsSplitterFixed;
		}
		set
		{
			if (value != m_bIsSplitterFixed)
			{
				m_bIsSplitterFixed = value;
				OnIsSplitterFixedChanged();
			}
		}
	}

	[DefaultValue(1)]
	[Description("Determines the number of pixels the splitter moves in each increment.")]
	[Category("Layout")]
	public int SplitterIncrement
	{
		get
		{
			return m_splitterIncrement;
		}
		set
		{
			if (value != m_splitterIncrement)
			{
				if (value <= 0)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				m_splitterIncrement = value;
			}
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Gets or Sets splitter distance from left( top ) border.")]
	[DefaultValue(48)]
	[Category("Layout")]
	public int SplitterDistance
	{
		get
		{
			return m_splitterDistance;
		}
		set
		{
			if (value != m_splitterDistance)
			{
				m_splitterDistance = value;
				OnSplitterDistanceChanged();
			}
		}
	}

	[Category("Layout")]
	[Description("Gets or Sets, which panel has fixed size during container resizing.")]
	[DefaultValue(typeof(Syncfusion.Windows.Forms.Tools.Enums.FixedPanel), "None")]
	public Syncfusion.Windows.Forms.Tools.Enums.FixedPanel FixedPanel
	{
		get
		{
			return m_fixedPanel;
		}
		set
		{
			if (value != m_fixedPanel)
			{
				m_fixedPanel = value;
				if (m_fixedPanel != Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None)
				{
					fixedPanelHeight = ((m_fixedPanel == Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1) ? m_panel1.Height : m_panel2.Height);
				}
			}
		}
	}

	private Syncfusion.Windows.Forms.Tools.Enums.FixedPanel FixedPanelInternal
	{
		get
		{
			if (m_panel1.Collapsed || m_panel2.Collapsed)
			{
				return Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None;
			}
			return m_fixedPanel;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new ControlCollection Controls => base.Controls;

	protected new int MinimumSize
	{
		get
		{
			int num = 1;
			switch (FixedPanelInternal)
			{
			case Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1:
				num = ((Orientation == Orientation.Horizontal) ? m_panel1.Width : m_panel1.Height);
				num += m_panel2MinSize;
				break;
			case Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel2:
				num = ((Orientation == Orientation.Horizontal) ? m_panel2.Width : m_panel2.Height);
				num += m_panel1MinSize;
				break;
			case Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None:
				num = m_panel1MinSize + m_panel2MinSize;
				break;
			}
			return num + SplitterWidth;
		}
	}

	protected internal SplitPanelAdv SelectedPanel
	{
		get
		{
			return m_selectedPanel;
		}
		set
		{
			if (value != m_selectedPanel)
			{
				m_selectedPanel = value;
				m_panel1.Invalidate();
				m_panel2.Invalidate();
			}
		}
	}

	protected internal bool IsSplitterMoving => m_bIsSplitterMoving;

	[DefaultValue(7)]
	[Category("Layout")]
	[Description(" Gets or Sets splitter width.")]
	public int SplitterWidth
	{
		get
		{
			float num = ((Orientation == Orientation.Horizontal) ? m_splitterRect.Width : m_splitterRect.Height);
			return (int)num;
		}
		set
		{
			int num = ((Orientation == Orientation.Horizontal) ? ((int)m_splitterRect.Width) : ((int)m_splitterRect.Height));
			int num2 = ((Orientation == Orientation.Horizontal) ? base.Width : base.Height);
			if (value != num)
			{
				if (!m_bInitializing && (value < 1 || value + m_panel1MinSize + m_panel2MinSize > num2))
				{
					throw new ArgumentOutOfRangeException("SplitterWidth", value, "Is lesser then minimum size allowed.");
				}
				if (Orientation == Orientation.Horizontal)
				{
					m_splitterRect.Width = value;
				}
				else
				{
					m_splitterRect.Height = value;
				}
				if (!m_bInitializing)
				{
					OnSplitterWidthChanged();
				}
			}
		}
	}

	[DefaultValue(typeof(Orientation), "Horizontal")]
	[Description("Gets or sets a value indicating the horizontal or vertical orientation of the SplitContainerAdv panels.")]
	[Category("Behavior")]
	[RefreshProperties(RefreshProperties.All)]
	public Orientation Orientation
	{
		get
		{
			return m_orientation;
		}
		set
		{
			if (value != m_orientation)
			{
				m_orientation = value;
				OnOrientationChanged();
			}
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The left or top panel in SplitContainerAdv.")]
	public SplitPanelAdv Panel1 => m_panel1;

	[Description("The right or bottom panel in SplitContainerAdv.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	public SplitPanelAdv Panel2 => m_panel2;

	[DefaultValue(false)]
	[Description("This determines if Panel1 is collapsed.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[Category("Layout")]
	public bool Panel1Collapsed
	{
		get
		{
			return m_panel1.Collapsed;
		}
		set
		{
			if (value != m_panel1.Collapsed)
			{
				CollapsePanel(m_panel1, value);
			}
		}
	}

	[DefaultValue(false)]
	[Category("Layout")]
	[Description("This determines if Panel2 is collapsed.")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool Panel2Collapsed
	{
		get
		{
			return m_panel2.Collapsed;
		}
		set
		{
			if (value != m_panel2.Collapsed)
			{
				CollapsePanel(m_panel2, value);
			}
		}
	}

	[Category("Layout")]
	[Browsable(false)]
	[Description("Gets or Sets currently collapsed panel.")]
	[DefaultValue(CollapsedPanel.None)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public CollapsedPanel CollapsedPanel
	{
		get
		{
			CollapsedPanel result = CollapsedPanel.None;
			if (m_panel1 != null && m_panel1.Collapsed)
			{
				result = CollapsedPanel.Panel1;
			}
			else if (m_panel2 != null && m_panel2.Collapsed)
			{
				result = CollapsedPanel.Panel2;
			}
			return result;
		}
		set
		{
			switch (value)
			{
			case CollapsedPanel.Panel1:
				CollapsePanel(m_panel1, bCollapsed: true);
				m_eDragState = DragState.Collapsed;
				break;
			case CollapsedPanel.Panel2:
				CollapsePanel(m_panel2, bCollapsed: true);
				m_eDragState = DragState.Collapsed;
				break;
			case CollapsedPanel.None:
				CollapsePanel(m_panel1, bCollapsed: false);
				CollapsePanel(m_panel2, bCollapsed: false);
				m_eDragState = DragState.Normal;
				break;
			}
			UpdateRendererInfo();
		}
	}

	[DefaultValue(CollapsedPanel.None)]
	[Browsable(true)]
	[Description("Gets or Sets the panel to be collapsed when some predefined event occurs on it.")]
	[Category("Behavior")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public CollapsedPanel PanelToBeCollapsed
	{
		get
		{
			return m_panelToBeCollapsed;
		}
		set
		{
			if (value != m_panelToBeCollapsed)
			{
				m_panelToBeCollapsed = value;
				UpdateRendererInfo();
				InvalidateSplitter();
			}
		}
	}

	[Category("Behavior")]
	[Browsable(true)]
	[Description("An event which leads to collapsing of previously specified panel.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(TogglePanelOn.Click)]
	public TogglePanelOn TogglePanelOn
	{
		get
		{
			return m_togglePanelOn;
		}
		set
		{
			if (value != m_togglePanelOn)
			{
				m_togglePanelOn = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Determines split panels border style.")]
	[DefaultValue(typeof(BorderStyle), "None")]
	public BorderStyle BorderStyle
	{
		get
		{
			return m_borderStyle;
		}
		set
		{
			if (value != m_borderStyle)
			{
				m_borderStyle = value;
				OnBorderStyleChanged();
			}
		}
	}

	[Category("Appearance - Styles")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Lets you set the background color, gradient, etc.")]
	public BrushInfo BackgroundColor
	{
		get
		{
			return m_bgBrush;
		}
		set
		{
			if (m_bgBrush != value)
			{
				m_bgBrush = value;
				Invalidate();
			}
		}
	}

	[Description("Lets you set the background color, gradient, etc., while under mouse cursor")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance - Styles")]
	public BrushInfo HotBackgroundColor
	{
		get
		{
			return m_bgHotBrush;
		}
		set
		{
			if (m_bgHotBrush != value)
			{
				m_bgHotBrush = value;
				Invalidate();
			}
		}
	}

	[Description("Indicates if the control is themed.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool ThemesEnabled
	{
		get
		{
			return m_bThemesEnabled;
		}
		set
		{
			if (m_bThemesEnabled != value)
			{
				m_bThemesEnabled = value;
				UpdateStyles();
				InvalidateWindow();
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the control will ignore the theme's background color and draw the backcolor instead.")]
	[Category("Appearance")]
	public bool IgnoreThemeBackground
	{
		get
		{
			return m_bIgnoreThemeBackground;
		}
		set
		{
			if (m_bIgnoreThemeBackground != value)
			{
				m_bIgnoreThemeBackground = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	public ThemedControlDrawing ThemedControl => m_tcd;

	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("Indicates the current style of the control.")]
	[DefaultValue(Style.None)]
	public Style Style
	{
		get
		{
			return m_eStyle;
		}
		set
		{
			if (m_eStyle != value)
			{
				m_eStyle = value;
				OnStyleChanged();
				Update();
			}
		}
	}

	protected internal DrawState DrawState
	{
		get
		{
			return m_eDrawState;
		}
		set
		{
			if (m_eDrawState != value)
			{
				m_eDrawState = value;
				Invalidate();
			}
		}
	}

	protected internal DragState DragState
	{
		get
		{
			return m_eDragState;
		}
		set
		{
			if (m_eDragState != value)
			{
				m_eDragState = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance - Styles")]
	[Description("Specifies the brush details for filling thumbnail arrows.")]
	public BrushInfo ExpandFill
	{
		get
		{
			return m_brushExpandFill;
		}
		set
		{
			if (m_brushExpandFill != value)
			{
				m_brushExpandFill = value;
				Invalidate();
			}
		}
	}

	[Description("Makes able to set brush for filling thumbnail arrows, while under mouse cursor.")]
	[Category("Appearance - Styles")]
	public BrushInfo HotExpandFill
	{
		get
		{
			return m_brushHotExpandFill;
		}
		set
		{
			if (m_brushHotExpandFill != value)
			{
				m_brushHotExpandFill = value;
				Invalidate();
			}
		}
	}

	[Description("Makes able to set pen color for drawing thumbnail arrows.")]
	[Category("Appearance - Styles")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public Color ExpandLine
	{
		get
		{
			return m_colorExpandLine;
		}
		set
		{
			if (m_colorExpandLine != value)
			{
				m_colorExpandLine = value;
				Invalidate();
			}
		}
	}

	[Description("Makes able to set pen color for drawing thumbnail arrows, while under mouse cursor.")]
	[Category("Appearance - Styles")]
	public Color HotExpandLine
	{
		get
		{
			return m_colorHotExpandLine;
		}
		set
		{
			if (m_colorHotExpandLine != value)
			{
				m_colorHotExpandLine = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance - Styles")]
	[Description("Makes able to set brush for drawing a grip in thumbnail, if any.")]
	public BrushInfo GripDark
	{
		get
		{
			return m_brushGripDark;
		}
		set
		{
			if (m_brushGripDark != value)
			{
				m_brushGripDark = value;
				Invalidate();
			}
		}
	}

	[Description("Makes able to set brush for drawing a shadow around grip in thumbnail, if any, while under mouse cursor.")]
	[Category("Appearance - Styles")]
	public BrushInfo HotGripDark
	{
		get
		{
			return m_brushHotGripDark;
		}
		set
		{
			if (m_brushHotGripDark != value)
			{
				m_brushHotGripDark = value;
				Invalidate();
			}
		}
	}

	[Description("Makes able to set brush for drawing a shadow around a grip in thumbnail, if any.")]
	[Category("Appearance - Styles")]
	public BrushInfo GripLight
	{
		get
		{
			return m_brushGripLight;
		}
		set
		{
			if (m_brushGripLight != value)
			{
				m_brushGripLight = value;
				Invalidate();
			}
		}
	}

	[Description("Makes able to set brush for drawing a grip in thumbnail, if any, while under mouse cursor.")]
	[Category("Appearance - Styles")]
	public BrushInfo HotGripLight
	{
		get
		{
			return m_brushHotGripLight;
		}
		set
		{
			if (m_brushHotGripLight != value)
			{
				m_brushHotGripLight = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	public IRendererInfo RenderInfo => m_rendererInfo;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets a value indicating whether the \r\n          container enables the user to scroll to any controls placed outside of its visible boundaries.")]
	[Obsolete("Don't use this property. Use instead SpitContainerAdv.Panel.AutoScroll property.")]
	public bool AutoScroll
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets the size of the auto-scroll margin.")]
	[Obsolete("Don't use this property. Use instead SpitContainerAdv.Panel.AutoScrollMargin property.")]
	public Size AutoScrollMargin
	{
		get
		{
			return Size.Empty;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Description("Gets the minimum size of the auto-scroll.")]
	[Obsolete("Don't use this property. Use instead SpitContainerAdv.Panel.AutoScrollMinSize property.")]
	public Size AutoScrollMinSize
	{
		get
		{
			return Size.Empty;
		}
		set
		{
		}
	}

	[Obsolete("Don't use this property. Use instead SpitContainerAdv.Panel.AutoScrollPosition property.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Point AutoScrollPosition
	{
		get
		{
			return Point.Empty;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[Description("Gets where this control is scrolled to \r\n          in System.Windows.Forms.ScrollableControl.ScrollControlIntoView( System.Windows.Forms.Control ).")]
	[Obsolete("Don't use this property. Use instead SpitContainerAdv.Panel.AutoScrollOffset property.")]
	public new Point AutoScrollOffset
	{
		get
		{
			return Point.Empty;
		}
		set
		{
			base.AutoScrollOffset = Point.Empty;
		}
	}

	[Description("Occurs, when splitter is moved to new position.")]
	[Category("Actions")]
	public event SplitterMoveEventHandler SplitterMoved;

	[Description("Occurs, while splitter is moving.")]
	[Category("Actions")]
	public event SplitterMoveEventHandler SplitterMoving;

	[Category("Property Changed")]
	[Description("Occurs, when splitter orientation is changed.")]
	public event EventHandler OrientationChanged;

	[Category("Property Changed")]
	[Description("Occurs, when splitter theme is changed.")]
	public event EventHandler ThemeChanged;

	public SplitContainerAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(SplitContainerAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		SetStyle(ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.ContainerControl, value: true);
		m_bInitializing = true;
		InitializePanels();
		InitializeSplitter();
		base.Dock = DockStyle.None;
		base.Size = new Size(150, 100);
		base.ParentChanged += OnParentChanged;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			m_tcd = new ThemedControlDrawing("EDIT", this);
		}
		m_bInitializing = false;
	}

	private void InitializeSplitter()
	{
		m_prevSize = DEF_SIZE;
		Size size = new Size((DEF_SIZE.Width - 7) / 2, DEF_SIZE.Height);
		m_splitterRect.Location = new Point(size.Width, 0);
		SplitterWidth = 7;
		m_splitterRect.Height = size.Height;
	}

	private void InitializePanels()
	{
		m_panel1 = new SplitPanelAdv(this);
		m_panel1.Name = "SplitPanel1";
		m_panel1.Bounds = Rectangle.Round(new RectangleF(0f, 0f, m_splitterRect.Left, m_splitterRect.Height));
		m_panel2 = new SplitPanelAdv(this);
		m_panel2.Name = "SplitPanel2";
		m_panel2.Bounds = Rectangle.Round(new RectangleF(m_splitterRect.Right, 0f, (float)base.Width - m_splitterRect.Width, m_splitterRect.Height));
		Controls.Add(m_panel1);
		Controls.Add(m_panel2);
	}

	protected override void Dispose(bool disposing)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseCapture();
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			base.ParentChanged -= OnParentChanged;
			UnSubscribeHost();
			if (m_tcd != null)
			{
				m_tcd.Dispose();
				m_tcd = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.Style = Syncfusion.Windows.Forms.Tools.Enums.Style.None;
	}

	protected virtual void OnSplitterMoved(SplitterMoveEventArgs args)
	{
		if (args == null)
		{
			throw new ArgumentNullException("args");
		}
		if (this.SplitterMoved != null)
		{
			this.SplitterMoved(this, args);
			m_eDragState = DragState.Normal;
		}
	}

	protected virtual void OnSplitterMoving(SplitterMoveEventArgs args)
	{
		if (args == null)
		{
			throw new ArgumentNullException("args");
		}
		if (this.SplitterMoving != null)
		{
			m_eDragState = DragState.Dragged;
			this.SplitterMoving(this, args);
		}
	}

	protected virtual void OnIsSplitterFixedChanged()
	{
		if (m_bIsSplitterFixed && m_bIsSplitterMoving)
		{
			FinishSplitterMoving(success: false);
		}
	}

	protected virtual void OnSplitterDistanceChanged()
	{
		int num = ((Orientation == Orientation.Horizontal) ? base.Width : base.Height);
		m_splitterDistance = ((m_splitterDistance < m_panel1MinSize) ? m_panel1MinSize : m_splitterDistance);
		int num2 = num - m_panel2MinSize - SplitterWidth;
		m_splitterDistance = ((m_splitterDistance > num2) ? num2 : m_splitterDistance);
		if (Orientation == Orientation.Horizontal)
		{
			m_splitterRect.X = m_splitterDistance;
		}
		else
		{
			m_splitterRect.Y = m_splitterDistance;
		}
		m_bCalculateAfterSplitterDistanceChange = true;
		RecalculatePanelsBounds();
		m_bCalculateAfterSplitterDistanceChange = false;
		if (Orientation == Orientation.Horizontal)
		{
			if (Panel1.Width != 0)
			{
				m_ratioSplitterDistance = (double)base.Width / (double)Panel1.Width;
			}
		}
		else if (Panel1.Height != 0)
		{
			m_ratioSplitterDistance = (double)base.Height / (double)Panel1.Height;
		}
	}

	protected virtual void OnBorderStyleChanged()
	{
		m_panel1.SetBorderStyle(m_borderStyle);
		m_panel2.SetBorderStyle(m_borderStyle);
	}

	protected virtual void OnSplitterWidthChanged()
	{
		RecalculatePanelsBounds();
		InvalidateSplitter();
	}

	protected virtual void OnOrientationChanged()
	{
		if (base.Size.Width == 0 || base.Size.Height == 0)
		{
			base.Size = m_prevSize;
		}
		float num = 1f;
		float num2 = 0f;
		switch (Orientation)
		{
		case Orientation.Horizontal:
			num = m_splitterRect.Top / (float)base.Height;
			m_splitterRect.Width = m_splitterRect.Height;
			m_splitterRect.Height = base.Height;
			num2 = num * (float)base.Width;
			m_splitterRect.Location = new PointF(num2, 0f);
			Panel1.Height = base.Height;
			Panel1.Width = (int)m_splitterRect.Left;
			Panel2.Height = base.Height;
			Panel2.Width = base.Width - (int)m_splitterRect.Right;
			Panel2.Location = new Point((int)m_splitterRect.Right, 0);
			m_splitterDistance = (int)m_splitterRect.X;
			break;
		case Orientation.Vertical:
			num = m_splitterRect.Left / (float)base.Width;
			m_splitterRect.Height = m_splitterRect.Width;
			m_splitterRect.Width = base.Width;
			num2 = num * (float)base.Height;
			m_splitterRect.Location = new PointF(0f, num2);
			Panel1.Height = (int)m_splitterRect.Top;
			Panel1.Width = base.Width;
			Panel2.Height = base.Height - (int)m_splitterRect.Bottom;
			Panel2.Width = base.Width;
			Panel2.Location = new Point(0, (int)m_splitterRect.Bottom);
			m_splitterDistance = (int)m_splitterRect.Y;
			break;
		}
		RaiseOrientationChanged();
		CorrectPanelsBounds();
		UpdateRendererInfo();
		Invalidate();
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (e.Clicks == 1 && !m_panel1.Collapsed && !m_panel2.Collapsed)
		{
			StartSplitterMoving(new Point(e.X, e.Y));
		}
		base.OnMouseDown(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		SetCursor(point);
		MoveSplitterTo(point);
		base.OnMouseMove(e);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		ResetPreviousCursor();
		m_eDrawState = DrawState.Normal;
		UpdateRendererInfo();
		Invalidate();
		base.OnMouseLeave(e);
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		SetSplitterCursor();
		m_eDrawState = DrawState.Hovered;
		Invalidate();
		base.OnMouseEnter(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (!m_panel1.Collapsed && !m_panel2.Collapsed)
		{
			FinishSplitterMoving(success: true);
		}
		else
		{
			m_bIsSplitterMoving = false;
		}
		Invalidate();
		base.OnMouseUp(e);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		_ = base.Bounds;
		if (Orientation == Orientation.Horizontal)
		{
			if (width < MinimumSize)
			{
				width = MinimumSize;
			}
		}
		else if (height < MinimumSize)
		{
			height = MinimumSize;
		}
		base.SetBoundsCore(x, y, width, height, specified);
		m_bIsSizeChanging = true;
		if (m_prevSize != base.Size)
		{
			RecalculatePanelsBounds();
			if (FixedPanel == Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None)
			{
				if (Orientation == Orientation.Horizontal)
				{
					m_splitterDistance = (int)Math.Floor((double)base.Width / m_ratioSplitterDistance);
				}
				else
				{
					m_splitterDistance = (int)Math.Floor((double)base.Height / m_ratioSplitterDistance);
				}
			}
			m_prevSize = base.Size;
			CorrectPanelsBounds();
			m_bIsSizeChanging = false;
		}
		m_bIsSizeChanging = false;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (m_renderer == null || base.Height <= 0 || base.Width <= 0)
		{
			return;
		}
		base.OnPaint(e);
		if (BackgroundImage == null)
		{
			Rectangle bounds = Rectangle.Round(m_splitterRect);
			IncreaseBounds(ref bounds);
			m_renderer.UpdateRendererInfo(this, m_rendererInfo);
			m_renderer.Draw(e, m_rendererInfo, bounds);
		}
		if (!Panel1Collapsed && !Panel2Collapsed)
		{
			if (Orientation == Orientation.Vertical)
			{
				if (base.Size.Width != Panel1.Size.Width || base.Size.Width != Panel2.Size.Width)
				{
					RecalculatePanelsBounds();
				}
			}
			else if (base.Size.Height != Panel1.Size.Height || base.Size.Height != Panel2.Size.Height)
			{
				RecalculatePanelsBounds();
			}
		}
		RaisePaintEvent(this, e);
	}

	protected void IncreaseBounds(ref Rectangle bounds)
	{
		bounds.X--;
		bounds.Y--;
		bounds.Width++;
		bounds.Height++;
	}

	private void InvalidateWindow()
	{
		Invalidate();
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			this.ThemeChanged(this, e);
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		if (!e.Control.Disposing)
		{
			throw new ArgumentException("User is not allowed to remove any controls  from this control manually");
		}
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		Control control = e.Control;
		if (!Contains(control) && control != m_panel1 && control != m_panel2)
		{
			throw new ArgumentException("User is not allowed to add any controls to this control manually");
		}
		base.OnControlAdded(e);
	}

	protected override void OnClick(EventArgs e)
	{
		if (m_bPanelToggled && m_togglePanelOn == TogglePanelOn.Click)
		{
			ExpandPanel();
			SetFixedPanelHeight();
		}
		else if (m_togglePanelOn == TogglePanelOn.Click)
		{
			if (FixedPanel != Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None)
			{
				fixedPanelHeight = ((FixedPanel == Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1) ? m_panel1.Height : m_panel2.Height);
			}
			TogglePanel();
		}
		base.OnClick(e);
	}

	private void SetFixedPanelHeight()
	{
		if (FixedPanel == Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel2)
		{
			m_panel2.Height = fixedPanelHeight;
		}
		else if (FixedPanel == Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1)
		{
			m_panel1.Height = fixedPanelHeight;
		}
		RecalculateFixedPanelsBounds();
	}

	protected override void OnDoubleClick(EventArgs e)
	{
		if (m_bPanelToggled && m_togglePanelOn == TogglePanelOn.DoubleClick)
		{
			ExpandPanel();
			SetFixedPanelHeight();
		}
		else if (m_togglePanelOn == TogglePanelOn.DoubleClick)
		{
			if (FixedPanel != Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None)
			{
				fixedPanelHeight = ((FixedPanel == Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1) ? m_panel1.Height : m_panel2.Height);
			}
			TogglePanel();
		}
		base.OnDoubleClick(e);
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		Invalidate();
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		if (Orientation == Orientation.Horizontal)
		{
			RecalculatePanelsBounds();
		}
		base.OnRightToLeftChanged(e);
	}

	private void StartSplitterMoving(Point mousePos)
	{
		if (m_bIsSplitterFixed)
		{
			return;
		}
		if (m_bIsSplitterMoving)
		{
			FinishSplitterMoving(success: true);
		}
		if (m_splitterRect.Contains(mousePos))
		{
			m_bIsSplitterMoving = true;
			m_prevMovingRect = Rectangle.Round(m_splitterRect);
			m_splitterOffset.X = mousePos.X - m_prevMovingRect.X;
			m_splitterOffset.Y = mousePos.Y - m_prevMovingRect.Y;
			switch (Orientation)
			{
			case Orientation.Horizontal:
				m_prevMovingRect.Location = PointToScreen(new Point(m_prevMovingRect.Location.X, 0));
				break;
			case Orientation.Vertical:
				m_prevMovingRect.Location = PointToScreen(new Point(0, m_prevMovingRect.Location.Y));
				break;
			}
			DrawSplitter(m_prevMovingRect);
		}
	}

	private Point CorrectIncrement(Point destPoint, Point srcPoint, int increment)
	{
		if (increment <= 0)
		{
			throw new ArgumentOutOfRangeException("incement");
		}
		_ = Orientation;
		int num = 0;
		int result = 0;
		if (Orientation == Orientation.Horizontal)
		{
			num = Math.Abs(destPoint.X - srcPoint.X);
			int num2 = ((destPoint.X > srcPoint.X) ? 1 : (-1));
			int num3 = Math.DivRem(num, increment, out result);
			destPoint.X = srcPoint.X + num3 * num2 * increment;
		}
		else
		{
			num = Math.Abs(destPoint.Y - srcPoint.Y);
			int num4 = ((destPoint.Y > srcPoint.Y) ? 1 : (-1));
			int num5 = Math.DivRem(num, increment, out result);
			destPoint.Y = srcPoint.Y + num5 * num4 * increment;
		}
		return destPoint;
	}

	private bool CanMoveTo(Point destination)
	{
		bool flag = false;
		int num = ((Orientation == Orientation.Horizontal) ? base.Width : base.Height);
		num -= m_panel2MinSize + SplitterWidth;
		int num2 = ((Orientation == Orientation.Horizontal) ? destination.X : destination.Y);
		return num2 > m_panel1MinSize && num2 < num;
	}

	protected void MoveSplitterTo(Point mousePos)
	{
		if (m_bIsSplitterMoving && !m_bIsSplitterFixed)
		{
			Rectangle rectangle = Rectangle.Round(m_splitterRect);
			switch (Orientation)
			{
			case Orientation.Horizontal:
			{
				int num2 = mousePos.X - m_splitterOffset.X;
				rectangle.Location = new Point(num2, 0);
				break;
			}
			case Orientation.Vertical:
			{
				int num = mousePos.Y - m_splitterOffset.Y;
				rectangle.Location = new Point(0, num);
				break;
			}
			}
			Point location = rectangle.Location;
			Point srcPoint = Point.Round(m_splitterRect.Location);
			Point location2 = rectangle.Location;
			rectangle.Location = CorrectIncrement(location2, srcPoint, SplitterIncrement);
			if (!CanMoveTo(rectangle.Location))
			{
				rectangle.Location = CorrectSplitRectLocation(rectangle.Location);
			}
			rectangle.Location = PointToScreen(rectangle.Location);
			if (m_prevMovingRect != rectangle)
			{
				DrawSplitter(m_prevMovingRect);
				m_prevMovingRect = rectangle;
				DrawSplitter(rectangle);
			}
			SplitterMoveEventArgs args = new SplitterMoveEventArgs(location, rectangle.Location);
			OnSplitterMoving(args);
		}
	}

	private Point CorrectSplitRectLocation(Point pt)
	{
		Point result = pt;
		int num = m_panel2MinSize + SplitterWidth;
		switch (Orientation)
		{
		case Orientation.Horizontal:
			if (result.X < m_panel1MinSize)
			{
				while (result.X < Panel1MinSize)
				{
					result.X += SplitterIncrement;
				}
			}
			else if (result.X > base.Width - num)
			{
				num = base.Width - num;
				while (result.X > num)
				{
					result.X -= SplitterIncrement;
				}
			}
			break;
		case Orientation.Vertical:
			if (result.Y < m_panel1MinSize)
			{
				while (result.Y < Panel1MinSize)
				{
					result.Y += SplitterIncrement;
				}
			}
			else if (result.Y > base.Height - num)
			{
				num = base.Height - num;
				while (result.Y > num)
				{
					result.Y -= SplitterIncrement;
				}
			}
			break;
		}
		return result;
	}

	protected internal void FinishSplitterMoving(bool success)
	{
		if (m_bIsSplitterMoving && !m_bIsSplitterFixed)
		{
			PointF location = m_splitterRect.Location;
			m_splitterRect.Location = (success ? ((PointF)PointToClient(m_prevMovingRect.Location)) : m_splitterRect.Location);
			m_bIsSplitterMoving = false;
			DrawSplitter(m_prevMovingRect);
			if (Orientation == Orientation.Horizontal)
			{
				SplitterDistance = ((RightToLeft == RightToLeft.Yes) ? (base.Width - (int)m_splitterRect.Right) : ((int)m_splitterRect.X));
			}
			else
			{
				SplitterDistance = (int)m_splitterRect.Y;
			}
			if (base.DesignMode)
			{
				m_panel1.Refresh();
				m_panel2.Refresh();
			}
			InvalidateSplitter();
			SplitterMoveEventArgs args = new SplitterMoveEventArgs(location, m_splitterRect.Location);
			OnSplitterMoved(args);
			m_splitterOffset = Point.Empty;
		}
	}

	private void SetSplitterCursor()
	{
		if (m_prevCursor == null)
		{
			m_prevCursor = Cursor.Current;
		}
		switch (Orientation)
		{
		case Orientation.Horizontal:
			if (Cursor.Current != Cursors.VSplit)
			{
				Cursor.Current = Cursors.VSplit;
			}
			break;
		case Orientation.Vertical:
			if (Cursor.Current != Cursors.HSplit)
			{
				Cursor.Current = Cursors.HSplit;
			}
			break;
		}
	}

	private void ResetPreviousCursor()
	{
		if (Cursor.Current != m_prevCursor)
		{
			Cursor.Current = m_prevCursor;
		}
	}

	private void SetCursor(Point mousePos)
	{
		if (m_splitterRect.Contains(mousePos) && !IsSplitterFixed)
		{
			SetSplitterCursor();
		}
		else if (!m_bIsSplitterMoving)
		{
			ResetPreviousCursor();
		}
	}

	private void InvalidateSplitter()
	{
		Invalidate(Rectangle.Round(m_splitterRect));
	}

	private void SubscribeHost()
	{
		if (m_host != null)
		{
			m_host.Deactivate += HostDeactivate;
		}
	}

	private void UnSubscribeHost()
	{
		if (m_host != null)
		{
			m_host.Deactivate -= HostDeactivate;
		}
	}

	private void CollapsePanel(SplitPanelAdv panel, bool bCollapsed)
	{
		if (FixedPanel != Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None && CollapsedPanel == CollapsedPanel.None)
		{
			m_fixedDistance = m_splitterDistance;
		}
		if (panel != null)
		{
			SplitPanelAdv splitPanelAdv = ((panel == Panel2) ? Panel1 : Panel2);
			if (splitPanelAdv.Collapsed && bCollapsed)
			{
				splitPanelAdv.Collapsed = !bCollapsed;
			}
			panel.Collapsed = bCollapsed;
		}
		else
		{
			m_panel1.Collapsed = false;
			m_panel2.Collapsed = false;
		}
		if (FixedPanel != Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.None && CollapsedPanel == CollapsedPanel.None)
		{
			m_splitterDistance = m_fixedDistance;
		}
		m_bCalculateAfterCollapsing = true;
		RecalculatePanelsBounds();
		m_bCalculateAfterCollapsing = false;
		UpdateRendererInfo();
	}

	private void DrawSplitter(Rectangle splitterRect)
	{
		HalftonePainter.DrawRectangle(splitterRect);
	}

	private bool RecalculateCollapsedPanelsBounds()
	{
		bool result = false;
		if (Orientation == Orientation.Horizontal)
		{
			m_splitterRect.Height = base.Height;
			if (m_panel1.Collapsed)
			{
				m_splitterRect.Location = Point.Empty;
				m_panel2.Location = new Point((int)m_splitterRect.Width, 0);
				m_panel2.Width = base.Width - (int)m_splitterRect.Width;
				m_panel2.Height = base.Height;
				m_panel1.Width = 0;
				result = true;
			}
			else if (m_panel2.Collapsed)
			{
				m_splitterRect.Location = new Point((int)((float)base.Width - m_splitterRect.Width), 0);
				m_panel1.Location = Point.Empty;
				m_panel1.Width = base.Width - (int)m_splitterRect.Width;
				m_panel1.Height = base.Height;
				m_panel2.Width = 0;
				result = true;
			}
			else
			{
				m_splitterRect.Location = new Point(m_splitterDistance, 0);
			}
		}
		else
		{
			m_splitterRect.Width = base.Width;
			if (m_panel1.Collapsed)
			{
				m_splitterRect.Location = Point.Empty;
				m_panel2.Location = new Point(0, (int)m_splitterRect.Height);
				m_panel2.Width = base.Width;
				m_panel2.Height = base.Height - (int)m_splitterRect.Height;
				m_panel1.Height = 0;
				result = true;
			}
			else if (m_panel2.Collapsed)
			{
				m_splitterRect.Location = new Point(0, (int)((float)base.Height - m_splitterRect.Height));
				m_panel1.Location = Point.Empty;
				m_panel1.Width = base.Width;
				m_panel1.Height = base.Height - (int)m_splitterRect.Height;
				m_panel2.Height = 0;
				result = true;
			}
			else
			{
				m_splitterRect.Location = new Point(0, m_splitterDistance);
			}
		}
		InvalidateSplitter();
		return result;
	}

	private bool RecalculateFixedPanelsBounds()
	{
		bool result = false;
		switch (FixedPanelInternal)
		{
		case Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel1:
			if (Orientation == Orientation.Horizontal)
			{
				if (RightToLeft == RightToLeft.No)
				{
					m_panel1.Left = 0;
					m_panel1.Width = m_splitterDistance;
					m_splitterRect.X = m_panel1.Right;
					m_panel2.Left = (int)m_splitterRect.Right;
					m_panel2.Width = base.Width - m_panel2.Left;
				}
				else
				{
					m_panel1.Width = m_splitterDistance;
					m_panel1.Left = base.Width - m_splitterDistance;
					m_splitterRect.X = m_panel1.Left - SplitterWidth;
					m_panel2.Left = 0;
					m_panel2.Width = (int)m_splitterRect.Left;
				}
				SplitPanelAdv panel3 = m_panel1;
				int num5 = (m_panel2.Height = base.Height);
				panel3.Height = num5;
				if (Panel1.Width != 0)
				{
					m_ratioSplitterDistance = (double)base.Width / (double)Panel1.Width;
				}
			}
			else
			{
				m_panel2.Height = base.Height - (int)m_splitterRect.Bottom;
				m_panel2.Top = (int)m_splitterRect.Bottom;
				SplitPanelAdv panel4 = m_panel1;
				int num7 = (m_panel2.Width = base.Width);
				panel4.Width = num7;
				m_panel1.Height = (int)m_splitterRect.Top;
				if (Panel1.Height != 0)
				{
					m_ratioSplitterDistance = (double)base.Height / (double)Panel1.Height;
				}
			}
			result = true;
			break;
		case Syncfusion.Windows.Forms.Tools.Enums.FixedPanel.Panel2:
			if (Orientation == Orientation.Horizontal)
			{
				if (!m_bCalculateAfterCollapsing && !m_bCalculateAfterSplitterDistanceChange)
				{
					m_splitterRect.X = base.Width - m_panel2.Width - SplitterWidth;
					m_splitterDistance = (int)m_splitterRect.X;
				}
				m_panel1.Width = (int)m_splitterRect.X;
				m_panel2.Left = (int)m_splitterRect.Right;
				SplitPanelAdv panel = m_panel1;
				int num = (m_panel2.Height = base.Height);
				panel.Height = num;
				m_panel2.Width = base.Width - (int)m_splitterRect.Right;
				if (Panel1.Width != 0)
				{
					m_ratioSplitterDistance = (double)base.Width / (double)Panel1.Width;
				}
			}
			else
			{
				if (!m_bCalculateAfterCollapsing && !m_bCalculateAfterSplitterDistanceChange)
				{
					m_splitterRect.Y = base.Height - m_panel2.Height - SplitterWidth;
					m_splitterDistance = (int)m_splitterRect.Y;
				}
				else
				{
					m_splitterRect.Y = base.Height - fixedPanelHeight - SplitterWidth;
					m_splitterDistance = (int)m_splitterRect.Y;
				}
				m_panel1.Height = (int)m_splitterRect.Y;
				m_panel2.Top = (int)m_splitterRect.Bottom;
				SplitPanelAdv panel2 = m_panel1;
				int num3 = (m_panel2.Width = base.Width);
				panel2.Width = num3;
				m_panel2.Height = base.Height - (int)m_splitterRect.Bottom;
				if (Panel1.Height != 0)
				{
					m_ratioSplitterDistance = (double)base.Height / (double)Panel1.Height;
				}
			}
			result = true;
			break;
		}
		return result;
	}

	private void RecalculatePanelsBoundsCommon()
	{
		switch (m_orientation)
		{
		case Orientation.Horizontal:
		{
			float num7 = (float)base.Width / (float)m_prevSize.Width;
			float num8 = num7 * (float)m_splitterDistance;
			Panel1.Top = 0;
			Panel2.Top = 0;
			if (RightToLeft == RightToLeft.No)
			{
				m_splitterRect.Location = new PointF(num8, 0f);
				Panel1.Left = 0;
				Panel1.Width = (int)m_splitterRect.Left;
				Panel2.Left = (int)m_splitterRect.Right;
				Panel2.Width = base.Width - (int)m_splitterRect.Right;
			}
			else
			{
				m_splitterRect.Location = new PointF((float)base.Width - m_splitterRect.Width - num8, 0f);
				Panel1.Left = (int)m_splitterRect.Right;
				Panel1.Width = base.Width - (int)m_splitterRect.Right;
				Panel2.Left = 0;
				Panel2.Width = (int)m_splitterRect.Left;
			}
			ref RectangleF splitterRect2 = ref m_splitterRect;
			SplitPanelAdv panel2 = Panel1;
			int num9 = (Panel2.Height = base.Height);
			int num11 = (panel2.Height = num9);
			splitterRect2.Height = num11;
			break;
		}
		case Orientation.Vertical:
		{
			float num = (float)base.Height / (float)m_prevSize.Height;
			float num2 = num * m_splitterRect.Top;
			Panel1.Left = 0;
			Panel2.Left = 0;
			m_splitterRect.Location = new PointF(0f, num2);
			if (base.Parent is DockHost && RightToLeft == RightToLeft.Yes)
			{
				m_splitterRect.Location = new PointF(0f, (float)base.Height - m_splitterRect.Height - num2);
			}
			Panel1.Top = 0;
			Panel1.Height = (int)m_splitterRect.Top;
			Panel2.Top = (int)m_splitterRect.Bottom;
			Panel2.Height = base.Height - (int)m_splitterRect.Bottom;
			ref RectangleF splitterRect = ref m_splitterRect;
			SplitPanelAdv panel = Panel1;
			int num3 = (Panel2.Width = base.Width);
			int num5 = (panel.Width = num3);
			splitterRect.Width = num5;
			break;
		}
		}
	}

	private void RecalculatePanelsBounds()
	{
		bool flag = RecalculateCollapsedPanelsBounds();
		if (!flag && m_bIsSizeChanging)
		{
			flag = RecalculateFixedPanelsBounds();
			if (flag)
			{
				m_prevSize = base.Size;
			}
		}
		if (!flag)
		{
			RecalculatePanelsBoundsCommon();
		}
	}

	private void CorrectPanelsBounds()
	{
		int num = m_panel2MinSize + SplitterWidth;
		int num2 = ((Orientation == Orientation.Horizontal) ? base.Width : base.Height);
		if (m_splitterDistance < m_panel1MinSize)
		{
			m_splitterDistance = m_panel1MinSize;
		}
		else if (m_splitterDistance > num2 - m_panel2MinSize)
		{
			m_splitterDistance = num2 - num;
		}
		RecalculatePanelsBounds();
	}

	private void UpdateRendererInfo()
	{
		m_rendererInfo = m_renderer.UpdateRendererInfo(this, m_rendererInfo);
	}

	protected internal virtual void OnPanelClick(SplitPanelAdv panel)
	{
	}

	protected internal virtual void OnPanelDoubleClick(SplitPanelAdv panel)
	{
	}

	private void TogglePanel()
	{
		CollapsePanel(CollapsedPanelToSplitPanelAdv(m_panelToBeCollapsed), bCollapsed: true);
		m_bPanelToggled = true;
	}

	private void ExpandPanel()
	{
		CollapsePanel(CollapsedPanelToSplitPanelAdv(m_panelToBeCollapsed), bCollapsed: false);
		m_bPanelToggled = false;
	}

	private SplitPanelAdv CollapsedPanelToSplitPanelAdv(CollapsedPanel panel)
	{
		SplitPanelAdv result = null;
		switch (panel)
		{
		case CollapsedPanel.Panel1:
			result = Panel1;
			break;
		case CollapsedPanel.Panel2:
			result = Panel2;
			break;
		}
		return result;
	}

	private SplitPanelAdv PanelOppositeToTheCollapsedOne()
	{
		SplitPanelAdv result = null;
		switch (m_panelToBeCollapsed)
		{
		case CollapsedPanel.Panel1:
			result = Panel2;
			break;
		case CollapsedPanel.Panel2:
			result = Panel1;
			break;
		}
		return result;
	}

	private void ResetBackgroundColor()
	{
		BrushInfo bgBrush = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.BackgroundColor);
			if (defaultValue is BrushInfo)
			{
				bgBrush = (BrushInfo)defaultValue;
			}
		}
		m_bgBrush = bgBrush;
		Invalidate();
	}

	protected bool ShouldSerializeBackgroundColor()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.BackgroundColor, m_bgBrush);
	}

	private void ResetHotBackgroundColor()
	{
		BrushInfo bgHotBrush = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.HotBackgroundColor);
			if (defaultValue is BrushInfo)
			{
				bgHotBrush = (BrushInfo)defaultValue;
			}
		}
		m_bgHotBrush = bgHotBrush;
		Invalidate();
	}

	protected bool ShouldSerializeHotBackgroundColor()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.HotBackgroundColor, m_bgHotBrush);
	}

	private void ResetExpandFill()
	{
		BrushInfo brushExpandFill = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.ExpandFill);
			if (defaultValue is BrushInfo)
			{
				brushExpandFill = (BrushInfo)defaultValue;
			}
		}
		m_brushExpandFill = brushExpandFill;
		Invalidate();
	}

	protected bool ShouldSerializeExpandFill()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.ExpandFill, m_brushExpandFill);
	}

	private void ResetExpandLine()
	{
		Color colorExpandLine = Color.Transparent;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.ExpandLine);
			if (defaultValue is Color)
			{
				colorExpandLine = (Color)defaultValue;
			}
		}
		m_colorExpandLine = colorExpandLine;
		Invalidate();
	}

	protected bool ShouldSerializeExpandLine()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.ExpandLine, m_colorExpandLine);
	}

	private void ResetGripDark()
	{
		BrushInfo brushGripDark = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.GripDark);
			if (defaultValue is BrushInfo)
			{
				brushGripDark = (BrushInfo)defaultValue;
			}
		}
		m_brushGripDark = brushGripDark;
		Invalidate();
	}

	protected bool ShouldSerializeGripDark()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.GripDark, m_brushGripDark);
	}

	private void ResetGripLight()
	{
		BrushInfo brushGripLight = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.GripLight);
			if (defaultValue is BrushInfo)
			{
				brushGripLight = (BrushInfo)defaultValue;
			}
		}
		m_brushGripLight = brushGripLight;
		Invalidate();
	}

	protected bool ShouldSerializeGripLight()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.GripLight, m_brushGripLight);
	}

	private void ResetHotExpandFill()
	{
		BrushInfo brushHotExpandFill = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.HotExpandFill);
			if (defaultValue is BrushInfo)
			{
				brushHotExpandFill = (BrushInfo)defaultValue;
			}
		}
		m_brushHotExpandFill = brushHotExpandFill;
		Invalidate();
	}

	protected bool ShouldSerializeHotExpandFill()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.HotExpandFill, m_brushHotExpandFill);
	}

	private void ResetHotExpandLine()
	{
		Color colorHotExpandLine = Color.Transparent;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.HotExpandLine);
			if (defaultValue is Color)
			{
				colorHotExpandLine = (Color)defaultValue;
			}
		}
		m_colorHotExpandLine = colorHotExpandLine;
		Invalidate();
	}

	protected bool ShouldSerializeHotExpandLine()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.HotExpandLine, m_colorExpandLine);
	}

	private void ResetHotGripDark()
	{
		BrushInfo brushHotGripDark = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.HotGripDark);
			if (defaultValue is BrushInfo)
			{
				brushHotGripDark = (BrushInfo)defaultValue;
			}
		}
		m_brushHotGripDark = brushHotGripDark;
		Invalidate();
	}

	protected bool ShouldSerializeHotGripDark()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.HotGripDark, m_brushHotGripDark);
	}

	private void ResetHotGripLight()
	{
		BrushInfo brushHotGripLight = BrushInfo.Empty;
		if (m_renderer != null)
		{
			object defaultValue = m_renderer.GetDefaultValue(RendererProperty.HotGripLight);
			if (defaultValue is BrushInfo)
			{
				brushHotGripLight = (BrushInfo)defaultValue;
			}
		}
		m_brushHotGripLight = brushHotGripLight;
		Invalidate();
	}

	protected bool ShouldSerializeHotGripLight()
	{
		if (m_renderer == null)
		{
			return true;
		}
		return !m_renderer.CompareWithDefaultValue(RendererProperty.HotGripLight, m_brushHotGripLight);
	}

	private void OnStyleChanged()
	{
		m_renderer = Renderer.GetRenderer(m_eStyle);
		m_rendererInfo = m_renderer.GetAppropriateThemeSettings(this, m_bIsInitializing);
		if (Panel1 != null && Panel2 != null)
		{
			ChangePanelsBackground();
		}
	}

	private void ChangePanelsBackground()
	{
		Style style = Style;
		Color[] array = new Color[1] { Color.Empty };
		BrushInfo backgroundColor = BrushInfo.Empty;
		switch (style)
		{
		case Style.VS2005:
		case Style.Mozilla:
		case Style.Default:
			backgroundColor = new BrushInfo(Color.FromArgb(128, 128, 128));
			break;
		case Style.Office2003:
		case Style.OfficeXP:
			array = new Color[2]
			{
				Color.FromArgb(198, 214, 233),
				Color.FromArgb(180, 194, 235)
			};
			backgroundColor = new BrushInfo(GradientStyle.Vertical, array);
			break;
		case Style.Office2007Black:
			array = new Color[2]
			{
				Color.FromArgb(146, 146, 146),
				Color.FromArgb(83, 83, 83)
			};
			backgroundColor = new BrushInfo(GradientStyle.Vertical, array);
			break;
		case Style.Office2007Blue:
			array = new Color[2]
			{
				Color.FromArgb(231, 242, 255),
				Color.FromArgb(179, 209, 252)
			};
			backgroundColor = new BrushInfo(GradientStyle.Vertical, array);
			break;
		case Style.Office2007Silver:
			array = new Color[2]
			{
				Color.FromArgb(223, 227, 231),
				Color.FromArgb(190, 194, 203)
			};
			backgroundColor = new BrushInfo(GradientStyle.Vertical, array);
			break;
		}
		Panel1.BackgroundColor = backgroundColor;
		Panel2.BackgroundColor = backgroundColor;
	}

	private void OnParentChanged(object sender, EventArgs e)
	{
		UnSubscribeHost();
		m_host = FindForm();
		SubscribeHost();
	}

	private void HostDeactivate(object sender, EventArgs e)
	{
		FinishSplitterMoving(success: false);
	}

	private void RaiseOrientationChanged()
	{
		if (this.OrientationChanged != null)
		{
			this.OrientationChanged(this, EventArgs.Empty);
		}
	}

	public bool PreFilterMessage(ref Message m)
	{
		return false;
	}

	private void UnselectComponents()
	{
		if (base.DesignMode)
		{
			ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
			if (selectionService != null && selectionService.PrimarySelection == this)
			{
				m_prevSelectedComponents = selectionService.GetSelectedComponents();
				selectionService.SetSelectedComponents(new Control[0]);
			}
		}
	}

	private void RestoreSelectedComponents()
	{
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		bool flag;
		if (selectionService != null && !(flag = selectionService.PrimarySelection == this))
		{
			selectionService.SetSelectedComponents(m_prevSelectedComponents);
		}
	}

	private bool IsContainerSelected()
	{
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		return selectionService != null && selectionService.PrimarySelection == this;
	}

	public bool MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
	{
		bool result = false;
		if (base.DesignMode)
		{
			Point point2 = PointToClient(point);
			switch (msg)
			{
			case 513:
				if (m_splitterRect.Contains(point2) && IsContainerSelected())
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetCapture(hwnd);
					StartSplitterMoving(point2);
					result = true;
				}
				break;
			case 512:
				if (m_bIsSplitterMoving)
				{
					MoveSplitterTo(point2);
					result = true;
				}
				break;
			case 514:
				if (m_bIsSplitterMoving)
				{
					FinishSplitterMoving(success: true);
					Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseCapture();
					result = true;
				}
				break;
			}
		}
		return result;
	}

	public virtual void BeginInit()
	{
		m_bIsInitializing = true;
		Panel1.SuspendLayout();
		Panel2.SuspendLayout();
	}

	public virtual void EndInit()
	{
		m_bIsInitializing = false;
		Panel1.ResumeLayout(performLayout: false);
		Panel2.ResumeLayout(performLayout: false);
		CorrectPanelsBounds();
	}
}
