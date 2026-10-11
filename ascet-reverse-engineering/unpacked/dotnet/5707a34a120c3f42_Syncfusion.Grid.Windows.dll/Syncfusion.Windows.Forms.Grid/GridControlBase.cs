#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridControlBase : ScrollControl, IThemedControl, ICreateNewWindow, IGridModelSource, IGridWindowlessSite, IGridWindowlessObject, IFindParentForm
{
	internal delegate void CancelMouseDelegate(CancelMouseEventArgs e);

	private const int Grid_NXYFACTOR = 1000;

	private const int Grid_NXAVGWIDTH = 1000;

	private const int Grid_NYHEIGHT = 1000;

	private const int WM_GETDLGCODE = 135;

	internal const int WM_UPDATEUISTATE = 296;

	private GridModel model;

	private Rectangle bounds = Rectangle.Empty;

	private bool inPrinting;

	private bool themesEnabled;

	private bool handleWMSYSCHAR;

	private string backgroundImageID = string.Empty;

	internal Rectangle printBounds = Rectangle.Empty;

	internal GridCurrentCellMoveDelegateHandler externalMove;

	private static bool useOldHiddenScrollLogic;

	private static bool allowViewStyleCacheBaseStyleValues;

	private static bool useImageListDrawing;

	private bool allowTextBoxAutoSize = true;

	private static bool useGdiPlusRightAlignedTextWorkaround;

	private bool optimizeDrawBackground = true;

	private IGridControlBaseEventsTarget eventsTarget;

	private int _hScrollPixelDelta;

	internal bool hPixelScroll;

	internal int currentHScrollPixelPosSaved = -1;

	internal int hScrollPixelWidthSaved = -1;

	private int _vScrollPixelDelta;

	internal bool vPixelScroll;

	internal int currentVScrollPixelPosSaved = -1;

	internal int vScrollPixelHeightSaved = -1;

	private GridRangeInfo _updateSelectRange_Range;

	private GridRangeInfoList _updateSelectRange_OldRange;

	private bool initialized;

	private ArrayList subComponents = new ArrayList();

	private IGridOleDragDropEventsTarget oleDragDropEventsTarget;

	internal IGridDrawSelectionFrame excelLikeFrameSelections;

	private GridPaint m_gridPaint;

	internal bool m_bDrawBannerCell;

	internal bool m_bForceDrawBackground;

	internal bool m_bDrawCoveredCell;

	[DocumentationExclude]
	protected internal bool m_bInvertRect;

	[DocumentationExclude]
	protected bool firstPaint = true;

	internal bool inOnPaint;

	public bool SupportsPrepareViewStyleInfo = true;

	private bool showDisabledGridAsGray;

	private ScrollersFrame scrollersFrame1 = new ScrollersFrame();

	private bool allowDrawItemRaiseExceptionCatched;

	private Rectangle saveRect = Rectangle.Empty;

	private bool ccHidden;

	private bool staticDrawing;

	private Control renderControl;

	internal IDynamicSplitterFrame splitterControl;

	internal IGridDropDownContainer popupParent;

	private bool m_bHitTestSelEdge;

	internal bool m_bInitDone = true;

	private GridPrintInfo printInfo;

	internal int m_dxWidth = 8;

	internal int m_dyHeight = 13;

	private bool isMouseDownCalled;

	internal bool validatingFailed;

	private bool ignoreNextValidating;

	private int m_nSplitRow;

	private int m_nSplitCol;

	private int wmGetDlgCodeValue = -1;

	private GridCurrentCellActivatingEventArgs delayCurrentCellActivateArgs;

	private bool forceCurrentCellMoveTo = true;

	private GridCurrentCell gridCurrentCell;

	private int m_nRepeatKeyCounter;

	private bool wantKeys = true;

	private bool focusOnMouseDown = true;

	private bool wantsTabKey = true;

	private bool wantsEnterKey = true;

	private bool tabKeyNavigationInPreProcessMessage;

	private bool wantsEscapeKey = true;

	private bool allowSelectNextControlinProcessDialogKey = true;

	private GridCellRendererCollection cellRenderers;

	private Rectangle invalidRect;

	private GridViewLayout viewLayout;

	[DocumentationExclude]
	protected internal ScrollBars recalcScrollBars;

	private bool inBeforePaint;

	internal bool displayHeaderCol = true;

	internal bool displayHeaderRow = true;

	internal bool inImeComposition;

	private bool allowForwardCurrentCellControlKeyMessages = true;

	private PaintEventHandler customPaintDelegate;

	private Rectangle customPaintRectangle = Rectangle.Empty;

	private bool isWindowless;

	private IGridWindowlessSite parentSite;

	private bool activateCCafterRangeOp;

	private bool optimizeInsertRemoveCells;

	private int ignoreInvalidate;

	private bool ignoreCurrentCellInvalidate;

	private bool traceInvalidate;

	private GridScroll gridScroll;

	private GridOutlineCurrentCellHeader outlineCurrentCellHeader;

	private int savedLeftColIndex;

	private int savedTopRowIndex;

	private bool ignoreMouseUp;

	private bool allowFixFocusWhenCurrentCellIsEditingInMouseUp = true;

	private bool cancelMode;

	private Graphics m_cachedGraphics;

	private int tc_yPos;

	private int tc_xPos;

	private Rectangle tc_bounds;

	public static bool AllowViewStyleCacheBaseStyleValues
	{
		get
		{
			return allowViewStyleCacheBaseStyleValues;
		}
		set
		{
			allowViewStyleCacheBaseStyleValues = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[XmlIgnore]
	public static bool UseOldHiddenScrollLogic
	{
		get
		{
			return useOldHiddenScrollLogic;
		}
		set
		{
			useOldHiddenScrollLogic = value;
		}
	}

	[XmlIgnore]
	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public static bool UseImageListDrawing
	{
		get
		{
			return useImageListDrawing;
		}
		set
		{
			useImageListDrawing = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[XmlIgnore]
	[Browsable(false)]
	[DocumentationExclude]
	public GridCurrentCellMoveDelegateHandler ExternalMove
	{
		get
		{
			return externalMove;
		}
		set
		{
			externalMove = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public bool AllowTextBoxAutoSize
	{
		get
		{
			return allowTextBoxAutoSize;
		}
		set
		{
			allowTextBoxAutoSize = value;
		}
	}

	[Description("Enables built-in optimization that allows grid to combine background drawing for cells that have the same background.")]
	[Category("Grid")]
	[DefaultValue(true)]
	public bool OptimizeDrawBackground
	{
		get
		{
			return optimizeDrawBackground;
		}
		set
		{
			optimizeDrawBackground = value;
		}
	}

	public static bool UseGdiPlusRightAlignedTextWorkaround
	{
		get
		{
			return useGdiPlusRightAlignedTextWorkaround;
		}
		set
		{
			useGdiPlusRightAlignedTextWorkaround = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public IGridControlBaseEventsTarget GridControlBaseEventsTarget
	{
		get
		{
			return eventsTarget;
		}
		set
		{
			eventsTarget = value;
		}
	}

	[Category("Scrolling")]
	[DefaultValue(false)]
	[Browsable(true)]
	[Description("Defines whether the horizontal pixel scrolling is enabled.")]
	public bool HScrollPixel
	{
		get
		{
			return hPixelScroll;
		}
		set
		{
			if (hPixelScroll != value)
			{
				hPixelScroll = value;
				hScrollPixelDelta = 0;
				Invalidate();
				UpdateScrollBars();
			}
		}
	}

	internal int hScrollPixelDelta
	{
		get
		{
			if (!PrintingMode)
			{
				return _hScrollPixelDelta;
			}
			return 0;
		}
		set
		{
			_hScrollPixelDelta = value;
		}
	}

	[DefaultValue(false)]
	[Category("Scrolling")]
	[Browsable(true)]
	[Description("Defines whether the vertical pixel scrolling is enabled.")]
	public bool VScrollPixel
	{
		get
		{
			return vPixelScroll;
		}
		set
		{
			if (vPixelScroll != value)
			{
				vPixelScroll = value;
				vScrollPixelDelta = 0;
				Invalidate();
				UpdateScrollBars();
			}
		}
	}

	internal int vScrollPixelDelta
	{
		get
		{
			if (!PrintingMode)
			{
				return _vScrollPixelDelta;
			}
			return 0;
		}
		set
		{
			_vScrollPixelDelta = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Rectangle PrintBounds
	{
		get
		{
			return printBounds;
		}
		set
		{
			printBounds = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public GridRangeInfo UpdateSelectRange_Range
	{
		get
		{
			return _updateSelectRange_Range;
		}
		set
		{
			_updateSelectRange_Range = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	public GridRangeInfoList UpdateSelectRange_OldRange
	{
		get
		{
			return _updateSelectRange_OldRange;
		}
		set
		{
			_updateSelectRange_OldRange = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public GridModel Model
	{
		get
		{
			if (model == null)
			{
				if (base.IsDisposed || base.IsSplitterPaneClosing)
				{
					model = null;
				}
				else
				{
					model = new GridModel();
				}
			}
			return model;
		}
		set
		{
			if (model != value)
			{
				if (model != null)
				{
					UnwireModel();
				}
				model = value;
				if (model != null)
				{
					WireModel();
				}
				OnModelChanged(EventArgs.Empty);
			}
		}
	}

	public override Cursor Cursor
	{
		get
		{
			return base.Cursor;
		}
		set
		{
			base.Cursor = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool VScroll
	{
		get
		{
			return base.VScroll;
		}
		set
		{
			base.VScroll = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool HScroll
	{
		get
		{
			return base.HScroll;
		}
		set
		{
			base.HScroll = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Rectangle GridBounds
	{
		get
		{
			if (PrintingMode)
			{
				return printBounds;
			}
			if (bounds.IsEmpty)
			{
				return base.ClientRectangle;
			}
			return bounds;
		}
		set
		{
			if (bounds != value)
			{
				bounds = value;
				ViewLayout.Reset();
				_ = ViewLayout.LastVisibleRow;
				Model.FloatingCells.EvaluateFloatingCells(ViewLayout.VisibleCellsRange);
				Model.MergeCells.EvaluateMergeCells(ViewLayout.VisibleCellsRange);
				OnGridBoundsChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HandleWMSYSCHAR
	{
		get
		{
			return handleWMSYSCHAR;
		}
		set
		{
			if (handleWMSYSCHAR != value)
			{
				handleWMSYSCHAR = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasGridBounds => !bounds.IsEmpty;

	protected override Size DefaultSize => new Size(130, 80);

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool PrintingMode
	{
		get
		{
			if (IsWindowless)
			{
				return GetGridWindow().PrintingMode;
			}
			return inPrinting;
		}
		set
		{
			if (inPrinting != value)
			{
				inPrinting = value;
				Model.Properties.Printing = value;
				OnPrintingModeChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Scrolling")]
	[Description("Defines the scroll behavior for horizontal scrolling.")]
	[Browsable(true)]
	public GridScrollbarMode HScrollBehavior
	{
		get
		{
			return ScrollGrid.hScrollSetting;
		}
		set
		{
			ScrollGrid.hScrollSetting = value;
		}
	}

	[Description("Defines the scroll behavior for vertical scrolling.")]
	[Category("Scrolling")]
	[Browsable(true)]
	public GridScrollbarMode VScrollBehavior
	{
		get
		{
			return ScrollGrid.vScrollSetting;
		}
		set
		{
			ScrollGrid.vScrollSetting = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Specifies whether XP Themes should be used for this control when available.")]
	public bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled != value)
			{
				themesEnabled = value;
				OnThemeChanged(EventArgs.Empty);
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Toggle between standard and Office2007 scrollbars.")]
	[DefaultValue(false)]
	public override bool Office2007ScrollBars
	{
		get
		{
			return base.Office2007ScrollBars;
		}
		set
		{
			base.Office2007ScrollBars = value;
			Model.Options.Office2007ScrollBars = value;
		}
	}

	[DefaultValue(Office2007ColorScheme.Blue)]
	[Description("Office 2007 style scrollbars.")]
	[Category("Appearance")]
	[Browsable(true)]
	public override Office2007ColorScheme Office2007ScrollBarsColorScheme
	{
		get
		{
			return base.Office2007ScrollBarsColorScheme;
		}
		set
		{
			base.Office2007ScrollBarsColorScheme = value;
			Model.Options.Office2007ScrollBarsColorScheme = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool SupportsTransparentBackColor
	{
		get
		{
			return GetStyle(ControlStyles.SupportsTransparentBackColor);
		}
		set
		{
			if (SupportsTransparentBackColor == value)
			{
				return;
			}
			SetStyle(ControlStyles.SupportsTransparentBackColor, value);
			foreach (Control control in base.Controls)
			{
				MakeTransparent(control, SupportsTransparentBackColor);
			}
			OnSupportsTransparentBackColorChanged(EventArgs.Empty);
		}
	}

	[NotifyParentProperty(true)]
	[DefaultValue("")]
	[Category("Image")]
	[Browsable(false)]
	[Description("Gets / sets the namespace id for the image to be displayed.")]
	public string BackgroundImageID
	{
		get
		{
			return backgroundImageID;
		}
		set
		{
			backgroundImageID = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasBackgroundImageID => backgroundImageID != string.Empty;

	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Description("Specifies if the control should scroll while the user is dragging a vertical scrollbar thumb.")]
	[Category("Scrolling")]
	[Browsable(true)]
	[DefaultValue(false)]
	public override bool VerticalThumbTrack
	{
		get
		{
			return base.VerticalThumbTrack;
		}
		set
		{
			base.VerticalThumbTrack = value;
			Model.Options.VerticalThumbTrack = value;
		}
	}

	[Browsable(true)]
	[Category("Scrolling")]
	[DefaultValue(false)]
	[Description("Specifies if the control should scroll while the user is dragging a horizontal scrollbar thumb.")]
	public override bool HorizontalThumbTrack
	{
		get
		{
			return base.HorizontalThumbTrack;
		}
		set
		{
			base.HorizontalThumbTrack = value;
			Model.Options.HorizontalThumbTrack = value;
		}
	}

	[Browsable(true)]
	[Description("Specifies if the control should show Scroll Tips while the user is dragging a vertical scrollbar thumb.")]
	[Category("Scrolling")]
	[DefaultValue(false)]
	public override bool VerticalScrollTips
	{
		get
		{
			return base.VerticalScrollTips;
		}
		set
		{
			base.VerticalScrollTips = value;
			Model.Options.VerticalScrollTips = value;
		}
	}

	[Description("Specifies if the control should show Scroll Tips while the user is dragging a horizontal scrollbar thumb.")]
	[DefaultValue(false)]
	[Category("Scrolling")]
	[Browsable(true)]
	public override bool HorizontalScrollTips
	{
		get
		{
			return base.HorizontalScrollTips;
		}
		set
		{
			base.HorizontalScrollTips = value;
			Model.Options.HorizontalScrollTips = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public IGridOleDragDropEventsTarget OleDragDropEventsTarget
	{
		get
		{
			return oleDragDropEventsTarget;
		}
		set
		{
			oleDragDropEventsTarget = value;
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IGridDrawSelectionFrame ExcelLikeFrameSelections
	{
		get
		{
			return excelLikeFrameSelections;
		}
		set
		{
			excelLikeFrameSelections = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridModelSelections Selections => Model.Selections;

	[Browsable(true)]
	[Description("Show disabled grid as gray.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool ShowDisabledGridAsGray
	{
		get
		{
			return showDisabledGridAsGray;
		}
		set
		{
			showDisabledGridAsGray = value;
			scrollersFrame1.SizeGripperVisibility = SizeGripperVisibility.Hidden;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool AllowDrawItemRaiseExceptionCatched
	{
		get
		{
			return allowDrawItemRaiseExceptionCatched;
		}
		set
		{
			allowDrawItemRaiseExceptionCatched = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsDrawing => m_gridPaint.m_nNestedDraw > 0;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public IGridDropDownContainer DropDownContainerParent
	{
		get
		{
			return popupParent;
		}
		set
		{
			popupParent = value;
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HitTestSelectionEdge
	{
		get
		{
			return m_bHitTestSelEdge;
		}
		set
		{
			m_bHitTestSelEdge = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	public GridPrintInfo PrintInfo
	{
		get
		{
			if (printInfo == null)
			{
				printInfo = new GridPrintInfo();
			}
			return printInfo;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsInLeaveOrValidate => IsValidating;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int SplitRow => m_nSplitRow;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int SplitCol => m_nSplitCol;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool ForceCurrentCellMoveTo
	{
		get
		{
			return forceCurrentCellMoveTo;
		}
		set
		{
			forceCurrentCellMoveTo = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual GridCurrentCell CurrentCell
	{
		get
		{
			if (gridCurrentCell == null)
			{
				gridCurrentCell = new GridCurrentCell(this);
			}
			return gridCurrentCell;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	private int RepeatKeyCounter
	{
		get
		{
			return m_nRepeatKeyCounter;
		}
		set
		{
			m_nRepeatKeyCounter = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	private int ArrowKeyLineCount
	{
		get
		{
			if (!AllowIncreaseSmallChange || base.HasDoubleBufferSurface)
			{
				return 1;
			}
			return Math.Max(1, Math.Min(4, m_nRepeatKeyCounter / 25));
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool WantKeys
	{
		get
		{
			return wantKeys;
		}
		set
		{
			wantKeys = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool FocusOnMouseDown
	{
		get
		{
			return focusOnMouseDown;
		}
		set
		{
			focusOnMouseDown = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(true)]
	[Browsable(false)]
	public virtual bool WantTabKey
	{
		get
		{
			return wantsTabKey;
		}
		set
		{
			wantsTabKey = value;
		}
	}

	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool WantTabKeyInPreProcessMessage
	{
		get
		{
			return tabKeyNavigationInPreProcessMessage;
		}
		set
		{
			tabKeyNavigationInPreProcessMessage = value;
		}
	}

	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool WantEnterKey
	{
		get
		{
			return wantsEnterKey;
		}
		set
		{
			wantsEnterKey = value;
		}
	}

	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool WantEscapeKey
	{
		get
		{
			return wantsEscapeKey;
		}
		set
		{
			wantsEscapeKey = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool AllowSelectNextControlinProcessDialogKey
	{
		get
		{
			return allowSelectNextControlinProcessDialogKey;
		}
		set
		{
			allowSelectNextControlinProcessDialogKey = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public GridCellRendererCollection CellRenderers
	{
		get
		{
			if (cellRenderers == null)
			{
				cellRenderers = new GridCellRendererCollection(this);
			}
			return cellRenderers;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Rectangle InvalidBounds
	{
		get
		{
			if (!base.Updating)
			{
				return Rectangle.Empty;
			}
			return invalidRect;
		}
		set
		{
			invalidRect = value;
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual IGridPaintSelectCells PaintSelectCells => null;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridViewLayout ViewLayout
	{
		get
		{
			if (viewLayout == null)
			{
				viewLayout = new GridViewLayout(this);
				subComponents.Add(viewLayout);
			}
			return viewLayout;
		}
	}

	[DefaultValue(17)]
	[Category("Grid Contents")]
	[Description("The default height used for grid rows.")]
	public int DefaultRowHeight
	{
		get
		{
			return Model.Rows.DefaultSize;
		}
		set
		{
			Model.Rows.DefaultSize = value;
		}
	}

	[Description("The default width used for grid columns.")]
	[Category("Grid Contents")]
	[DefaultValue(65)]
	public int DefaultColWidth
	{
		get
		{
			return Model.Cols.DefaultSize;
		}
		set
		{
			Model.Cols.DefaultSize = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool InImeComposition => inImeComposition;

	[XmlIgnore]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool InUpdateWithCustomPaint => customPaintDelegate != null;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsWindowless
	{
		get
		{
			return isWindowless;
		}
		set
		{
			isWindowless = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public IGridWindowlessSite ParentSite
	{
		get
		{
			return parentSite;
		}
		set
		{
			parentSite = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool GridCapture
	{
		get
		{
			return GetWindow().Capture;
		}
		set
		{
			GetWindow().Capture = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool Capture
	{
		get
		{
			return GetWindow().Capture;
		}
		set
		{
			GetWindow().Capture = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool IsMousePressed
	{
		get
		{
			return ((ScrollControl)GetWindow()).IsMousePressed;
		}
		set
		{
			((ScrollControl)GetWindow()).IsMousePressed = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool IsValidating => ((ScrollControl)GetWindow()).IsValidating;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool IsValidated => ((ScrollControl)GetWindow()).IsValidated;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool IsActiveControl => ((ScrollControl)GetWindow()).IsActiveControl;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool IsDeactivated => ((ScrollControl)GetWindow()).IsDeactivated;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool HasControlFocus => ((ScrollControl)GetWindow()).HasControlFocus;

	[Description("Enables optimization for inserting and removing cells by scrolling window contents and only invalidating new cells.")]
	[DefaultValue(false)]
	[Category("Grid")]
	public virtual bool OptimizeInsertRemoveCells
	{
		get
		{
			return optimizeInsertRemoveCells;
		}
		set
		{
			optimizeInsertRemoveCells = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IgnoreCurrentCellInvalidate
	{
		get
		{
			return ignoreCurrentCellInvalidate;
		}
		set
		{
			ignoreCurrentCellInvalidate = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	internal GridScroll ScrollGrid
	{
		get
		{
			if (gridScroll == null)
			{
				gridScroll = new GridScroll(this);
			}
			return gridScroll;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	internal GridOutlineCurrentCellHeader OutlineCurrentCellHeaderManager => outlineCurrentCellHeader;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int TopRowIndex
	{
		get
		{
			if (PrintingMode)
			{
				return PrintInfo.m_nPrintTopRow;
			}
			return ScrollGrid.m_nTopRow;
		}
		set
		{
			SetTopRow(value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int LeftColIndex
	{
		get
		{
			if (PrintingMode)
			{
				return PrintInfo.m_nPrintLeftCol;
			}
			return ScrollGrid.m_nLeftCol;
		}
		set
		{
			SetLeftCol(value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridRangeInfo GridCellsRange => GridRangeInfo.Cells(InternalGetHeaderRows() + 1, InternalGetHeaderCols() + 1, Model.RowCount, Model.ColCount);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridRangeInfo ScrollableGridRangeInfo => GridRangeInfo.Cells(GetFirstScrollableRow(), GetFirstScrollableCol(), Model.RowCount, Model.ColCount);

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override string PaneDesc
	{
		get
		{
			string text = base.PaneDesc;
			if (isMouseDownCalled)
			{
				text += "Mod";
			}
			if (PrintingMode)
			{
				text += "Prn";
			}
			if (validatingFailed)
			{
				text += "Vfa";
			}
			return text + " " + CurrentCell.ToString();
		}
	}

	[Browsable(false)]
	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override int VScrollIncrement
	{
		get
		{
			if (VScrollPixel)
			{
				return Model.Rows.DefaultSize;
			}
			return base.VScrollIncrement;
		}
		set
		{
			base.VScrollIncrement = value;
		}
	}

	[Browsable(false)]
	[XmlIgnore]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override int HScrollIncrement
	{
		get
		{
			if (HScrollPixel)
			{
				return 20;
			}
			return base.HScrollIncrement;
		}
		set
		{
			base.HScrollIncrement = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool Focused => GetWindow().Focused;

	[DefaultValue(true)]
	[Browsable(false)]
	public bool AllowFixFocusWhenCurrentCellIsEditingInMouseUp
	{
		get
		{
			return allowFixFocusWhenCurrentCellIsEditingInMouseUp;
		}
		set
		{
			allowFixFocusWhenCurrentCellIsEditingInMouseUp = value;
		}
	}

	GridModel IGridModelSource.Model => Model;

	[DocumentationExclude]
	[Browsable(false)]
	public event GridQueryCreateCellTextBoxEventHandler QueryCreateCellTextBox;

	[Browsable(false)]
	public event GridFillRectangleHookEventHandler FillRectangleHook;

	[Category("Scrolling")]
	[Description("Occurs after the horizontal pixel scroll position was changed.")]
	public event GridScrollPositionChangedEventHandler HScrollPixelPosChanged;

	[Category("Scrolling")]
	[Description("Occurs after the horizontal pixel scroll position was changed.")]
	public event GridScrollPositionChangedEventHandler VScrollPixelPosChanged;

	[Description("Occurs before the vertical pixel scroll position is changed.")]
	[Category("Scrolling")]
	public event GridScrollPositionChangingEventHandler VScrollPixelPosChanging;

	[Description("Occurs before the horizontal pixel scroll position is changed.")]
	[Category("Scrolling")]
	public event GridScrollPositionChangingEventHandler HScrollPixelPosChanging;

	[Category("Behavior")]
	[Description("Occurs when the ThemesEnabled property is changed.")]
	public event EventHandler ThemeChanged;

	[Category("Behavior")]
	[Description("Occurs when the model is replaced.")]
	public event EventHandler ModelChanged;

	[Description("Occurs when the GridBounds property has been changed.")]
	[Category("Property Changed")]
	public event EventHandler GridBoundsChanged;

	[Description("Occurs for every cell that is about be redrawn.")]
	[Category("Behavior")]
	public event EventHandler PrintingModeChanged;

	[Description("Occurs when the SupportsTransparentBackColor property has been changed.")]
	[Category("Appearance")]
	public event EventHandler SupportsTransparentBackColorChanged;

	[Category("Behavior")]
	[Description("Occurs when the user is about to drag or is in the process of dragging a selected range of columns or rows.")]
	public event GridSelectionDragEventHandler SelectionDragged;

	[Description("Occurs when the user is in the process of dragging a selected range of columns or rows.")]
	[Category("Behavior")]
	public event GridSelectionDragEventHandler SelectionDragging;

	[Description("Occurs when the user is resizing a selected range of columns.")]
	[Category("Behavior")]
	public event GridResizingColumnsEventHandler ResizingColumns;

	[Description("Occurs when the user is resizing a selected range of rows.")]
	[Category("Behavior")]
	public event GridResizingRowsEventHandler ResizingRows;

	[Category("Drag Drop")]
	[Description("Occurs when the user hovers the mouse over the edge of a selected range.")]
	public event GridQueryCanOleDragRangeEventHandler QueryCanOleDragRange;

	[Browsable(false)]
	public event GraphicsEventHandler SelectionFrameChanging;

	[Browsable(false)]
	public event GraphicsEventHandler SelectionFrameChanged;

	[Description("Occurs for every cell that is about be redrawn.")]
	[Category("Behavior")]
	public event GridPrepareViewStyleInfoEventHandler PrepareViewStyleInfo;

	[Category("Behavior")]
	[Description("Occurs for every cell that is being drawn.")]
	public event GridDrawCellEventHandler DrawCell;

	[Description("Occurs for every cell that is being drawn.")]
	[Category("Behavior")]
	public event GridDrawCellDisplayTextEventHandler DrawCellDisplayText;

	[Category("Behavior")]
	[Description("Occurs for every cell that is being drawn.")]
	public event GridDrawCellBackgroundEventHandler DrawCellBackground;

	[Description("Occurs for every cell that is being drawn before the grid draws the frame (sunken or raised).")]
	[Category("Behavior")]
	public event GridDrawCellBackgroundEventHandler DrawCellFrameAppearance;

	[Category("Behavior")]
	[Description("Occurs for every cell that is being drawn.")]
	public event GridDrawCellButtonEventHandler DrawCellButton;

	[Category("Behavior")]
	[Description("Occurs for every cell that is being drawn.")]
	public event GridDrawCellButtonBackgroundEventHandler DrawCellButtonBackground;

	[Category("Behavior")]
	[Description("Occurs for every cell that is being drawn.")]
	public event GridDrawCellEventHandler CellDrawn;

	[Description("Occurs when the grid draws a border around the current cell.")]
	[Category("Behavior")]
	public event GridDrawCurrentCellBorderEventHandler DrawCurrentCellBorder;

	[Description("Occurs before the grid is about to be left because the user is at the top-left or bottom-right cell and about to tab out of the grid.")]
	[Category("Behavior")]
	public event GridWrapCellNextControlInFormEventHandler WrapCellNextControlInForm;

	[Category("Behavior")]
	[Description("Occurs when the current cell is initialized with text to be displayed in the associated control.")]
	public event GridCurrentCellInitializeControlTextEventHandler CurrentCellInitializeControlText;

	[Category("Behavior")]
	[Description("Occurs when the current cell validation fails.")]
	public event GridCurrentCellErrorMessageEventHandler CurrentCellErrorMessage;

	[Description("Occurs when the user has clicked on a child button element inside a cell renderer.")]
	[Category("Behavior")]
	public event GridCellButtonClickedEventHandler CellButtonClicked;

	[Description("Occurs when the current cell is about to be moved to a new position.")]
	[Category("Behavior")]
	public event GridCurrentCellMovingEventHandler CurrentCellMoving;

	[Description("Occurs when the current cell has been successfully moved to a new position.")]
	[Category("Behavior")]
	public event GridCurrentCellMovedEventHandler CurrentCellMoved;

	[Description("Occurs when the current cell fails to be moved to a new position.")]
	[Category("Behavior")]
	public event GridCurrentCellMoveFailedEventHandler CurrentCellMoveFailed;

	[Category("Behavior")]
	[Description("Occurs before the grid activates the specified cell as current cell.")]
	public event GridCurrentCellActivatingEventHandler CurrentCellActivating;

	[Category("Behavior")]
	[Description("Occurs after the grid activates the specified cell as current cell.")]
	public event EventHandler CurrentCellActivated;

	[Category("Behavior")]
	[Description("Occurs after the grid fails to activate a specific cell as current cell.")]
	public event GridCurrentCellActivateFailedEventHandler CurrentCellActivateFailed;

	[Description("Occurs when the user presses the Delete key on an active current cell.")]
	[Category("Behavior")]
	public event CancelEventHandler CurrentCellDeleting;

	[Description("Occurs before the current cell switches into editing mode.")]
	[Category("Behavior")]
	public event CancelEventHandler CurrentCellStartEditing;

	[Description("Occurs when the user wants to modify contents of the current cell.")]
	[Category("Behavior")]
	public event CancelEventHandler CurrentCellChanging;

	[Category("Behavior")]
	[Description("Occurs when the user changes contents of the current cell.")]
	public event EventHandler CurrentCellChanged;

	[Description("Occurs before the grid the deactivates the current cell.")]
	[Category("Behavior")]
	public event CancelEventHandler CurrentCellDeactivating;

	[Category("Behavior")]
	[Description("Occurs after the drop-down part has been dropped-down and made visible.")]
	public event EventHandler CurrentCellShowedDropDown;

	[Category("Behavior")]
	[Description("Occurs when the drop-down part of the current cell was / is closed.")]
	public event PopupClosedEventHandler CurrentCellCloseDropDown;

	[Description("Occurs when the drop-down part is about to be shown.")]
	[Category("Behavior")]
	public event GridCurrentCellShowingDropDownEventHandler CurrentCellShowingDropDown;

	[Description("Occurs when the grid validates contents of the active current cell.")]
	[Category("Behavior")]
	public event CancelEventHandler CurrentCellValidating;

	[Category("Behavior")]
	[Description("Occurs when the grid validates contents of the active current cell.")]
	public event EventHandler CurrentCellValidated;

	[Description("Occurs when the grid accepted changes made to the active current cell.")]
	[Category("Behavior")]
	public event CancelEventHandler CurrentCellAcceptedChanges;

	[Category("Behavior")]
	[Description("Occurs when the grid accepted changes made to the active current cell.")]
	public event EventHandler CurrentCellConfirmChangesFailed;

	[Category("Behavior")]
	[Description("Occurs when the grid rejects changes made to the active current cell.")]
	public event EventHandler CurrentCellRejectedChanges;

	[Category("Behavior")]
	[Description("Occurs when the grid completes editing mode for the active current cell.")]
	public event EventHandler CurrentCellEditingComplete;

	[Description("Occurs after the grid deactivates current cell.")]
	[Category("Behavior")]
	public event GridCurrentCellDeactivatedEventHandler CurrentCellDeactivated;

	[Category("Behavior")]
	[Description("Occurs after the grid fails to deactivate the current cell.")]
	public event EventHandler CurrentCellDeactivateFailed;

	[Description("Occurs when the current cell has switched to in-place editing and the control associated with the current cell has received the focus.")]
	[Category("Behavior")]
	public event ControlEventHandler CurrentCellControlGotFocus;

	[Browsable(false)]
	public event GridCurrentCellControlKeyMessageEventHandler CurrentCellControlKeyMessage;

	[Description("Occurs when the current cell is in-place editing mode and the user double-clicks inside the control associated with the current cell.")]
	[Category("Behavior")]
	public event ControlEventHandler CurrentCellControlDoubleClick;

	[Description("Occurs when the current cell has switched to in-place editing and the control associated with the current cell has received the focus.")]
	[Category("Behavior")]
	public event ControlEventHandler CurrentCellControlLostFocus;

	[Description("Occurs when the user clicks a push button.")]
	[Category("Behavior")]
	public event GridCellPushButtonClickEventHandler PushButtonClick;

	[Category("Behavior")]
	[Description("Occurs when the user clicks inside the checker box of a check box cell.")]
	public event GridCellClickEventHandler CheckBoxClick;

	[Description("Occurs when the user clicks inside a cell.")]
	[Category("Behavior")]
	public event GridCellClickEventHandler CellClick;

	[Category("Behavior")]
	[Description("Occurs when the user double-clicks inside a cell.")]
	public event GridCellClickEventHandler CellDoubleClick;

	[Category("Behavior")]
	[Description("Occurs when the grid performs hit-test for a cell.")]
	public event GridCellHitTestEventHandler CellHitTest;

	[Description("Occurs when the grid queries for the cursor to display for a specific cell when the cell.")]
	[Category("Behavior")]
	public event GridCellCursorEventHandler CellCursor;

	[Category("Behavior")]
	[Description("Occurs before the OnMouseHoverEnter method of a cell's renderer is called.")]
	public event GridCellMouseEventHandler CellMouseHoverEnter;

	[Description("Occurs before the OnMouseHover method of a cell's renderer is called.")]
	[Category("Behavior")]
	public event GridCellMouseEventHandler CellMouseHover;

	[Description("Occurs before the OnMouseHoverLeave method of a cell's renderer is called.")]
	[Category("Behavior")]
	public event GridCellMouseEventHandler CellMouseHoverLeave;

	[Description("Occurs before the OnMouseDown method of a cell's renderer is called.")]
	[Category("Behavior")]
	public event GridCellMouseEventHandler CellMouseDown;

	[Category("Behavior")]
	[Description("Occurs before the OnMouseMove method of a cell's renderer is called.")]
	public event GridCellMouseEventHandler CellMouseMove;

	[Description("Occurs before the OnMouseUp method of a cell's renderer is called.")]
	[Category("Behavior")]
	public event GridCellMouseEventHandler CellMouseUp;

	[Category("Behavior")]
	[Description("Occurs before the OnCancelMode method of a cell's renderer is called.")]
	public event GridCellMouseEventHandler CellCancelMode;

	[Description("Occurs when changes occurred in the Minimum or Maximum scroll position or page size.")]
	[Category("Scrolling")]
	public event EventHandler ScrollInfoChanged;

	[Category("Behavior")]
	[Description("Occurs after the user presses a key in the current cell and before it is accepted.")]
	public event GridCurrentCellValidateStringEventHandler CurrentCellValidateString;

	[Description("Occurs when the current cell state tends to change on key press")]
	[Category("Behavior")]
	public event KeyPressEventHandler CurrentCellKeyPress;

	[Category("Behavior")]
	[Description("Occurs when the current cell state tends to change on key down.")]
	public event KeyEventHandler CurrentCellKeyDown;

	[Description("Occurs when the current cell state tends to change on key up.")]
	[Category("Behavior")]
	public event KeyEventHandler CurrentCellKeyUp;

	[Category("Behavior")]
	[Description("Occurs before the current cell is moved when the user navigates through the grid with arrow keys.")]
	public event GridMoveCurrentCellDirectionEventHandler MoveCurrentCellDirection;

	[Description("Occurs before the the current cell is moved into a specific direction.")]
	[Category("Grid")]
	public event GridQueryNextCurrentCellPositionEventHandler QueryNextCurrentCellPosition;

	[Description("Occurs when the user is in the process of activating the control with a mouse click.")]
	[Category("Behavior")]
	public event CancelEventHandler MouseActivating;

	[Description("Occurs before a cell is scrolled into view by a ScrollCellInView call.")]
	[Category("Scrolling")]
	public event GridQueryScrollCellInViewEventHandler QueryScrollCellInView;

	[Category("Scrolling")]
	[Description("Occurs before the grid is scrolled when the top row index is changed.")]
	public event GridRowColIndexChangingEventHandler TopRowChanging;

	[Description("Occurs before the grid is scrolled when the left column index is changed.")]
	[Category("Scrolling")]
	public event GridRowColIndexChangingEventHandler LeftColChanging;

	[Category("Scrolling")]
	[Description("Occurs after the grid has been scrolled when the top row index is changed.")]
	public event GridRowColIndexChangedEventHandler TopRowChanged;

	[Description("Occurs after the grid has been scrolled when the left column index is changed.")]
	[Category("Scrolling")]
	public event GridRowColIndexChangedEventHandler LeftColChanged;

	[Category("Behavior")]
	[Description("Occurs before a MouseDown event is raised and allows you to cancel the mouse event.")]
	public event CancelMouseEventHandler GridControlMouseDown;

	[Description("Occurs before a MouseMove is raised and allows you to cancel the mouse event.")]
	[Category("Behavior")]
	public event CancelMouseEventHandler GridControlMouseMove;

	[Category("Behavior")]
	[Description("Occurs before a MouseUp is raised and allows you to cancel the mouse event.")]
	public event CancelMouseEventHandler GridControlMouseUp;

	[DocumentationExclude]
	protected virtual void OnQueryCreateCellTextBox(GridQueryCreateCellTextBoxEventArgs e)
	{
		if (this.QueryCreateCellTextBox != null)
		{
			this.QueryCreateCellTextBox(this, e);
		}
	}

	internal void RaiseQueryCreateCellTextBox(GridQueryCreateCellTextBoxEventArgs e)
	{
		OnQueryCreateCellTextBox(e);
	}

	[DocumentationExclude]
	public bool IsRightToLeft()
	{
		return RightToLeft == RightToLeft.Yes;
	}

	protected virtual void OnFillRectangleHook(GridFillRectangleHookEventArgs e)
	{
		if (this.FillRectangleHook != null)
		{
			this.FillRectangleHook(this, e);
		}
	}

	internal void RaiseFillRectangleHook(GridFillRectangleHookEventArgs e)
	{
		OnFillRectangleHook(e);
	}

	public int GetCurrentHScrollPixelDelta()
	{
		return hScrollPixelDelta;
	}

	public int GetCurrentHScrollPixelPos()
	{
		if (currentHScrollPixelPosSaved != -1)
		{
			return currentHScrollPixelPosSaved;
		}
		currentHScrollPixelPosSaved = ColIndexToHScrollPixelPos(LeftColIndex) + hScrollPixelDelta;
		return currentHScrollPixelPosSaved;
	}

	public void SetCurrentHScrollPixelPos(int pixelPos)
	{
		int hScrollPixelMinimum = GetHScrollPixelMinimum();
		pixelPos = Math.Max(Math.Min(pixelPos, GetHScrollPixelWidth() - base.HScrollBar.LargeChange), hScrollPixelMinimum);
		int currentHScrollPixelPos = GetCurrentHScrollPixelPos();
		if (pixelPos < currentHScrollPixelPos)
		{
			ScrollGrid.DoPixelScroll(GridDirectionType.Left, currentHScrollPixelPos - pixelPos);
		}
		else if (pixelPos > currentHScrollPixelPos)
		{
			ScrollGrid.DoPixelScroll(GridDirectionType.Right, pixelPos - currentHScrollPixelPos);
		}
		currentHScrollPixelPosSaved = -1;
	}

	public int GetHScrollPixelMinimum()
	{
		return ColIndexToHScrollPixelPos(InternalGetFrozenCols() + 1);
	}

	public virtual int ColIndexToHScrollPixelPos(int colIndex)
	{
		return ViewLayout.GetColRangeWidth(0, colIndex - 1, GridCellSizeKind.ActualSize);
	}

	protected virtual void OnHScrollPixelPosChanged(GridScrollPositionChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnHScrollPixelPosChanged(e);
		}
		if (this.HScrollPixelPosChanged != null)
		{
			this.HScrollPixelPosChanged(this, e);
		}
	}

	internal void RaiseHScrollPixelPosChanged(bool success)
	{
		GridScrollPositionChangedEventArgs e = new GridScrollPositionChangedEventArgs(success);
		OnHScrollPixelPosChanged(e);
	}

	protected virtual void OnVScrollPixelPosChanged(GridScrollPositionChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnVScrollPixelPosChanged(e);
		}
		if (this.VScrollPixelPosChanged != null)
		{
			this.VScrollPixelPosChanged(this, e);
		}
	}

	internal void RaiseVScrollPixelPosChanged(bool success)
	{
		GridScrollPositionChangedEventArgs e = new GridScrollPositionChangedEventArgs(success);
		OnVScrollPixelPosChanged(e);
	}

	protected virtual void OnVScrollPixelPosChanging(GridScrollPositionChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnVScrollPixelPosChanging(e);
		}
		if (this.VScrollPixelPosChanging != null)
		{
			this.VScrollPixelPosChanging(this, e);
		}
	}

	internal bool RaiseVScrollPixelPosChanging(int position)
	{
		GridScrollPositionChangingEventArgs e = new GridScrollPositionChangingEventArgs(position);
		OnVScrollPixelPosChanging(e);
		return !e.Cancel;
	}

	protected virtual void OnHScrollPixelPosChanging(GridScrollPositionChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnHScrollPixelPosChanging(e);
		}
		if (this.HScrollPixelPosChanging != null)
		{
			this.HScrollPixelPosChanging(this, e);
		}
	}

	internal void RaiseHScrollPixelPosChanging(GridScrollPositionChangingEventArgs e)
	{
		OnHScrollPixelPosChanging(e);
	}

	internal bool RaiseHScrollPixelPosChanging(int position)
	{
		GridScrollPositionChangingEventArgs e = new GridScrollPositionChangingEventArgs(position);
		OnHScrollPixelPosChanging(e);
		return !e.Cancel;
	}

	public virtual int GetHScrollPixelWidth()
	{
		if (hScrollPixelWidthSaved == -1)
		{
			int num = 0;
			int colIndex = 0;
			do
			{
				num += GetColWidth(colIndex);
			}
			while (ScrollGrid.GetNextColIndex(ref colIndex));
			hScrollPixelWidthSaved = num;
		}
		return hScrollPixelWidthSaved;
	}

	public virtual void HScrollPixelPosToColIndex(int pixelPos, out int colIndex, out int pixelDelta)
	{
		int num = InternalGetFrozenCols();
		int num2 = 0;
		colIndex = 0;
		pixelDelta = 0;
		int colIndex2 = 0;
		do
		{
			pixelDelta = pixelPos - num2;
			num2 += GetColWidth(colIndex2);
			if (num2 > pixelPos && colIndex2 > num)
			{
				colIndex = colIndex2;
				break;
			}
		}
		while (ScrollGrid.GetNextColIndex(ref colIndex2));
		if (pixelDelta < 0)
		{
			pixelDelta = 0;
			colIndex = num + 1;
		}
	}

	public virtual bool HScrollPixelScrollInView(Rectangle r)
	{
		int currentHScrollPixelPos = GetCurrentHScrollPixelPos();
		if (IsRightToLeft())
		{
			if (r.Left < ViewLayout.ScrollAreaBounds.Left && r.Width < ViewLayout.ScrollAreaBounds.Width)
			{
				SetCurrentHScrollPixelPos(currentHScrollPixelPos - r.Left + ViewLayout.ScrollAreaBounds.Left);
				return true;
			}
			if (r.Right > ViewLayout.ScrollAreaBounds.Right)
			{
				SetCurrentHScrollPixelPos(currentHScrollPixelPos - r.Right + ViewLayout.ScrollAreaBounds.Right);
				return true;
			}
			if (r.Right > ViewLayout.ScrollAreaBounds.Right)
			{
				if (r.Width < ViewLayout.ScrollAreaBounds.Width || r.Right < ViewLayout.ScrollAreaBounds.Left)
				{
					SetCurrentHScrollPixelPos(currentHScrollPixelPos - r.Right + ViewLayout.ScrollAreaBounds.Right);
				}
				return true;
			}
		}
		else
		{
			if (r.Left < ViewLayout.ScrollAreaBounds.Left)
			{
				SetCurrentHScrollPixelPos(currentHScrollPixelPos + r.Left - ViewLayout.ScrollAreaBounds.Left);
				return true;
			}
			if (r.Right > ViewLayout.ScrollAreaBounds.Right && r.Width < ViewLayout.ScrollAreaBounds.Width)
			{
				SetCurrentHScrollPixelPos(currentHScrollPixelPos + r.Right - ViewLayout.ScrollAreaBounds.Right);
				return true;
			}
			if (r.Right > ViewLayout.ScrollAreaBounds.Right)
			{
				if (r.Width < ViewLayout.ScrollAreaBounds.Width || r.Left > ViewLayout.ScrollAreaBounds.Right)
				{
					SetCurrentHScrollPixelPos(currentHScrollPixelPos + r.Left - ViewLayout.ScrollAreaBounds.Left);
				}
				return true;
			}
		}
		return false;
	}

	protected void InternalSetVScrollPixel(bool value)
	{
		vPixelScroll = value;
	}

	public int GetCurrentVScrollPixelDelta()
	{
		if (!PrintingMode)
		{
			return vScrollPixelDelta;
		}
		return 0;
	}

	public int GetCurrentVScrollPixelPos()
	{
		if (currentVScrollPixelPosSaved != -1)
		{
			return currentVScrollPixelPosSaved;
		}
		currentVScrollPixelPosSaved = RowIndexToVScrollPixelPos(TopRowIndex) + vScrollPixelDelta;
		return currentVScrollPixelPosSaved;
	}

	public void InternalSetCurrentVScrollPixelPos(int pixelPos)
	{
		VScrollPixelPosToRowIndex(pixelPos, out var rowIndex, out var pixelDelta);
		InternalSetTopRow(rowIndex);
		vScrollPixelDelta = pixelDelta;
	}

	public void InternalSetCurrentHScrollPixelPos(int pixelPos)
	{
		HScrollPixelPosToColIndex(pixelPos, out var colIndex, out var pixelDelta);
		InternalSetLeftCol(colIndex);
		hScrollPixelDelta = pixelDelta;
	}

	public void SetCurrentVScrollPixelPos(int pixelPos)
	{
		int vScrollPixelMinimum = GetVScrollPixelMinimum();
		pixelPos = Math.Max(Math.Min(pixelPos, GetVScrollPixelHeight() - base.VScrollBar.LargeChange), vScrollPixelMinimum);
		try
		{
			int currentVScrollPixelPos = GetCurrentVScrollPixelPos();
			if (pixelPos < currentVScrollPixelPos)
			{
				ScrollGrid.DoPixelScroll(GridDirectionType.Up, currentVScrollPixelPos - pixelPos);
			}
			else if (pixelPos > currentVScrollPixelPos)
			{
				ScrollGrid.DoPixelScroll(GridDirectionType.Down, pixelPos - currentVScrollPixelPos);
			}
		}
		catch (Exception)
		{
		}
		currentVScrollPixelPosSaved = -1;
	}

	public int GetVScrollPixelMinimum()
	{
		return RowIndexToVScrollPixelPos(InternalGetFrozenRows() + 1);
	}

	public virtual int RowIndexToVScrollPixelPos(int rowIndex)
	{
		return ViewLayout.GetRowRangeHeight(0, rowIndex - 1, GridCellSizeKind.ActualSize);
	}

	public virtual int GetVScrollPixelHeight()
	{
		if (vScrollPixelHeightSaved == -1)
		{
			int num = 0;
			int rowIndex = 0;
			do
			{
				num += GetRowHeight(rowIndex);
			}
			while (ScrollGrid.GetNextRowIndex(ref rowIndex));
			vScrollPixelHeightSaved = num;
		}
		return vScrollPixelHeightSaved;
	}

	public virtual void VScrollPixelPosToRowIndex(int pixelPos, out int rowIndex, out int pixelDelta)
	{
		int num = InternalGetFrozenRows();
		int num2 = 0;
		rowIndex = 0;
		pixelDelta = 0;
		int rowIndex2 = 0;
		do
		{
			pixelDelta = pixelPos - num2;
			num2 += GetRowHeight(rowIndex2);
			if (num2 > pixelPos && rowIndex2 > num)
			{
				rowIndex = rowIndex2;
				return;
			}
		}
		while (ScrollGrid.GetNextRowIndex(ref rowIndex2));
		if (pixelDelta < 0)
		{
			pixelDelta = 0;
			rowIndex = num + 1;
		}
	}

	public virtual bool VScrollPixelScrollInView(Rectangle r)
	{
		int currentVScrollPixelPos = GetCurrentVScrollPixelPos();
		if (r.Top < ViewLayout.ScrollAreaBounds.Top)
		{
			SetCurrentVScrollPixelPos(currentVScrollPixelPos + r.Top - ViewLayout.ScrollAreaBounds.Top);
			return true;
		}
		if (r.Bottom > ViewLayout.ScrollAreaBounds.Bottom && r.Height < ViewLayout.ScrollAreaBounds.Height)
		{
			SetCurrentVScrollPixelPos(currentVScrollPixelPos + r.Bottom - ViewLayout.ScrollAreaBounds.Bottom + 1);
			return true;
		}
		if (r.Bottom > ViewLayout.ScrollAreaBounds.Bottom)
		{
			SetCurrentVScrollPixelPos(currentVScrollPixelPos + r.Top - ViewLayout.ScrollAreaBounds.Top);
			return true;
		}
		return false;
	}

	public GridControlBase()
		: this(null)
	{
	}

	public GridControlBase(GridModel model)
	{
		SetStyle(ControlStyles.ResizeRedraw, value: false);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.UserMouse, value: false);
		this.model = model;
		m_gridPaint = new GridPaint(this);
		BackColor = SystemColors.Window;
	}

	public void SetWindowStyle(ControlStyles style, bool value)
	{
		SetStyle(style, value);
	}

	public override string ToString()
	{
		return PaneDesc;
	}

	public virtual Color GetBackgroundColor()
	{
		return Model.Properties.BackgroundColor;
	}

	public virtual GridVisualStyles GetGridVisualStyles()
	{
		return Model.Options.GridVisualStyles;
	}

	public virtual IVisualStylesDrawing GetGridVisualStylesDrawing()
	{
		return Model.Options.GridVisualStylesDrawing;
	}

	private bool ShouldSerializeCursor()
	{
		return false;
	}

	public virtual Color GetBackColor(Color c)
	{
		if (c == SystemColors.Window)
		{
			c = BackColor;
		}
		if (c.A == byte.MaxValue && Model.Options.AlphaBlendValue != -1)
		{
			return Color.FromArgb(Model.Options.AlphaBlendValue, c);
		}
		return c;
	}

	public virtual BrushInfo GetInterior(BrushInfo br)
	{
		if ((br.Style == BrushStyle.Solid && br.BackColor == SystemColors.Window) || br.Style == BrushStyle.None)
		{
			return new BrushInfo(BackColor);
		}
		if (br.BackColor.A == byte.MaxValue && br.ForeColor.A == byte.MaxValue && Model.Options.AlphaBlendValue != -1)
		{
			return new BrushInfo(Model.Options.AlphaBlendValue, br);
		}
		return br;
	}

	public virtual Color GetForeColor(Color c)
	{
		if (c == SystemColors.WindowText)
		{
			return ForeColor;
		}
		return c;
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnThemeChanged(e);
		}
		if (this.ThemeChanged == null)
		{
			return;
		}
		try
		{
			this.ThemeChanged(this, e);
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

	protected virtual void OnModelChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnModelChanged(e);
		}
		if (model != null)
		{
			VerticalScrollTips = Model.Options.VerticalScrollTips;
			HorizontalScrollTips = Model.Options.HorizontalScrollTips;
			VerticalThumbTrack = Model.Options.VerticalThumbTrack;
			VerticalScrollTips = Model.Options.VerticalScrollTips;
			Office2007ScrollBars = Model.Options.Office2007ScrollBars;
			Office2007ScrollBarsColorScheme = Model.Options.Office2007ScrollBarsColorScheme;
		}
		CurrentCell.GridModelChanged(this, e);
		if (this.ModelChanged != null)
		{
			this.ModelChanged(this, e);
		}
	}

	public void ResetGridBounds()
	{
		GridBounds = Rectangle.Empty;
	}

	protected virtual void OnGridBoundsChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnGridBoundsChanged(e);
		}
		ViewLayout.Reset();
		if (this.GridBoundsChanged != null)
		{
			this.GridBoundsChanged(this, e);
		}
	}

	[DocumentationExclude]
	public void InitPrintInfo()
	{
		PrintInfo.m_nPrintLeftCol = gridScroll.m_nLeftCol;
		PrintInfo.m_nPrintTopRow = gridScroll.m_nTopRow;
		printBounds = bounds;
	}

	[DocumentationExclude]
	public void RestoreBoundsAfterPrint()
	{
		bounds = printBounds;
	}

	protected virtual void OnPrintingModeChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnPrintingModeChanged(e);
		}
		ViewLayout.Reset();
		if (this.PrintingModeChanged != null)
		{
			this.PrintingModeChanged(this, e);
		}
	}

	private void ResetHScrollBehavior()
	{
		HScrollBehavior = GridScrollbarMode.DetectIfShared;
	}

	private void ResetVScrollBehavior()
	{
		VScrollBehavior = GridScrollbarMode.DetectIfShared;
	}

	[DocumentationExclude]
	public bool ShouldSerializeVScrollBehavior()
	{
		if (ScrollGrid.vScrollSetting != (GridScrollbarMode.Automatic | GridScrollbarMode.AutoScroll) && ScrollGrid.vScrollSetting != GridScrollbarMode.DetectIfShared)
		{
			if (base.FillSplitterPane)
			{
				return splitterControl == null;
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	public bool ShouldSerializeHScrollBehavior()
	{
		if (ScrollGrid.hScrollSetting != (GridScrollbarMode.Automatic | GridScrollbarMode.AutoScroll) && ScrollGrid.hScrollSetting != GridScrollbarMode.DetectIfShared)
		{
			if (base.FillSplitterPane)
			{
				return splitterControl == null;
			}
			return true;
		}
		return false;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		MakeTransparent(e.Control, SupportsTransparentBackColor);
	}

	private void MakeTransparent(Control control, bool value)
	{
		MethodInfo method = typeof(Control).GetMethod("SetStyle", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
		if (method != null)
		{
			method.Invoke(control, new object[2]
			{
				ControlStyles.SupportsTransparentBackColor,
				value
			});
		}
	}

	protected virtual void OnSupportsTransparentBackColorChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSupportsTransparentBackColorChanged(e);
		}
		if (this.SupportsTransparentBackColorChanged != null)
		{
			this.SupportsTransparentBackColorChanged(this, e);
		}
	}

	public void ResetBackgroundImageID()
	{
		backgroundImageID = string.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackgroundImageID()
	{
		return backgroundImageID != string.Empty;
	}

	private bool ShouldSerializeBackColor()
	{
		return BackColor != SystemColors.Window;
	}

	protected virtual void InitializeMouseControllers()
	{
	}

	protected virtual void ResetMouseControllers()
	{
	}

	protected virtual void InitializeDataObjectConsumerOptions()
	{
	}

	protected override void InitLayout()
	{
		if (Model.ActiveGridView == null)
		{
			Model.ActiveGridView = this;
		}
		if (!initialized)
		{
			Initialize();
		}
		base.InitLayout();
	}

	protected virtual void WireModel()
	{
		InitializeMouseControllers();
		InitializeDataObjectConsumerOptions();
		Model.NotifyResetVolatileData += ModelNotifyResetVolatileData;
		Model.FrozenRowCountChanged += ModelFixedRowChanged;
		Model.FrozenColCountChanged += ModelFixedColChanged;
		Model.HeaderRowCountChanged += ModelHeaderRowChanged;
		Model.HeaderColCountChanged += ModelHeaderColChanged;
		Model.CellsChanged += ModelCellsChanged;
		Model.RowHeightsChanging += ModelRowHeightsChanging;
		Model.RowHeightsChanged += ModelRowHeightsChanged;
		Model.ColWidthsChanging += ModelColWidthsChanging;
		Model.ColWidthsChanged += ModelColWidthsChanged;
		Model.RowsHidden += ModelRowsHidden;
		Model.ColsHidden += ModelColsHidden;
		Model.DefaultRowHeightChanged += ModelDefaultRowHeightChanged;
		Model.DefaultColWidthChanged += ModelDefaultColWidthChanged;
		Model.ColsMoved += ModelColsRangeMoved;
		Model.ColsMoving += ModelColsRangeMoving;
		Model.RowsMoved += ModelRowsRangeMoved;
		Model.RowsMoving += ModelRowsRangeMoving;
		Model.ColsRemoved += ModelColsRangeRemoved;
		Model.ColsRemoving += ModelColsRangeRemoving;
		Model.RowsRemoved += ModelRowsRangeRemoved;
		Model.RowsRemoving += ModelRowsRangeRemoving;
		Model.ColsInserted += ModelColsRangeInserted;
		Model.ColsInserting += ModelColsRangeInserting;
		Model.RowsInserted += ModelRowsRangeInserted;
		Model.RowsInserting += ModelRowsRangeInserting;
		Model.CoveredRangesChanging += ModelCoveredRangesChanging;
		Model.CoveredRangesChanged += ModelCoveredRangesChanged;
		Model.BanneredRangesChanging += ModelBanneredRangesChanging;
		Model.BanneredRangesChanged += ModelBanneredRangesChanged;
		Model.MergeCellsChanged += ModelMergeCellsChanged;
		Model.FloatingCellsChanged += ModelFloatingCellsChanged;
		Model.RefreshRequest += ModelRefreshRequest;
		Model.InvalidateRangeRequest += ModelInvalidateRangeRequest;
		Model.BeginUpdateRequest += ModelBeginUpdateRequest;
		Model.EndUpdateRequest += ModelEndUpdateRequest;
		Model.Options.OptionsChanged += ModelOptionsChanged;
		Model.Options.ControllerOptionsChanged += ModelControllerOptionsChanged;
		Model.Options.DataObjectConsumerOptionsChanged += ModelDataObjectConsumerOptionsChanged;
		Model.Properties.Changed += PropertiesChanged;
		foreach (string key in CellRenderers.Keys)
		{
			GridCellRendererBase gridCellRendererBase = CellRenderers[key];
			gridCellRendererBase.Model = Model.CellModels[key];
		}
	}

	private void PropertiesChanged(object sender, EventArgs e)
	{
		Refresh();
	}

	private void ModelOptionsChanged(object sender, EventArgs e)
	{
		base.VerticalScrollTips = Model.Options.VerticalScrollTips;
		base.HorizontalScrollTips = Model.Options.HorizontalScrollTips;
		base.VerticalThumbTrack = Model.Options.VerticalThumbTrack;
		base.HorizontalThumbTrack = Model.Options.HorizontalThumbTrack;
		base.Office2007ScrollBars = Model.Options.Office2007ScrollBars;
		base.Office2007ScrollBarsColorScheme = Model.Options.Office2007ScrollBarsColorScheme;
		Refresh();
	}

	private void ModelControllerOptionsChanged(object sender, EventArgs e)
	{
		InitializeMouseControllers();
	}

	private void ModelDataObjectConsumerOptionsChanged(object sender, EventArgs e)
	{
		InitializeDataObjectConsumerOptions();
	}

	protected virtual void UnwireModel()
	{
		if (Model != null)
		{
			Model.NotifyResetVolatileData -= ModelNotifyResetVolatileData;
			Model.FrozenRowCountChanged -= ModelFixedRowChanged;
			Model.FrozenColCountChanged -= ModelFixedColChanged;
			Model.HeaderRowCountChanged -= ModelHeaderRowChanged;
			Model.HeaderColCountChanged -= ModelHeaderColChanged;
			Model.CellsChanged -= ModelCellsChanged;
			Model.RowHeightsChanging -= ModelRowHeightsChanging;
			Model.RowHeightsChanged -= ModelRowHeightsChanged;
			Model.ColWidthsChanging -= ModelColWidthsChanging;
			Model.ColWidthsChanged -= ModelColWidthsChanged;
			Model.RowsHidden -= ModelRowsHidden;
			Model.ColsHidden -= ModelColsHidden;
			Model.DefaultRowHeightChanged -= ModelDefaultRowHeightChanged;
			Model.DefaultColWidthChanged -= ModelDefaultColWidthChanged;
			Model.ColsMoved -= ModelColsRangeMoved;
			Model.ColsMoving -= ModelColsRangeMoving;
			Model.RowsMoved -= ModelRowsRangeMoved;
			Model.RowsMoving -= ModelRowsRangeMoving;
			Model.ColsRemoved -= ModelColsRangeRemoved;
			Model.ColsRemoving -= ModelColsRangeRemoving;
			Model.RowsRemoved -= ModelRowsRangeRemoved;
			Model.RowsRemoving -= ModelRowsRangeRemoving;
			Model.ColsInserted -= ModelColsRangeInserted;
			Model.ColsInserting -= ModelColsRangeInserting;
			Model.RowsInserted -= ModelRowsRangeInserted;
			Model.RowsInserting -= ModelRowsRangeInserting;
			Model.CoveredRangesChanging -= ModelCoveredRangesChanging;
			Model.CoveredRangesChanged -= ModelCoveredRangesChanged;
			Model.MergeCellsChanged -= ModelMergeCellsChanged;
			Model.BanneredRangesChanging -= ModelBanneredRangesChanging;
			Model.BanneredRangesChanged -= ModelBanneredRangesChanged;
			Model.FloatingCellsChanged -= ModelFloatingCellsChanged;
			Model.RefreshRequest -= ModelRefreshRequest;
			Model.InvalidateRangeRequest -= ModelInvalidateRangeRequest;
			Model.BeginUpdateRequest -= ModelBeginUpdateRequest;
			Model.EndUpdateRequest -= ModelEndUpdateRequest;
			Model.Options.OptionsChanged -= ModelOptionsChanged;
			Model.Options.ControllerOptionsChanged -= ModelControllerOptionsChanged;
			Model.Options.DataObjectConsumerOptionsChanged -= ModelDataObjectConsumerOptionsChanged;
			Model.Properties.Changed -= PropertiesChanged;
		}
		if (cellRenderers == null)
		{
			return;
		}
		foreach (GridCellRendererBase value in cellRenderers.Values)
		{
			value.IntUnwireModel(value.cellModel);
		}
	}

	private void ModelNotifyResetVolatileData(object sender, EventArgs e)
	{
		ViewLayout.Reset();
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnVisibleChanged(e);
		}
		if (!base.IsSplitterPaneClosing)
		{
			if (base.Visible && !base.Disposing && initialized && base.Visible)
			{
				ViewLayout.Reset();
				UpdateScrollBars();
			}
			base.OnVisibleChanged(e);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			SuspendLayout();
			UnwireModel();
			foreach (object subComponent in subComponents)
			{
				if (subComponent is IDisposable)
				{
					((IDisposable)subComponent).Dispose();
				}
			}
			if (cellRenderers != null)
			{
				cellRenderers.Dispose();
			}
			cellRenderers = null;
			ScrollGrid.Dispose();
			scrollersFrame1.Dispose();
			eventsTarget = null;
			splitterControl = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnSplitterPaneClosing(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSplitterPaneClosing(e);
		}
		base.OnSplitterPaneClosing(e);
		ScrollGrid.Dispose();
		CurrentCell.Deactivate(discardChanges: true);
		UnwireModel();
	}

	public virtual Control CreateNewControl(Control parent, int row, int column)
	{
		try
		{
			GridControlBase gridControlBase = (GridControlBase)Activator.CreateInstance(GetType(), Model);
			OnCreatedNewControl(gridControlBase, row, column);
			return gridControlBase;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		GridControlBase gridControlBase2 = (GridControlBase)Activator.CreateInstance(GetType());
		gridControlBase2.Model = Model;
		OnCreatedNewControl(gridControlBase2, row, column);
		return gridControlBase2;
	}

	protected virtual void OnCreatedNewControl(GridControlBase grid, int row, int column)
	{
		grid.vPixelScroll = vPixelScroll;
		grid.hPixelScroll = hPixelScroll;
		grid.HScrollIncrement = HScrollIncrement;
		grid.VScrollIncrement = VScrollIncrement;
		grid.optimizeDrawBackground = optimizeDrawBackground;
		grid.optimizeInsertRemoveCells = optimizeInsertRemoveCells;
		grid.wantsEnterKey = wantsEnterKey;
		grid.wantsEscapeKey = wantsEscapeKey;
		grid.wantKeys = wantKeys;
	}

	private void InitSplitter()
	{
		splitterControl = (IDynamicSplitterFrame)GridUtil.GetParentControl(this, typeof(IDynamicSplitterFrame));
		int nSplitRow = m_nSplitRow;
		int nSplitCol = m_nSplitCol;
		if (splitterControl != null && splitterControl.FindPane(this, out m_nSplitRow, out m_nSplitCol))
		{
			displayHeaderRow = m_nSplitRow == 0;
			displayHeaderCol = m_nSplitCol == 0;
			if (m_nSplitRow != nSplitRow)
			{
				ScrollGrid.RecalcHiddenRowState(0, Model.Rows.HeaderCount + 1);
			}
			if (m_nSplitCol != nSplitCol)
			{
				ScrollGrid.RecalcHiddenColState(0, Model.Cols.HeaderCount + 1);
			}
			if (m_nSplitRow == 1 && splitterControl.GetPane(0, m_nSplitCol) is GridControlBase gridControlBase)
			{
				ScrollGrid.m_nLeftCol = gridControlBase.LeftColIndex;
				ViewLayout.Reset();
			}
			if (m_nSplitCol == 1 && splitterControl.GetPane(m_nSplitRow, 0) is GridControlBase gridControlBase2)
			{
				ScrollGrid.m_nTopRow = gridControlBase2.TopRowIndex;
				ViewLayout.Reset();
			}
			if ((m_nSplitRow == 1 || m_nSplitCol == 1) && splitterControl.GetPane(0, 0) is GridControlBase otherGrid)
			{
				ScrollGrid.RecalcHiddenRowColState(otherGrid);
			}
			VScrollBehavior = GridScrollbarMode.Shared | GridScrollbarMode.AutoScroll;
			HScrollBehavior = GridScrollbarMode.Shared | GridScrollbarMode.AutoScroll;
			if (nSplitRow != m_nSplitRow || nSplitCol != m_nSplitCol)
			{
				Invalidate();
			}
		}
		else
		{
			m_nSplitRow = (m_nSplitCol = 0);
		}
	}

	public virtual void Initialize()
	{
		InitSplitter();
		if (!initialized)
		{
			WireModel();
		}
		ScrollGrid.m_nLeftCol = Math.Max(GetFirstScrollableCol(), ScrollGrid.m_nLeftCol);
		ScrollGrid.m_nTopRow = Math.Max(GetFirstScrollableRow(), ScrollGrid.m_nTopRow);
		ViewLayout.Reset();
		initialized = true;
		UpdateScrollBars();
	}

	public virtual Graphics CreateGridGraphics()
	{
		GridControlBase gridWindow = GetGridWindow();
		Graphics graphics = ((!base.HasDoubleBufferSurface) ? gridWindow.CreateGraphics() : base.DoubleBufferSurface.Graphics);
		gridWindow.Model.DoPrepareGraphics(graphics);
		return graphics;
	}

	public override Rectangle ScrollWindow(int xAmount, int yAmount, Rectangle rect, Rectangle clipRect, bool allowUpdate)
	{
		if (!base.HasDoubleBufferSurface)
		{
			return base.ScrollWindow(xAmount, yAmount, rect, clipRect, allowUpdate);
		}
		OnWindowScrolling(new ScrollWindowEventArgs(xAmount, yAmount, rect, clipRect, Rectangle.Empty));
		OffsetRenderOriginPoint(xAmount, yAmount);
		Rectangle rectangle = base.DoubleBufferSurface.ScrollWindow(xAmount, yAmount, rect, clipRect);
		if (allowUpdate)
		{
			Graphics graphics = base.DoubleBufferSurface.Graphics;
			Rectangle rectangle2 = InvalidBounds;
			if (rectangle2.IntersectsWith(rect))
			{
				rectangle2.Offset(xAmount, yAmount);
				rectangle2 = (InvalidBounds = Rectangle.Union(InvalidBounds, rectangle2));
			}
			Rectangle clipBounds = rectangle;
			if (rectangle.IntersectsWith(rectangle2))
			{
				clipBounds = Rectangle.Union(rectangle, rectangle2);
				DrawClippedGrid(graphics, clipBounds, shouldClip: true);
			}
			else
			{
				DrawClippedGrid(graphics, clipBounds, shouldClip: true);
				if (!rectangle2.IsEmpty)
				{
					DrawClippedGrid(graphics, rectangle2, shouldClip: true);
				}
			}
			InvalidBounds = Rectangle.Empty;
			base.DoubleBufferSurface.Dirty = true;
			base.DoubleBufferSurface.Render();
		}
		OnWindowScrolled(new ScrollWindowEventArgs(xAmount, yAmount, rect, clipRect, rectangle));
		return rectangle;
	}

	protected virtual void ModelRefreshRequest(object sender, EventArgs e)
	{
		if (!Model.Initializing)
		{
			Refresh(fromModel: true);
		}
	}

	protected virtual void ModelInvalidateRangeRequest(object sender, GridInvalidateRangeRequestEventArgs e)
	{
		if (!Model.Initializing)
		{
			InvalidateRange(e.Range, e.Options);
		}
	}

	public GridRangeInfo MakeClientRange(GridRangeInfo range)
	{
		if (range.IsCells)
		{
			return GridRangeInfo.Cells(GetClientRow(range.Top), GetClientCol(range.Left), GetClientRow(range.Bottom), GetClientCol(range.Right));
		}
		if (range.IsCols)
		{
			return GridRangeInfo.Cols(GetClientCol(range.Left), GetClientCol(range.Right));
		}
		if (range.IsRows)
		{
			return GridRangeInfo.Rows(GetClientRow(range.Top), GetClientRow(range.Bottom));
		}
		return range;
	}

	internal bool IsPrinting()
	{
		return PrintingMode;
	}

	internal IntPtr SendMessage(int msg, IntPtr wparam, IntPtr lparam)
	{
		return NativeMethods.SendMessage(GetWindow().Handle, msg, wparam, lparam);
	}

	internal IntPtr SendMessage(int msg, IntPtr wparam, int lparam)
	{
		return NativeMethods.SendMessage(GetWindow().Handle, msg, wparam, (IntPtr)lparam);
	}

	internal IntPtr SendMessage(int msg, int wparam, IntPtr lparam)
	{
		return NativeMethods.SendMessage(GetWindow().Handle, msg, (IntPtr)wparam, lparam);
	}

	internal IntPtr SendMessage(int msg, int wparam, int lparam)
	{
		return NativeMethods.SendMessage(GetWindow().Handle, msg, (IntPtr)wparam, (IntPtr)lparam);
	}

	public void RaiseSelectionDragging(GridSelectionDragEventArgs e)
	{
		OnSelectionDragging(e);
	}

	public void RaiseSelectionDragged(GridSelectionDragEventArgs e)
	{
		OnSelectionDragged(e);
	}

	protected virtual void OnSelectionDragging(GridSelectionDragEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSelectionDragging(e);
		}
		if (this.SelectionDragging == null)
		{
			return;
		}
		try
		{
			this.SelectionDragging(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	protected virtual void OnSelectionDragged(GridSelectionDragEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSelectionDragged(e);
		}
		if (this.SelectionDragged == null)
		{
			return;
		}
		try
		{
			this.SelectionDragged(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	public void RaiseResizingColumns(GridResizingColumnsEventArgs e)
	{
		try
		{
			OnResizingColumns(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	public void RaiseResizingRows(GridResizingRowsEventArgs e)
	{
		try
		{
			OnResizingRows(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	protected virtual void OnResizingColumns(GridResizingColumnsEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnResizingColumns(e);
		}
		if (this.ResizingColumns != null)
		{
			this.ResizingColumns(this, e);
		}
	}

	protected virtual void OnResizingRows(GridResizingRowsEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnResizingRows(e);
		}
		if (this.ResizingRows != null)
		{
			this.ResizingRows(this, e);
		}
	}

	public void RaiseQueryCanOleDragRange(GridQueryCanOleDragRangeEventArgs e)
	{
		OnQueryCanOleDragRange(e);
	}

	protected virtual void OnQueryCanOleDragRange(GridQueryCanOleDragRangeEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryCanOleDragRange(e);
		}
		if (this.QueryCanOleDragRange == null)
		{
			return;
		}
		try
		{
			this.QueryCanOleDragRange(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	protected override void OnDragDrop(DragEventArgs e)
	{
		if (oleDragDropEventsTarget != null)
		{
			oleDragDropEventsTarget.OnDragDrop(e);
		}
		base.OnDragDrop(e);
	}

	protected override void OnDragEnter(DragEventArgs e)
	{
		if (oleDragDropEventsTarget != null)
		{
			oleDragDropEventsTarget.OnDragEnter(e);
		}
		base.OnDragEnter(e);
	}

	protected override void OnDragLeave(EventArgs e)
	{
		if (oleDragDropEventsTarget != null)
		{
			oleDragDropEventsTarget.OnDragLeave(e);
		}
		base.OnDragLeave(e);
	}

	protected override void OnDragOver(DragEventArgs e)
	{
		if (oleDragDropEventsTarget != null)
		{
			oleDragDropEventsTarget.OnDragOver(e);
		}
		base.OnDragOver(e);
	}

	[DocumentationExclude]
	public void NotifySelectionFrameChanging(Graphics g)
	{
		OnSelectionFrameChanging(new GraphicsEventArgs(g));
	}

	[DocumentationExclude]
	public void NotifySelectionFrameChanged(Graphics g)
	{
		OnSelectionFrameChanged(new GraphicsEventArgs(g));
	}

	protected virtual void OnSelectionFrameChanging(GraphicsEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSelectionFrameChanging(e);
		}
		if (this.SelectionFrameChanging != null)
		{
			this.SelectionFrameChanging(this, e);
		}
	}

	protected virtual void OnSelectionFrameChanged(GraphicsEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSelectionFrameChanged(e);
		}
		if (this.SelectionFrameChanged != null)
		{
			this.SelectionFrameChanged(this, e);
		}
	}

	public override void UpdateScrollBars()
	{
		ScrollGrid.UpdateScrollbars();
		base.UpdateScrollBars();
		ScrollGrid.UpdateScrollbars();
		base.UpdateScrollBars();
	}

	protected override void OnLayout(LayoutEventArgs le)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnLayout(le);
		}
		if (base.IsSplitterPaneClosing)
		{
			return;
		}
		if (!base.ClientRectangle.IsEmpty)
		{
			InitSplitter();
			ViewLayout.Reset();
			if (le.AffectedControl != this)
			{
				return;
			}
		}
		UpdateScrollBars();
		base.OnLayout(le);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnSizeChanged(e);
		}
		if (base.IsSplitterPaneClosing)
		{
			return;
		}
		if (!base.ClientRectangle.IsEmpty)
		{
			if (!Model.Initializing)
			{
				UpdateScrollBars();
			}
			if (!Model.Options.SmoothControlResize || IsRightToLeft())
			{
				Invalidate();
			}
		}
		base.OnSizeChanged(e);
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		if (customPaintDelegate != null)
		{
			pe = new PaintEventArgs(pe.Graphics, customPaintRectangle);
			customPaintDelegate(this, pe);
		}
		else
		{
			if (inOnPaint)
			{
				return;
			}
			if (eventsTarget != null)
			{
				eventsTarget.OnPaint(pe);
			}
			if (base.Updating)
			{
				throw new InvalidProgramException("Grid is in updating mode");
			}
			if (base.DesignMode)
			{
				Model.ResetVolatileData();
				ViewLayout.Reset();
			}
			inOnPaint = true;
			bool flag = base.IgnoreUICues;
			base.IgnoreUICues = true;
			if (firstPaint)
			{
				UpdateScrollBars();
				firstPaint = false;
				EvaluateVisibleFloatingCells(ViewLayout.VisibleCellsRange);
				EvaluateVisibleMergeCells(ViewLayout.VisibleCellsRange);
			}
			Graphics graphics = pe.Graphics;
			FixRenderOrigin(graphics);
			Model.DoPrepareGraphics(graphics);
			SuspendLayout();
			try
			{
				_ = GridBounds;
				Rectangle clipRectangle = pe.ClipRectangle;
				if (!clipRectangle.IsEmpty)
				{
					if (PrintingMode)
					{
						PrintInfo.m_bPrintPaintMsg = true;
					}
					else
					{
						m_gridPaint.DrawGrid(pe.Graphics, HasGridBounds, clipRectangle);
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
			}
			finally
			{
				base.OnPaint(pe);
				ResumeLayout(performLayout: false);
				base.IgnoreUICues = flag;
				inOnPaint = false;
			}
		}
	}

	public void RaisePrepareViewStyleInfo(int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridPrepareViewStyleInfoEventArgs e = new GridPrepareViewStyleInfoEventArgs(rowIndex, colIndex, style);
		OnPrepareViewStyleInfo(e);
		if (!e.Cancel)
		{
			CellRenderers[style.CellType]?.OnPrepareViewStyleInfo(e);
		}
	}

	public GridStyleInfo GetViewStyleInfo(int rowIndex, int colIndex)
	{
		return GetViewStyleInfo(rowIndex, colIndex, forceQueryCellInfo: false);
	}

	internal GridStyleInfo GetPaintStyleInfo(int rowIndex, int colIndex, bool forceQueryCellInfo)
	{
		GridStyleInfo gridStyleInfo;
		if (SupportsPrepareViewStyleInfo)
		{
			gridStyleInfo = GetViewStyleInfo(rowIndex, colIndex, forceQueryCellInfo);
		}
		else
		{
			gridStyleInfo = Model[rowIndex, colIndex];
			gridStyleInfo.Locked = true;
		}
		return gridStyleInfo;
	}

	internal void DisposePaintStyle(GridStyleInfo style)
	{
		if (SupportsPrepareViewStyleInfo)
		{
			style.Dispose();
		}
		else
		{
			style.Locked = false;
		}
	}

	protected override void OnEnsurePaintCodeJitted()
	{
		Bitmap bitmap = new Bitmap(2, 2);
		Graphics graphics = Graphics.FromImage(bitmap);
		DrawGrid(graphics, new Rectangle(Point.Empty, bitmap.Size), drawCurrentCell: false, shouldClip: false);
		graphics.Dispose();
		bitmap.Dispose();
	}

	public virtual GridStyleInfo GetViewStyleInfo(int rowIndex, int colIndex, bool forceQueryCellInfo)
	{
		GridViewStyleInfoIdentity gridViewStyleInfoIdentity = new GridViewStyleInfoIdentity(this, Model.volatileData, rowIndex, colIndex);
		GridStyleInfo gridStyleInfo;
		if (forceQueryCellInfo && Model.VolatileData is GridVolatileData)
		{
			gridStyleInfo = new GridStyleInfo(gridViewStyleInfoIdentity, new GridStyleInfoStore(), AllowViewStyleCacheBaseStyleValues);
			Model.GetCellInfo(rowIndex, colIndex, gridStyleInfo);
			gridViewStyleInfoIdentity.InnerIdentity = gridStyleInfo.Identity.InnerIdentity;
		}
		else
		{
			gridStyleInfo = Model[rowIndex, colIndex];
			gridViewStyleInfoIdentity.InnerIdentity = gridStyleInfo.Identity.InnerIdentity;
			gridStyleInfo = new GridStyleInfo(gridViewStyleInfoIdentity, (GridStyleInfoStore)gridStyleInfo.Store.Clone(), AllowViewStyleCacheBaseStyleValues);
		}
		RaisePrepareViewStyleInfo(rowIndex, colIndex, gridStyleInfo);
		return gridStyleInfo;
	}

	protected virtual void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnPrepareViewStyleInfo(e);
		}
		if (this.PrepareViewStyleInfo != null)
		{
			this.PrepareViewStyleInfo(this, e);
		}
	}

	protected virtual void OnDrawCell(GridDrawCellEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDrawCell(e);
		}
		if (this.DrawCell != null)
		{
			this.DrawCell(this, e);
		}
	}

	protected virtual void OnDrawCellDisplayText(GridDrawCellDisplayTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDrawCellDisplayText(e);
		}
		if (this.DrawCellDisplayText != null)
		{
			this.DrawCellDisplayText(this, e);
		}
	}

	protected virtual void OnDrawCellBackground(GridDrawCellBackgroundEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDrawCellBackground(e);
		}
		if (this.DrawCellBackground != null)
		{
			this.DrawCellBackground(this, e);
		}
	}

	public void RaiseDrawCellBackground(GridDrawCellBackgroundEventArgs e)
	{
		OnDrawCellBackground(e);
	}

	public void RaiseDrawCellDisplayText(GridDrawCellDisplayTextEventArgs e)
	{
		OnDrawCellDisplayText(e);
	}

	protected virtual void OnDrawCellFrameAppearance(GridDrawCellBackgroundEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDrawCellFrameAppearance(e);
		}
		if (this.DrawCellFrameAppearance != null)
		{
			this.DrawCellFrameAppearance(this, e);
		}
	}

	public void RaiseDrawCellFrameAppearance(GridDrawCellBackgroundEventArgs e)
	{
		OnDrawCellFrameAppearance(e);
	}

	protected virtual void OnDrawCellButton(GridDrawCellButtonEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDrawCellButton(e);
		}
		if (this.DrawCellButton != null)
		{
			this.DrawCellButton(this, e);
		}
	}

	public void RaiseDrawCellButton(GridDrawCellButtonEventArgs e)
	{
		OnDrawCellButton(e);
	}

	protected virtual void OnDrawCellButtonBackground(GridDrawCellButtonBackgroundEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDrawCellButtonBackground(e);
		}
		if (this.DrawCellButtonBackground != null)
		{
			this.DrawCellButtonBackground(this, e);
		}
	}

	public void RaiseDrawCellButtonBackground(GridDrawCellButtonBackgroundEventArgs e)
	{
		OnDrawCellButtonBackground(e);
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	internal static extern bool LockWindowUpdate(IntPtr hWndLock);

	protected override void OnEnabledChanged(EventArgs e)
	{
		IntPtr hWndLock = ((base.TopLevelControl != null) ? base.TopLevelControl.Handle : base.Handle);
		LockWindowUpdate(hWndLock);
		if (showDisabledGridAsGray && !base.Enabled)
		{
			scrollersFrame1.AttachedTo = this;
		}
		else
		{
			scrollersFrame1.DetachFrame();
		}
		base.OnEnabledChanged(e);
		LockWindowUpdate(IntPtr.Zero);
	}

	protected virtual void OnCellDrawn(GridDrawCellEventArgs e)
	{
		if (!base.Enabled && showDisabledGridAsGray)
		{
			using Brush brush = new SolidBrush(Color.FromArgb(90, Color.LightGray));
			e.Graphics.FillRectangle(brush, e.Bounds);
			e.Style.TextColor = Color.DarkGray;
		}
		if (eventsTarget != null)
		{
			eventsTarget.OnCellDrawn(e);
		}
		if (this.CellDrawn != null)
		{
			this.CellDrawn(this, e);
		}
	}

	protected virtual void OnDrawCurrentCellBorder(GridDrawCurrentCellBorderEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDrawCurrentCellBorder(e);
		}
		if (this.DrawCurrentCellBorder != null)
		{
			this.DrawCurrentCellBorder(this, e);
		}
	}

	public void RaiseDrawCurrentCellBorder(GridDrawCurrentCellBorderEventArgs e)
	{
		OnDrawCurrentCellBorder(e);
	}

	public virtual void DrawSingleCell(Graphics g, int rowIndex, int colIndex, Rectangle cellRectangle, GridStyleInfo style, bool forceDrawBackground, bool drawBorders)
	{
		try
		{
			GridCellRendererBase gridCellRendererBase = CellRenderers[style.CellType];
			GridDrawCellEventArgs e = new GridDrawCellEventArgs(g, gridCellRendererBase, cellRectangle, rowIndex, colIndex, style, isBackgroundErased: false);
			OnDrawCell(e);
			if (!e.Cancel)
			{
				gridCellRendererBase.DrawSingleCell(g, cellRectangle, rowIndex, colIndex, style, drawBorders);
			}
			OnCellDrawn(e);
		}
		catch (Exception ex)
		{
			Trace.WriteLineIf(Switches.GridPaint.TraceWarning, $"Exception in {style.CellType} Cell({rowIndex},{colIndex}): {ex.ToString()}");
			TraceUtil.TraceExceptionCatched(ex);
			if (AllowDrawItemRaiseExceptionCatched && !ExceptionManager.RaiseExceptionCatched(this, ex) && !(ex is FormatException) && !(ex.InnerException is FormatException))
			{
				throw;
			}
			g.FillRectangle(new SolidBrush(Color.Red), cellRectangle);
			g.DrawString("Exception", Font, SystemBrushes.WindowText, cellRectangle);
		}
	}

	[DocumentationExclude]
	public virtual void OnDrawItem(Graphics g, int rowIndex, int colIndex, Rectangle rectItem, GridStyleInfo style)
	{
		GridCellRendererBase gridCellRendererBase = CellRenderers[style.CellType];
		try
		{
			bool isBackgroundErased = !Model.Options.TransparentBackground && !m_bDrawCoveredCell && !m_bForceDrawBackground;
			GridDrawCellEventArgs e = new GridDrawCellEventArgs(g, gridCellRendererBase, rectItem, rowIndex, colIndex, style, isBackgroundErased);
			OnDrawCell(e);
			if (!e.Cancel)
			{
				if (rowIndex != 0 && colIndex != 0 && CurrentCell.HasCurrentCellAt(rowIndex, colIndex) && !gridCellRendererBase.InitalizedAt(rowIndex, colIndex))
				{
					gridCellRendererBase.Initialize(rowIndex, colIndex);
				}
				gridCellRendererBase.Draw(g, rectItem, rowIndex, colIndex, style);
			}
			OnCellDrawn(e);
		}
		catch (Exception ex)
		{
			Trace.WriteLineIf(Switches.GridPaint.TraceWarning, $"Exception in {style.CellType} Cell({rowIndex},{colIndex}): {ex.ToString()}");
			TraceUtil.TraceExceptionCatched(ex);
			if (AllowDrawItemRaiseExceptionCatched && !ExceptionManager.RaiseExceptionCatched(this, ex) && !(ex is FormatException) && !(ex.InnerException is FormatException))
			{
				throw;
			}
			g.FillRectangle(new SolidBrush(Color.Red), rectItem);
			g.DrawString("Exception", Font, SystemBrushes.WindowText, rectItem);
		}
	}

	protected virtual void DrawInvertCell(Graphics g, int rowIndex, int colIndex, Rectangle rectItem, bool inPaint)
	{
		if (!CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
		{
			m_gridPaint.DrawInvertCell(g, rowIndex, colIndex, rectItem, inPaint);
		}
		m_bInvertRect = false;
	}

	[DocumentationExclude]
	public void IntDrawInvertCell(Graphics g, int rowIndex, int colIndex, Rectangle rectItem, bool inPaint)
	{
		DrawInvertCell(g, rowIndex, colIndex, rectItem, inPaint);
	}

	public void DrawGrid(Graphics g)
	{
		m_gridPaint.DrawGrid(g, shouldClip: true);
	}

	public virtual void DrawGrid(Graphics g, bool shouldClip)
	{
		m_gridPaint.DrawGrid(g, shouldClip);
	}

	public void DrawGrid(Graphics g, Rectangle bounds, bool drawCurrentCell)
	{
		DrawGrid(g, bounds, drawCurrentCell, shouldClip: true);
	}

	public void DrawGrid(Graphics g, Rectangle bounds, bool drawCurrentCell, bool shouldClip)
	{
		Rectangle gridBounds = (HasGridBounds ? GridBounds : Rectangle.Empty);
		GridBounds = bounds;
		Region clip = null;
		if (shouldClip)
		{
			clip = g.Clip;
		}
		bool internalHide = CurrentCell.InternalHide;
		bool flag = CurrentCell.StaticDrawing;
		if (!drawCurrentCell)
		{
			CurrentCell.InternalHide = true;
		}
		CurrentCell.StaticDrawing = true;
		_ = ViewLayout.LastVisibleRow;
		Model.FloatingCells.EvaluateFloatingCells(ViewLayout.VisibleCellsRange);
		Model.MergeCells.EvaluateMergeCells(ViewLayout.VisibleCellsRange);
		DrawGrid(g);
		CurrentCell.InternalHide = internalHide;
		CurrentCell.StaticDrawing = flag;
		if (shouldClip)
		{
			g.Clip = clip;
		}
		GridBounds = gridBounds;
	}

	public void DrawClippedGrid(Graphics g, Rectangle clipBounds)
	{
		ViewLayout.Lock();
		_ = ViewLayout.LastVisibleRow;
		Model.FloatingCells.EvaluateFloatingCells(ViewLayout.VisibleCellsRange);
		Model.MergeCells.EvaluateMergeCells(ViewLayout.VisibleCellsRange);
		bool shouldClip = false;
		if (hScrollPixelDelta > 0 || vScrollPixelDelta > 0)
		{
			shouldClip = true;
		}
		m_gridPaint.DrawGrid(g, shouldClip, clipBounds);
		ViewLayout.Unlock();
	}

	public void DrawClippedGrid(Graphics g, Rectangle clipBounds, bool shouldClip)
	{
		ViewLayout.Lock();
		_ = ViewLayout.LastVisibleRow;
		Model.FloatingCells.EvaluateFloatingCells(ViewLayout.VisibleCellsRange);
		Model.MergeCells.EvaluateMergeCells(ViewLayout.VisibleCellsRange);
		m_gridPaint.DrawGrid(g, shouldClip, clipBounds);
		ViewLayout.Unlock();
	}

	public void SetWindowlessBounds(Control renderControl, Rectangle bounds, bool drawCurrentCell)
	{
		if (!HasGridBounds)
		{
			_ = Rectangle.Empty;
		}
		else
		{
			_ = GridBounds;
		}
		GridBounds = bounds;
		_ = CurrentCell.InternalHide;
		staticDrawing = CurrentCell.StaticDrawing;
		this.renderControl = CurrentCell.StaticRenderControl;
		if (!drawCurrentCell)
		{
			CurrentCell.InternalHide = true;
		}
		CurrentCell.StaticDrawing = true;
		CurrentCell.StaticRenderControl = renderControl;
		BeginUpdate(BeginUpdateOptions.Invalidate);
	}

	public void ResetWindowlessBounds()
	{
		CurrentCell.InternalHide = ccHidden;
		CurrentCell.StaticDrawing = staticDrawing;
		CurrentCell.StaticRenderControl = renderControl;
		GridBounds = saveRect;
		EndUpdate(update: false);
	}

	internal void OnDrawBorders(Graphics g, Rectangle rectItem, GridStyleInfo style)
	{
		m_gridPaint.OnDrawBorders(g, rectItem, style);
	}

	public void InvertRect(Graphics g, Rectangle r)
	{
		m_gridPaint.InvertRect(g, r);
	}

	public void OutlineCurrentCellHeader(int nEditRow, int nEditCol, ScrollBars direction)
	{
		if (OutlineCurrentCellHeaderManager != null)
		{
			OutlineCurrentCellHeaderManager.OutlineCurrentCellHeader(nEditRow, nEditCol, direction);
		}
	}

	public virtual void OnDrawClientRowCol(int topRow, int leftCol, int bottomRow, int rightCol, Graphics g, Rectangle rectClip)
	{
		m_gridPaint.DrawClientRowCol(topRow, leftCol, bottomRow, rightCol, g, rectClip);
	}

	protected override void UpdateScrollTips(ScrollEventArgs se)
	{
		if (IsRightToLeft())
		{
			se = new ScrollEventArgs(se.Type, gridScroll.ReverseHScrollValueRTL(se.NewValue));
		}
		base.UpdateScrollTips(se);
	}

	protected override void OnScrollTipFeedback(ScrollTipFeedbackEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnScrollTipFeedback(e);
		}
		if (e.Text == string.Empty)
		{
			if (e.Action == ScrollTipActions.ThumbTrack)
			{
				string text = ((e.ScrollBar != ScrollBars.Horizontal) ? "Row 999999" : "Column AAAA");
				e.Size = base.ScrollTip.GetPreferredSize(text);
			}
			else if (e.Action == ScrollTipActions.Scroll)
			{
				string text2 = ((e.ScrollBar != ScrollBars.Horizontal) ? $"Row {GridRangeInfo.GetNumericLabel(e.Value)}" : $"Column {GridRangeInfo.GetAlphaLabel(e.Value)}");
				e.Text = text2;
			}
		}
		base.OnScrollTipFeedback(e);
	}

	[DocumentationExclude]
	public void InitSplitterControl()
	{
		if (base.FillSplitterPane)
		{
			splitterControl = (IDynamicSplitterFrame)GridUtil.GetParentControl(this, typeof(IDynamicSplitterFrame));
			if (splitterControl != null)
			{
				VScrollBehavior = GridScrollbarMode.Shared | GridScrollbarMode.AutoScroll;
				HScrollBehavior = GridScrollbarMode.Shared | GridScrollbarMode.AutoScroll;
			}
		}
		else
		{
			splitterControl = null;
		}
	}

	[DocumentationExclude]
	protected virtual bool ShouldActivateCurrentCellInEnter()
	{
		if (IsMousePressed)
		{
			if (isMouseDownCalled)
			{
				return ShouldActivateCurrentCell();
			}
			return false;
		}
		return true;
	}

	[DocumentationExclude]
	public bool IsVisibleCell(int rowIndex, int colIndex)
	{
		if (rowIndex <= ViewLayout.LastVisibleRow && colIndex <= ViewLayout.LastVisibleCol)
		{
			GridRangeInfo range = ViewLayout.CombineSpannedRanges(GridRangeInfo.Cell(rowIndex, colIndex));
			return ViewLayout.IsRangeVisible(range);
		}
		return false;
	}

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public void FixCurrentCellGotFocus()
	{
		FixCurrentCellGotFocus(noScroll: false);
	}

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public void FixCurrentCellGotFocus(bool noScroll)
	{
		if (base.DesignMode)
		{
			return;
		}
		if (CurrentCell.HasCurrentCell && (IsVisibleCell(CurrentCell.RowIndex, CurrentCell.ColIndex) || !IsMousePressed) && ViewLayout.ScrollAreaBounds.Contains(ViewLayout.RangeInfoToRectangle(CurrentCell.RangeInfo, GridCellSizeKind.ActualSize)))
		{
			if ((CurrentCell.IsEditing && !CurrentCell.HasControlFocus) || (Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None)
			{
				bool bInDoScroll = ScrollGrid.m_bInDoScroll;
				ScrollGrid.m_bInDoScroll |= noScroll;
				CurrentCell.Renderer.SetHasFocusControl(value: true);
				if (CurrentCell.HasControlFocus || (Model.Options.ShowCurrentCellBorderBehavior & GridShowCurrentCellBorder.GrayWhenLostFocus) != GridShowCurrentCellBorder.AlwaysVisible)
				{
					CurrentCell.Invalidate();
				}
				ScrollGrid.m_bInDoScroll = bInDoScroll;
			}
			else if ((Model.Options.ShowCurrentCellBorderBehavior & GridShowCurrentCellBorder.GrayWhenLostFocus) != GridShowCurrentCellBorder.AlwaysVisible)
			{
				CurrentCell.Invalidate();
			}
		}
		if ((Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None)
		{
			CurrentCell.BeginEdit();
		}
		if (!CurrentCell.HasControlFocus && base.CanSelect && FocusOnMouseDown && WantKeys && !QueryFocusInside())
		{
			Focus();
		}
		else
		{
			CurrentCell.Invalidate();
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public void FixCurrentCellLostFocus()
	{
		if (!base.DesignMode && CurrentCell.HasCurrentCell && IsVisibleCell(CurrentCell.RowIndex, CurrentCell.ColIndex))
		{
			if (CurrentCell.IsEditing && CurrentCell.HasControlFocus)
			{
				CurrentCell.Renderer.SetHasFocusControl(value: false);
				CurrentCell.Invalidate();
			}
			else
			{
				CurrentCell.Invalidate();
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	private void FixDelayedCurrentCellActivate()
	{
		if (delayCurrentCellActivateArgs == null)
		{
			return;
		}
		int rowIndex = Math.Max(delayCurrentCellActivateArgs.RowIndex, Model.Rows.HeaderCount + 1);
		int colIndex = Math.Max(delayCurrentCellActivateArgs.ColIndex, Model.Cols.HeaderCount + 1);
		if (CurrentCell.Activate(rowIndex, colIndex, delayCurrentCellActivateArgs.Options))
		{
			if (!IsMousePressed)
			{
				CurrentCell.ScrollInView(GridScrollCurrentCellReason.Activate);
			}
			delayCurrentCellActivateArgs = null;
			forceCurrentCellMoveTo = true;
		}
	}

	protected override void OnControlGotFocus()
	{
		base.OnControlGotFocus();
		if ((!IsMousePressed || isMouseDownCalled) && !cancelMode)
		{
			FixCurrentCellGotFocus(noScroll: true);
		}
	}

	protected override void OnControlLostFocus()
	{
		base.OnControlLostFocus();
		FixCurrentCellLostFocus();
	}

	protected override void OnEnter(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnEnter(e);
		}
		if (base.IsSplitterPaneClosing)
		{
			return;
		}
		base.OnEnter(e);
		if ((IsMousePressed && !isMouseDownCalled) || cancelMode)
		{
			cancelMode = false;
			return;
		}
		if (ShouldActivateCurrentCellInEnter())
		{
			FixDelayedCurrentCellActivate();
		}
		else if ((Model.Options.ShowCurrentCellBorderBehavior & GridShowCurrentCellBorder.GrayWhenLostFocus) != GridShowCurrentCellBorder.AlwaysVisible)
		{
			CurrentCell.Invalidate();
		}
		if (!IsMousePressed && CurrentCell.HasCurrentCell)
		{
			CurrentCell.ScrollInView(GridScrollCurrentCellReason.GridFocus);
		}
		Model.ActiveGridView = this;
	}

	protected override void OnDeactivated(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnDeactivated(e);
		}
		if (!inOnPaint)
		{
			base.OnDeactivated(e);
			if (ShouldDeactivateCurrentCell())
			{
				delayCurrentCellActivateArgs = new GridCurrentCellActivatingEventArgs(CurrentCell.RowIndex, CurrentCell.ColIndex, GridSetCurrentCellOptions.None);
				CurrentCell.Deactivate(discardChanges: true);
			}
			isMouseDownCalled = false;
		}
	}

	[DocumentationExclude]
	protected virtual bool ShouldDeactivateCurrentCell()
	{
		if (CurrentCell.HasCurrentCell && !CurrentCell.IsModified)
		{
			return (Model.Options.ShowCurrentCellBorderBehavior & GridShowCurrentCellBorder.WhenGridActive) != 0;
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual bool ShouldActivateCurrentCell()
	{
		return true;
	}

	public override bool QueryFocusInside()
	{
		if (!base.Disposing && !base.IsDisposed)
		{
			if (base.DesignMode || base.QueryFocusInside())
			{
				return true;
			}
			if (CurrentCell.HasCurrentCell)
			{
				IQueryFocusInside renderer = CurrentCell.Renderer;
				if (renderer != null)
				{
					return renderer.QueryFocusInside();
				}
			}
		}
		return false;
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnValidating(e);
		}
		if (ignoreNextValidating)
		{
			ignoreNextValidating = false;
			return;
		}
		base.OnValidating(e);
		if (!base.IsSplitterPaneClosing && !e.Cancel)
		{
			OnGridValidating(e);
		}
	}

	protected virtual void OnGridValidating(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnGridValidating(e);
		}
		try
		{
			if (e.Cancel || !CurrentCell.HasCurrentCell || !CurrentCell.IsModified)
			{
				return;
			}
			try
			{
				e.Cancel = !CurrentCell.ConfirmChanges() || !CurrentCell.IsValid;
				if (e.Cancel)
				{
					validatingFailed = true;
					GridCurrentCell currentCell = CurrentCell;
					if (currentCell.ErrorMessage.Length > 0)
					{
						currentCell.DisplayWarningText(currentCell.ErrorMessage);
						currentCell.ResetError();
					}
				}
				ScrollGrid.m_cxOld = 0;
				ScrollGrid.m_cyOld = 0;
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
				validatingFailed = true;
				e.Cancel = true;
				Model.ActiveGridView = this;
				CurrentCell.Activate(CurrentCell.RowIndex, CurrentCell.ColIndex);
				CurrentCell.ErrorMessage = ex.Message;
				CurrentCell.Exception = ex;
			}
		}
		finally
		{
			validatingFailed = e.Cancel;
		}
	}

	internal void NotifyDeactivate()
	{
		if (!base.IsSplitterPaneClosing && !CurrentCell.InShowDropDown && !CurrentCell.IsInActiveOrDeactivate)
		{
			ScrollGrid.m_cxOld = 0;
			ScrollGrid.m_cyOld = 0;
		}
	}

	internal void NotifyActivate()
	{
		ScrollGrid.m_cxOld = 0;
		ScrollGrid.m_cyOld = 0;
	}

	protected virtual void OnWrapCellNextControlInForm(GridWrapCellNextControlInFormEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnWrapCellNextControlInForm(e);
		}
		if (this.WrapCellNextControlInForm != null)
		{
			this.WrapCellNextControlInForm(this, e);
		}
	}

	public void RaiseWrapCellNextControlInForm(GridWrapCellNextControlInFormEventArgs e)
	{
		OnWrapCellNextControlInForm(e);
	}

	public GridControlBase GetOtherSplitRowChildPane(int nSplitRow, int nSplitCol)
	{
		if (splitterControl != null && splitterControl.ColumnCount > 1)
		{
			return splitterControl.GetPane(nSplitRow, 1 - nSplitCol) as GridControlBase;
		}
		return null;
	}

	public GridControlBase GetOtherSplitColumnChildPane(int nSplitRow, int nSplitCol)
	{
		if (splitterControl != null && splitterControl.RowCount > 1)
		{
			return splitterControl.GetPane(1 - nSplitRow, nSplitCol) as GridControlBase;
		}
		return null;
	}

	internal bool RaiseCurrentCellMoving(ref int rowIndex, ref int colIndex, ref GridSetCurrentCellOptions options)
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		GridCurrentCellMovingEventArgs e = new GridCurrentCellMovingEventArgs(rowIndex, colIndex, options);
		if (!CurrentCell.StaticDrawing && !CheckDelayInitialActivateCC(e))
		{
			return false;
		}
		OnCurrentCellMoving(e);
		options = e.Options;
		rowIndex = e.RowIndex;
		colIndex = e.ColIndex;
		return !e.Cancel;
	}

	internal void RaiseCurrentCellMoved(GridSetCurrentCellOptions options)
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			GridCurrentCellMovedEventArgs e = new GridCurrentCellMovedEventArgs(options);
			OnCurrentCellMoved(e);
		}
	}

	internal void RaiseCurrentCellMoveFailed(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed && delayCurrentCellActivateArgs == null)
		{
			GridCurrentCellMoveFailedEventArgs e = new GridCurrentCellMoveFailedEventArgs(rowIndex, colIndex, options);
			OnCurrentCellMoveFailed(e);
		}
	}

	internal bool RaiseCurrentCellActivating(ref int rowIndex, ref int colIndex, ref GridSetCurrentCellOptions options)
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		GridCurrentCellActivatingEventArgs e = new GridCurrentCellActivatingEventArgs(rowIndex, colIndex, options);
		if (!CurrentCell.StaticDrawing && !CheckDelayInitialActivateCC(e))
		{
			return false;
		}
		OnCurrentCellActivating(e);
		rowIndex = e.RowIndex;
		colIndex = e.ColIndex;
		options = e.Options;
		return !e.Cancel;
	}

	internal void RaiseCurrentCellActivated()
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			OnCurrentCellActivated(EventArgs.Empty);
		}
	}

	internal void RaiseCurrentCellActivateFailed(int rowIndex, int colIndex)
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed && delayCurrentCellActivateArgs == null)
		{
			GridCurrentCellActivateFailedEventArgs e = new GridCurrentCellActivateFailedEventArgs(rowIndex, colIndex);
			OnCurrentCellActivateFailed(e);
		}
	}

	public bool RaiseCurrentCellDeleting()
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		CancelEventArgs e = new CancelEventArgs();
		OnCurrentCellDeleting(e);
		return !e.Cancel;
	}

	internal bool RaiseCurrentCellChanging()
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		CancelEventArgs e = new CancelEventArgs();
		OnCurrentCellChanging(e);
		return !e.Cancel;
	}

	internal void RaiseCurrentCellChanged()
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			OnCurrentCellChanged(EventArgs.Empty);
		}
	}

	internal bool RaiseCurrentCellDeactivating()
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		CancelEventArgs e = new CancelEventArgs();
		OnCurrentCellDeactivating(e);
		return !e.Cancel;
	}

	internal void RaiseCurrentCellDeactivateFailed()
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			OnCurrentCellDeactivateFailed(EventArgs.Empty);
		}
	}

	internal bool RaiseCurrentCellValidating()
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		CancelEventArgs e = new CancelEventArgs();
		OnCurrentCellValidating(e);
		return !e.Cancel;
	}

	public void RaiseCurrentCellValidated()
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			OnCurrentCellValidated(EventArgs.Empty);
		}
	}

	public bool RaiseCurrentCellInitializeControlText(GridCurrentCellInitializeControlTextEventArgs e)
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		OnCurrentCellInitializeControlText(e);
		return !e.Cancel;
	}

	protected virtual void OnCurrentCellInitializeControlText(GridCurrentCellInitializeControlTextEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellInitializeControlText(e);
		}
		if (this.CurrentCellInitializeControlText != null)
		{
			this.CurrentCellInitializeControlText(this, e);
		}
	}

	public bool RaiseCurrentCellErrorMessage(GridCurrentCellErrorMessageEventArgs e)
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		OnCurrentCellErrorMessage(e);
		return !e.Cancel;
	}

	protected virtual void OnCurrentCellErrorMessage(GridCurrentCellErrorMessageEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellErrorMessage(e);
		}
		if (this.CurrentCellErrorMessage != null)
		{
			this.CurrentCellErrorMessage(this, e);
		}
	}

	internal bool RaiseCurrentCellAcceptedChanges()
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		CancelEventArgs e = new CancelEventArgs();
		OnCurrentCellAcceptedChanges(e);
		return !e.Cancel;
	}

	internal void RaiseCurrentCellConfirmChangesFailed()
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			OnCurrentCellConfirmChangesFailed(EventArgs.Empty);
		}
	}

	internal void RaiseCurrentCellRejectedChanges()
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			OnCurrentCellRejectedChanges(EventArgs.Empty);
		}
	}

	internal void RaiseCurrentCellEditingComplete()
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			OnCurrentCellEditingComplete(EventArgs.Empty);
		}
	}

	internal bool RaiseCurrentCellStartEditing()
	{
		if (CurrentCell.IsSuspendEvents || base.IsDisposed)
		{
			return true;
		}
		CancelEventArgs e = new CancelEventArgs();
		OnCurrentCellStartEditing(e);
		return !e.Cancel;
	}

	internal void RaiseCurrentCellDeactivated(int rowIndex, int colIndex)
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			GridCurrentCellDeactivatedEventArgs e = new GridCurrentCellDeactivatedEventArgs(rowIndex, colIndex);
			OnCurrentCellDeactivated(e);
		}
	}

	internal void RaiseCurrentCellControlDoubleClick(Control control)
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			ControlEventArgs e = new ControlEventArgs(control);
			OnCurrentCellControlDoubleClick(e);
		}
	}

	internal void RaiseCurrentCellControlGotFocus(Control control)
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			ControlEventArgs e = new ControlEventArgs(control);
			OnCurrentCellControlGotFocus(e);
		}
	}

	internal void RaiseCurrentCellControlLostFocus(Control control)
	{
		if (!CurrentCell.IsSuspendEvents && !base.IsDisposed)
		{
			ControlEventArgs e = new ControlEventArgs(control);
			OnCurrentCellControlLostFocus(e);
		}
	}

	public bool RaiseCellButtonClicked(int rowIndex, int colIndex, int index, GridCellButton button)
	{
		GridCellButtonClickedEventArgs e = new GridCellButtonClickedEventArgs(rowIndex, colIndex, index, button);
		try
		{
			OnCellButtonClicked(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	protected virtual void OnCellButtonClicked(GridCellButtonClickedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellButtonClicked(e);
		}
		if (this.CellButtonClicked != null)
		{
			this.CellButtonClicked(this, e);
		}
	}

	protected virtual void OnCurrentCellShowedDropDown(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellShowedDropDown(e);
		}
		if (this.CurrentCellShowedDropDown != null)
		{
			this.CurrentCellShowedDropDown(this, e);
		}
	}

	public void RaiseCurrentCellShowedDropDown(EventArgs e)
	{
		OnCurrentCellShowedDropDown(e);
	}

	protected virtual void OnCurrentCellCloseDropDown(PopupClosedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellCloseDropDown(e);
		}
		if (this.CurrentCellCloseDropDown != null)
		{
			this.CurrentCellCloseDropDown(this, e);
		}
	}

	public void RaiseCurrentCellCloseDropDown(PopupClosedEventArgs e)
	{
		OnCurrentCellCloseDropDown(e);
	}

	protected virtual void OnCurrentCellShowingDropDown(GridCurrentCellShowingDropDownEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellShowingDropDown(e);
		}
		if (this.CurrentCellShowingDropDown != null)
		{
			this.CurrentCellShowingDropDown(this, e);
		}
	}

	public void RaiseCurrentCellShowingDropDown(GridCurrentCellShowingDropDownEventArgs e)
	{
		OnCurrentCellShowingDropDown(e);
	}

	protected virtual void OnCurrentCellControlKeyMessage(GridCurrentCellControlKeyMessageEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellControlKeyMessage(e);
		}
		if (this.CurrentCellControlKeyMessage != null)
		{
			this.CurrentCellControlKeyMessage(this, e);
		}
	}

	public void RaiseCurrentCellControlKeyMessage(GridCurrentCellControlKeyMessageEventArgs e)
	{
		OnCurrentCellControlKeyMessage(e);
	}

	public virtual bool NotifyCurrentCellControlPreProcessMessage(ref Message msg)
	{
		if (tabKeyNavigationInPreProcessMessage && HandleTabKeyPreProcessMessage(ref msg))
		{
			return true;
		}
		return false;
	}

	private bool HandleTabKeyPreProcessMessage(ref Message msg)
	{
		if (msg.Msg >= 256 && msg.Msg <= 264 && ((int)msg.WParam & 0xFF) == 9)
		{
			if (((int)msg.WParam & 0xFF) == 9)
			{
				if ((Control.ModifierKeys & Keys.Shift) != Keys.None)
				{
					CurrentCell.MoveLeft();
				}
				else
				{
					CurrentCell.MoveRight();
				}
			}
			return true;
		}
		return false;
	}

	public bool NotifyCurrentCellControlWndProc(ref Message msg)
	{
		if (msg.Msg == 135 && wmGetDlgCodeValue != -1)
		{
			msg.Result = (IntPtr)wmGetDlgCodeValue;
			return true;
		}
		return false;
	}

	public void SetWmGetDlgCodeValue(int value)
	{
		wmGetDlgCodeValue = value;
	}

	protected virtual void OnCellHitTest(GridCellHitTestEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellHitTest(e);
		}
		if (this.CellHitTest != null)
		{
			this.CellHitTest(this, e);
		}
	}

	public void RaiseCellHitTest(GridCellHitTestEventArgs e)
	{
		OnCellHitTest(e);
	}

	protected virtual void OnCellCursor(GridCellCursorEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellCursor(e);
		}
		if (this.CellCursor != null)
		{
			this.CellCursor(this, e);
		}
	}

	public void RaiseCellCursor(GridCellCursorEventArgs e)
	{
		OnCellCursor(e);
	}

	protected virtual void OnCellMouseHoverEnter(GridCellMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellMouseHoverEnter(e);
		}
		if (this.CellMouseHoverEnter != null)
		{
			this.CellMouseHoverEnter(this, e);
		}
	}

	public void RaiseCellMouseHoverEnter(GridCellMouseEventArgs e)
	{
		OnCellMouseHoverEnter(e);
	}

	protected virtual void OnCellMouseHover(GridCellMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellMouseHover(e);
		}
		if (this.CellMouseHover != null)
		{
			this.CellMouseHover(this, e);
		}
	}

	public void RaiseCellMouseHover(GridCellMouseEventArgs e)
	{
		OnCellMouseHover(e);
	}

	protected virtual void OnCellMouseHoverLeave(GridCellMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellMouseHoverLeave(e);
		}
		if (this.CellMouseHoverLeave != null)
		{
			this.CellMouseHoverLeave(this, e);
		}
	}

	public void RaiseCellMouseHoverLeave(GridCellMouseEventArgs e)
	{
		OnCellMouseHoverLeave(e);
	}

	protected virtual void OnCellMouseDown(GridCellMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellMouseDown(e);
		}
		if (this.CellMouseDown != null)
		{
			this.CellMouseDown(this, e);
		}
	}

	public void RaiseCellMouseDown(GridCellMouseEventArgs e)
	{
		OnCellMouseDown(e);
	}

	protected virtual void OnCellMouseMove(GridCellMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellMouseMove(e);
		}
		if (this.CellMouseMove != null)
		{
			this.CellMouseMove(this, e);
		}
	}

	public void RaiseCellMouseMove(GridCellMouseEventArgs e)
	{
		OnCellMouseMove(e);
	}

	protected virtual void OnCellMouseUp(GridCellMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellMouseUp(e);
		}
		if (this.CellMouseUp != null)
		{
			this.CellMouseUp(this, e);
		}
	}

	public void RaiseCellMouseUp(GridCellMouseEventArgs e)
	{
		OnCellMouseUp(e);
	}

	protected virtual void OnCellCancelMode(GridCellMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellCancelMode(e);
		}
		if (this.CellCancelMode != null)
		{
			this.CellCancelMode(this, e);
		}
	}

	public void RaiseCellCancelMode(GridCellMouseEventArgs e)
	{
		OnCellCancelMode(e);
	}

	internal void RaiseScrollInfoChanged()
	{
		OnScrollInfoChanged(EventArgs.Empty);
	}

	protected virtual void OnScrollInfoChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnScrollInfoChanged(e);
		}
		if (this.ScrollInfoChanged != null)
		{
			this.ScrollInfoChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnCurrentCellMoving(GridCurrentCellMovingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellMoving(e);
		}
		if (this.CurrentCellMoving != null)
		{
			this.CurrentCellMoving(this, e);
		}
	}

	protected virtual void OnCurrentCellMoved(GridCurrentCellMovedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellMoved(e);
		}
		if (this.CurrentCellMoved != null)
		{
			this.CurrentCellMoved(this, e);
		}
	}

	protected virtual void OnCurrentCellMoveFailed(GridCurrentCellMoveFailedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellMoveFailed(e);
		}
		if (this.CurrentCellMoveFailed != null)
		{
			this.CurrentCellMoveFailed(this, e);
		}
	}

	internal bool CheckDelayInitialActivateCC(GridCurrentCellActivatingEventArgs e)
	{
		WantKeys = GetStyle(ControlStyles.Selectable);
		if (!WantKeys)
		{
			return true;
		}
		if (!forceCurrentCellMoveTo && !CurrentCell.HasCurrentCell && !IsActiveControl)
		{
			delayCurrentCellActivateArgs = e;
			e.Cancel = true;
			return false;
		}
		return true;
	}

	protected virtual void OnCurrentCellActivating(GridCurrentCellActivatingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellActivating(e);
		}
		if (this.CurrentCellActivating != null)
		{
			this.CurrentCellActivating(this, e);
		}
		delayCurrentCellActivateArgs = null;
	}

	protected virtual void OnPushButtonClick(GridCellPushButtonClickEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnPushButtonClick(e);
		}
		if (this.PushButtonClick != null)
		{
			this.PushButtonClick(this, e);
		}
	}

	public void RaisePushButtonClick(int rowIndex, int colIndex)
	{
		GridCellPushButtonClickEventArgs e = new GridCellPushButtonClickEventArgs(rowIndex, colIndex);
		OnPushButtonClick(e);
	}

	protected virtual void OnCellClick(GridCellClickEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellClick(e);
		}
		if (this.CellClick != null)
		{
			this.CellClick(this, e);
		}
	}

	public bool RaiseCellClick(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs, bool overImage)
	{
		GridCellClickEventArgs e = new GridCellClickEventArgs(rowIndex, colIndex, mouseEventArgs, overImage);
		OnCellClick(e);
		return !e.Cancel;
	}

	public bool RaiseCellClick(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs)
	{
		GridCellClickEventArgs e = new GridCellClickEventArgs(rowIndex, colIndex, mouseEventArgs, overImage: false);
		OnCellClick(e);
		return !e.Cancel;
	}

	protected virtual void OnCheckBoxClick(GridCellClickEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCheckBoxClick(e);
		}
		if (this.CheckBoxClick != null)
		{
			this.CheckBoxClick(this, e);
		}
	}

	public bool RaiseCheckBoxClick(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs)
	{
		GridCellClickEventArgs e = new GridCellClickEventArgs(rowIndex, colIndex, mouseEventArgs, overImage: false);
		OnCheckBoxClick(e);
		return !e.Cancel;
	}

	protected virtual void OnCellDoubleClick(GridCellClickEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCellDoubleClick(e);
		}
		if (this.CellDoubleClick != null)
		{
			this.CellDoubleClick(this, e);
		}
	}

	public bool RaiseCellDoubleClick(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs, bool overImage)
	{
		GridCellClickEventArgs e = new GridCellClickEventArgs(rowIndex, colIndex, mouseEventArgs, overImage);
		OnCellDoubleClick(e);
		return !e.Cancel;
	}

	public bool RaiseCellDoubleClick(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs)
	{
		GridCellClickEventArgs e = new GridCellClickEventArgs(rowIndex, colIndex, mouseEventArgs, overImage: false);
		OnCellDoubleClick(e);
		return !e.Cancel;
	}

	protected virtual void OnCurrentCellActivated(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellActivated(e);
		}
		if (this.CurrentCellActivated != null)
		{
			this.CurrentCellActivated(this, e);
		}
	}

	protected virtual void OnCurrentCellActivateFailed(GridCurrentCellActivateFailedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellActivateFailed(e);
		}
		if (this.CurrentCellActivateFailed != null)
		{
			this.CurrentCellActivateFailed(this, e);
		}
	}

	protected virtual void OnCurrentCellDeleting(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellDeleting(e);
		}
		if (this.CurrentCellDeleting != null)
		{
			this.CurrentCellDeleting(this, e);
		}
	}

	protected virtual void OnCurrentCellStartEditing(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellStartEditing(e);
		}
		if (this.CurrentCellStartEditing != null)
		{
			this.CurrentCellStartEditing(this, e);
		}
	}

	public virtual void OnCurrentCellKeyDown(KeyEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellKeyDown(e);
		}
		if (this.CurrentCellKeyDown != null)
		{
			this.CurrentCellKeyDown(this, e);
		}
		DefaultCurrentCellKeyDown(e);
	}

	private void DefaultCurrentCellKeyDown(KeyEventArgs e)
	{
		if (e.Handled)
		{
			return;
		}
		_ = Control.ModifierKeys;
		_ = Control.ModifierKeys;
		_ = Control.ModifierKeys;
		Keys keyCode = e.KeyCode;
		if (keyCode == Keys.Escape && WantEscapeKey)
		{
			CancelUpdate();
			if (CurrentCell.IsDroppedDown)
			{
				CurrentCell.CloseDropDown(PopupCloseType.Canceled);
				e.Handled = true;
			}
			else if (CurrentCell.IsModified)
			{
				CurrentCell.RejectChanges();
				CurrentCell.CancelEdit();
				CurrentCell.Refresh();
				Focus();
				e.Handled = true;
			}
			else
			{
				CurrentCell.CancelEdit();
				CurrentCell.Refresh();
				Focus();
			}
			Update();
			FixCurrentCellGotFocus();
		}
	}

	public virtual void OnCurrentCellKeyUp(KeyEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellKeyUp(e);
		}
		if (this.CurrentCellKeyUp != null)
		{
			this.CurrentCellKeyUp(this, e);
		}
	}

	public virtual void OnCurrentCellKeyPress(KeyPressEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellKeyPress(e);
		}
		if (this.CurrentCellKeyPress != null)
		{
			this.CurrentCellKeyPress(this, e);
		}
	}

	public virtual void OnCurrentCellValidateString(GridCurrentCellValidateStringEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellValidateString(e);
		}
		if (this.CurrentCellValidateString != null)
		{
			this.CurrentCellValidateString(this, e);
		}
	}

	protected virtual void OnCurrentCellChanging(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellChanging(e);
		}
		if (this.CurrentCellChanging != null)
		{
			this.CurrentCellChanging(this, e);
		}
	}

	protected virtual void NotifyCurrentCellChanged()
	{
		CurrentCell.NotifyChanged();
	}

	internal void RaiseNotifyCurrentCellChanged()
	{
		NotifyCurrentCellChanged();
	}

	protected virtual void OnCurrentCellChanged(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellChanged(e);
		}
		if (this.CurrentCellChanged != null)
		{
			this.CurrentCellChanged(this, e);
		}
	}

	protected virtual void OnCurrentCellDeactivating(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellDeactivating(e);
		}
		if (this.CurrentCellDeactivating != null)
		{
			this.CurrentCellDeactivating(this, e);
		}
	}

	protected virtual void OnCurrentCellValidating(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellValidating(e);
		}
		if (this.CurrentCellValidating != null)
		{
			this.CurrentCellValidating(this, e);
		}
	}

	protected virtual void OnCurrentCellValidated(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellValidated(e);
		}
		if (this.CurrentCellValidated != null)
		{
			this.CurrentCellValidated(this, e);
		}
	}

	protected virtual void OnCurrentCellAcceptedChanges(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellAcceptedChanges(e);
		}
		if (this.CurrentCellAcceptedChanges != null)
		{
			this.CurrentCellAcceptedChanges(this, e);
		}
	}

	protected virtual void OnCurrentCellConfirmChangesFailed(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellConfirmChangesFailed(e);
		}
		if (this.CurrentCellConfirmChangesFailed != null)
		{
			this.CurrentCellConfirmChangesFailed(this, e);
		}
	}

	protected virtual void OnCurrentCellRejectedChanges(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellRejectedChanges(e);
		}
		if (this.CurrentCellRejectedChanges != null)
		{
			this.CurrentCellRejectedChanges(this, e);
		}
	}

	protected virtual void OnCurrentCellEditingComplete(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellEditingComplete(e);
		}
		if (this.CurrentCellEditingComplete != null)
		{
			this.CurrentCellEditingComplete(this, e);
		}
	}

	protected virtual void OnCurrentCellDeactivated(GridCurrentCellDeactivatedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellDeactivated(e);
		}
		if (this.CurrentCellDeactivated != null)
		{
			this.CurrentCellDeactivated(this, e);
		}
	}

	protected virtual void OnCurrentCellDeactivateFailed(EventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellDeactivateFailed(e);
		}
		if (this.CurrentCellDeactivateFailed != null)
		{
			this.CurrentCellDeactivateFailed(this, e);
		}
	}

	protected virtual void OnCurrentCellControlDoubleClick(ControlEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellControlDoubleClick(e);
		}
		if (this.CurrentCellControlDoubleClick != null)
		{
			this.CurrentCellControlDoubleClick(this, e);
		}
	}

	protected virtual void OnCurrentCellControlGotFocus(ControlEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellControlGotFocus(e);
		}
		if (this.CurrentCellControlGotFocus != null)
		{
			this.CurrentCellControlGotFocus(this, e);
		}
	}

	protected virtual void OnCurrentCellControlLostFocus(ControlEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnCurrentCellControlLostFocus(e);
		}
		if (this.CurrentCellControlLostFocus != null)
		{
			this.CurrentCellControlLostFocus(this, e);
		}
	}

	public bool GetNextCurrentCellPosition(GridDirectionType direction, ref int rowIndex, ref int colIndex)
	{
		GridQueryNextCurrentCellPositionEventArgs e = new GridQueryNextCurrentCellPositionEventArgs(direction, rowIndex, colIndex);
		OnQueryNextCurrentCellPosition(e);
		if (e.Handled)
		{
			rowIndex = e.RowIndex;
			colIndex = e.ColIndex;
			return e.Result;
		}
		return CurrentCell.QueryNextEnabledCell(direction, ref rowIndex, ref colIndex);
	}

	protected virtual void OnMoveCurrentCellDirection(GridMoveCurrentCellDirectionEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnMoveCurrentCellDirection(e);
		}
		if (this.MoveCurrentCellDirection != null)
		{
			this.MoveCurrentCellDirection(this, e);
		}
	}

	internal void RaiseMoveCurrentCellDirection(GridMoveCurrentCellDirectionEventArgs e)
	{
		OnMoveCurrentCellDirection(e);
	}

	protected virtual void OnQueryNextCurrentCellPosition(GridQueryNextCurrentCellPositionEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryNextCurrentCellPosition(e);
		}
		if (this.QueryNextCurrentCellPosition != null)
		{
			this.QueryNextCurrentCellPosition(this, e);
		}
	}

	public void InternalSetCurrentCellObject(GridCurrentCell c)
	{
		if (gridCurrentCell != c)
		{
			gridCurrentCell = c;
		}
	}

	public virtual bool IsShowCurrentRow(int rowIndex)
	{
		return CurrentCell.HasCurrentCellAt(rowIndex);
	}

	private void ResetRepeatKeyCounter()
	{
		m_nRepeatKeyCounter = 0;
	}

	protected override bool ProcessDialogChar(char charCode)
	{
		if (wantKeys)
		{
			bool flag = (Control.ModifierKeys & Keys.Alt) != 0;
			char c = charCode;
			if (c == '\b')
			{
				if (flag)
				{
					_Undo();
				}
				return true;
			}
		}
		return base.ProcessDialogChar(charCode);
	}

	private void _Undo()
	{
		Model.CommandStack.Undo();
	}

	protected virtual GridCurrentCell GetCurrentCell()
	{
		return CurrentCell;
	}

	public virtual bool ProcessTabKeyMovingFocus(bool forward)
	{
		Keys keyData = (Keys)(9 | ((!forward) ? 65536 : 0));
		return base.ProcessDialogKey(keyData);
	}

	protected override bool ProcessDialogKey(Keys key)
	{
		if (wantKeys)
		{
			if (base.IsDisposed)
			{
				return true;
			}
			Keys keys = key & Keys.KeyCode;
			bool flag = (Control.ModifierKeys & Keys.Shift) != 0;
			_ = Control.ModifierKeys;
			if (wantsTabKey && !tabKeyNavigationInPreProcessMessage)
			{
				Keys keys2 = keys;
				if (keys2 == Keys.Tab)
				{
					if (flag)
					{
						GetCurrentCell().MoveLeft();
					}
					else
					{
						GetCurrentCell().MoveRight();
					}
					return true;
				}
			}
			if (!wantsTabKey && keys == Keys.Tab && allowSelectNextControlinProcessDialogKey)
			{
				ContainerControl containerControl = (ContainerControl)GridUtil.GetParentControl(this, typeof(ContainerControl));
				if (containerControl != null)
				{
					Control parentControl = GridUtil.GetParentControl(containerControl.ActiveControl, typeof(GridControlBase));
					if (parentControl is GridControlBase)
					{
						if (flag)
						{
							containerControl.SelectNextControl(parentControl, forward: false, tabStopOnly: true, nested: true, wrap: true);
							return true;
						}
						containerControl.SelectNextControl(parentControl, forward: true, tabStopOnly: true, nested: true, wrap: true);
						return true;
					}
				}
			}
		}
		return base.ProcessDialogKey(key);
	}

	protected override bool IsInputKey(Keys keyData)
	{
		if (wantKeys)
		{
			switch (keyData & Keys.KeyCode)
			{
			case Keys.Tab:
				if (wantsTabKey)
				{
					return (Control.ModifierKeys & (Keys.Control | Keys.Alt)) == 0;
				}
				break;
			case Keys.Escape:
				return wantsEscapeKey;
			case Keys.Return:
				return wantsEnterKey;
			case Keys.Prior:
			case Keys.Next:
			case Keys.End:
			case Keys.Home:
			case Keys.Left:
			case Keys.Up:
			case Keys.Right:
			case Keys.Down:
			case Keys.Insert:
			case Keys.Delete:
			case Keys.F2:
				return true;
			case Keys.Back:
				return (Control.ModifierKeys & Keys.Control) == 0;
			}
		}
		return base.IsInputKey(keyData);
	}

	protected override bool IsInputChar(char charCode)
	{
		if (wantKeys)
		{
			return true;
		}
		return base.IsInputChar(charCode);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override bool ProcessKeyEventArgs(ref Message m)
	{
		if (wantKeys)
		{
			if (base.IsDisposed)
			{
				return true;
			}
			GridCellRendererBase renderer = CurrentCell.Renderer;
			if (renderer != null && renderer.RaiseProcessKeyEventArgs(ref m))
			{
				return true;
			}
		}
		return base.ProcessKeyEventArgs(ref m);
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		Keys keys = keyData & Keys.KeyCode;
		if ((Control.ModifierKeys & Keys.Control) != Keys.None && (keys == Keys.V || keys == Keys.C || keys == Keys.X))
		{
			Form form = FindParentForm();
			if (form != null && form.IsMdiChild && (msg.Msg == 256 || msg.Msg == 260))
			{
				OnCurrentCellKeyDown(new KeyEventArgs(keyData));
				OnKeyDown(new KeyEventArgs(keyData));
				return true;
			}
		}
		return base.ProcessCmdKey(ref msg, keyData);
	}

	public virtual bool ShouldDeleteKeyClearCurrentCellContentsOnly()
	{
		GridRangeInfoList ranges = Model.Selections.Ranges;
		if (Control.ModifierKeys == Keys.None && (ranges.Count == 0 || (ranges.Count == 1 && ranges[0] == GridRangeInfo.Cell(CurrentCell.RowIndex, CurrentCell.ColIndex))))
		{
			return true;
		}
		return false;
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnKeyDown(e);
		}
		base.OnKeyDown(e);
		bool flag = false;
		if (!wantKeys || e.Handled || base.IsDisposed)
		{
			return;
		}
		bool flag2 = false;
		Keys modifierKeys = Control.ModifierKeys;
		Keys keys = e.KeyCode & Keys.KeyCode;
		bool flag3 = (e.Modifiers & Keys.Control) != 0;
		bool flag4 = (e.Modifiers & Keys.Shift) != 0;
		bool extendSelection = (modifierKeys & Keys.Shift) != 0;
		bool flag5 = (e.Modifiers & Keys.Menu) != 0;
		bool flag6 = false;
		int arrowKeyLineCount = ArrowKeyLineCount;
		if (Capture)
		{
			if (keys == Keys.Escape)
			{
				NotifyCancelMode();
			}
			flag = true;
		}
		else
		{
			_ = CurrentCell.Renderer;
			cancelMode = false;
			switch (keys)
			{
			case Keys.Tab:
				if (!flag3 && !flag5 && !tabKeyNavigationInPreProcessMessage)
				{
					if (flag4)
					{
						GetCurrentCell().MoveLeft();
					}
					else
					{
						GetCurrentCell().MoveRight();
					}
					flag = true;
				}
				break;
			case Keys.Next:
				if (!flag3 && !flag5)
				{
					flag6 = CurrentCell.Move(GridDirectionType.PageDown, Math.Max(1, arrowKeyLineCount), extendSelection);
					flag = true;
					flag2 = Control.ModifierKeys == Keys.None && flag6 && !cancelMode;
				}
				break;
			case Keys.Prior:
				if (!flag3 && !flag5)
				{
					flag6 = CurrentCell.Move(GridDirectionType.PageUp, Math.Max(1, arrowKeyLineCount), extendSelection);
					flag = true;
					flag2 = Control.ModifierKeys == Keys.None && flag6 && !cancelMode;
				}
				break;
			case Keys.Up:
				if (!flag5)
				{
					flag6 = CurrentCell.Move((!flag3) ? GridDirectionType.Up : GridDirectionType.Top, Math.Max(1, arrowKeyLineCount), extendSelection);
					flag = true;
					flag2 = Control.ModifierKeys == Keys.None && flag6 && !cancelMode;
				}
				break;
			case Keys.Down:
				if (!flag5)
				{
					flag6 = CurrentCell.Move(flag3 ? GridDirectionType.Bottom : GridDirectionType.Down, Math.Max(1, arrowKeyLineCount), extendSelection);
					flag = true;
					flag2 = Control.ModifierKeys == Keys.None && flag6 && !cancelMode;
				}
				break;
			case Keys.Left:
				if (!flag5)
				{
					flag6 = ((!IsRightToLeft()) ? CurrentCell.Move(flag3 ? GridDirectionType.MostLeft : GridDirectionType.Left, Math.Max(1, arrowKeyLineCount), extendSelection) : CurrentCell.Move(flag3 ? GridDirectionType.MostRight : GridDirectionType.Right, Math.Max(1, arrowKeyLineCount), extendSelection));
					flag = true;
					flag2 = Control.ModifierKeys == Keys.None && flag6 && !cancelMode;
				}
				break;
			case Keys.Right:
				if (!flag5)
				{
					flag6 = ((!IsRightToLeft()) ? CurrentCell.Move(flag3 ? GridDirectionType.MostRight : GridDirectionType.Right, Math.Max(1, arrowKeyLineCount), extendSelection) : CurrentCell.Move(flag3 ? GridDirectionType.MostLeft : GridDirectionType.Left, Math.Max(1, arrowKeyLineCount), extendSelection));
					flag = true;
					flag2 = Control.ModifierKeys == Keys.None && flag6 && !cancelMode;
				}
				break;
			case Keys.F2:
				if (flag3 || flag5 || flag4)
				{
					break;
				}
				if (!CurrentCell.IsEditing)
				{
					CurrentCell.BeginEdit();
					flag = true;
					break;
				}
				try
				{
					CurrentCell.EndEdit();
					CurrentCell.Refresh();
					Focus();
					FixCurrentCellGotFocus();
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex))
					{
						throw;
					}
					bool flag7 = HasControlFocus;
					if (ex.Message.Length > 0)
					{
						MessageBox.Show(FindFormHelper.FindForm(this), ex.Message);
					}
					if (flag7 && !base.ContainsFocus)
					{
						Focus();
					}
				}
				flag = true;
				break;
			case Keys.Return:
				if (!flag5 && !flag3 && !flag4)
				{
					GridDirectionType enterKeyBehavior = Model.Options.EnterKeyBehavior;
					if (CurrentCell.ConfirmChanges() && enterKeyBehavior != GridDirectionType.None)
					{
						CurrentCell.Move(enterKeyBehavior, 1, extendSelection);
					}
					else if (CurrentCell.ErrorMessage.Length > 0)
					{
						CurrentCell.DisplayWarningText(CurrentCell.ErrorMessage);
						CurrentCell.ResetError();
					}
					flag = true;
				}
				break;
			case Keys.Home:
				if (flag3 && !flag5)
				{
					CurrentCell.Move(GridDirectionType.TopLeft, 1, extendSelection);
					flag = true;
				}
				break;
			case Keys.End:
				if (flag3 && !flag5)
				{
					CurrentCell.Move(GridDirectionType.BottomRight, 1, extendSelection);
					flag = true;
				}
				break;
			case Keys.Z:
				if (flag3 && !flag5)
				{
					_Undo();
					flag = true;
				}
				break;
			case Keys.Y:
				if (flag3 && !flag5)
				{
					Model.CommandStack.Redo();
					flag = true;
				}
				break;
			case Keys.R:
				if (flag3 && !flag5)
				{
					Model.CommandStack.Redo();
					flag = true;
				}
				break;
			case Keys.C:
				if (flag3 && !flag5)
				{
					if (Model.CutPaste.CanCopy())
					{
						Model.CutPaste.Copy();
					}
					flag = true;
				}
				break;
			case Keys.V:
				if (flag3 && !flag5)
				{
					if (Model.CutPaste.CanPaste() && (!CurrentCell.HasCurrentCell || CurrentCell.NotifyChanging()))
					{
						Model.CutPaste.Paste();
					}
					flag = true;
				}
				break;
			case Keys.X:
				if (flag3 && !flag5)
				{
					if (Model.CutPaste.CanCut() && (!CurrentCell.HasCurrentCell || CurrentCell.NotifyChanging()))
					{
						Model.CutPaste.Cut();
					}
					flag = true;
				}
				break;
			case Keys.Insert:
				if (flag5)
				{
					break;
				}
				if (flag3)
				{
					if (Model.CutPaste.CanCopy())
					{
						Model.CutPaste.Copy();
					}
					flag = true;
				}
				else if (flag4)
				{
					if (Model.CutPaste.CanPaste())
					{
						Model.CutPaste.Paste();
					}
					flag = true;
				}
				break;
			case Keys.Delete:
				if (!flag5 && flag4)
				{
					if (Model.CutPaste.CanCut())
					{
						Model.CutPaste.Cut();
					}
					flag = true;
				}
				if (!flag)
				{
					Model.Clear(flag3);
					flag = true;
				}
				break;
			case Keys.Back:
				if (!flag4)
				{
					if (flag3)
					{
						Model.CommandStack.Redo();
						Focus();
						flag = true;
					}
					else if (flag5)
					{
						_Undo();
						flag = true;
					}
				}
				break;
			case Keys.Escape:
				if (!WantEscapeKey || flag5 || flag3 || flag4)
				{
					break;
				}
				if (Model.CutPaste.m_bCut)
				{
					Model.CutPaste.m_bCut = false;
					Model.Refresh();
				}
				if (CurrentCell.HasCurrentCell)
				{
					if (CurrentCell.IsDroppedDown)
					{
						CurrentCell.CloseDropDown(PopupCloseType.Canceled);
					}
					else
					{
						CurrentCell.RejectChanges();
						CurrentCell.Refresh();
						Focus();
					}
					CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
				}
				if (!Model.Options.ExcelLikeCurrentCell)
				{
					Selections.Clear(raiseEvents: true);
				}
				flag = true;
				break;
			}
			if (flag)
			{
				Update();
			}
			if (flag2)
			{
				RepeatKeyCounter++;
			}
			else
			{
				ResetRepeatKeyCounter();
			}
		}
		e.Handled = flag;
	}

	protected override void OnKeyUp(KeyEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnKeyUp(e);
		}
		ResetRepeatKeyCounter();
		base.OnKeyUp(e);
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnKeyPress(e);
		}
		base.OnKeyPress(e);
		if (e.Handled || base.IsDisposed)
		{
			return;
		}
		char keyChar = e.KeyChar;
		if (Capture)
		{
			if (keyChar == '\u001b')
			{
				e.Handled = true;
				NotifyCancelMode();
			}
			return;
		}
		bool handled = false;
		int num = keyChar;
		if (num == 9 || num == 13 || num == 127)
		{
			handled = true;
		}
		e.Handled = handled;
	}

	public override bool PreProcessMessage(ref Message msg)
	{
		if (tabKeyNavigationInPreProcessMessage && HandleTabKeyPreProcessMessage(ref msg))
		{
			return true;
		}
		if (msg.Msg == 256 && (int)msg.WParam == 9 && WantTabKey)
		{
			return base.PreProcessMessage(ref msg);
		}
		return base.PreProcessMessage(ref msg);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override bool ProcessKeyPreview(ref Message m)
	{
		if (base.IsDisposed)
		{
			return true;
		}
		if ((((uint)(int)m.WParam & (uint)Control.ModifierKeys) == 13 && WantEnterKey) || (((uint)(int)m.WParam & (uint)Control.ModifierKeys) == 27 && WantEscapeKey))
		{
			if (m.Msg == 258)
			{
				return true;
			}
			return ProcessKeyEventArgs(ref m);
		}
		if (m.Msg == 258)
		{
			return ProcessKeyEventArgs(ref m);
		}
		if ((Control.ModifierKeys & Keys.Control) != Keys.None)
		{
			return ProcessKeyEventArgs(ref m);
		}
		Keys keyData = (Keys)((int)m.WParam & 0xFFFF);
		if (IsInputKey(keyData))
		{
			return ProcessKeyEventArgs(ref m);
		}
		return base.ProcessKeyPreview(ref m);
	}

	protected override bool ProcessKeyMessage(ref Message m)
	{
		return base.ProcessKeyMessage(ref m);
	}

	public GridCellRendererBase GetCellRenderer(int rowIndex, int colIndex)
	{
		GridStyleInfo viewStyleInfo = GetViewStyleInfo(rowIndex, colIndex);
		GridCellRendererBase result = CellRenderers[viewStyleInfo.CellType];
		viewStyleInfo.Dispose();
		return result;
	}

	private void ModelChangedLayoutCells(object sender, GridChangeLayoutCellsEventArgs e)
	{
		UpdateScrollBars();
	}

	private void ModelBeginUpdateRequest(object sender, EventArgs e)
	{
		BeginUpdateModel(Model.UpdateOptions, fromModel: true);
	}

	private void ModelEndUpdateRequest(object sender, GridEndUpdateRequestEventArgs e)
	{
		EndUpdateModel(e.Value, fromModel: true);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public sealed override void BeginUpdate(BeginUpdateOptions options)
	{
		if (IsWindowless)
		{
			((GridControlBase)ParentSite).BeginUpdate(options);
		}
		else
		{
			BeginUpdateModel(options, fromModel: false);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void BeginUpdateModel(BeginUpdateOptions options, bool fromModel)
	{
		if (IsWindowless)
		{
			((GridControlBase)ParentSite).BeginUpdateModel(options, fromModel);
			return;
		}
		if (!base.PaintPending)
		{
			invalidRect = Rectangle.Empty;
		}
		base.BeginUpdate(options);
	}

	public sealed override void EndUpdate(bool update)
	{
		if (IsWindowless)
		{
			((GridControlBase)ParentSite).EndUpdate(update);
		}
		else
		{
			EndUpdateModel(update, fromModel: false);
		}
	}

	public new virtual void Update()
	{
		if (!firstPaint && !inOnPaint && !base.Updating)
		{
			if (IsWindowless)
			{
				GetGridWindow().Update();
			}
			else
			{
				base.Update();
			}
		}
	}

	public virtual void EndUpdateModel(bool update, bool fromModel)
	{
		bool flag = base.PaintPending || !invalidRect.IsEmpty;
		if (IsWindowless)
		{
			((GridControlBase)ParentSite).EndUpdateModel(update, fromModel);
			return;
		}
		base.EndUpdate(update: false);
		if (!CurrentCell.StaticDrawing && !base.Updating && flag)
		{
			Rectangle gridBounds = GridBounds;
			int num = gridBounds.Height;
			if (DefaultRowHeight > 0)
			{
				num = gridBounds.Height / DefaultRowHeight;
			}
			int num2 = gridBounds.Width;
			if (DefaultColWidth > 0)
			{
				num2 = gridBounds.Width / DefaultColWidth;
			}
			Model.RaiseQueryMaximumRowCol(ViewLayout.LastVisibleRow + num, ViewLayout.LastVisibleCol + num2);
			base.DisableScrollWindow = false;
			int firstScrollableRow = GetFirstScrollableRow();
			if (TopRowIndex < firstScrollableRow)
			{
				ScrollGrid.m_nTopRow = firstScrollableRow;
				ViewLayout.Reset();
			}
			int firstScrollableCol = GetFirstScrollableCol();
			if (LeftColIndex < firstScrollableCol)
			{
				ScrollGrid.m_nLeftCol = firstScrollableCol;
				ViewLayout.Reset();
			}
			OnBeforePaint(EventArgs.Empty);
			if (update)
			{
				Update();
			}
			if (recalcScrollBars != ScrollBars.None)
			{
				UpdateScrollBars();
			}
			recalcScrollBars = ScrollBars.None;
		}
	}

	[DocumentationExclude]
	protected virtual void IntUpdateSelectRange()
	{
	}

	protected override void OnInvalidated(InvalidateEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnInvalidated(e);
		}
		if (base.IsSplitterPaneClosing)
		{
			return;
		}
		if (CurrentCell.StaticDrawing)
		{
			Rectangle rc = e.InvalidRect;
			if (CurrentCell.StaticRenderControl != null)
			{
				CurrentCell.StaticRenderControl.Invalidate(rc);
			}
		}
		if (invalidRect.IsEmpty)
		{
			invalidRect = e.InvalidRect;
		}
		else
		{
			invalidRect = Rectangle.Union(invalidRect, e.InvalidRect);
		}
		if (IsWindowless)
		{
			GetGridWindow().Invalidate(e.InvalidRect);
		}
		_ = traceInvalidate;
		base.OnInvalidated(e);
	}

	public GridRangeInfo RectangleToRangeInfo(Rectangle rect)
	{
		return RectangleToRangeInfo(rect, 0);
	}

	public GridRangeInfo RectangleToRangeInfo(Rectangle rect, int fixOutOfRange)
	{
		GridRangeInfo gridRangeInfo = PointToRangeInfo(rect.Location, fixOutOfRange);
		if (gridRangeInfo.IsEmpty)
		{
			return gridRangeInfo;
		}
		GridRangeInfo r = PointToRangeInfo(new Point(rect.Right - 1, rect.Bottom - 1), Math.Max(0, fixOutOfRange));
		return GridRangeInfo.UnionRange(gridRangeInfo, r);
	}

	public GridRangeInfo PointToRangeInfo(Point point)
	{
		return PointToRangeInfo(point, 0);
	}

	public bool PointToRowCol(Point point, out int rowIndex, out int colIndex)
	{
		return PointToRowCol(point, out rowIndex, out colIndex, -1);
	}

	public bool PointToRowCol(Point point, out int rowIndex, out int colIndex, int fixOutOfRange)
	{
		GridRangeInfo gridRangeInfo = PointToRangeInfo(point, fixOutOfRange);
		if (gridRangeInfo.IsEmpty)
		{
			rowIndex = (colIndex = -1);
			return false;
		}
		rowIndex = gridRangeInfo.Top;
		colIndex = gridRangeInfo.Left;
		return true;
	}

	public GridRangeInfo PointToRangeInfo(Point point, int fixOutOfRange)
	{
		if (fixOutOfRange >= 0)
		{
			point.X = Math.Max(0, point.X);
			point.Y = Math.Max(0, point.Y);
		}
		int num = ViewLayout.PointToClientCol(point, GridCellSizeKind.VisibleSize);
		int num2 = ViewLayout.PointToClientRow(point, GridCellSizeKind.VisibleSize);
		int visibleRows = ViewLayout.VisibleRows;
		int visibleCols = ViewLayout.VisibleCols;
		int lastVisibleRow = ViewLayout.LastVisibleRow;
		int lastVisibleCol = ViewLayout.LastVisibleCol;
		if (fixOutOfRange >= 0)
		{
			num2 = Math.Max(0, num2);
			num = Math.Max(0, num);
			return GridRangeInfo.Cell((num2 >= visibleRows) ? (lastVisibleRow + fixOutOfRange) : GetRow(num2), (num >= visibleCols) ? (lastVisibleCol + fixOutOfRange) : GetCol(num));
		}
		if (num2 < visibleRows && num2 >= 0 && num < visibleCols && num >= 0)
		{
			return GridRangeInfo.Cell(GetRow(num2), GetCol(num));
		}
		return GridRangeInfo.Empty;
	}

	public Rectangle RangeInfoToRectangle(GridRangeInfo range)
	{
		return ViewLayout.RangeInfoToRectangle(range, GridCellSizeKind.VisibleSize);
	}

	public Rectangle RangeInfoToRectangle(GridRangeInfo range, GridRangeOptions options)
	{
		if (range.IsEmpty)
		{
			return Rectangle.Empty;
		}
		GridRowColRangeInfoHandler[] array = new GridRowColRangeInfoHandler[3];
		if ((options & GridRangeOptions.MergeCoveredCells) != GridRangeOptions.None)
		{
			array[0] = Model.CoveredRanges.FindRange;
		}
		if ((options & GridRangeOptions.MergeFloatedCells) != GridRangeOptions.None)
		{
			array[1] = Model.FloatingCells.FindRange;
		}
		if ((options & GridRangeOptions.MergeMergedCells) != GridRangeOptions.None)
		{
			array[2] = Model.MergeCells.FindRange;
		}
		if ((options & GridRangeOptions.MergeBanneredCells) != GridRangeOptions.None)
		{
			array[2] = Model.BanneredRanges.FindRange;
		}
		range = ViewLayout.VisitVisibleCells(range, array);
		if ((options & GridRangeOptions.CalculateNonClientArea) == 0)
		{
			return ViewLayout.RangeInfoToRectangle(range, ignoreOutsideClientRectangle: true, GridCellSizeKind.VisibleSize);
		}
		return ViewLayout.RangeInfoToRectangle(range, ignoreOutsideClientRectangle: false, GridCellSizeKind.ActualSize);
	}

	[DocumentationExclude]
	protected internal virtual void GetScrollOutOfViewCurrentCellState(out GridCellRendererBase cellRenderer, out Control cellControl, out Rectangle currentCellBounds, out int currentCellRowIndex, out int currentCellColIndex, GridDirectionType direction)
	{
		cellRenderer = null;
		currentCellBounds = Rectangle.Empty;
		cellControl = null;
		if (!CurrentCell.GetCurrentCell(out currentCellRowIndex, out currentCellColIndex))
		{
			return;
		}
		cellRenderer = CurrentCell.Renderer;
		GridCurrentCell nestedCurrentCell = cellRenderer.GetNestedCurrentCell();
		if (nestedCurrentCell == null)
		{
			cellRenderer = null;
		}
		else if (nestedCurrentCell.Renderer != null)
		{
			cellRenderer = nestedCurrentCell.Renderer;
			switch (direction)
			{
			case GridDirectionType.Left:
			case GridDirectionType.Right:
				currentCellColIndex = 0;
				break;
			case GridDirectionType.Up:
			case GridDirectionType.Down:
				currentCellRowIndex = 0;
				break;
			}
		}
		if (cellRenderer != null)
		{
			currentCellBounds = cellRenderer.Grid.RangeInfoToRectangle(nestedCurrentCell.RangeInfo, GridRangeOptions.MergeCoveredCells | GridRangeOptions.CalculateNonClientArea);
			cellControl = cellRenderer.Control;
		}
	}

	protected virtual void OnBeforePaint(EventArgs e)
	{
		Trace.Indent();
		if (!invalidRect.IsEmpty && !inBeforePaint)
		{
			Rectangle rectangle = invalidRect;
			invalidRect.Intersect(base.ClientRectangle);
			inBeforePaint = true;
			base.BeginUpdate(BeginUpdateOptions.None);
			try
			{
				int firstScrollableRow = GetFirstScrollableRow();
				if (TopRowIndex < firstScrollableRow)
				{
					ScrollGrid.m_nTopRow = firstScrollableRow;
					ViewLayout.Reset();
				}
				int firstScrollableCol = GetFirstScrollableCol();
				if (LeftColIndex < firstScrollableCol)
				{
					ScrollGrid.m_nLeftCol = firstScrollableCol;
					ViewLayout.Reset();
				}
				int rowCount = Model.RowCount;
				int colCount = Model.ColCount;
				if (TopRowIndex > rowCount)
				{
					TopRowIndex = rowCount;
				}
				if (LeftColIndex > colCount)
				{
					LeftColIndex = colCount;
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
			base.EndUpdate(update: false);
			_ = Model.UpdateInfo;
			_ = GridRangeInfo.Empty;
			if (!invalidRect.IsEmpty)
			{
				rectangle = Rectangle.Union(invalidRect, rectangle);
			}
			GridRangeInfo range = RectangleToRangeInfo(rectangle, 0);
			if (OptimizeInsertRemoveCells)
			{
				rectangle = ViewLayout.RangeInfoToRectangle(range, ignoreOutsideClientRectangle: true, GridCellSizeKind.VisibleSize);
			}
			GridRangeInfo gridRangeInfo = EvaluateVisibleFloatingCells(range);
			GridRangeInfo range2 = EvaluateVisibleMergeCells(range);
			GridRangeInfo gridRangeInfo2 = gridRangeInfo.UnionRange(range2);
			gridRangeInfo2 = gridRangeInfo2.UnionRange(range);
			Rectangle rectangle2 = ViewLayout.RangeInfoToRectangle(gridRangeInfo2, ignoreOutsideClientRectangle: true, GridCellSizeKind.VisibleSize);
			if (!gridRangeInfo2.IsEmpty && rectangle2 != rectangle)
			{
				Invalidate(rectangle2);
			}
			invalidRect = Rectangle.Empty;
			inBeforePaint = false;
		}
		Trace.Unindent();
	}

	private void ModelCoveredRangesChanging(object sender, GridCoveredRangesChangingEventArgs e)
	{
	}

	private void ModelCoveredRangesChanged(object sender, GridCoveredRangesChangedEventArgs e)
	{
		if (!e.Success)
		{
			return;
		}
		foreach (GridRangeInfo range in e.Ranges)
		{
			GridUpdater.UpdateCoveredCellsRange(this, range, e.SetOrReset);
		}
	}

	private void ModelBanneredRangesChanging(object sender, GridBanneredRangesChangingEventArgs e)
	{
	}

	private void ModelBanneredRangesChanged(object sender, GridBanneredRangesChangedEventArgs e)
	{
		if (!e.Success)
		{
			return;
		}
		foreach (GridRangeInfo range in e.Ranges)
		{
			InvalidateRange(range);
		}
	}

	private void ModelMergeCellsChanged(object sender, GridMergeCellsChangedEventArgs e)
	{
		if (e.Success)
		{
			InvalidateRange(e.Range);
		}
	}

	private GridRangeInfo EvaluateVisibleFloatingCells(GridRangeInfo range)
	{
		GridRangeInfo prgBoundary = GridRangeInfo.Empty;
		Model.FloatingCells.EvaluateFloatingCells(this, range, InternalGetFrozenRows(), InternalGetFrozenCols(), TopRowIndex, LeftColIndex, ViewLayout.LastVisibleRow, ViewLayout.LastVisibleCol, ref prgBoundary);
		return prgBoundary;
	}

	private GridRangeInfo EvaluateVisibleMergeCells(GridRangeInfo range)
	{
		GridRangeInfo prgBoundary = GridRangeInfo.Empty;
		Model.MergeCells.EvaluateMergeCells(this, range, InternalGetFrozenRows(), InternalGetFrozenCols(), TopRowIndex, LeftColIndex, ViewLayout.LastVisibleRow, ViewLayout.LastVisibleCol, ref prgBoundary);
		return prgBoundary;
	}

	private void ModelFloatingCellsChanged(object sender, GridFloatingCellsChangedEventArgs e)
	{
		if (e.Success && !inBeforePaint)
		{
			GridRangeInfo range = e.Range;
			GridModelFloatingCells.UpdateFloatedCellsRowCol(this, range.Top, range.Left, range.Bottom, range.Right);
		}
	}

	public void SetRowHeight(int from, int last, int value)
	{
		Model.RowHeights.SetRange(from, last, new int[1] { value });
	}

	public void SetRowHeight(int from, int last, int[] values)
	{
		Model.RowHeights.SetRange(from, last, values);
	}

	public void SetRowHidden(int from, int last, bool value)
	{
		Model.HideRows.SetRange(from, last, new bool[1] { value });
	}

	public void SetRowHidden(int from, int last, bool[] values)
	{
		Model.HideRows.SetRange(from, last, values);
	}

	public void SetColWidth(int from, int last, int value)
	{
		Model.ColWidths.SetRange(from, last, new int[1] { value });
	}

	public void SetColWidth(int from, int last, int[] values)
	{
		Model.ColWidths.SetRange(from, last, values);
	}

	public void SetColHidden(int from, int last, bool value)
	{
		Model.HideCols.SetRange(from, last, new bool[1] { value });
	}

	public void SetColHidden(int from, int last, bool[] values)
	{
		Model.HideCols.SetRange(from, last, values);
	}

	public int GetRowRangeHeight(int rowIndex1, int rowIndex2)
	{
		return GetRowRangeHeight(rowIndex1, rowIndex2, 0);
	}

	public virtual int GetRowRangeHeight(int fromRowIndex, int toRowIndex, int maxSize)
	{
		int num = 0;
		int rowIndex = fromRowIndex;
		while (rowIndex <= toRowIndex && (maxSize == 0 || num <= maxSize))
		{
			num += GetRowHeight(rowIndex);
			if (!ScrollGrid.GetNextRowIndex(ref rowIndex))
			{
				break;
			}
		}
		return num;
	}

	public virtual int GetRowHeight(int rowIndex)
	{
		if (GetRowHidden(rowIndex))
		{
			return 0;
		}
		return Model.RowHeights[rowIndex];
	}

	public virtual int GetMaximumPossibleTopRow(out Rectangle rectMove)
	{
		int topRowIndex = TopRowIndex;
		rectMove = ViewLayout.RectangleBottomOfRow(GetFirstScrollableRow(), GridCellSizeKind.VisibleSize);
		if (rectMove.IsEmpty)
		{
			return Model.RowCount;
		}
		int rowIndex = Model.RowCount;
		int num = GetRowHeight(rowIndex);
		while (num == 0)
		{
			num = GetRowHeight(rowIndex);
			if (num == 0)
			{
				if (rowIndex <= 1)
				{
					break;
				}
				rowIndex--;
			}
		}
		while (num < rectMove.Height && rowIndex > topRowIndex && ScrollGrid.GetPrevRowIndex(ref rowIndex))
		{
			if (rowIndex > 0)
			{
				num += GetRowHeight(rowIndex);
			}
		}
		if (num >= rectMove.Height && rowIndex < Model.RowCount)
		{
			ScrollGrid.GetNextRowIndex(ref rowIndex);
		}
		return rowIndex;
	}

	public virtual int GetMaximumPossibleLeftCol(out Rectangle rectMove)
	{
		int leftColIndex = LeftColIndex;
		rectMove = ViewLayout.RectangleRightOfCol(GetFirstScrollableCol(), GridCellSizeKind.VisibleSize);
		if (rectMove.IsEmpty)
		{
			return Model.ColCount;
		}
		int colIndex = Model.ColCount;
		int num = GetColWidth(colIndex);
		while (num == 0)
		{
			num = GetColWidth(colIndex);
			if (num == 0)
			{
				if (colIndex <= 1)
				{
					break;
				}
				colIndex--;
			}
		}
		while (num < rectMove.Width && colIndex > leftColIndex && ScrollGrid.GetPrevColIndex(ref colIndex))
		{
			if (colIndex > 0)
			{
				num += GetColWidth(colIndex);
			}
		}
		if (num >= rectMove.Width && colIndex < Model.ColCount)
		{
			ScrollGrid.GetNextColIndex(ref colIndex);
		}
		return colIndex;
	}

	public virtual int GetColWidth(int colIndex)
	{
		if (GetColHidden(colIndex))
		{
			return 0;
		}
		return Model.ColWidths[colIndex];
	}

	public bool GetRowHidden(int rowIndex)
	{
		if (splitterControl != null && !IsPrinting() && !displayHeaderRow && rowIndex <= InternalGetFrozenRows())
		{
			return true;
		}
		if (rowIndex == 0 && !Model.Properties.ColHeaders)
		{
			return true;
		}
		return Model.HideRows[rowIndex];
	}

	public bool GetColHidden(int colIndex)
	{
		if (splitterControl != null && !IsPrinting() && !displayHeaderCol && colIndex <= InternalGetFrozenCols())
		{
			return true;
		}
		if (colIndex == 0 && !Model.Properties.RowHeaders)
		{
			return true;
		}
		return Model.HideCols[colIndex];
	}

	private void ModelRowHeightsChanging(object sender, GridRowColSizeChangingEventArgs e)
	{
	}

	private void ModelRowHeightsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			Model.RowHeights.EvalRange(e.From, e.SavedValues);
			ViewLayout.Reset();
			UpdateRowHeights(e.From, e.To, e.SavedValues);
		}
	}

	private void ModelColsHidden(object sender, GridRowColHiddenEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			int[] savedWidths = Model.ColWidths.EvalRange(e.From, Model.ColWidths.GetRange(e.From, e.To), e.SavedValues, Model.Cols.DefaultSize);
			if (Model.HideCols[e.From])
			{
				ScrollGrid.HideCols(e.From, e.To - e.From + 1);
			}
			else
			{
				ScrollGrid.ShowCols(e.From, e.To - e.From + 1);
			}
			UpdateColWidths(e.From, e.To, savedWidths);
		}
	}

	private void ModelRowsHidden(object sender, GridRowColHiddenEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			int[] savedHeights = Model.RowHeights.EvalRange(e.From, Model.RowHeights.GetRange(e.From, e.To), e.SavedValues, Model.Rows.DefaultSize);
			if (Model.HideRows[e.From])
			{
				ScrollGrid.HideRows(e.From, e.To - e.From + 1);
			}
			else
			{
				ScrollGrid.ShowRows(e.From, e.To - e.From + 1);
			}
			UpdateRowHeights(e.From, e.To, savedHeights);
		}
	}

	private void ModelColWidthsChanging(object sender, GridRowColSizeChangingEventArgs e)
	{
	}

	private void ModelColWidthsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			int[] savedWidths = Model.ColWidths.EvalRange(e.From, e.SavedValues);
			ViewLayout.Reset();
			UpdateColWidths(e.From, e.To, savedWidths);
		}
	}

	private void ModelDefaultRowHeightChanged(object sender, GridDefaultSizeChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			UpdateRowHeights(1, Model.RowCount, null);
		}
	}

	private void ModelDefaultColWidthChanged(object sender, GridDefaultSizeChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			UpdateColWidths(1, Model.ColCount, null);
		}
	}

	private void UpdateRowHeights(int fromRowIndex, int toRowIndex, int[] savedHeights)
	{
		recalcScrollBars = ScrollBars.Vertical;
		_ = GridBounds;
		GridRangeInfo range = GridRangeInfo.Rows(fromRowIndex, Math.Min(ViewLayout.LastVisibleRow, toRowIndex));
		GridRangeInfo gridRangeInfo = ViewLayout.CombineSpannedRanges(range);
		if (!ViewLayout.IsRangeVisible(gridRangeInfo))
		{
			return;
		}
		if (OptimizeInsertRemoveCells && savedHeights != null)
		{
			int num = 0;
			int num2 = 0;
			for (int i = 0; i < savedHeights.Length; i++)
			{
				num += savedHeights[i];
			}
			for (int j = fromRowIndex; j <= toRowIndex; j++)
			{
				num2 += Model.RowHeights[j];
			}
			if (num != num2)
			{
				Rectangle rectangle = ViewLayout.RectangleBottomOfRow(gridRangeInfo.Top, GridCellSizeKind.VisibleSize);
				if (num < num2)
				{
					rectangle.Y += num;
					rectangle.Height -= num;
				}
				else
				{
					rectangle.Y += num2;
					rectangle.Height -= num2;
				}
				ScrollWindow(0, num2 - num, rectangle, rectangle, allowUpdate: false);
				InternalInvalidate(ViewLayout.RangeInfoToRectangle(gridRangeInfo, GridCellSizeKind.VisibleSize));
			}
		}
		else
		{
			InternalInvalidate(ViewLayout.RectangleBottomOfRow(gridRangeInfo.Top, GridCellSizeKind.VisibleSize));
		}
	}

	private void UpdateColWidths(int fromColIndex, int toColIndex, int[] savedWidths)
	{
		ViewLayout.Reset();
		recalcScrollBars = ScrollBars.Horizontal;
		_ = GridBounds;
		GridRangeInfo range = GridRangeInfo.Cols(fromColIndex, Math.Min(ViewLayout.LastVisibleCol, toColIndex));
		GridRangeInfo gridRangeInfo = ViewLayout.CombineSpannedRanges(range);
		if (Model.Options.FloatCellsMode != GridFloatCellsMode.None)
		{
			Model.FloatingCells.DelayFloatCells(gridRangeInfo);
			InternalInvalidate(GridBounds);
		}
		else
		{
			if (!ViewLayout.IsRangeVisible(gridRangeInfo))
			{
				return;
			}
			if (!IsRightToLeft() && OptimizeInsertRemoveCells && savedWidths != null)
			{
				int num = 0;
				int num2 = 0;
				for (int i = 0; i < savedWidths.Length; i++)
				{
					num += savedWidths[i];
				}
				for (int j = fromColIndex; j <= toColIndex; j++)
				{
					num2 += Model.ColWidths[j];
				}
				if (num != num2)
				{
					Rectangle rectangle = ViewLayout.RectangleRightOfCol(gridRangeInfo.Left, GridCellSizeKind.VisibleSize);
					if (num < num2)
					{
						rectangle.X += num;
						rectangle.Width -= num;
					}
					else
					{
						rectangle.X += num2;
						rectangle.Width -= num2;
					}
					ScrollWindow(num2 - num, 0, rectangle, rectangle, allowUpdate: false);
					InternalInvalidate(ViewLayout.RangeInfoToRectangle(gridRangeInfo, GridCellSizeKind.VisibleSize));
				}
			}
			else
			{
				InternalInvalidate(ViewLayout.RectangleRightOfCol(gridRangeInfo.Left, GridCellSizeKind.VisibleSize));
			}
		}
	}

	public bool ShouldDisplayHeaderCol()
	{
		return displayHeaderCol;
	}

	public bool ShouldDisplayHeaderRow()
	{
		return displayHeaderRow;
	}

	public void EnableForwardCurrentCellControlKeyMessages(bool value)
	{
		allowForwardCurrentCellControlKeyMessages = value;
	}

	public void UpdateWithCustomPaint(Rectangle r, PaintEventHandler customPaintDelegate)
	{
		if (r.IsEmpty)
		{
			return;
		}
		try
		{
			this.customPaintDelegate = customPaintDelegate;
			customPaintRectangle = r;
			base.Invalidate(r);
			base.Update();
		}
		finally
		{
			this.customPaintDelegate = null;
			customPaintRectangle = Rectangle.Empty;
		}
	}

	public void UpdateWithDrawClippedGrid(Rectangle clipBounds)
	{
		if (!clipBounds.IsEmpty)
		{
			UpdateWithCustomPaint(clipBounds, CustomPaintHandler);
		}
	}

	private void CustomPaintHandler(object sender, PaintEventArgs e)
	{
		Rectangle clipBounds = Rectangle.Truncate(e.Graphics.ClipBounds);
		DrawClippedGrid(e.Graphics, clipBounds, shouldClip: false);
	}

	internal void ProcessMessage(ref Message msg)
	{
		WndProc(ref msg);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		if (msg.Msg == 135 && wmGetDlgCodeValue != -1)
		{
			msg.Result = (IntPtr)wmGetDlgCodeValue;
			return;
		}
		if (allowForwardCurrentCellControlKeyMessages && msg.Msg >= 256 && msg.Msg <= 264 && CurrentCell.HasControlFocus && CurrentCell.Renderer.Control != null && CurrentCell.Renderer.Control.IsHandleCreated)
		{
			msg.Result = NativeMethods.SendMessage(CurrentCell.Renderer.Control.Handle, msg.Msg, msg.WParam, msg.LParam);
			return;
		}
		if (msg.Msg == 794)
		{
			Invalidate();
		}
		if ((!FocusOnMouseDown || !WantKeys) && msg.Msg == 33)
		{
			msg.Result = (IntPtr)3;
			return;
		}
		switch (msg.Msg)
		{
		case 270:
			inImeComposition = false;
			break;
		case 269:
			inImeComposition = true;
			break;
		case 297:
			msg.Result = (IntPtr)2;
			return;
		case 296:
			if (CurrentCell.IsInBeginEdit)
			{
				return;
			}
			break;
		case 15:
			if (customPaintDelegate == null && !base.Updating)
			{
				OnBeforePaint(EventArgs.Empty);
			}
			break;
		}
		if (GridBounds.Right < 0 || base.Location.X > 9999)
		{
			bool flag = CurrentCell.StaticDrawing;
			CurrentCell.StaticDrawing = true;
			base.WndProc(ref msg);
			CurrentCell.StaticDrawing = flag;
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	protected virtual void OnMouseActivating(CancelEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnMouseActivating(e);
		}
		if (this.MouseActivating != null)
		{
			this.MouseActivating(this, e);
		}
	}

	public bool RaiseMouseActivating()
	{
		CancelEventArgs e = new CancelEventArgs();
		OnMouseActivating(e);
		return !e.Cancel;
	}

	public GridControlBase GetGridWindow()
	{
		return (GridControlBase)GetWindow();
	}

	public Control GetWindow()
	{
		if (IsWindowless)
		{
			return ParentSite.GetWindow();
		}
		if (CurrentCell.StaticDrawing && CurrentCell.StaticRenderControl != null)
		{
			return CurrentCell.StaticRenderControl;
		}
		return this;
	}

	public Rectangle GetVisibleBounds()
	{
		Rectangle gridBounds = GridBounds;
		if (IsWindowless)
		{
			gridBounds.Intersect(ParentSite.GetVisibleBounds());
		}
		else if (CurrentCell.StaticDrawing && CurrentCell.StaticRenderControl != null)
		{
			gridBounds.Intersect(CurrentCell.StaticRenderControl.Bounds);
		}
		return gridBounds;
	}

	public Form FindParentForm()
	{
		if (!IsWindowless)
		{
			return FindForm();
		}
		return ParentSite.GetWindow().FindForm();
	}

	protected override void OnCreateControl()
	{
		if (IsWindowless)
		{
			throw new NotSupportedException("Windowless grid controls can't have a window");
		}
		base.OnCreateControl();
	}

	public Rectangle GridRectangleToScreen(Rectangle rect)
	{
		Rectangle result = rect;
		if (CurrentCell.StaticDrawing)
		{
			if (CurrentCell.StaticRenderControl != null)
			{
				result = CurrentCell.StaticRenderControl.RectangleToScreen(rect);
			}
		}
		else
		{
			result = GetWindow().RectangleToScreen(rect);
		}
		return result;
	}

	public Rectangle GridRectangleToClient(Rectangle rect)
	{
		if (CurrentCell.StaticDrawing)
		{
			return CurrentCell.StaticRenderControl.RectangleToClient(rect);
		}
		return GetWindow().RectangleToClient(rect);
	}

	public Point GridPointToScreen(Point p)
	{
		Point result = p;
		if (CurrentCell.StaticDrawing)
		{
			if (CurrentCell.StaticRenderControl != null)
			{
				result = CurrentCell.StaticRenderControl.PointToScreen(p);
			}
		}
		else
		{
			result = GetWindow().PointToScreen(p);
		}
		return result;
	}

	public Point GridPointToClient(Point p)
	{
		if (CurrentCell.StaticDrawing)
		{
			return CurrentCell.StaticRenderControl.PointToClient(p);
		}
		return GetWindow().PointToClient(p);
	}

	public new Point PointToClient(Point p)
	{
		return GetWindow().PointToClient(p);
	}

	public new Point PointToScreen(Point p)
	{
		return GetWindow().PointToScreen(p);
	}

	public new Rectangle RectangleToClient(Rectangle p)
	{
		return GetWindow().RectangleToClient(p);
	}

	public new Rectangle RectangleToScreen(Rectangle p)
	{
		return GetWindow().RectangleToScreen(p);
	}

	public virtual int InternalGetFrozenRows()
	{
		if (IsPrinting() && PrintInfo.m_bPrintCurSelOnly)
		{
			return 0;
		}
		return Model.Rows.FrozenCount;
	}

	public int GetFirstScrollableRow()
	{
		return ScrollGrid.GetNextRowIndex(InternalGetFrozenRows(), UseOldHiddenScrollLogic);
	}

	public int GetVisibleFrozenRows()
	{
		if (UseOldHiddenScrollLogic)
		{
			return InternalGetFrozenRows() + 1;
		}
		int rowIndex = InternalGetFrozenRows();
		int num = ScrollGrid.RowIndexToScrollPosition(rowIndex);
		if (!GetRowHidden(rowIndex))
		{
			num++;
		}
		return num;
	}

	public virtual int InternalGetFrozenCols()
	{
		if (IsPrinting() && PrintInfo.m_bPrintCurSelOnly)
		{
			return 0;
		}
		return Model.Cols.FrozenCount;
	}

	public int GetFirstScrollableCol()
	{
		return ScrollGrid.GetNextColIndex(InternalGetFrozenCols(), UseOldHiddenScrollLogic);
	}

	public int GetVisibleFrozenCols()
	{
		if (UseOldHiddenScrollLogic)
		{
			return InternalGetFrozenCols() + 1;
		}
		int colIndex = InternalGetFrozenCols();
		int num = ScrollGrid.ColIndexToScrollPosition(colIndex);
		if (!GetColHidden(colIndex))
		{
			num++;
		}
		return num;
	}

	public virtual int InternalGetHeaderRows()
	{
		return Model.Rows.HeaderCount;
	}

	public virtual int InternalGetHeaderCols()
	{
		return Model.Cols.HeaderCount;
	}

	public bool InternalIsFrozenRow(int rowIndex)
	{
		if (rowIndex > 0)
		{
			return rowIndex <= InternalGetFrozenRows();
		}
		return false;
	}

	public bool InternalIsFrozenCol(int colIndex)
	{
		if (colIndex > 0)
		{
			return colIndex <= InternalGetFrozenCols();
		}
		return false;
	}

	protected virtual void ModelFixedColChanged(object sender, GridCountChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			_ = Model.Cols.HeaderCount;
			int frozenCount = Model.Cols.FrozenCount;
			BeginUpdate(BeginUpdateOptions.None);
			InternalSetLeftCol(frozenCount + 1);
			Invalidate();
			recalcScrollBars = ScrollBars.Horizontal;
			EndUpdate();
		}
	}

	protected virtual void ModelFixedRowChanged(object sender, GridCountChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			_ = Model.Rows.HeaderCount;
			int frozenCount = Model.Rows.FrozenCount;
			BeginUpdate(BeginUpdateOptions.None);
			InternalSetTopRow(frozenCount + 1);
			Invalidate();
			recalcScrollBars = ScrollBars.Vertical;
			EndUpdate();
		}
	}

	protected virtual void ModelHeaderColChanged(object sender, GridCountChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			Refresh();
		}
	}

	protected virtual void ModelHeaderRowChanged(object sender, GridCountChangedEventArgs e)
	{
		if (e.Success)
		{
			ViewLayout.Reset();
			Refresh();
		}
	}

	private void ModelRowsRangeRemoving(object sender, GridRangeRemovingEventArgs e)
	{
		activateCCafterRangeOp = false;
		if (e.Cancel)
		{
			return;
		}
		if (CurrentCell.IsLocked)
		{
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ConfirmChanges())
		{
			activateCCafterRangeOp = CurrentCell.HasCurrentCell;
			CurrentCell.Deactivate(discardChanges: true);
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ErrorMessage.Length > 0)
		{
			CurrentCell.DisplayWarningText(CurrentCell.ErrorMessage);
			CurrentCell.ResetError();
		}
		e.Cancel = true;
	}

	private void ModelRowsRangeRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		try
		{
			if (!e.Success)
			{
				return;
			}
			ViewLayout.Reset();
			if (activateCCafterRangeOp)
			{
				CurrentCell.UpdateRemoveRows(e.From, e.To);
			}
			ScrollGrid.RecalcHiddenRowState(e.From, e.From);
			int num = e.To - e.From + 1;
			if (OptimizeInsertRemoveCells)
			{
				if (!activateCCafterRangeOp && CurrentCell.RowIndex >= e.To)
				{
					CurrentCell.SetCurrentCellNoActivate(CurrentCell.RowIndex - e.To - e.From + 1, CurrentCell.ColIndex);
				}
				Rectangle rectangle = ViewLayout.RectangleBottomOfRow(e.From, GridCellSizeKind.VisibleSize);
				if ((e.To <= InternalGetFrozenRows() || e.To >= TopRowIndex) && !rectangle.IsEmpty)
				{
					int num2 = 0;
					int i = 0;
					int[] array = new int[0];
					if (e.InsertRangeOptions != null && e.InsertRangeOptions.RowColSizes != null)
					{
						array = e.InsertRangeOptions.RowColSizes;
					}
					for (; i < array.Length; i++)
					{
						if (e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num2 = ((array[i] == -1) ? (num2 + Model.Rows.DefaultSize) : (num2 + array[i]));
						}
					}
					for (; i < num; i++)
					{
						if (e.InsertRangeOptions == null || e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num2 += Model.Rows.DefaultSize;
						}
					}
					ScrollWindow(0, -num2, rectangle, rectangle, allowUpdate: false);
				}
				else if (e.From < TopRowIndex)
				{
					if (e.To < TopRowIndex)
					{
						InternalSetTopRow(TopRowIndex - num);
					}
					else
					{
						Invalidate();
					}
				}
				recalcScrollBars = ScrollBars.Vertical;
			}
			else
			{
				Refresh();
			}
			UpdateScrollBars();
		}
		finally
		{
			OnSelectionFrameChanged(GraphicsEventArgs.Empty);
		}
	}

	private void ModelColsRangeRemoving(object sender, GridRangeRemovingEventArgs e)
	{
		activateCCafterRangeOp = false;
		if (e.Cancel)
		{
			return;
		}
		if (CurrentCell.IsLocked)
		{
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ConfirmChanges())
		{
			activateCCafterRangeOp = CurrentCell.HasCurrentCell;
			CurrentCell.Deactivate(discardChanges: true);
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ErrorMessage.Length > 0)
		{
			CurrentCell.DisplayWarningText(CurrentCell.ErrorMessage);
			CurrentCell.ResetError();
		}
		e.Cancel = true;
	}

	private void ModelColsRangeRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		try
		{
			if (!e.Success)
			{
				return;
			}
			ViewLayout.Reset();
			if (activateCCafterRangeOp)
			{
				CurrentCell.UpdateRemoveCols(e.From, e.To);
			}
			ScrollGrid.RecalcHiddenColState(e.From, e.From);
			int num = e.To - e.From + 1;
			if (OptimizeInsertRemoveCells)
			{
				if (!activateCCafterRangeOp && CurrentCell.ColIndex >= e.To)
				{
					CurrentCell.SetCurrentCellNoActivate(CurrentCell.RowIndex, CurrentCell.ColIndex - e.To - e.From + 1);
				}
				Rectangle rectangle = ViewLayout.RectangleRightOfCol(e.From, GridCellSizeKind.VisibleSize);
				if ((e.To <= InternalGetFrozenCols() || e.To >= LeftColIndex) && !rectangle.IsEmpty)
				{
					int num2 = 0;
					int i = 0;
					int[] array = new int[0];
					if (e.InsertRangeOptions != null && e.InsertRangeOptions.RowColSizes != null)
					{
						array = e.InsertRangeOptions.RowColSizes;
					}
					for (; i < array.Length; i++)
					{
						if (e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num2 = ((array[i] == -1) ? (num2 + Model.Cols.DefaultSize) : (num2 + array[i]));
						}
					}
					for (; i < num; i++)
					{
						if (e.InsertRangeOptions == null || e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num2 += Model.Cols.DefaultSize;
						}
					}
					ScrollWindow(-num2, 0, rectangle, rectangle, allowUpdate: false);
				}
				else if (e.From < LeftColIndex)
				{
					if (e.To < LeftColIndex)
					{
						InternalSetLeftCol(LeftColIndex - num);
					}
					else
					{
						Invalidate();
					}
				}
				recalcScrollBars = ScrollBars.Horizontal;
			}
			else
			{
				Refresh();
			}
			UpdateScrollBars();
		}
		finally
		{
			OnSelectionFrameChanged(GraphicsEventArgs.Empty);
		}
	}

	private void ModelRowsRangeMoving(object sender, GridRangeMovingEventArgs e)
	{
		activateCCafterRangeOp = false;
		if (e.Cancel)
		{
			return;
		}
		if (CurrentCell.IsLocked)
		{
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ConfirmChanges())
		{
			activateCCafterRangeOp = CurrentCell.HasCurrentCell;
			CurrentCell.Deactivate(discardChanges: true);
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ErrorMessage.Length > 0)
		{
			CurrentCell.DisplayWarningText(CurrentCell.ErrorMessage);
			CurrentCell.ResetError();
		}
		e.Cancel = true;
	}

	private void ModelRowsRangeMoved(object sender, GridRangeMovedEventArgs e)
	{
		try
		{
			if (e.Success)
			{
				ViewLayout.Reset();
				UpdateRowsMoved(e.From, e.Count, e.Target);
			}
		}
		finally
		{
			OnSelectionFrameChanged(GraphicsEventArgs.Empty);
		}
	}

	private void UpdateRowsMoved(int from, int count, int target)
	{
		int num = from + count - 1;
		int num2 = ((target > from) ? (target + count) : target);
		if (activateCCafterRangeOp)
		{
			CurrentCell.UpdateRowsMoved(from, num, target);
		}
		ScrollGrid.RecalcHiddenRowState(Math.Min(from, target), Math.Max(num2, from) + count);
		if ((num < TopRowIndex && num2 < TopRowIndex) || (num > ViewLayout.LastVisibleRow && target > ViewLayout.LastVisibleRow))
		{
			return;
		}
		if (num < TopRowIndex && num2 >= TopRowIndex)
		{
			BeginUpdate(BeginUpdateOptions.None);
			try
			{
				TopRowIndex -= count;
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
			}
			EndUpdate(update: false);
		}
		recalcScrollBars = ScrollBars.Vertical;
		Invalidate();
	}

	private void ModelColsRangeMoving(object sender, GridRangeMovingEventArgs e)
	{
		activateCCafterRangeOp = false;
		if (e.Cancel)
		{
			return;
		}
		if (CurrentCell.IsLocked)
		{
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ConfirmChanges())
		{
			activateCCafterRangeOp = CurrentCell.HasCurrentCell;
			CurrentCell.Deactivate(discardChanges: true);
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ErrorMessage.Length > 0)
		{
			CurrentCell.DisplayWarningText(CurrentCell.ErrorMessage);
			CurrentCell.ResetError();
		}
		e.Cancel = true;
	}

	private void ModelColsRangeMoved(object sender, GridRangeMovedEventArgs e)
	{
		try
		{
			if (e.Success)
			{
				ViewLayout.Reset();
				UpdateColsMoved(e.From, e.Count, e.Target);
				ViewLayout.Reset();
			}
		}
		finally
		{
			OnSelectionFrameChanged(GraphicsEventArgs.Empty);
		}
	}

	private void UpdateColsMoved(int from, int count, int target)
	{
		int num = from + count - 1;
		int num2 = ((target > from) ? (target + count) : target);
		BeginUpdate(BeginUpdateOptions.None);
		try
		{
			if (activateCCafterRangeOp)
			{
				CurrentCell.UpdateColsMoved(from, num, target);
			}
			ScrollGrid.RecalcHiddenColState(Math.Min(from, target), Math.Max(num2, from) + count);
			if ((num >= LeftColIndex || num2 >= LeftColIndex) && num < LeftColIndex && num2 >= LeftColIndex)
			{
				LeftColIndex -= count;
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
		EndUpdate(update: false);
		recalcScrollBars = ScrollBars.Horizontal;
		Invalidate();
	}

	private void ModelRowsRangeInserting(object sender, GridRangeInsertingEventArgs e)
	{
		activateCCafterRangeOp = false;
		if (e.Cancel)
		{
			return;
		}
		if (CurrentCell.IsLocked)
		{
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ConfirmChanges())
		{
			activateCCafterRangeOp = CurrentCell.HasCurrentCell;
			CurrentCell.Deactivate(discardChanges: true);
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ErrorMessage.Length > 0)
		{
			CurrentCell.DisplayWarningText(CurrentCell.ErrorMessage);
			CurrentCell.ResetError();
		}
		e.Cancel = true;
	}

	private void ModelRowsRangeInserted(object sender, GridRangeInsertedEventArgs e)
	{
		try
		{
			if (!e.Success)
			{
				return;
			}
			if (OptimizeInsertRemoveCells)
			{
				ScrollGrid.RecalcHiddenRowState(e.InsertAt, e.InsertAt + e.Count);
				if (ScrollGrid.m_nTopRow == InternalGetFrozenRows())
				{
					ScrollGrid.m_nTopRow++;
					ViewLayout.Reset();
				}
				if (!activateCCafterRangeOp && CurrentCell.RowIndex >= e.InsertAt)
				{
					CurrentCell.SetCurrentCellNoActivate(CurrentCell.RowIndex + e.Count, CurrentCell.ColIndex);
				}
				Rectangle rectangle = ViewLayout.RectangleBottomOfRow(e.InsertAt, GridCellSizeKind.VisibleSize);
				if ((e.InsertAt <= InternalGetFrozenRows() || e.InsertAt + e.Count > TopRowIndex) && !rectangle.IsEmpty)
				{
					int num = 0;
					int i = 0;
					int[] array = new int[0];
					if (e.InsertRangeOptions != null && e.InsertRangeOptions.RowColSizes != null)
					{
						array = e.InsertRangeOptions.RowColSizes;
					}
					for (; i < array.Length; i++)
					{
						if (e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num += array[i];
						}
					}
					for (; i < e.Count; i++)
					{
						if (e.InsertRangeOptions == null || e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num += Model.Rows.DefaultSize;
						}
					}
					ScrollWindow(0, num, rectangle, rectangle, allowUpdate: false);
				}
				else if (e.InsertAt < TopRowIndex)
				{
					InternalSetTopRow(TopRowIndex + e.Count);
					ViewLayout.Reset();
				}
				if (activateCCafterRangeOp)
				{
					CurrentCell.UpdateInsertRows(e.InsertAt, e.Count);
				}
				recalcScrollBars = ScrollBars.Vertical;
				UpdateScrollBars();
			}
			else
			{
				ViewLayout.Reset();
				UpdateInsertRows(e.InsertAt, e.Count);
			}
		}
		finally
		{
			OnSelectionFrameChanged(GraphicsEventArgs.Empty);
		}
	}

	private void UpdateInsertRows(int rowIndex, int nCount)
	{
		if (activateCCafterRangeOp)
		{
			CurrentCell.UpdateInsertRows(rowIndex, nCount);
		}
		ScrollGrid.RecalcHiddenRowState(rowIndex, rowIndex + nCount);
		if (ScrollGrid.m_nTopRow == InternalGetFrozenRows())
		{
			ScrollGrid.m_nTopRow = ScrollGrid.GetNextRowIndex(ScrollGrid.m_nTopRow, skipFirstHidden: false);
			ViewLayout.Reset();
		}
		recalcScrollBars = ScrollBars.Vertical;
		Invalidate();
		UpdateScrollBars();
	}

	private void ModelColsRangeInserting(object sender, GridRangeInsertingEventArgs e)
	{
		activateCCafterRangeOp = false;
		if (e.Cancel)
		{
			return;
		}
		if (CurrentCell.IsLocked)
		{
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ConfirmChanges())
		{
			activateCCafterRangeOp = CurrentCell.HasCurrentCell;
			CurrentCell.Deactivate(discardChanges: true);
			OnSelectionFrameChanging(GraphicsEventArgs.Empty);
			return;
		}
		if (CurrentCell.ErrorMessage.Length > 0)
		{
			CurrentCell.DisplayWarningText(CurrentCell.ErrorMessage);
			CurrentCell.ResetError();
		}
		e.Cancel = true;
	}

	private void ModelColsRangeInserted(object sender, GridRangeInsertedEventArgs e)
	{
		try
		{
			if (!e.Success)
			{
				return;
			}
			if (OptimizeInsertRemoveCells)
			{
				if (activateCCafterRangeOp)
				{
					CurrentCell.UpdateInsertCols(e.InsertAt, e.Count);
				}
				ScrollGrid.RecalcHiddenColState(e.InsertAt, e.InsertAt + e.Count);
				if (ScrollGrid.m_nLeftCol == InternalGetFrozenCols())
				{
					ScrollGrid.m_nLeftCol++;
					ViewLayout.Reset();
				}
				if (!activateCCafterRangeOp && CurrentCell.ColIndex >= e.InsertAt)
				{
					CurrentCell.SetCurrentCellNoActivate(CurrentCell.RowIndex, CurrentCell.ColIndex + e.Count);
				}
				Rectangle rectangle = ViewLayout.RectangleRightOfCol(e.InsertAt, GridCellSizeKind.VisibleSize);
				if ((e.InsertAt <= InternalGetFrozenCols() || e.InsertAt + e.Count > LeftColIndex) && !rectangle.IsEmpty)
				{
					int num = 0;
					int i = 0;
					int[] array = new int[0];
					if (e.InsertRangeOptions != null && e.InsertRangeOptions.RowColSizes != null)
					{
						array = e.InsertRangeOptions.RowColSizes;
					}
					for (; i < array.Length; i++)
					{
						if (e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num += array[i];
						}
					}
					for (; i < e.Count; i++)
					{
						if (e.InsertRangeOptions == null || e.InsertRangeOptions.RowColHide == null || i >= e.InsertRangeOptions.RowColHide.Length || !e.InsertRangeOptions.RowColHide[i])
						{
							num += Model.Cols.DefaultSize;
						}
					}
					ScrollWindow(num, 0, rectangle, rectangle, allowUpdate: false);
				}
				else if (e.InsertAt < LeftColIndex)
				{
					InternalSetLeftCol(LeftColIndex + e.Count);
					ViewLayout.Reset();
				}
				recalcScrollBars = ScrollBars.Horizontal;
				UpdateScrollBars();
			}
			else
			{
				ViewLayout.Reset();
				UpdateInsertCols(e.InsertAt, e.Count);
			}
		}
		finally
		{
			OnSelectionFrameChanged(GraphicsEventArgs.Empty);
		}
	}

	private void UpdateInsertCols(int colIndex, int nCount)
	{
		if (activateCCafterRangeOp)
		{
			CurrentCell.UpdateInsertCols(colIndex, nCount);
		}
		ScrollGrid.RecalcHiddenColState(colIndex, colIndex + nCount);
		if (ScrollGrid.m_nLeftCol == InternalGetFrozenCols())
		{
			ScrollGrid.m_nLeftCol = ScrollGrid.GetNextColIndex(ScrollGrid.m_nLeftCol, skipFirstHidden: false);
			ViewLayout.Reset();
		}
		recalcScrollBars = ScrollBars.Horizontal;
		Invalidate();
		UpdateScrollBars();
	}

	public void SuspendInvalidate()
	{
		GetGridWindow().ignoreInvalidate++;
	}

	public void ResumeInvalidate()
	{
		if (GetGridWindow().ignoreInvalidate > 0)
		{
			GetGridWindow().ignoreInvalidate--;
		}
	}

	public bool ShouldIgnoreInvalidate()
	{
		if (GetGridWindow().ignoreInvalidate <= 0)
		{
			if (IgnoreCurrentCellInvalidate)
			{
				if (!CurrentCell.IsInActiveOrDeactivate)
				{
					return CurrentCell.IsInMoveTo;
				}
				return true;
			}
			return false;
		}
		return true;
	}

	public new virtual void Invalidate()
	{
		if (!ShouldIgnoreInvalidate())
		{
			GetWindow().Invalidate();
			_ = traceInvalidate;
		}
	}

	public void InternalInvalidate(Rectangle bounds)
	{
		if (CurrentCell.HasCurrentCell && CurrentCell.HasControlFocus)
		{
			GridCellRendererBase renderer = CurrentCell.Renderer;
			Control control = renderer.Control;
			if (control != null && control.Bounds.IntersectsWith(bounds))
			{
				renderer.Hide();
			}
		}
		if (ShouldPrepareUpdate(markPaintPending: true) && !bounds.IsEmpty)
		{
			Invalidate(bounds);
		}
	}

	public new virtual void Invalidate(Rectangle rc)
	{
		if (!ShouldIgnoreInvalidate())
		{
			GetWindow().Invalidate(rc);
			_ = traceInvalidate;
		}
	}

	public new virtual void Invalidate(Rectangle rc, bool invalidateChildren)
	{
		if (!ShouldIgnoreInvalidate())
		{
			GetWindow().Invalidate(rc, invalidateChildren);
			_ = traceInvalidate;
		}
	}

	protected internal virtual void InvalidateDeactivatedCurrentCell(int rowIndex, int colIndex, Rectangle savedBounds)
	{
		bool flag = false;
		GridCurrentCell currentCell = CurrentCell;
		if (!base.Visible)
		{
			return;
		}
		if (Model.Options.RefreshCurrentCellBehavior == GridRefreshCurrentCellBehavior.RefreshRow && (!currentCell.IsInMoveTo || currentCell.MoveToRowIndex != rowIndex) && IsVisibleCell(rowIndex, 0))
		{
			flag = true;
			Rectangle rectangle = RangeInfoToRectangle(GridRangeInfo.Row(rowIndex), GridRangeOptions.MergeAllSpannedCells);
			if (rectangle.IsEmpty)
			{
				rectangle = savedBounds;
			}
			else if (!savedBounds.IsEmpty)
			{
				rectangle = Rectangle.Union(rectangle, savedBounds);
			}
			Invalidate(rectangle, invalidateChildren: false);
		}
		if (!flag && (IsVisibleCell(rowIndex, colIndex) || !savedBounds.IsEmpty))
		{
			Rectangle rectangle2 = RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), GridRangeOptions.MergeAllSpannedCells);
			if (rectangle2.IsEmpty)
			{
				rectangle2 = savedBounds;
			}
			else if (!savedBounds.IsEmpty)
			{
				rectangle2 = Rectangle.Union(rectangle2, savedBounds);
			}
			Invalidate(rectangle2, invalidateChildren: false);
		}
	}

	public void InvalidateRange(GridRangeInfo range)
	{
		if (base.Visible)
		{
			if (IsVisibleCell(range.Top, range.Left) || ViewLayout.VisibleCellsRange.IntersectsWith(range))
			{
				InternalInvalidate(RangeInfoToRectangle(range));
			}
			_ = traceInvalidate;
		}
	}

	public void InvalidateRange(GridRangeInfo range, GridRangeOptions options)
	{
		if (base.Visible && (IsVisibleCell(range.Top, range.Left) || ViewLayout.VisibleCellsRange.IntersectsWith(range)))
		{
			InternalInvalidate(RangeInfoToRectangle(range, options));
		}
	}

	public void RefreshRange(GridRangeInfo range)
	{
		if (ShouldPrepareUpdate(markPaintPending: true))
		{
			Model.ResetVolatileData();
			InternalInvalidate(RangeInfoToRectangle(range));
			Update();
		}
	}

	public void RefreshRange(GridRangeInfo range, GridRangeOptions options)
	{
		if (ShouldPrepareUpdate(markPaintPending: true))
		{
			Model.ResetVolatileData();
			InternalInvalidate(RangeInfoToRectangle(range, options));
			Update();
		}
	}

	public void RefreshRange(GridRangeInfo range, bool forceRefreshCurrentCell)
	{
		if (ShouldPrepareUpdate(markPaintPending: true))
		{
			Model.ResetVolatileData();
			InternalInvalidate(RangeInfoToRectangle(range));
			if (forceRefreshCurrentCell && range.Contains(CurrentCell.RangeInfo))
			{
				CurrentCell.Refresh();
			}
			Update();
		}
	}

	public void RefreshRange(GridRangeInfo range, GridRangeOptions options, bool forceRefreshCurrentCell)
	{
		if (ShouldPrepareUpdate(markPaintPending: true))
		{
			Model.ResetVolatileData();
			InternalInvalidate(RangeInfoToRectangle(range));
			if (forceRefreshCurrentCell && range.Contains(CurrentCell.RangeInfo))
			{
				CurrentCell.Refresh();
			}
			Update();
		}
	}

	protected virtual void Refresh(bool fromModel)
	{
		Model.ResetVolatileData();
		ViewLayout.Reset();
		CurrentCell.Refresh();
		UpdateScrollBars();
		base.Refresh();
	}

	public sealed override void Refresh()
	{
		Refresh(fromModel: false);
	}

	internal new void UpdateStyles()
	{
		base.UpdateStyles();
	}

	public bool ScrollCellInView(GridRangeInfo range)
	{
		int rowIndex = (range.IsCols ? TopRowIndex : range.Top);
		int colIndex = (range.IsRows ? LeftColIndex : range.Left);
		return ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell: false, GridScrollCurrentCellReason.Any);
	}

	public bool ScrollCellInView(GridRangeInfo range, GridScrollCurrentCellReason reason)
	{
		int rowIndex = (range.IsCols ? TopRowIndex : range.Top);
		int colIndex = (range.IsRows ? LeftColIndex : range.Left);
		return ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell: false, reason);
	}

	internal bool ScrollCellInViewInt(GridRangeInfo range, bool scrollFloatingCell, GridScrollCurrentCellReason reason)
	{
		int rowIndex = (range.IsCols ? TopRowIndex : range.Top);
		int colIndex = (range.IsRows ? LeftColIndex : range.Left);
		return ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell, reason);
	}

	public bool ScrollCellInView(int rowIndex, int colIndex)
	{
		return ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell: false, GridScrollCurrentCellReason.Any);
	}

	public bool ScrollCellInView(int rowIndex, int colIndex, GridScrollCurrentCellReason reason)
	{
		return ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell: false, reason);
	}

	internal bool ScrollCellInViewInt(int rowIndex, int colIndex, bool scrollFloatingCell, GridScrollCurrentCellReason reason)
	{
		return ScrollCellInViewInt(rowIndex, colIndex, scrollFloatingCell, dontScroll: false, reason);
	}

	internal bool ScrollCellInViewInt(int rowIndex, int colIndex, bool scrollFloatingCell, bool dontScroll, GridScrollCurrentCellReason reason)
	{
		if (Model.CoveredRanges.Find(rowIndex, colIndex, out var range))
		{
			if (range.Bottom > InternalGetFrozenRows())
			{
				rowIndex = Math.Max(GetFirstScrollableRow(), rowIndex);
			}
			if (range.Right > InternalGetFrozenCols())
			{
				colIndex = Math.Max(GetFirstScrollableCol(), colIndex);
			}
		}
		if (scrollFloatingCell && Model.FloatingCells.Find(rowIndex, colIndex, out var range2))
		{
			if (range2.Bottom > InternalGetFrozenRows())
			{
				rowIndex = Math.Max(GetFirstScrollableRow(), rowIndex);
			}
			if (range2.Right > InternalGetFrozenCols())
			{
				colIndex = Math.Max(GetFirstScrollableCol(), colIndex);
			}
		}
		GridQueryScrollCellInViewEventArgs e = new GridQueryScrollCellInViewEventArgs(rowIndex, colIndex, reason);
		OnQueryScrollCellInView(e);
		if (e.Handled)
		{
			return e.Result;
		}
		if ((reason & Model.Options.AllowScrollCurrentCellInView) == 0)
		{
			return false;
		}
		return ProcessScrollCellInView(e.RowIndex, e.ColIndex, dontScroll, e.Reason);
	}

	protected virtual void OnQueryScrollCellInView(GridQueryScrollCellInViewEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnQueryScrollCellInView(e);
		}
		if (this.QueryScrollCellInView != null)
		{
			this.QueryScrollCellInView(this, e);
		}
	}

	public virtual bool ProcessScrollCellInView(int rowIndex, int colIndex, bool dontScroll, GridScrollCurrentCellReason reason)
	{
		Rectangle gridBounds = GridBounds;
		bool flag = false;
		int rowCount = Model.RowCount;
		int colCount = Model.ColCount;
		int lastVisibleRow = ViewLayout.LastVisibleRow;
		int lastVisibleCol = ViewLayout.LastVisibleCol;
		Rectangle r = Rectangle.Empty;
		if (colIndex > 0 && rowIndex > 0)
		{
			r = ViewLayout.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), ignoreOutsideClientRectangle: false, GridCellSizeKind.ActualSize);
		}
		if (hPixelScroll && !r.IsEmpty && colIndex > InternalGetFrozenCols())
		{
			flag |= HScrollPixelScrollInView(r);
		}
		if (vPixelScroll && !r.IsEmpty && rowIndex > InternalGetFrozenRows())
		{
			flag |= VScrollPixelScrollInView(r);
		}
		if (r.IsEmpty || !hPixelScroll)
		{
			if (colIndex > InternalGetFrozenCols() && (colIndex < ScrollGrid.m_nLeftCol || (colIndex == ScrollGrid.m_nLeftCol && hScrollPixelDelta > 0)))
			{
				if (!dontScroll)
				{
					LeftColIndex = colIndex;
				}
				flag = true;
			}
			else if (colIndex >= lastVisibleCol && ViewLayout.HasPartialVisibleCols)
			{
				if (!dontScroll)
				{
					GridCellRendererBase renderer = CurrentCell.Renderer;
					if (renderer != null)
					{
						Message pMsg = Message.Create(GetWindow().Handle, 276, (IntPtr)0, (IntPtr)0);
						renderer.OnNotifyMsg(ref pMsg);
						if (pMsg.Msg == 0)
						{
							return false;
						}
					}
					int colIndex2 = colIndex;
					int visibleFrozenCols = GetVisibleFrozenCols();
					int num = GetColWidth(colIndex2);
					for (int i = 0; i < visibleFrozenCols; i++)
					{
						num += GetColWidth(GetCol(i));
					}
					while (num <= gridBounds.Width && colIndex2 > 1 && ScrollGrid.GetPrevColIndex(ref colIndex2))
					{
						if (colIndex2 > 0)
						{
							num += GetColWidth(colIndex2);
						}
					}
					if (num > gridBounds.Width && colIndex2 < colIndex)
					{
						colIndex2 = ScrollGrid.GetNextColIndex(colIndex2, skipFirstHidden: false);
					}
					while (GetColWidth(colIndex2) == 0)
					{
						colIndex2 = ScrollGrid.GetNextColIndex(colIndex2, skipFirstHidden: true);
					}
					LeftColIndex = Math.Min(colIndex2, colCount);
				}
				flag = true;
			}
		}
		if (r.IsEmpty || !vPixelScroll)
		{
			if (rowIndex > InternalGetFrozenRows() && (rowIndex < ScrollGrid.m_nTopRow || (rowIndex == ScrollGrid.m_nTopRow && vScrollPixelDelta > 0)))
			{
				if (!dontScroll)
				{
					TopRowIndex = rowIndex;
				}
				flag = true;
			}
			else if (rowIndex >= lastVisibleRow && ViewLayout.HasPartialVisibleRows)
			{
				if (!dontScroll)
				{
					GridCellRendererBase renderer2 = CurrentCell.Renderer;
					if (renderer2 != null)
					{
						Message pMsg2 = Message.Create(GetWindow().Handle, 277, (IntPtr)0, (IntPtr)0);
						renderer2.OnNotifyMsg(ref pMsg2);
						if (pMsg2.Msg == 0)
						{
							return false;
						}
					}
					int rowIndex2 = rowIndex;
					int visibleFrozenRows = GetVisibleFrozenRows();
					int num2 = GetRowHeight(rowIndex2);
					for (int j = 0; j < visibleFrozenRows; j++)
					{
						num2 += GetRowHeight(GetRow(j));
					}
					while (num2 <= gridBounds.Height && rowIndex2 > 1 && ScrollGrid.GetPrevRowIndex(ref rowIndex2))
					{
						if (rowIndex2 > 0)
						{
							num2 += GetRowHeight(rowIndex2);
						}
					}
					if (num2 > gridBounds.Height && rowIndex2 < rowIndex)
					{
						rowIndex2 = ScrollGrid.GetNextRowIndex(rowIndex2, skipFirstHidden: false);
					}
					while (GetRowHeight(rowIndex2) == 0)
					{
						rowIndex2 = ScrollGrid.GetNextRowIndex(rowIndex2, skipFirstHidden: true);
					}
					bool flag2 = true;
					if ((reason == GridScrollCurrentCellReason.BeginEdit || reason == GridScrollCurrentCellReason.Click) && rowIndex == lastVisibleRow && ViewLayout.LastVisibleRow.Equals(Model.RowCount) && !GetType().Equals(typeof(GridControlBase)) && !GetType().Equals(typeof(GridDataBoundGrid)))
					{
						flag2 = false;
					}
					if (flag2)
					{
						TopRowIndex = Math.Min(rowIndex2, rowCount);
					}
					Update();
				}
				flag = true;
			}
		}
		if (!dontScroll && flag)
		{
			ViewLayout.Reset();
			Update();
		}
		return flag;
	}

	public virtual void InternalSetTopRow(int rowIndex, bool resetvScrollPixelDelta)
	{
		ScrollGrid.m_nTopRow = rowIndex;
		if (resetvScrollPixelDelta)
		{
			vScrollPixelDelta = 0;
		}
	}

	public void InternalSetTopRow(int rowIndex)
	{
		InternalSetTopRow(rowIndex, resetvScrollPixelDelta: true);
	}

	public virtual void InternalSetLeftCol(int colIndex, bool resethScrollPixelDelta)
	{
		ScrollGrid.m_nLeftCol = colIndex;
		if (resethScrollPixelDelta)
		{
			hScrollPixelDelta = 0;
		}
	}

	public void InternalSetLeftCol(int colIndex)
	{
		InternalSetLeftCol(colIndex, resethScrollPixelDelta: true);
	}

	public virtual void SetTopRow(int rowIndex)
	{
		int firstScrollableRow = GetFirstScrollableRow();
		rowIndex = Math.Max(firstScrollableRow, Math.Min(rowIndex, Model.RowCount));
		if (PrintingMode)
		{
			PrintInfo.m_nPrintTopRow = rowIndex;
			return;
		}
		if (CurrentCell.StaticDrawing || inOnPaint || firstPaint || ScrollGrid.m_nTopRow < firstScrollableRow)
		{
			bool success = false;
			if (NotifyTopRowChanging(rowIndex))
			{
				ScrollGrid.m_nTopRow = rowIndex;
				vScrollPixelDelta = 0;
			}
			NotifyTopRowChanged(success);
			return;
		}
		rowIndex = Math.Min(Model.RowCount, Math.Max(rowIndex, firstScrollableRow));
		if (UseOldHiddenScrollLogic)
		{
			if (rowIndex < ScrollGrid.m_nTopRow)
			{
				ScrollGrid.DoScroll(GridDirectionType.Up, ScrollGrid.m_nTopRow - rowIndex);
			}
			else if (rowIndex > ScrollGrid.m_nTopRow)
			{
				ScrollGrid.DoScroll(GridDirectionType.Down, rowIndex - ScrollGrid.m_nTopRow);
			}
			else if (vScrollPixelDelta != 0)
			{
				ScrollGrid.DoScroll(GridDirectionType.Up, 1);
			}
		}
		else if (rowIndex < ScrollGrid.m_nTopRow)
		{
			ScrollGrid.DoScroll(GridDirectionType.Up, ScrollGrid.VScrollPos - ScrollGrid.RowIndexToScrollPosition(rowIndex));
		}
		else if (rowIndex > ScrollGrid.m_nTopRow)
		{
			ScrollGrid.DoScroll(GridDirectionType.Down, ScrollGrid.RowIndexToScrollPosition(rowIndex) - ScrollGrid.VScrollPos);
		}
		else if (vScrollPixelDelta != 0)
		{
			ScrollGrid.DoScroll(GridDirectionType.Up, 1);
		}
		Update();
	}

	public virtual void SetLeftCol(int colIndex)
	{
		int firstScrollableCol = GetFirstScrollableCol();
		colIndex = Math.Max(firstScrollableCol, Math.Min(colIndex, Model.ColCount));
		if (PrintingMode)
		{
			PrintInfo.m_nPrintLeftCol = colIndex;
			return;
		}
		if (CurrentCell.StaticDrawing || inOnPaint || firstPaint || ScrollGrid.m_nLeftCol < firstScrollableCol)
		{
			bool success = false;
			if (NotifyLeftColChanging(colIndex))
			{
				ScrollGrid.m_nLeftCol = colIndex;
				hScrollPixelDelta = 0;
			}
			NotifyLeftColChanged(success);
			return;
		}
		colIndex = Math.Min(Model.ColCount, Math.Max(colIndex, firstScrollableCol));
		if (UseOldHiddenScrollLogic)
		{
			if (colIndex < ScrollGrid.m_nLeftCol)
			{
				ScrollGrid.DoScroll(GridDirectionType.Left, ScrollGrid.m_nLeftCol - colIndex);
			}
			else if (colIndex > ScrollGrid.m_nLeftCol)
			{
				ScrollGrid.DoScroll(GridDirectionType.Right, colIndex - ScrollGrid.m_nLeftCol);
			}
			else if (hScrollPixelDelta != 0)
			{
				ScrollGrid.DoScroll(GridDirectionType.Left, 1);
			}
		}
		else if (colIndex < ScrollGrid.m_nLeftCol)
		{
			ScrollGrid.DoScroll(GridDirectionType.Left, ScrollGrid.HScrollPos - ScrollGrid.ColIndexToScrollPosition(colIndex));
		}
		else if (colIndex > ScrollGrid.m_nLeftCol)
		{
			ScrollGrid.DoScroll(GridDirectionType.Right, ScrollGrid.ColIndexToScrollPosition(colIndex) - ScrollGrid.HScrollPos);
		}
		else if (hScrollPixelDelta != 0)
		{
			ScrollGrid.DoScroll(GridDirectionType.Left, 1);
		}
		Update();
	}

	private void SetTopLeftRowCol(int rowIndex, int colIndex)
	{
		TopRowIndex = rowIndex;
		LeftColIndex = colIndex;
	}

	public int GetClientRow(int rowIndex)
	{
		if (UseOldHiddenScrollLogic)
		{
			return _GetClientRow(rowIndex, TopRowIndex);
		}
		ViewLayout.DemandInitialize();
		int num = ScrollGrid.RowIndexToScrollPosition(rowIndex);
		if (!UseOldHiddenScrollLogic && rowIndex > Model.RowCount)
		{
			num++;
		}
		return _GetClientRow(num, ScrollGrid.VScrollPos);
	}

	private int _GetClientRow(int rowIndex, int vScrollPos)
	{
		int visibleFrozenRows = GetVisibleFrozenRows();
		if (rowIndex >= visibleFrozenRows && rowIndex < vScrollPos)
		{
			return 0;
		}
		if (rowIndex == int.MaxValue || rowIndex <= visibleFrozenRows)
		{
			return rowIndex;
		}
		return rowIndex - Math.Max(vScrollPos - visibleFrozenRows, 0);
	}

	public int GetClientCol(int colIndex)
	{
		if (UseOldHiddenScrollLogic)
		{
			return _GetClientCol(colIndex, LeftColIndex);
		}
		ViewLayout.DemandInitialize();
		int num = ScrollGrid.ColIndexToScrollPosition(colIndex);
		if (!UseOldHiddenScrollLogic && colIndex > Model.ColCount)
		{
			num++;
		}
		return _GetClientCol(num, ScrollGrid.HScrollPos);
	}

	private int _GetClientCol(int colIndex, int hScrollPos)
	{
		int visibleFrozenCols = GetVisibleFrozenCols();
		if (colIndex >= visibleFrozenCols && colIndex < hScrollPos)
		{
			return 0;
		}
		if (colIndex == int.MaxValue || colIndex <= visibleFrozenCols)
		{
			return colIndex;
		}
		return colIndex - Math.Max(hScrollPos - visibleFrozenCols, 0);
	}

	public int GetRow(int nClientRow)
	{
		if (UseOldHiddenScrollLogic)
		{
			return _GetRow(nClientRow, TopRowIndex);
		}
		ViewLayout.DemandInitialize();
		return ScrollGrid.ScrollPositionToRowIndex(_GetRow(nClientRow, ScrollGrid.VScrollPos));
	}

	private int _GetRow(int nClientRow, int vScrollPos)
	{
		int visibleFrozenRows = GetVisibleFrozenRows();
		if (nClientRow == int.MaxValue || nClientRow < visibleFrozenRows)
		{
			return nClientRow;
		}
		return nClientRow + Math.Max(vScrollPos - visibleFrozenRows, 0);
	}

	public int GetCol(int nClientCol)
	{
		if (UseOldHiddenScrollLogic)
		{
			return _GetCol(nClientCol, LeftColIndex);
		}
		return ScrollGrid.ScrollPositionToColIndex(_GetCol(nClientCol, ScrollGrid.HScrollPos));
	}

	private int _GetCol(int nClientCol, int hScrollPos)
	{
		int visibleFrozenCols = GetVisibleFrozenCols();
		if (nClientCol == int.MaxValue || nClientCol < visibleFrozenCols)
		{
			return nClientCol;
		}
		return nClientCol + Math.Max(hScrollPos - visibleFrozenCols, 0);
	}

	public int GetMaximumTopRowIndex()
	{
		return ScrollGrid.GetMaxRowScrollPosition();
	}

	public int GetMinimumTopRowIndex()
	{
		return Math.Max(1, ScrollGrid.RowIndexToScrollPosition(InternalGetFrozenRows()) + 1);
	}

	public int GetMaximumLeftColIndex()
	{
		return ScrollGrid.GetMaxRowScrollPosition();
	}

	public int GetMinimumLeftColIndex()
	{
		return Math.Max(1, ScrollGrid.RowIndexToScrollPosition(InternalGetFrozenRows()) + 1);
	}

	protected override void OnWindowScrolled(ScrollWindowEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnWindowScrolled(e);
		}
		if (!base.IsSplitterPaneClosing)
		{
			ViewLayout.Reset();
			base.OnWindowScrolled(e);
		}
	}

	internal bool NotifyTopRowChanging(int topRowIndex)
	{
		savedTopRowIndex = TopRowIndex;
		GridRowColIndexChangingEventArgs e = new GridRowColIndexChangingEventArgs(topRowIndex);
		OnTopRowChanging(e);
		if (!e.Cancel)
		{
			ViewLayout.Reset();
			return true;
		}
		return false;
	}

	protected virtual void OnTopRowChanging(GridRowColIndexChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnTopRowChanging(e);
		}
		if (this.TopRowChanging == null)
		{
			return;
		}
		try
		{
			this.TopRowChanging(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	internal void NotifyTopRowChanged(bool success)
	{
		ViewLayout.Reset();
		GridRowColIndexChangedEventArgs e = new GridRowColIndexChangedEventArgs(savedTopRowIndex, success);
		OnTopRowChanged(e);
	}

	protected virtual void OnTopRowChanged(GridRowColIndexChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnTopRowChanged(e);
		}
		if (this.TopRowChanged == null)
		{
			return;
		}
		try
		{
			this.TopRowChanged(this, e);
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

	internal bool NotifyLeftColChanging(int leftColIndex)
	{
		savedLeftColIndex = LeftColIndex;
		GridRowColIndexChangingEventArgs e = new GridRowColIndexChangingEventArgs(leftColIndex);
		OnLeftColChanging(e);
		if (!e.Cancel)
		{
			ViewLayout.Reset();
			return true;
		}
		return false;
	}

	protected virtual void OnLeftColChanging(GridRowColIndexChangingEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnLeftColChanging(e);
		}
		if (this.LeftColChanging == null)
		{
			return;
		}
		try
		{
			this.LeftColChanging(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
	}

	internal void NotifyLeftColChanged(bool success)
	{
		ViewLayout.Reset();
		GridRowColIndexChangedEventArgs e = new GridRowColIndexChangedEventArgs(savedLeftColIndex, success);
		OnLeftColChanged(e);
	}

	protected virtual void OnLeftColChanged(GridRowColIndexChangedEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnLeftColChanged(e);
		}
		if (this.LeftColChanged == null)
		{
			return;
		}
		try
		{
			this.LeftColChanged(this, e);
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

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnMouseWheel(e);
		}
		if (CurrentCell.Renderer != null)
		{
			GridCurrentCell nestedCurrentCell = CurrentCell.Renderer.GetNestedCurrentCell();
			if (nestedCurrentCell != null && nestedCurrentCell.Renderer != null && nestedCurrentCell.Renderer.ProcessMouseWheel(e))
			{
				return;
			}
		}
		base.MouseControllerDispatcher.ProcessMouseMove(new MouseEventArgs(MouseButtons.None, 0, -1, -1, 0));
		base.OnMouseWheel(e);
		Point point = Control.MousePosition;
		base.MouseControllerDispatcher.ProcessMouseMove(new MouseEventArgs(MouseButtons.None, 0, point.X, point.Y, 0));
	}

	public void RaiseMouseWheel(MouseEventArgs e)
	{
		OnMouseWheel(e);
	}

	public bool IsDesignMode()
	{
		return base.DesignMode;
	}

	public new virtual bool Focus()
	{
		ignoreNextValidating = true;
		try
		{
			return GetWindow().Focus();
		}
		finally
		{
			ignoreNextValidating = false;
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		ignoreMouseUp = false;
		if (eventsTarget != null)
		{
			eventsTarget.OnMouseDown(e);
		}
		if (base.DesignMode && e.Button != MouseButtons.Left)
		{
			base.OnMouseDown(e);
			return;
		}
		cancelMode = false;
		if (base.CanSelect && !QueryFocusInside() && FocusOnMouseDown && WantKeys)
		{
			Focus();
			if (cancelMode || (!base.DesignMode && !IsActiveControl))
			{
				cancelMode = false;
				return;
			}
		}
		isMouseDownCalled = true;
		forceCurrentCellMoveTo = true;
		ExceptionManager.SuspendCatchExceptions();
		try
		{
			if (RaiseCancelMouseEvent(e, OnGridControlMouseDown))
			{
				base.OnMouseDown(e);
				if (base.IsDisposed)
				{
					return;
				}
				if (!(base.ActiveController is IGridFocusHelper gridFocusHelper) || gridFocusHelper.GetAllowFixFocus())
				{
					FixDelayedCurrentCellActivate();
					FixCurrentCellGotFocus();
				}
			}
			ExceptionManager.ResumeCatchExceptions();
		}
		catch (Exception ex)
		{
			ExceptionManager.ResumeCatchExceptions();
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			ignoreMouseUp = true;
			CurrentCell.ErrorMessage = ex.Message;
			CurrentCell.Exception = ex;
			CurrentCell.DisplayWarningText(ex.ToString());
			CancelUpdate();
			Refresh();
		}
	}

	protected virtual void OnGridControlMouseDown(CancelMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnGridControlMouseDown(e);
		}
		if (this.GridControlMouseDown != null)
		{
			this.GridControlMouseDown(this, e);
		}
	}

	protected virtual void OnGridControlMouseMove(CancelMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnGridControlMouseMove(e);
		}
		if (this.GridControlMouseMove != null)
		{
			this.GridControlMouseMove(this, e);
		}
	}

	protected virtual void OnGridControlMouseUp(CancelMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnGridControlMouseUp(e);
		}
		if (this.GridControlMouseUp != null)
		{
			this.GridControlMouseUp(this, e);
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (ignoreMouseUp)
		{
			return;
		}
		if (eventsTarget != null)
		{
			eventsTarget.OnMouseUp(e);
		}
		if (RaiseCancelMouseEvent(e, OnGridControlMouseUp))
		{
			base.OnMouseUp(e);
			if (!base.IsDisposed && (CurrentCell.Renderer == null || CurrentCell.Renderer.Control == null || !CurrentCell.Renderer.Control.Focused) && base.IsHandleCreated && (AllowFixFocusWhenCurrentCellIsEditingInMouseUp || Focused) && (CurrentCell.IsEditing || (Model.Options.ActivateCurrentCellBehavior & GridCellActivateAction.SetCurrent) != GridCellActivateAction.None))
			{
				FixCurrentCellGotFocus(noScroll: true);
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnMouseMove(e);
		}
		if (RaiseCancelMouseEvent(e, OnGridControlMouseMove))
		{
			base.OnMouseMove(e);
		}
	}

	internal bool RaiseCancelMouseEvent(MouseEventArgs e, CancelMouseDelegate d)
	{
		if (base.Location.X > 9999 || base.Location.X < -1000)
		{
			return false;
		}
		CancelMouseEventArgs e2 = new CancelMouseEventArgs(e);
		try
		{
			d(e2);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e2.Cancel = true;
			NotifyCancelMode();
		}
		return !e2.Cancel;
	}

	protected override void OnCancelMode(EventArgs e)
	{
		base.AutoScrolling = ScrollBars.None;
		Capture = false;
		cancelMode = true;
		base.OnCancelMode(e);
	}

	protected override void OnAutoScrollingChanged(EventArgs e)
	{
		if (Control.MouseButtons == MouseButtons.None)
		{
			base.AutoScrolling = ScrollBars.None;
		}
		else
		{
			base.OnAutoScrollingChanged(e);
		}
	}

	protected override void OnScrollControlMouseDown(CancelMouseEventArgs e)
	{
		if (eventsTarget != null)
		{
			eventsTarget.OnScrollControlMouseDown(e);
		}
		Model.ActiveGridView = this;
		base.OnScrollControlMouseDown(e);
	}

	private void ModelCellsChanged(object sender, GridCellsChangedEventArgs e)
	{
		if (!e.Success)
		{
			return;
		}
		if (CurrentCell.IsActive && e.Range.Contains(CurrentCell.RangeInfo) && !CurrentCell.IsInActiveOrDeactivate && !CurrentCell.IsInConfirmChanges)
		{
			try
			{
				CurrentCell.Refresh();
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
		InvalidateRange(e.Range, GridRangeOptions.MergeAllSpannedCells);
	}

	protected internal virtual Size GetDefaultMaxStandardValuesSize()
	{
		return Size.Empty;
	}

	public virtual Graphics GetCachedGraphics()
	{
		if (base.HasDoubleBufferSurface)
		{
			return base.DoubleBufferSurface.Graphics;
		}
		return GetCachedGraphics(this);
	}

	private Graphics GetCachedGraphics(GridControlBase gridTableControl)
	{
		if (m_cachedGraphics != null && (gridTableControl.VScrollBar.Value != tc_yPos || gridTableControl.HScrollBar.Value != tc_xPos || gridTableControl.Bounds != tc_bounds))
		{
			m_cachedGraphics.Dispose();
			gridTableControl.Disposed -= GridControlBase_Disposed;
			m_cachedGraphics = null;
		}
		if (m_cachedGraphics == null)
		{
			m_cachedGraphics = gridTableControl.CreateGridGraphics();
			gridTableControl.Disposed += GridControlBase_Disposed;
		}
		tc_yPos = gridTableControl.VScrollBar.Value;
		tc_xPos = gridTableControl.HScrollBar.Value;
		tc_bounds = gridTableControl.Bounds;
		return m_cachedGraphics;
	}

	private void GridControlBase_Disposed(object sender, EventArgs e)
	{
		if (m_cachedGraphics != null)
		{
			m_cachedGraphics.Dispose();
			m_cachedGraphics = null;
			GridControlBase gridControlBase = (GridControlBase)sender;
			gridControlBase.Disposed -= GridControlBase_Disposed;
		}
	}

	public virtual void NotifyCellHighlighted(int rowIndex, int colIndex, GridStyleInfo style)
	{
	}
}
