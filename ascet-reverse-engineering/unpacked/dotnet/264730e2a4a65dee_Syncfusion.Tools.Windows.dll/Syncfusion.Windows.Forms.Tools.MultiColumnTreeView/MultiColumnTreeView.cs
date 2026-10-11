using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Drawing.Printing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DefaultProperty("Nodes")]
[ToolboxItem(true)]
[Designer(typeof(MultiColumnTreeViewDesigner))]
[ToolboxBitmap(typeof(TreeViewAdv), "ToolboxIcons.MultiColumnTreeView.bmp")]
[Description("Advanced tree control with MultiColumn support.")]
public class MultiColumnTreeView : ScrollControl, ISupportInitialize, IThemedControl, INonClientPaintingSupport, IProvideCustomContextMenuPositionalInformation, IDragDispatcher, ISuppportHistory
{
	private enum PrintDirection
	{
		Horizontal,
		Vertical
	}

	internal enum InternalBooleanFields
	{
		ShowHeader,
		SelectOnCollapse,
		HistoryEnabled,
		SuspendExpandRecalculate,
		AutoControlsAdding,
		ClickedOnSelection,
		CanDrag,
		HotTracking,
		ShowLines,
		ShowRootLines,
		Printing,
		AllowMouseBasedSelection,
		LoadOnDemand,
		OwnerDrawNodes,
		OwnerDrawNodesBackground,
		LabelEdit,
		AddSeparatorAtEnd,
		MouseBasedSelectionOn,
		AllowKeyboardSearch,
		FullRowSelect,
		HideSelection,
		PreparingDragCueBitmap,
		Dragging,
		MouseLeaved,
		AllowDropStubWorks,
		KeepDottedSelection,
		KeepDragCapturePoint,
		ThemedBorder,
		IgnoreThemeBackground,
		IgnoreNextMouseMove,
		EnsureVisibleSelectedNode,
		TransparentControls,
		DragOnText,
		ShowDragNodeCue,
		BroughtIntoView,
		SelectUpwardDirection,
		SortWithChildNodes,
		InVScroll,
		InHScroll,
		NeedUpdateCustomControls,
		IsKeyDown,
		IsMouseDown,
		IsLeftMouseDown,
		IsMouseUp,
		EnsureVisible,
		IsMouseDownWithCtrl,
		CancelEdit,
		DragCueOn,
		ShouldSelectNodeOnEnter,
		NeedUpdateEditTop,
		IgnoreLeave,
		IsEditEnding,
		CanGetDragImage,
		DesignMode,
		ColumnsMovedMode,
		AutoAdjustMultiLineHeight,
		IsDoubleClick,
		[Browsable(false)]
		Max
	}

	internal const string NodeLevelStyleBaseName = "NodeLevel";

	internal const string BaseStyleBaseName = "BaseStyle";

	internal const string ColumnStyleBaseName = "ColumnStyle";

	internal const string SubItemStyleBaseName = "SubItemStyle";

	internal const string DefaultBaseStyleName = "Standard";

	internal const string DefaultColumnStyleName = "Standard - Column";

	internal const string DefaultSubItemStyleName = "Standard - SubItem";

	internal const int DefaultImageIndex = -1;

	internal const int DefaultHeaderHeigh = 22;

	private const int DEF_MIN_COLUMN_WIDTH = 4;

	private const int FIXED3D_BORDER_WIDTH = 2;

	private const int PRF_NONCLIENT = 2;

	private Point m_ptPrintPosition;

	private Image m_imgControl;

	private int m_iNodeHeight;

	private PrintDirection m_pdCurrentDirection;

	private int m_iScrollBarHeight;

	private int m_iScrollBarWidth;

	private int m_iPageNumber;

	private DateTime m_dtDateTime;

	private PrintDocument m_pdDocument;

	private BitArray m_boolean = new BitArray(57);

	private TreeNodeAdv m_lastNodeOver;

	private TreeNodeAdv m_tnHelpTextNode;

	private TreeNodeAdvSubItem m_previousHelpTextSubItem;

	private TreeNodeAdv m_lastSelectedNode;

	private TreeNodeAdv m_lastButtonDownNode;

	private TreeNodeAdv m_root;

	private TreeNodeAdv m_activeNode;

	private TreeNodeAdv m_selectionBaseNode;

	private TreeNodeAdv m_activeNodeForLabelEdit;

	private TreeNodeAdv m_rMouseDownNode;

	private TreeNodeAdv m_lMouseDownNode;

	private TreeNodeAdv m_lastSelectedByKeyBoard;

	private TreeNodeAdv[] m_draggedTnas;

	private TreeNodeAdv m_highlightedNode;

	private Graphics m_measure;

	private int m_headerHeight = 22;

	private TreeColumnAdvCollection m_columns;

	private HistoryManager m_historyManager;

	private StyleNamePairsList m_stylePairs;

	private Hashtable m_htCustomControlCollection = new Hashtable();

	private IntPtr m_rgnCached = IntPtr.Zero;

	private ImageList m_nodeStateImageList;

	private int m_defaultCollapseImageIndex = -1;

	private int m_defaultExpandImageIndex = -1;

	private bool useDefaultDrawing;

	private Border3DSide m_borderSides = Border3DSide.All;

	private Border3DStyle m_border3DStyle = Border3DStyle.Sunken;

	private BorderStyle m_borderStyle = BorderStyle.Fixed3D;

	private ButtonBorderStyle m_borderSingle = ButtonBorderStyle.Solid;

	private Color m_clrBorder = Color.Black;

	private ToolTipAdv m_helpText;

	internal ITreeNodeAdvPaintFilter m_paintFilter;

	private Hashtable m_hashHighlightedNodes = new Hashtable();

	private Point m_lastButtonDownPoint = Point.Empty;

	private IContainer components;

	private int m_itemHeight = -1;

	private int m_parentIndent = 19;

	private ArrayList m_latestMouseBasedSelection;

	private Timer m_keyInputTimer;

	private TextBox m_labelEditor;

	private string m_strKeySearch = string.Empty;

	private Pen m_penLine;

	private DashStyle m_lineStyle = DashStyle.Dot;

	private Color m_clrLine = Color.Gray;

	private CheckedNodesColection m_checkedNodes;

	private SelectedNodesCollection m_selectedNodes;

	private Point m_ptMouseDown = Point.Empty;

	private Timer m_timerLabelEditStart;

	private string m_strPathSeparator = "\\";

	private PrintDocument m_printDocument;

	private ToolTipAdv m_toolTip;

	private int m_gutterSpace = 3;

	private int m_iNodeCount;

	private TreeSelectionMode m_selectionMode;

	private ImageList m_leftImageList;

	private ImageList m_rightImageList;

	private ImageList m_stateImageList;

	private BrushInfo m_selectedNodeBackground = new BrushInfo(SystemColors.Highlight);

	private BrushInfo m_inactiveSelectedNodeBackground = new BrushInfo(SystemColors.Control);

	private Color m_clrSelectedNodeFore = SystemColors.HighlightText;

	private Color m_clrInactiveSelectedNodeFore = SystemColors.ControlText;

	internal int m_currentSelectedNodeIndex = -1;

	private BrushInfo m_bgBrush;

	private DragHelper m_dragHelper;

	private Hashtable m_baseStyles = new Hashtable();

	private TreeNodeAdvStyleInfo m_boundStyle;

	private Keys m_pressedKey;

	private int m_hScrollPos = 1;

	private int m_vScrollPos = 1;

	private int m_textSelectionLength;

	private int m_selectionStart;

	private string m_strLastText = string.Empty;

	private BrushInfo m_HeaderBackground = new BrushInfo(SystemColors.Control);

	private int m_iNcScreenOffsetX;

	private int m_iNcScreenOffsetY;

	private int m_iColumnsPressedPosition;

	private int m_iColumnsPressedIndex;

	private int m_iColumnsOffset;

	private TreeColumnAdv m_pressedColumn;

	private Region m_drawingRgn = new Region();

	private bool m_bScrollersRefreshed;

	private bool nodeInRefresh;

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Recalculate height of nodes for proper multi-line text displaying, otherwise False.")]
	public bool AutoAdjustMultiLineHeight
	{
		get
		{
			return m_boolean[55];
		}
		set
		{
			if (m_boolean[55] != value)
			{
				m_boolean[55] = value;
				if (Root != null)
				{
					Root.RecalculateAllDimensions();
					Invalidate();
				}
			}
		}
	}

	[Browsable(true)]
	[Description("Define header height if control works in Tree list view mode.")]
	[DefaultValue(22)]
	[Category("Appearance")]
	public int HeaderHeight
	{
		get
		{
			return m_headerHeight;
		}
		set
		{
			if (m_headerHeight != value)
			{
				m_headerHeight = value;
				UpdateColumnsHeight();
				RecreateHandle();
				InvalidateNc();
			}
		}
	}

	[Browsable(false)]
	[Description("Gets the number of tree nodes that can be fully visible in the tree view control.")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public int VisibleCount => TreeColumnRectangle.Height / ItemHeight;

	[DefaultValue(false)]
	public override bool AllowIncreaseSmallChange
	{
		get
		{
			return base.AllowIncreaseSmallChange;
		}
		set
		{
			base.AllowIncreaseSmallChange = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(false)]
	public bool UseDefaultDrawing
	{
		get
		{
			return useDefaultDrawing;
		}
		set
		{
			if (useDefaultDrawing != value)
			{
				useDefaultDrawing = value;
			}
		}
	}

	[Category("Scrolling")]
	[Description("The position of the Horizontal scrollbar")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int HScrollPos
	{
		get
		{
			if (base.HScrollBar.Enabled)
			{
				return m_hScrollPos;
			}
			return 0;
		}
		set
		{
			if (m_hScrollPos != value)
			{
				NeedUpdateCustomControls = true;
				int xAmount = m_hScrollPos - value;
				m_hScrollPos = value;
				ScrollWindow(xAmount, 0, base.ClientRectangle, base.ClientRectangle, allowUpdate: true);
			}
		}
	}

	[Description("The position of the Vertical scrollbar.")]
	[Category("Scrolling")]
	[Browsable(false)]
	[DefaultValue(1)]
	public int VScrollPos
	{
		get
		{
			return m_vScrollPos;
		}
		set
		{
			if (m_vScrollPos == value)
			{
				return;
			}
			NeedUpdateCustomControls = true;
			int num = value;
			if (num < base.VScrollBar.Minimum)
			{
				num = base.VScrollBar.Minimum;
			}
			else if (num > base.VScrollBar.Maximum)
			{
				num = base.VScrollBar.Maximum;
			}
			int num2 = num + base.VScrollBar.LargeChange - base.VScrollBar.SmallChange;
			if (num2 == base.VScrollBar.Maximum)
			{
				TreeNodeAdv treeNodeAdv = RowIndexToNode(m_vScrollPos + base.VScrollBar.LargeChange);
				if (treeNodeAdv != LastVisibleNode || LastVisibleNode.NextVisibleNode != null)
				{
					ScrollWindow(num);
				}
			}
			else
			{
				ScrollWindow(num);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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
	[Description("HistoryManager to use for Undo\\Redo operations.")]
	[DefaultValue(null)]
	public HistoryManager HistoryManager
	{
		get
		{
			return m_historyManager;
		}
		set
		{
			if (value != m_historyManager)
			{
				m_historyManager = value;
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates, record actions for Undo\\Redo using, or not.")]
	[Category("Appearance")]
	public bool HistoryEnabled
	{
		get
		{
			return m_boolean[2];
		}
		set
		{
			if (value != m_boolean[2])
			{
				m_boolean[2] = value;
			}
		}
	}

	[DefaultValue(false)]
	[Description("This will ignore the theme's background color and draw the BackgroundColor when ThemesEnabled is true.")]
	[Category("Appearance")]
	public bool IgnoreThemeBackground
	{
		get
		{
			return m_boolean[28];
		}
		set
		{
			if (m_boolean[28] != value)
			{
				m_boolean[28] = value;
				Invalidate();
			}
		}
	}

	[Description("Indicates if the control is drawn themed.")]
	[Category("Appearance")]
	public bool ThemesEnabled
	{
		get
		{
			if (StandardStyle != null)
			{
				return StandardStyle.ThemesEnabled;
			}
			return false;
		}
		set
		{
			if (StandardStyle != null)
			{
				StandardStyle.ThemesEnabled = value;
				RecreateHandle();
				Root.RecalculateAllDimensions();
				Invalidate();
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(Border3DSide.All)]
	[Description("Indicates the border sides of the control.")]
	[Category("Appearance")]
	public Border3DSide BorderSides
	{
		get
		{
			return m_borderSides;
		}
		set
		{
			if (m_borderSides != value)
			{
				m_borderSides = value;
				OnBorderSidesChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

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

	[Description("Lets you set the background color, gradient, etc. overriding the BackColor setting.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance")]
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
				m_bgBrush = ((value == null) ? BrushInfo.Empty : value);
				base.DisableScrollWindow = IsVerticalGradient;
				Invalidate();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Lets you set the background color, gradient, etc. for column headers zone")]
	[Category("Appearance")]
	public BrushInfo ColumnsHeaderBackground
	{
		get
		{
			return m_HeaderBackground;
		}
		set
		{
			if (m_HeaderBackground != value)
			{
				m_HeaderBackground = ((value == null) ? BrushInfo.Empty : value);
				InvalidateWindow();
			}
		}
	}

	[Description("Indicates the color of the 2D border.")]
	[Category("Appearance")]
	public Color BorderColor
	{
		get
		{
			return m_clrBorder;
		}
		set
		{
			if (m_clrBorder != value)
			{
				m_clrBorder = value;
				OnBorderColorChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	[DefaultValue(ButtonBorderStyle.Solid)]
	[Description("Indicates the 2D border style.")]
	[Category("Appearance")]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return m_borderSingle;
		}
		set
		{
			if (m_borderSingle != value)
			{
				m_borderSingle = value;
				OnBorderSingleChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	[Description("Indicates the border style of the control.")]
	[DefaultValue(BorderStyle.Fixed3D)]
	public new BorderStyle BorderStyle
	{
		get
		{
			return m_borderStyle;
		}
		set
		{
			base.BorderStyle = BorderStyle.None;
			if (m_borderStyle != value)
			{
				BorderStyle borderStyle = value;
				if (value == BorderStyle.FixedSingle)
				{
					borderStyle = BorderStyle.Fixed3D;
				}
				base.BorderStyle = borderStyle;
				m_borderStyle = value;
				UpdateStyles();
				InvalidateWindow();
				OnBorderStyleChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(Border3DStyle.Sunken)]
	[Category("Appearance")]
	[Description("Indicates the style of the 3D border.")]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return m_border3DStyle;
		}
		set
		{
			if (m_border3DStyle != value)
			{
				m_border3DStyle = value;
				OnBorder3DStyleChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	[Description("Gets or sets value which indicates if control must draw dotted rectangle around selected node then it has no focus.")]
	[DefaultValue(true)]
	public bool KeepDottedSelection
	{
		get
		{
			return m_boolean[25];
		}
		set
		{
			m_boolean[25] = value;
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	[Description("Gets or sets value which indicates if cue image should be drawn at a distance below the mouse cursor while draging or not. ")]
	[DefaultValue(false)]
	public bool KeepDragCapturePoint
	{
		get
		{
			return m_boolean[26];
		}
		set
		{
			m_boolean[26] = value;
			DragHelper.DragWindow.DragParent = (value ? this : null);
		}
	}

	[Category("Behavior")]
	[Browsable(true)]
	[Description("This will sort all the nodes including child nodes.")]
	[DefaultValue(false)]
	public bool SortWithChildNodes
	{
		get
		{
			return m_boolean[36];
		}
		set
		{
			m_boolean[36] = value;
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Specifies whether a semi-transaprent image of the selected nodes should be drawn beside the cursor during drag and drop.")]
	public virtual bool ShowDragNodeCue
	{
		get
		{
			return m_boolean[33];
		}
		set
		{
			m_boolean[33] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public TreeNodeAdv ActiveNode
	{
		get
		{
			return m_activeNode;
		}
		set
		{
			if (m_activeNode != value)
			{
				m_activeNode = value;
				Invalidate();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public TreeNodeAdv TopVisibleNode => RowIndexToNode(VScrollPos);

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public virtual TreeNodeAdv LastVisibleNode
	{
		get
		{
			TreeNodeAdv treeNodeAdv = TopVisibleNode;
			if (treeNodeAdv != null)
			{
				int num = NodeToPoint(treeNodeAdv).Y + treeNodeAdv.Height;
				int num2 = ClientHeight;
				TreeNodeAdv treeNodeAdv2 = null;
				while (treeNodeAdv.NextVisibleNode != null)
				{
					treeNodeAdv2 = treeNodeAdv.NextVisibleNode;
					num += treeNodeAdv2.Height;
					if (num > num2)
					{
						break;
					}
					treeNodeAdv = treeNodeAdv2;
				}
			}
			return treeNodeAdv;
		}
	}

	[Browsable(false)]
	[Description("The helptext control of the MultiColumnTreeView.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public virtual ToolTipAdv HelpTextControl => m_helpText;

	[Description("The tooltip control of the MultiColumnTreeView.")]
	[Browsable(false)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public virtual ToolTipAdv ToolTipControl => m_toolTip;

	[Category("Appearance")]
	[Description("Indicates the text color of the selected node.")]
	public virtual Color SelectedNodeForeColor
	{
		get
		{
			return m_clrSelectedNodeFore;
		}
		set
		{
			m_clrSelectedNodeFore = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Indicates the text color of the selected node when not focused.")]
	public virtual Color InactiveSelectedNodeForeColor
	{
		get
		{
			return m_clrInactiveSelectedNodeFore;
		}
		set
		{
			m_clrInactiveSelectedNodeFore = value;
			Invalidate();
		}
	}

	[Description("Indicates the background of the selected node.")]
	[Category("Appearance")]
	public virtual BrushInfo SelectedNodeBackground
	{
		get
		{
			return m_selectedNodeBackground;
		}
		set
		{
			if (value != m_selectedNodeBackground)
			{
				m_selectedNodeBackground = ((value == null) ? BrushInfo.Empty : value);
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the background of the selected node when the control is not focused.")]
	public virtual BrushInfo InactiveSelectedNodeBackground
	{
		get
		{
			return m_inactiveSelectedNodeBackground;
		}
		set
		{
			if (m_inactiveSelectedNodeBackground != value)
			{
				m_inactiveSelectedNodeBackground = ((value == null) ? BrushInfo.Empty : value);
				Invalidate();
			}
		}
	}

	[Description("Indicates if the drag-drop operation will occur only if the node is dragged on the text area.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public virtual bool DragOnText
	{
		get
		{
			return m_boolean[32];
		}
		set
		{
			m_boolean[32] = value;
		}
	}

	[Description("Specifies the StateImageList index value of the image that is displayed when a tree node has no children.")]
	[Category("Appearance - Images")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Editor(typeof(StateImageListUITypeEditor), typeof(UITypeEditor))]
	[Localizable(true)]
	public virtual int NoChildrenImgIndex
	{
		get
		{
			if (StandardStyle != null)
			{
				return StandardStyle.NoChildrenImgIndex;
			}
			return -1;
		}
		set
		{
			if (NoChildrenImgIndex != value)
			{
				StandardStyle.NoChildrenImgIndex = value;
				Root.RecalculateAllDimensions();
				Invalidate();
			}
		}
	}

	[Description("Specifies the StateImageList index value of the image that is displayed when a tree node is collapsed.")]
	[Category("Appearance - Images")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Editor(typeof(StateImageListUITypeEditor), typeof(UITypeEditor))]
	[Localizable(true)]
	public virtual int ClosedImgIndex
	{
		get
		{
			return StandardStyle.ClosedImgIndex;
		}
		set
		{
			if (ClosedImgIndex != value)
			{
				StandardStyle.ClosedImgIndex = value;
				Root.RecalculateAllDimensions();
				Invalidate();
			}
		}
	}

	[Description("Specifies the StateImageList index value of the image that is displayed when a tree node is expanded.")]
	[Category("Appearance - Images")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Editor(typeof(StateImageListUITypeEditor), typeof(UITypeEditor))]
	[Localizable(true)]
	public virtual int OpenImgIndex
	{
		get
		{
			return StandardStyle.OpenImgIndex;
		}
		set
		{
			if (OpenImgIndex != value)
			{
				StandardStyle.OpenImgIndex = value;
				Root.RecalculateAllDimensions();
				Invalidate();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates the imagelist that holds images to be drawn based the state of the node.")]
	[Category("Appearance - Images")]
	[DefaultValue(null)]
	public virtual ImageList StateImageList
	{
		get
		{
			return m_stateImageList;
		}
		set
		{
			m_stateImageList = value;
		}
	}

	[Description("Indicates the imagelist that holds images to be drawn on the right of the node.")]
	[Category("Appearance - Images")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(null)]
	public virtual ImageList RightImageList
	{
		get
		{
			return m_rightImageList;
		}
		set
		{
			m_rightImageList = value;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance - Images")]
	[Description("Indicates the imagelist that holds images to be drawn on the left of the node.")]
	[DefaultValue(null)]
	public virtual ImageList LeftImageList
	{
		get
		{
			return m_leftImageList;
		}
		set
		{
			m_leftImageList = value;
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Indicates if the controls (eg PlusMinus) will have a transparent background.")]
	public virtual bool TransparentControls
	{
		get
		{
			return m_boolean[31];
		}
		set
		{
			if (m_boolean[31] != value)
			{
				m_boolean[31] = value;
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[Description("Indicates if the selected node will be brought to view by scrolling, if necessary.")]
	[DefaultValue(true)]
	public virtual bool EnsureVisibleSelectedNode
	{
		get
		{
			return m_boolean[30];
		}
		set
		{
			m_boolean[30] = value;
		}
	}

	[Description("Indicates the selection mode for the tree.")]
	[Category("Behavior")]
	[DefaultValue(TreeSelectionMode.Single)]
	public virtual TreeSelectionMode SelectionMode
	{
		get
		{
			return m_selectionMode;
		}
		set
		{
			if (m_selectionMode != value)
			{
				m_selectionMode = value;
				OnSelectionModeChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Collection of base styles is used by nodes, columns and subitems.")]
	[Editor(typeof(TreeNodeAdvBaseStylesEditor), typeof(UITypeEditor))]
	[Category("Styles")]
	public virtual Hashtable BaseStyles => m_baseStyles;

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Styles")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public StyleNamePairsList BaseStylePairs
	{
		get
		{
			m_stylePairs = new StyleNamePairsList(this);
			foreach (string key in m_baseStyles.Keys)
			{
				StyleNamePair value = new StyleNamePair(key, m_baseStyles[key] as IStyleInfo);
				m_stylePairs.Add(value);
			}
			return m_stylePairs;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Styles")]
	[Browsable(true)]
	[Description("Can also be edited via the BaseStyles property editor. It is the style that all the nodes inherit from, by default.")]
	public TreeNodeAdvStyleInfo StandardStyle => m_baseStyles["Standard"] as TreeNodeAdvStyleInfo;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Styles")]
	[Browsable(true)]
	[Description("Can also be edited via the BaseStyles property editor. It is the style that all the columns inherit from, by default.")]
	public TreeColumnAdvStyleInfo StandardColumnStyle => m_baseStyles["Standard - Column"] as TreeColumnAdvStyleInfo;

	[Category("Styles")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(true)]
	[Description("Can also be edited via the BaseStyles property editor. It is the style that all the subitems inherit from, by default.")]
	public TreeNodeAdvSubItemStyleInfo StandardSubItemStyle => m_baseStyles["Standard - SubItem"] as TreeNodeAdvSubItemStyleInfo;

	[DefaultValue(false)]
	[Description("Indicates if the TreeNodeAdv.GetPath method adds a separator at the end of the path string returned.")]
	[Category("Behavior")]
	public virtual bool AddSeparatorAtEnd
	{
		get
		{
			return m_boolean[16];
		}
		set
		{
			m_boolean[16] = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(3)]
	[Description("Indicates the space left on the left side of the control.")]
	public virtual int GutterSpace
	{
		get
		{
			return m_gutterSpace;
		}
		set
		{
			if (m_gutterSpace != value)
			{
				m_gutterSpace = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether the label text of the tree nodes can be edited.")]
	[Category("Behavior")]
	public virtual bool LabelEdit
	{
		get
		{
			return m_boolean[15];
		}
		set
		{
			m_boolean[15] = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the BeforeNodePaint event will be fired before drawing a node.")]
	[Category("Behavior")]
	public virtual bool OwnerDrawNodes
	{
		get
		{
			return m_boolean[13];
		}
		set
		{
			m_boolean[13] = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the NodeBackgroundPaint event will be fired before drawing a node's background.")]
	[Category("Behavior")]
	public virtual bool OwnerDrawNodesBackground
	{
		get
		{
			return m_boolean[14];
		}
		set
		{
			m_boolean[14] = value;
		}
	}

	[Description("Specifies if the tree should follow the load-on-demand paradigm.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public virtual bool LoadOnDemand
	{
		get
		{
			return m_boolean[12];
		}
		set
		{
			m_boolean[12] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Indicates if the MultiColumnTreeView is printing.")]
	[Browsable(false)]
	public bool Printing
	{
		get
		{
			return m_boolean[10];
		}
		set
		{
			m_boolean[10] = value;
		}
	}

	public PrintDocument PrintDocument
	{
		get
		{
			if (m_printDocument == null)
			{
				m_printDocument = new PrintDocument();
				m_printDocument.PrintPage += OnPrint;
			}
			return m_printDocument;
		}
	}

	[Description("Indicates if the nodes will have an option button.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public virtual bool ShowOptionButtons
	{
		get
		{
			return StandardStyle.ShowOptionButton;
		}
		set
		{
			StandardStyle.ShowOptionButton = value;
			Root.RecalculateAllDimensions();
			Invalidate();
		}
	}

	[Description("Indicates if the selected node is in editing mode.")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Category("Appearance")]
	[Browsable(false)]
	public bool IsEditing => m_labelEditor.Visible;

	[DefaultValue("\\")]
	[Description("Indicates the separator string that splits the path of a node.")]
	[Category("Appearance")]
	[Localizable(true)]
	public virtual string PathSeparator
	{
		get
		{
			return m_strPathSeparator;
		}
		set
		{
			m_strPathSeparator = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the plus minus controls are visible.")]
	[DefaultValue(true)]
	public virtual bool ShowPlusMinus
	{
		get
		{
			return StandardStyle.ShowPlusMinus;
		}
		set
		{
			StandardStyle.ShowPlusMinus = value;
			Root.UpdateAllPlusMinusVisibility();
			Root.RecalculateAllDimensions();
			Invalidate();
		}
	}

	[Description("Indicates if the tree lines are visible.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public virtual bool ShowLines
	{
		get
		{
			return m_boolean[8];
		}
		set
		{
			if (m_boolean[8] != value)
			{
				m_boolean[8] = value;
				if (Root != null)
				{
					Root.RecalculateAllDimensions();
					Invalidate();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether lines are displayed between root nodes.")]
	[Category("Appearance")]
	public virtual bool ShowRootLines
	{
		get
		{
			return m_boolean[9];
		}
		set
		{
			if (m_boolean[9] != value)
			{
				m_boolean[9] = value;
				UpdateRootPlusMinusVisibility();
				if (Root != null)
				{
					Root.RecalculateAllDimensions();
					Invalidate();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether header drawn or not.")]
	[Category("Appearance")]
	public virtual bool ShowColumnsHeader
	{
		get
		{
			return m_boolean[0];
		}
		set
		{
			if (m_boolean[0] != value)
			{
				m_boolean[0] = value;
				if (base.IsHandleCreated)
				{
					RecreateHandle();
					InvalidateNc();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the indent of the child nodes from the parent node.")]
	[DefaultValue(19)]
	public virtual int Indent
	{
		get
		{
			return m_parentIndent;
		}
		set
		{
			if (m_parentIndent != value)
			{
				m_parentIndent = value;
				if (Root != null)
				{
					Root.RecalculateAllDimensions();
				}
				Invalidate();
			}
		}
	}

	[Description("Indicates if the nodes will have a hot tracked appearance when the mouse cursor is hovering over them.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public virtual bool HotTracking
	{
		get
		{
			return m_boolean[7];
		}
		set
		{
			m_boolean[7] = value;
		}
	}

	[Description("Indicates multiple nodes can be selected with mouse down and drag.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public virtual bool AllowMouseBasedSelection
	{
		get
		{
			return m_boolean[11];
		}
		set
		{
			m_boolean[11] = value;
		}
	}

	[Browsable(false)]
	public TreeNodeAdvCollection ExpandedNodes
	{
		get
		{
			TreeNodeAdvCollection treeNodeAdvCollection = new TreeNodeAdvCollection(null);
			iterate(Nodes[0], bExpanded: true, treeNodeAdvCollection);
			return treeNodeAdvCollection;
		}
	}

	[Browsable(false)]
	public TreeNodeAdvCollection CollapsedNodes
	{
		get
		{
			TreeNodeAdvCollection treeNodeAdvCollection = new TreeNodeAdvCollection(null);
			iterate(Nodes[0], bExpanded: false, treeNodeAdvCollection);
			return treeNodeAdvCollection;
		}
	}

	[Description("Indicates the selected nodes of the MultiColumnTreeView.")]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public SelectedNodesCollection SelectedNodes => m_selectedNodes;

	[Browsable(false)]
	[Description("Indicates the checked nodes of the MultiColumnTreeView.")]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public CheckedNodesColection CheckedNodes => m_checkedNodes;

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Indicates if the MultiColumnTreeView will hide it's selected nodes when not focused.")]
	public virtual bool HideSelection
	{
		get
		{
			return m_boolean[20];
		}
		set
		{
			if (m_boolean[20] != value)
			{
				m_boolean[20] = value;
				if (!Focused)
				{
					Invalidate();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the complete row will be highlighted when a node is selected.")]
	[DefaultValue(false)]
	public virtual bool FullRowSelect
	{
		get
		{
			return m_boolean[19];
		}
		set
		{
			if (m_boolean[19] != value)
			{
				m_boolean[19] = value;
				if (m_selectedNodes.Count > 0)
				{
					Invalidate();
				}
			}
		}
	}

	[Description("Indicates the color of the tree lines.")]
	[Category("Appearance")]
	public virtual Color LineColor
	{
		get
		{
			return m_clrLine;
		}
		set
		{
			if (m_clrLine != value)
			{
				m_clrLine = value;
				m_penLine = new Pen(value);
				m_penLine.DashStyle = m_lineStyle;
				Invalidate();
			}
		}
	}

	[Description("Indicates the line style of the tree lines.")]
	[DefaultValue(DashStyle.Dot)]
	[Category("Appearance")]
	public virtual DashStyle LineStyle
	{
		get
		{
			return m_lineStyle;
		}
		set
		{
			if (value == DashStyle.Custom)
			{
				if (base.DesignMode)
				{
					MessageBox.Show("You can't set the LineStyle to Custom");
				}
			}
			else if (m_lineStyle != value)
			{
				m_lineStyle = value;
				m_penLine.DashStyle = value;
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets/sets a value to indicate if keyboard based searching should be allowed.")]
	[DefaultValue(true)]
	public virtual bool AllowKeyboardSearch
	{
		get
		{
			return m_boolean[18];
		}
		set
		{
			m_boolean[18] = value;
		}
	}

	[Description("Indicates if the state of the a node's checkbox indicates the checkstate of the child nodes checkboxes.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public virtual bool InteractiveCheckBoxes
	{
		get
		{
			return StandardStyle.InteractiveCheckBox;
		}
		set
		{
			StandardStyle.InteractiveCheckBox = value;
		}
	}

	[Description("Indicates whether the node should be selected if it's child node is selected or not.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	public bool SelectOnCollapse
	{
		get
		{
			return m_boolean[1];
		}
		set
		{
			m_boolean[1] = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates if check boxes will be shown for the nodes.")]
	public virtual bool ShowCheckBoxes
	{
		get
		{
			return StandardStyle.ShowCheckBox;
		}
		set
		{
			StandardStyle.ShowCheckBox = value;
			if (Root != null)
			{
				Root.RecalculateAllDimensions();
				Invalidate();
			}
		}
	}

	[Description("Indicates the selected node of the MultiColumnTreeView.")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Category("Behavior")]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public virtual TreeNodeAdv SelectedNode
	{
		get
		{
			if (SelectedNodes.Count > 0)
			{
				return SelectedNodes[0];
			}
			return null;
		}
		set
		{
			if (value == Root)
			{
				value = null;
			}
			if ((m_selectedNodes.Count == 0 || m_selectedNodes[0] != value) && SetSelectedNode(value, m_selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = value;
				m_selectionBaseNode = value;
				if (ActiveNode != null)
				{
					ActiveNode.BringIntoView();
				}
			}
			IsBroughtIntoView = false;
		}
	}

	[Description("The base node, based on which multiple selection will be performed.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual TreeNodeAdv SelectionBaseNode => m_selectionBaseNode;

	[Category("Appearance")]
	[Description("Indicates the default height of the nodes.")]
	public virtual int ItemHeight
	{
		get
		{
			if (m_itemHeight != -1)
			{
				return m_itemHeight;
			}
			return base.FontHeight + 3;
		}
		set
		{
			if (m_itemHeight != value)
			{
				m_itemHeight = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	public virtual TreeNodeAdv Root
	{
		get
		{
			return m_root;
		}
		set
		{
			m_root = value;
			m_root.TreeView = this;
			RefreshCustomControlCollection();
			m_root.Visible = true;
			UpdateRootPlusMinusVisibility();
			m_root.RecalculateAllDimensions();
			m_root.Expand();
			Invalidate();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Indicates the top-level nodes of the MultiColumnTreeView.")]
	[Category("Appearance")]
	public virtual TreeNodeAdvCollection Nodes => m_root.Nodes;

	[Category("Appearance")]
	[Description("Collection of columns is used by MultiColumnTreeView.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public virtual TreeColumnAdvCollection Columns => m_columns;

	[Description("Indicates the node on which the user did a right-mouse down.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual TreeNodeAdv RMouseDownNode
	{
		get
		{
			return m_rMouseDownNode;
		}
		set
		{
			if (m_rMouseDownNode != value)
			{
				m_rMouseDownNode = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(true)]
	[Browsable(true)]
	[Category("Scrolling")]
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
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[Category("Behavior")]
	[Description("Gets or sets a value indicating whether the Recalculation of the Nodes maximum height should be done while expanding/collapsing.")]
	public bool SuspendExpandRecalculate
	{
		get
		{
			return m_boolean[3];
		}
		set
		{
			m_boolean[3] = value;
		}
	}

	[Browsable(false)]
	[DefaultValue(false)]
	[Description("Specifies if size box should be drawn when both scrollbars are visible and the control is not docked in an MDIChild window.")]
	[Category("Scrolling")]
	public new bool SmartSizeBox
	{
		get
		{
			return base.SmartSizeBox;
		}
		set
		{
			base.SmartSizeBox = value;
		}
	}

	protected internal bool DesignModeInternal
	{
		get
		{
			return m_boolean[53];
		}
		set
		{
			m_boolean[53] = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[Category("Scrolling")]
	[Description("Specifies if the control should scroll while the user is dragging a vertical scrollbar thumb.")]
	public override bool VerticalThumbTrack
	{
		get
		{
			return base.VerticalThumbTrack;
		}
		set
		{
			base.VerticalThumbTrack = value;
		}
	}

	[DefaultValue(null)]
	[Category("Appearance - Images")]
	[Description("ImageList with images that are displayed instead of expand/collapse button.")]
	public ImageList NodeStateImageList
	{
		get
		{
			return m_nodeStateImageList;
		}
		set
		{
			if (value != m_nodeStateImageList)
			{
				m_nodeStateImageList = value;
				OnNodeStateImageListChanged();
			}
		}
	}

	[Description("Index of default image for collapse button.")]
	[DefaultValue(-1)]
	[Category("Appearance - Images")]
	[Editor(typeof(NodeStateImageListUITypeEditor), typeof(UITypeEditor))]
	public int DefaultCollapseImageIndex
	{
		get
		{
			return m_defaultCollapseImageIndex;
		}
		set
		{
			if (value != m_defaultCollapseImageIndex)
			{
				m_defaultCollapseImageIndex = value;
				OnDefaultCollapseImageIndexChanged();
			}
		}
	}

	[DefaultValue(-1)]
	[Category("Appearance - Images")]
	[Description("Index of default image for expand button.")]
	[Editor(typeof(NodeStateImageListUITypeEditor), typeof(UITypeEditor))]
	public int DefaultExpandImageIndex
	{
		get
		{
			return m_defaultExpandImageIndex;
		}
		set
		{
			if (value != m_defaultExpandImageIndex)
			{
				m_defaultExpandImageIndex = value;
				OnDefaultExpandImageIndexChanged();
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets a value indicating whether the default node should be selected on the MultiColumnTreeView control gains focus.")]
	[Category("Behavior")]
	public bool ShouldSelectNodeOnEnter
	{
		get
		{
			return m_boolean[48];
		}
		set
		{
			m_boolean[48] = value;
		}
	}

	protected bool HorizontalScrollBar
	{
		get
		{
			return base.HScrollBar.Enabled;
		}
		set
		{
			base.HScrollBar.Enabled = value;
		}
	}

	protected bool VerticallScrollBar
	{
		get
		{
			return base.VScrollBar.Enabled;
		}
		set
		{
			base.VScrollBar.Enabled = value;
		}
	}

	[DocumentationExclude]
	protected int ClientHeight => TreeColumnRectangle.Height;

	internal virtual bool NeedUpdateCustomControls
	{
		get
		{
			return m_boolean[39];
		}
		set
		{
			m_boolean[39] = value;
		}
	}

	internal int NodeCount
	{
		get
		{
			return m_iNodeCount;
		}
		set
		{
			m_iNodeCount = value;
		}
	}

	internal bool NodeInRefresh
	{
		get
		{
			return nodeInRefresh;
		}
		set
		{
			nodeInRefresh = value;
		}
	}

	internal bool IsBroughtIntoView
	{
		get
		{
			return m_boolean[34];
		}
		set
		{
			if (m_boolean[34] != value)
			{
				m_boolean[34] = value;
			}
		}
	}

	internal TreeNodeAdvStyleInfo BoundStyle => m_boundStyle;

	internal bool NeedRootLinesSpace
	{
		get
		{
			if (!ShowLines && !ShowPlusMinus)
			{
				return false;
			}
			return ShowRootLines;
		}
	}

	internal Rectangle SelectedNodesBounds
	{
		get
		{
			Rectangle rectangle = Rectangle.Empty;
			foreach (TreeNodeAdv selectedNode in m_selectedNodes)
			{
				Rectangle bounds = selectedNode.Bounds;
				rectangle = Rectangle.Union(rectangle, bounds);
			}
			return rectangle;
		}
	}

	internal Hashtable CustomControlCollection => m_htCustomControlCollection;

	internal bool ThemedBorder
	{
		get
		{
			return m_boolean[27];
		}
		set
		{
			m_boolean[27] = value;
		}
	}

	private bool IsVerticalGradient
	{
		get
		{
			if (m_bgBrush != null && m_bgBrush.Style == BrushStyle.Gradient && m_bgBrush.GradientStyle == GradientStyle.Vertical)
			{
				return true;
			}
			return false;
		}
	}

	private bool IsHorizontalGradient
	{
		get
		{
			if (m_bgBrush != null && m_bgBrush.Style == BrushStyle.Gradient && m_bgBrush.GradientStyle == GradientStyle.Horizontal)
			{
				return true;
			}
			return false;
		}
	}

	private Timer LabelEditStartTimer
	{
		get
		{
			return m_timerLabelEditStart;
		}
		set
		{
			if (m_timerLabelEditStart != null)
			{
				m_timerLabelEditStart.Tick -= LabelEditStartTimer_Tick;
				m_timerLabelEditStart.Enabled = false;
			}
			if (ActiveNode == null || !LabelEdit)
			{
				value = null;
			}
			m_timerLabelEditStart = value;
			if (m_timerLabelEditStart != null)
			{
				m_timerLabelEditStart.Tick += LabelEditStartTimer_Tick;
				m_timerLabelEditStart.Interval = SystemInformation.DoubleClickTime;
				m_timerLabelEditStart.Enabled = true;
				m_activeNodeForLabelEdit = ActiveNode;
			}
		}
	}

	private bool DragCueOn
	{
		get
		{
			return m_boolean[47];
		}
		set
		{
			if (m_boolean[47] == value)
			{
				return;
			}
			m_boolean[47] = value;
			if (value)
			{
				Bitmap draggedNodesBitmap = GetDraggedNodesBitmap();
				if (draggedNodesBitmap != null)
				{
					Point dragWindowLocation = GetDragWindowLocation(bFinal: false);
					dragWindowLocation.Y += draggedNodesBitmap.Height / 2;
					DragHelper.StartDrag(draggedNodesBitmap, dragWindowLocation, DragDropEffects.All);
				}
			}
		}
	}

	private bool MultiSelect => SelectionMode != TreeSelectionMode.Single;

	private bool SingleSelect => !MultiSelect;

	private bool MouseBasedSelectionOn
	{
		get
		{
			return m_boolean[17];
		}
		set
		{
			if (m_boolean[17] != value)
			{
				m_boolean[17] = value;
				m_latestMouseBasedSelection = null;
			}
		}
	}

	private TreeNodeAdv LMouseDownNode
	{
		get
		{
			return m_lMouseDownNode;
		}
		set
		{
			if (m_lMouseDownNode != value)
			{
				m_lMouseDownNode = value;
				Invalidate();
			}
		}
	}

	protected internal bool HasColumns
	{
		get
		{
			if (m_columns != null)
			{
				return m_columns.Count > 0;
			}
			return false;
		}
	}

	protected internal Graphics MeasureGraphics
	{
		get
		{
			if (m_measure == null)
			{
				m_measure = Graphics.FromImage(new Bitmap(1, 1));
			}
			return m_measure;
		}
		set
		{
			if (m_measure != null)
			{
				m_measure.Dispose();
			}
			m_measure = value;
		}
	}

	protected internal bool AutoControlsAdding
	{
		get
		{
			return m_boolean[4];
		}
		set
		{
			if (value != m_boolean[4])
			{
				m_boolean[4] = value;
			}
		}
	}

	protected bool ClickedOnSelection
	{
		get
		{
			return m_boolean[5];
		}
		set
		{
			m_boolean[5] = value;
		}
	}

	protected bool CanDrag
	{
		get
		{
			return m_boolean[6];
		}
		set
		{
			m_boolean[6] = value;
		}
	}

	protected bool PreparingDragCueBitmap
	{
		get
		{
			return m_boolean[21];
		}
		set
		{
			m_boolean[21] = value;
		}
	}

	protected bool Dragging
	{
		get
		{
			return m_boolean[22];
		}
		set
		{
			m_boolean[22] = value;
		}
	}

	protected bool MouseLeaved
	{
		get
		{
			return m_boolean[23];
		}
		set
		{
			m_boolean[23] = value;
		}
	}

	protected bool AllowDropStubWorks
	{
		get
		{
			return m_boolean[24];
		}
		set
		{
			m_boolean[24] = value;
		}
	}

	protected bool IgnoreNextMouseMove
	{
		get
		{
			return m_boolean[29];
		}
		set
		{
			m_boolean[29] = value;
		}
	}

	protected bool SelectUpwardDirection
	{
		get
		{
			return m_boolean[35];
		}
		set
		{
			m_boolean[35] = value;
		}
	}

	protected bool InVScroll
	{
		get
		{
			return m_boolean[37];
		}
		set
		{
			m_boolean[37] = value;
		}
	}

	protected bool InHScroll
	{
		get
		{
			return m_boolean[38];
		}
		set
		{
			m_boolean[38] = value;
		}
	}

	protected bool IsKeyDown
	{
		get
		{
			return m_boolean[40];
		}
		set
		{
			m_boolean[40] = value;
		}
	}

	protected bool IsMouseDown
	{
		get
		{
			return m_boolean[41];
		}
		set
		{
			m_boolean[41] = value;
		}
	}

	protected bool IsLeftMouseDown
	{
		get
		{
			return m_boolean[42];
		}
		set
		{
			m_boolean[42] = value;
		}
	}

	protected bool IsMouseUp
	{
		get
		{
			return m_boolean[43];
		}
		set
		{
			m_boolean[43] = value;
		}
	}

	protected bool EnsureVisibleFlag
	{
		get
		{
			return m_boolean[44];
		}
		set
		{
			m_boolean[44] = value;
		}
	}

	protected bool IsMouseDownWithCtrl
	{
		get
		{
			return m_boolean[45];
		}
		set
		{
			m_boolean[45] = value;
		}
	}

	protected bool CancelEdit
	{
		get
		{
			return m_boolean[46];
		}
		set
		{
			m_boolean[46] = value;
		}
	}

	protected bool NeedUpdateEditTop
	{
		get
		{
			return m_boolean[49];
		}
		set
		{
			m_boolean[49] = value;
		}
	}

	protected bool IgnoreLeave
	{
		get
		{
			return m_boolean[50];
		}
		set
		{
			m_boolean[50] = value;
		}
	}

	protected bool IsEditEnding
	{
		get
		{
			return m_boolean[51];
		}
		set
		{
			m_boolean[51] = value;
		}
	}

	protected bool CanGetDragImage
	{
		get
		{
			return m_boolean[52];
		}
		set
		{
			m_boolean[52] = value;
		}
	}

	protected bool ColumnsMovedMode
	{
		get
		{
			return m_boolean[54];
		}
		set
		{
			m_boolean[54] = value;
		}
	}

	protected DragHelper DragHelper
	{
		get
		{
			if (m_dragHelper == null)
			{
				m_dragHelper = new DragHelper();
			}
			return m_dragHelper;
		}
		set
		{
			m_dragHelper = value;
		}
	}

	internal Region ExcludedDrawingRegion => m_drawingRgn;

	protected override CreateParams CreateParams
	{
		get
		{
			BorderStyle borderStyle = m_borderStyle;
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 65536;
			createParams.ExStyle &= -513;
			createParams.Style &= -8388609;
			if (BorderStyle.Fixed3D == borderStyle)
			{
				createParams.ExStyle |= 512;
				if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && ThemedBorder)
				{
					borderStyle = BorderStyle.FixedSingle;
				}
			}
			if (BorderStyle.FixedSingle == borderStyle)
			{
				createParams.Style |= 8388608;
			}
			return createParams;
		}
	}

	protected internal Rectangle TreeColumnRectangle => GetColumnsRect(isAll: false);

	protected internal Rectangle TreeAllColumnsRectangle => GetColumnsRect(isAll: true);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new Padding Padding
	{
		get
		{
			return base.Padding;
		}
		set
		{
			base.Padding = value;
		}
	}

	[Category("Editor Action")]
	[Description("Occurs before a node gets into edit mode.")]
	public event TreeViewAdvBeforeEditEventHandler BeforeEdit;

	[Category("Editor Action")]
	[Description("Occurs for each TextChanged event in the node editor control.")]
	public event TreeNodeAdvCancelableEditEventHandler NodeEditorValidateString;

	[Category("Editor Action")]
	[Description("Lets you validate the new node label entered by the user.")]
	public event TreeNodeAdvCancelableEditEventHandler NodeEditorValidating;

	[Description("Notifies that a new label has been provided for a node by the user.")]
	[Category("Editor Action")]
	public event TreeNodeAdvEditEventHandler NodeEditorValidated;

	[Category("Editor Action")]
	[Description("Occurs when the user cancels the editing mode.")]
	public event TreeNodeAdvEditEventHandler EditCancelled;

	[Description("Occurs before a node is selected.")]
	[Category("Action")]
	public event TreeNodeAdvBeforeSelectEventHandler BeforeSelect;

	[Category("Action")]
	[Description("Occurs before a node's checkbox is checked.")]
	public event TreeViewAdvBeforeCheckEventHandler BeforeCheck;

	[Description("Occurs after a node is selected.")]
	[Category("Action")]
	public event EventHandler AfterSelect;

	[Category("Action")]
	[Description("Occurs after a node is checked.")]
	public event TreeNodeAdvEventHandler AfterCheck;

	[Category("Action")]
	[Description("Occurs after one or more node's CheckState has changed due to TreeNodeAdv.InteractiveCheckBox setting.")]
	public event TreeNodeAdvEventHandler AfterInteractiveChecks;

	[Category("Action")]
	[Description("Occurs before a node is expanded.")]
	public event TreeViewAdvCancelableNodeEventHandler BeforeExpand;

	[Category("Action")]
	[Description("Occurs before a node has collapsed.")]
	public event TreeViewAdvCancelableNodeEventHandler BeforeCollapse;

	[Category("Action")]
	[Description("Occurs after a node is expanded.")]
	public event TreeViewAdvNodeEventHandler AfterExpand;

	[Category("Action")]
	[Description("Occurs after a node has collapsed.")]
	public event TreeViewAdvNodeEventHandler AfterCollapse;

	[Category("Appearance")]
	[Description("Fired before a node is being painted when the MultiColumnTreeView.OwnerDrawNodes property is set to true.")]
	public event TreeNodeAdvPaintEventHandler BeforeNodePaint;

	[Description("Fired after a node is being painted when the MultiColumnTreeView.OwnerDrawNodes property is set to true.")]
	[Category("Appearance")]
	public event TreeNodeAdvPaintEventHandler AfterNodePaint;

	[Category("Appearance")]
	[Description("Fired to draw the background of a node if the OwnerDrawNodesBackground property is set.")]
	public event TreeNodeAdvPaintBackgroundEventHandler NodeBackgroundPaint;

	[Description("Occurs when the user begins dragging an item.")]
	[Category("Drag Drop")]
	public event ItemDragEventHandler ItemDrag;

	[Description("Occurs when NodeStateImageList is changed.")]
	[Category("Property Changed")]
	public event EventHandler NodeStateImageListChanged;

	[Category("Property Changed")]
	[Description("Occurs when DefaultCollapseImageIndex is changed.")]
	public event EventHandler DefaultCollapseImageIndexChanged;

	[Category("Property Changed")]
	[Description("Occurs when DefaultExpandImageIndex is changed.")]
	public event EventHandler DefaultExpandImageIndexChanged;

	[Category("Property Changed")]
	[Description("Occurs when the tree's BorderStyle is changed")]
	public event EventHandler BorderStyleChanged;

	[Description("Occurs when the tree's Border3DStyle is changed")]
	[Category("Property Changed")]
	public event EventHandler Border3DStyleChanged;

	[Description("Occurs when the tree's Border2DStyle is changed")]
	[Category("Property Changed")]
	public event EventHandler BorderSingleChanged;

	[Category("Property Changed")]
	[Description("Occurs when the tree's BorderColor is changed")]
	public event EventHandler BorderColorChanged;

	[Description("Occurs when the tree's BackgroundColorChanged is changed")]
	[Category("Property Changed")]
	public event EventHandler BackgroundColorChanged;

	[Description("Occurs when the tree's BorderSides is changed")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Category("Occurs when the ThemesEnabled property changes")]
	[Description("Occurs when the tree's BorderSides is changed")]
	public event EventHandler ThemeChanged;

	[Category("Action")]
	[Description("Occurs when the tree's selected column is changed.")]
	public event TreeColumnChangedEventHandler ColumnHighlighted;

	[Category("Action")]
	[Description("Occurs when the tree's column is clicked.")]
	public event TreeColumnChangedEventHandler ColumnClick;

	[Description("Occurs when the tree's column is double clicked.")]
	[Category("Action")]
	public event TreeColumnChangedEventHandler ColumnDoubleClick;

	[Description("Occurs when the tree's column is resized.")]
	[Category("Action")]
	public event TreeColumnResizedEventHandler ColumnResized;

	[Description("Occurs when resizing the tree's column.")]
	[Category("Action")]
	public event TreeColumnResizeEventHandler ColumnResizing;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler PaddingChanged
	{
		add
		{
			base.PaddingChanged += value;
		}
		remove
		{
			base.PaddingChanged -= value;
		}
	}

	public void PrintPreview()
	{
		PrintPreviewTree(this, string.Empty);
	}

	private void PrintPreviewTree(MultiColumnTreeView pTreeView, string pTitle)
	{
		PrepareTreeImage(pTreeView);
		PrintPreviewDialog printPreviewDialog = new PrintPreviewDialog();
		printPreviewDialog.Document = m_pdDocument;
		printPreviewDialog.ShowDialog();
	}

	private void PrepareTreeImage(MultiColumnTreeView pTreeView)
	{
		if (pTreeView == null || pTreeView.Nodes.Count <= 0)
		{
			return;
		}
		MultiColumnTreeView multiColumnTreeView = new MultiColumnTreeView();
		TreeColumnAdv[] array = new TreeColumnAdv[pTreeView.Columns.Count];
		for (int i = 0; i < pTreeView.Columns.Count; i++)
		{
			array[i] = new TreeColumnAdv();
		}
		multiColumnTreeView.Root = pTreeView.Root.Clone();
		for (int j = 0; j < pTreeView.Columns.Count; j++)
		{
			multiColumnTreeView.Columns.Add(pTreeView.Columns[j]);
			multiColumnTreeView.Columns[j].Text = pTreeView.Columns[j].Text;
		}
		multiColumnTreeView.BackgroundImage = pTreeView.BackgroundImage;
		multiColumnTreeView.HideSelection = pTreeView.HideSelection;
		multiColumnTreeView.Indent = pTreeView.Indent;
		multiColumnTreeView.ShowColumnsHeader = false;
		multiColumnTreeView.InteractiveCheckBoxes = pTreeView.InteractiveCheckBoxes;
		multiColumnTreeView.ItemHeight = pTreeView.ItemHeight;
		multiColumnTreeView.LineColor = pTreeView.LineColor;
		multiColumnTreeView.LineStyle = pTreeView.LineStyle;
		multiColumnTreeView.RightToLeft = pTreeView.RightToLeft;
		multiColumnTreeView.ShowLines = pTreeView.ShowLines;
		multiColumnTreeView.ShowRootLines = pTreeView.ShowRootLines;
		multiColumnTreeView.ShowCheckBoxes = pTreeView.ShowCheckBoxes;
		multiColumnTreeView.ShowOptionButtons = pTreeView.ShowOptionButtons;
		multiColumnTreeView.ShowPlusMinus = pTreeView.ShowPlusMinus;
		multiColumnTreeView.ThemesEnabled = pTreeView.ThemesEnabled;
		multiColumnTreeView.NodeCount = pTreeView.NodeCount;
		multiColumnTreeView.Font = pTreeView.Font;
		multiColumnTreeView.ForeColor = pTreeView.ForeColor;
		multiColumnTreeView.Margin = pTreeView.Margin;
		multiColumnTreeView.ThemedBorder = pTreeView.ThemedBorder;
		foreach (string key in pTreeView.BaseStyles.Keys)
		{
			multiColumnTreeView.BaseStyles[key] = pTreeView.BaseStyles[key];
		}
		multiColumnTreeView.NodeStateImageList = pTreeView.NodeStateImageList;
		multiColumnTreeView.DefaultCollapseImageIndex = pTreeView.DefaultCollapseImageIndex;
		multiColumnTreeView.DefaultExpandImageIndex = pTreeView.DefaultExpandImageIndex;
		multiColumnTreeView.LeftImageList = pTreeView.LeftImageList;
		multiColumnTreeView.RightImageList = pTreeView.RightImageList;
		multiColumnTreeView.StateImageList = pTreeView.StateImageList;
		multiColumnTreeView.BackgroundColor = pTreeView.BackgroundColor;
		m_iScrollBarWidth = pTreeView.Width - pTreeView.ClientSize.Width;
		m_iScrollBarHeight = pTreeView.Height - pTreeView.ClientSize.Height;
		int num = (m_iNodeHeight = multiColumnTreeView.ItemHeight);
		int num2 = 0;
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv();
		if (pTreeView.Columns.Count != 0)
		{
			treeNodeAdv = multiColumnTreeView.Nodes[0].NextSelectableNode;
			for (int k = 0; k < pTreeView.Columns.Count; k++)
			{
				array[k] = multiColumnTreeView.Columns[k];
				array[k].Text = multiColumnTreeView.Columns[k].Text;
			}
			while (treeNodeAdv != null)
			{
				num += m_iNodeHeight;
				if (multiColumnTreeView.RightToLeft == RightToLeft.No && treeNodeAdv.PrintTextBounds.Right > num2)
				{
					num2 = treeNodeAdv.PrintTextBounds.Right;
				}
				treeNodeAdv = treeNodeAdv.NextSelectableNode;
			}
			multiColumnTreeView.Columns[0].Width = num2;
			num2 *= pTreeView.Columns.Count;
		}
		else
		{
			num2 = multiColumnTreeView.Nodes[0].PrintTextBounds.Right;
			for (treeNodeAdv = multiColumnTreeView.Nodes[0].NextSelectableNode; treeNodeAdv != null; treeNodeAdv = treeNodeAdv.NextSelectableNode)
			{
				num += m_iNodeHeight;
				if (multiColumnTreeView.RightToLeft == RightToLeft.No)
				{
					if (treeNodeAdv.PrintTextBounds.Right > num2)
					{
						num2 = treeNodeAdv.PrintTextBounds.Right;
					}
				}
				else if (treeNodeAdv.PrintTextBounds.Right < 0)
				{
					num2 = -treeNodeAdv.PrintTextBounds.Right + multiColumnTreeView.ClientRectangle.Width;
				}
			}
		}
		multiColumnTreeView.SelectedNode = null;
		multiColumnTreeView.Height = num + m_iScrollBarHeight;
		multiColumnTreeView.Width = num2 + m_iScrollBarWidth;
		multiColumnTreeView.BorderStyle = BorderStyle.None;
		multiColumnTreeView.Dock = DockStyle.None;
		multiColumnTreeView.Office2007ScrollBars = false;
		multiColumnTreeView.HScrollBar.Enabled = false;
		multiColumnTreeView.VScrollBar.Enabled = false;
		multiColumnTreeView.VScroll = false;
		multiColumnTreeView.HScroll = false;
		m_imgControl = GetImage(multiColumnTreeView.Handle, multiColumnTreeView.Width, multiColumnTreeView.Height);
	}

	private Image GetImage(IntPtr pHandle, int pWidth, int pHeight)
	{
		IntPtr dC = Syncfusion.Runtime.InteropServices.NativeMethods.GetDC(IntPtr.Zero);
		IntPtr hbitmap = Syncfusion.Runtime.InteropServices.NativeMethods.CreateCompatibleBitmap(dC, pWidth, pHeight);
		Image image = Image.FromHbitmap(hbitmap);
		try
		{
			using Graphics graphics = Graphics.FromImage(image);
			IntPtr hdc = graphics.GetHdc();
			try
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(pHandle, 792, hdc, 22);
				return image;
			}
			finally
			{
				graphics.ReleaseHdc(hdc);
			}
		}
		finally
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(IntPtr.Zero, dC);
		}
	}

	public MultiColumnTreeView()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(MultiColumnTreeView));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		AutoAdjustMultiLineHeight = true;
		SelectOnCollapse = true;
		EnsureVisibleFlag = true;
		AllowKeyboardSearch = true;
		HideSelection = true;
		ThemedBorder = true;
		EnsureVisibleSelectedNode = true;
		DragOnText = true;
		KeepDottedSelection = true;
		ShowDragNodeCue = true;
		ShowColumnsHeader = true;
		ShowLines = true;
		ShowRootLines = true;
		ShouldSelectNodeOnEnter = true;
		CanGetDragImage = true;
		AutoControlsAdding = true;
		m_bgBrush = BrushInfo.Empty;
		m_stylePairs = new StyleNamePairsList(this);
		InitializeStyles();
		InitializeComponent();
		BackColor = SystemColors.Window;
		base.BackColorChanged += GradientPanel_BackColorChanged;
		Root = new TreeNodeAdv("root");
		m_columns = new TreeColumnAdvCollection(this);
		m_columns.CollectionChanged += columns_CollectionChanged;
		m_penLine = new Pen(Color.Gray);
		m_penLine.DashStyle = DashStyle.Dot;
		m_checkedNodes = new CheckedNodesColection();
		m_selectedNodes = new SelectedNodesCollection();
		m_selectedNodes.CollectionChanged += selectedNodes_Changed;
		base.VScrollBar.SupportsThumbTrack = true;
		base.HScrollBar.SupportsThumbTrack = true;
		base.HScrollBar.SmallChange = 10;
		AllowIncreaseSmallChange = false;
		base.InsideScrollMargins = new Size(0, 10);
		m_ptPrintPosition = Point.Empty;
		m_pdDocument = new PrintDocument();
		m_pdDocument.BeginPrint += OnPrintDocumentBeginPrint;
		m_pdDocument.PrintPage += OnPrintDocumentPrintPage;
	}

	~MultiColumnTreeView()
	{
		Dispose(base.IsDisposed);
	}

	protected virtual void InitializeStyles()
	{
		m_boundStyle = new TreeNodeAdvStyleInfo(new TreeBoundStyleInfoStore(this));
		m_baseStyles["Standard"] = new TreeNodeAdvStyleInfo(new TreeViewAdvStyleInfoIdentity(this));
		m_baseStyles["Standard - Column"] = new TreeColumnAdvStyleInfo(new TreeColumnAdvStyleInfoIdentity(this));
		m_baseStyles["Standard - SubItem"] = new TreeNodeAdvSubItemStyleInfo(new TreeNodeAdvSubItemStyleInfoIdentity(this));
	}

	void ISupportInitialize.BeginInit()
	{
		RefreshVScrollbar(null, 0);
	}

	void ISupportInitialize.EndInit()
	{
		m_root.RecalculateAllDimensions();
		m_root.Expand();
		VerticallScrollBar = true;
		HorizontalScrollBar = true;
		RefreshVScrollbar();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			DisposeHelper.Dispose(ref m_dragHelper);
			DisposeHelper.Dispose(ref m_measure);
			DisposeHelper.Dispose(ref m_penLine);
			LabelEditStartTimer = null;
			DisposeHelper.Dispose(ref m_helpText);
			DisposeHelper.Dispose(ref m_toolTip);
			if (m_printDocument != null)
			{
				m_printDocument.PrintPage -= OnPrint;
				m_printDocument = null;
			}
			if (m_selectedNodes != null)
			{
				m_selectedNodes.CollectionChanged -= selectedNodes_Changed;
				m_selectedNodes = null;
			}
			if (m_checkedNodes != null)
			{
				m_checkedNodes.Clear();
				m_checkedNodes = null;
			}
			if (m_labelEditor != null)
			{
				m_labelEditor.TextChanged -= labelEditor_TextChanged;
				m_labelEditor.MouseUp -= labelEditor_MouseUp;
				m_labelEditor.KeyDown -= labelEditor_KeyDown;
				m_labelEditor.Leave -= labelEditor_Leave;
				m_labelEditor.LostFocus -= labelEditor_LostFocus;
				m_labelEditor.Dispose();
				m_labelEditor = null;
			}
			m_stateImageList = null;
			m_rightImageList = null;
			m_leftImageList = null;
			m_nodeStateImageList = null;
			m_drawingRgn.Dispose();
			if (components != null)
			{
				components.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		this.m_keyInputTimer = new System.Windows.Forms.Timer(this.components);
		this.m_labelEditor = new System.Windows.Forms.TextBox();
		this.m_toolTip = new Syncfusion.Windows.Forms.ToolTipAdv(this);
		this.m_helpText = new Syncfusion.Windows.Forms.ToolTipAdv(this);
		base.SuspendLayout();
		this.m_keyInputTimer.Interval = 500;
		this.m_keyInputTimer.Tick += new System.EventHandler(keyInputTimer_Tick);
		this.m_labelEditor.AcceptsReturn = true;
		this.m_labelEditor.AcceptsTab = true;
		this.m_labelEditor.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.m_labelEditor.Location = new System.Drawing.Point(530, 0);
		this.m_labelEditor.Name = "m_labelEditor";
		this.m_labelEditor.TabIndex = 0;
		this.m_labelEditor.Text = "";
		this.m_labelEditor.Visible = false;
		this.m_labelEditor.TextChanged += new System.EventHandler(labelEditor_TextChanged);
		this.m_labelEditor.KeyUp += new System.Windows.Forms.KeyEventHandler(labelEditor_KeyUp);
		this.m_labelEditor.KeyDown += new System.Windows.Forms.KeyEventHandler(labelEditor_KeyDown);
		this.m_labelEditor.MouseUp += new System.Windows.Forms.MouseEventHandler(labelEditor_MouseUp);
		this.m_labelEditor.Leave += new System.EventHandler(labelEditor_Leave);
		this.m_labelEditor.LostFocus += new System.EventHandler(labelEditor_LostFocus);
		this.m_toolTip.BackColor = System.Drawing.SystemColors.Info;
		this.m_toolTip.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.m_toolTip.Name = "m_toolTip";
		this.m_toolTip.TabIndex = 1;
		this.m_toolTip.Text = "toolTip";
		this.m_toolTip.Visible = false;
		this.m_helpText.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.m_helpText.Name = "m_helpText";
		this.m_helpText.TabIndex = 0;
		this.m_helpText.Text = "help text";
		this.m_helpText.Visible = false;
		base.Controls.AddRange(new System.Windows.Forms.Control[1] { this.m_labelEditor });
		base.Size = new System.Drawing.Size(121, 97);
		base.ResumeLayout(false);
	}

	protected bool ShouldSerializeColumns()
	{
		return HasColumns;
	}

	protected void ResetBorderColor()
	{
		BorderColor = Color.Black;
	}

	protected bool ShouldSerializeBorderColor()
	{
		if (m_clrBorder == Color.Black)
		{
			return false;
		}
		return true;
	}

	protected void ResetBackgroundColor()
	{
		BackgroundColor = BrushInfo.Empty;
	}

	protected bool ShouldSerializeBackgroundColor()
	{
		return m_bgBrush != BrushInfo.Empty;
	}

	protected void ResetColumnsHeaderBackground()
	{
		m_HeaderBackground = BrushInfo.Empty;
	}

	protected bool ShouldSerializeColumnsHeaderBackground()
	{
		return m_HeaderBackground != BrushInfo.Empty;
	}

	protected bool ShouldSerializeBackColor()
	{
		return BackColor != SystemColors.Window;
	}

	public override void ResetBackColor()
	{
		BackColor = SystemColors.Window;
	}

	protected void ResetThemesEnabled()
	{
		StandardStyle.ResetThemesEnabled();
	}

	protected bool ShouldSerializeThemesEnabled()
	{
		return StandardStyle.ShouldSerializeThemesEnabled();
	}

	public void ResetOpenImgIndex()
	{
		StandardStyle.ResetOpenImgIndex();
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	protected bool ShouldSerializeOpenImgIndex()
	{
		return StandardStyle.ShouldSerializeOpenImgIndex();
	}

	public void ResetShowOptionButtons()
	{
		StandardStyle.ResetShowOptionButton();
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	protected bool ShouldSerializeShowOptionButtons()
	{
		return StandardStyle.ShouldSerializeShowOptionButton();
	}

	public void ResetShowPlusMinus()
	{
		StandardStyle.ResetShowPlusMinus();
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	protected bool ShouldSerializeShowPlusMinus()
	{
		return StandardStyle.ShouldSerializeShowPlusMinus();
	}

	public void ResetShowCheckBoxes()
	{
		StandardStyle.ResetShowCheckBox();
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	protected bool ShouldSerializeShowCheckBoxes()
	{
		return StandardStyle.ShouldSerializeShowCheckBox();
	}

	public void ResetInteractiveCheckBoxes()
	{
		StandardStyle.ResetInteractiveCheckBox();
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	protected bool ShouldSerializeInteractiveCheckBoxes()
	{
		return StandardStyle.ShouldSerializeInteractiveCheckBox();
	}

	public void ResetClosedImgIndex()
	{
		StandardStyle.ResetClosedImgIndex();
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	protected bool ShouldSerializeClosedImgIndex()
	{
		return StandardStyle.ShouldSerializeClosedImgIndex();
	}

	public void ResetNoChildrenImgIndex()
	{
		StandardStyle.ResetNoChildrenImgIndex();
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	protected bool ShouldSerializeNoChildrenImgIndex()
	{
		return StandardStyle.ShouldSerializeNoChildrenImgIndex();
	}

	[DocumentationExclude]
	protected bool ShouldSerializeInactiveSelectedNodeBackground()
	{
		return !m_inactiveSelectedNodeBackground.Equals(new BrushInfo(SystemColors.Control));
	}

	[DocumentationExclude]
	protected void ResetInactiveSelectedNodeBackground()
	{
		InactiveSelectedNodeBackground = new BrushInfo(SystemColors.Control);
	}

	protected bool ShouldSerializeLineColor()
	{
		return m_clrLine != Color.Gray;
	}

	protected void ResetLineColor()
	{
		LineColor = Color.Gray;
	}

	public void ResetItemHeight()
	{
		m_itemHeight = -1;
		Root.RecalculateAllDimensions();
	}

	protected bool ShouldSerializeItemHeight()
	{
		if (m_itemHeight != -1)
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedNodeBackground()
	{
		return !m_selectedNodeBackground.Equals(new BrushInfo(SystemColors.Highlight));
	}

	[DocumentationExclude]
	protected void ResetSelectedNodeBackground()
	{
		SelectedNodeBackground = new BrushInfo(SystemColors.Highlight);
	}

	[DocumentationExclude]
	protected bool ShouldSerializeInactiveSelectedNodeForeColor()
	{
		return m_clrInactiveSelectedNodeFore != SystemColors.ControlText;
	}

	[DocumentationExclude]
	protected void ResetInactiveSelectedNodeForeColor()
	{
		InactiveSelectedNodeForeColor = SystemColors.ControlText;
	}

	private void RefreshCustomControlCollection()
	{
		foreach (DictionaryEntry item in CustomControlCollection)
		{
			Control control = (Control)item.Key;
			TreeNodeAdv treeNodeAdv = (TreeNodeAdv)item.Value;
			if (base.Controls.Contains(control))
			{
				base.Controls.Remove(control);
				treeNodeAdv.UnSubscribeControlEvents(control);
			}
		}
		CustomControlCollection.Clear();
		if (Root != null)
		{
			Root.CustomControlCollectionChanging(Root, CollectionChangeAction.Add);
		}
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedNodeForeColor()
	{
		return m_clrSelectedNodeFore != SystemColors.HighlightText;
	}

	[DocumentationExclude]
	protected void ResetSelectedNodeForeColor()
	{
		SelectedNodeForeColor = SystemColors.HighlightText;
	}

	Point IProvideCustomContextMenuPositionalInformation.GetMenuPositionForKeyboardInvoke()
	{
		if (SelectedNode != null)
		{
			Rectangle textBounds = SelectedNode.TextBounds;
			return new Point(textBounds.X, textBounds.Y + textBounds.Height / 2);
		}
		return Point.Empty;
	}

	public void RaiseItemDrag(ItemDragEventArgs e)
	{
		if (!(e.Item is TreeNodeAdv[]))
		{
			throw new Exception("The RaiseItemDrag method is called with invalid argument type.");
		}
		m_draggedTnas = e.Item as TreeNodeAdv[];
		OnItemDrag(e);
		if (!AllowDropStubWorks)
		{
			m_draggedTnas = null;
		}
	}

	public void BeginEdit(TreeNodeAdv node)
	{
		if (node != null && node.TreeView == this)
		{
			if (SetSelectedNode(node, m_selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = node;
				m_selectionBaseNode = node;
			}
			if (ActiveNode == node)
			{
				BeginEdit();
			}
		}
	}

	public virtual void BeginEdit()
	{
		if (ActiveNode == null)
		{
			return;
		}
		Update();
		SetSelectedNode(ActiveNode, m_selectedNodes, TreeViewAdvAction.Unknown);
		if (SelectedNode == ActiveNode)
		{
			m_labelEditor.Text = string.Empty;
			TreeNodeAdvBeforeEditEventArgs e = new TreeNodeAdvBeforeEditEventArgs(m_activeNode, m_labelEditor);
			OnBeforeEdit(e);
			m_labelEditor.Text = ((e.TextBox.Text != null && e.TextBox.Text.Length > 0) ? e.TextBox.Text : e.Node.Text);
			if (!e.Cancel)
			{
				Rectangle textBounds = m_activeNode.TextBounds;
				textBounds.Width = Math.Max(50, textBounds.Width);
				m_labelEditor.Bounds = textBounds;
				PrepareEditor();
				NeedUpdateEditTop = true;
				ShowEditor();
			}
		}
	}

	public virtual void EndEdit(bool cancel)
	{
		if (!IsEditing || IsEditEnding)
		{
			return;
		}
		bool flag = false;
		if (!cancel)
		{
			TreeNodeAdvCancelableEditEventArgs e = new TreeNodeAdvCancelableEditEventArgs(m_activeNode, m_labelEditor.Text);
			OnNodeEditorValidating(e);
			cancel = e.Cancel;
			if (cancel)
			{
				flag = e.ContinueEditing;
			}
		}
		if (cancel)
		{
			m_activeNode.Text = (string)m_labelEditor.Tag;
		}
		else
		{
			string text = m_labelEditor.Text;
			if (m_historyManager != null && HistoryEnabled && text != m_activeNode.Text)
			{
				TreeViewCommand cmd = new TreeViewCommand(m_activeNode, text);
				m_historyManager.Do(cmd);
			}
			m_activeNode.Text = text;
		}
		if (!flag)
		{
			HideEditor();
			Focus();
		}
		else
		{
			PrepareEditor();
			ShowEditor();
		}
		if (!cancel)
		{
			OnNodeEditorValidated(new TreeNodeAdvEditEventArgs(m_activeNode, m_activeNode.Text));
		}
		else if (CancelEdit)
		{
			OnEditCancelled(new TreeNodeAdvEditEventArgs(m_activeNode, m_labelEditor.Text));
		}
	}

	public void EndEdit()
	{
		EndEdit(cancel: false);
	}

	public Bitmap GetDraggedNodesBitmap()
	{
		if (m_draggedTnas == null || m_draggedTnas.Length == 0)
		{
			return null;
		}
		Rectangle treeColumnRectangle = TreeColumnRectangle;
		if (base.HScrollBar.Enabled)
		{
			treeColumnRectangle.X = -base.HScrollBar.Value;
			treeColumnRectangle.Width = TreeColumnRectangle.Width + base.HScrollBar.Maximum;
		}
		Bitmap bitmap = new Bitmap(treeColumnRectangle.Width, treeColumnRectangle.Height);
		Graphics graphics = Graphics.FromImage(bitmap);
		if (treeColumnRectangle.X < 0)
		{
			graphics.TranslateTransform(-treeColumnRectangle.X, 0f, MatrixOrder.Append);
		}
		PaintEventArgs e = new PaintEventArgs(graphics, treeColumnRectangle);
		PreparingDragCueBitmap = true;
		string baseStyle = string.Empty;
		if (BaseStyles.Contains("DragNodeCueStyle"))
		{
			baseStyle = StandardStyle.BaseStyle;
			StandardStyle.BaseStyle = "DragNodeCueStyle";
		}
		graphics.FillRectangle(SystemBrushes.Window, treeColumnRectangle);
		OnPaint(e);
		if (BaseStyles.Contains("DragNodeCueStyle"))
		{
			StandardStyle.BaseStyle = baseStyle;
		}
		PreparingDragCueBitmap = false;
		graphics.Dispose();
		Bitmap result = ExtractSelectedBoundsFromBmp(bitmap, m_draggedTnas);
		bitmap.Dispose();
		return result;
	}

	public void Print()
	{
		PrintDocument.Print();
	}

	public TreeNodeAdv PointToNode(Point pt)
	{
		int num = 0;
		int vScrollPos = VScrollPos;
		for (TreeNodeAdv treeNodeAdv = RowIndexToNode(vScrollPos); treeNodeAdv != null; treeNodeAdv = treeNodeAdv.NextVisibleNode)
		{
			num += treeNodeAdv.Height;
			if (num > pt.Y && (treeNodeAdv.Visible || DesignModeInternal))
			{
				return treeNodeAdv;
			}
		}
		return null;
	}

	public Point NodeToPoint(TreeNodeAdv node)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		if (node == m_root)
		{
			if (!VerticallScrollBar || !m_root.HasNodes)
			{
				return new Point(0, -m_root.Height / 2);
			}
			if (m_root.HasNodes)
			{
				return new Point(0, NodeToPoint(m_root.FirstNode).Y - m_root.Height / 2);
			}
		}
		int num = 0;
		int treeRowIndex = node.TreeRowIndex;
		int num2 = ((treeRowIndex >= VScrollPos) ? 1 : (-1));
		int num3 = VScrollPos;
		node = RowIndexToNode(num3);
		while (num3 != treeRowIndex && node != null)
		{
			num += num2 * node.Height;
			node = ((num2 > 0) ? node.NextVisibleNode : node.PrevVisibleNode);
			if (node != null)
			{
				num3 = node.TreeRowIndex;
			}
		}
		return new Point(0, num);
	}

	public int GetHeightOfRows(int start, int end)
	{
		int num = 0;
		TreeNodeAdv treeNodeAdv = RowIndexToNode(start);
		if (!treeNodeAdv.Visible && !DesignModeInternal)
		{
			return 0;
		}
		for (int i = start; i <= end; i++)
		{
			if (treeNodeAdv == null)
			{
				break;
			}
			num += treeNodeAdv.Height;
			treeNodeAdv = treeNodeAdv.NextVisibleNode;
		}
		return num;
	}

	public Rectangle NodeToRectangle(TreeNodeAdv node)
	{
		Point location = NodeToPoint(node);
		return new Rectangle(location, new Size(TreeColumnRectangle.Width, node.Height));
	}

	public TreeNodeAdv RowIndexToNode(int rowIndex)
	{
		return Root.GetNodeAtAbsoluteRowIndex(rowIndex);
	}

	public int NodeToRowIndex(TreeNodeAdv node)
	{
		return node.TreeRowIndex;
	}

	public new void CancelMode()
	{
		CancelMouseBasedSelection();
		CancelEdit = true;
		EndEdit(cancel: true);
		CancelEdit = false;
	}

	public TreeNodeAdv GetNodeFromPath(string path)
	{
		return GetNode(m_root, path);
	}

	public string GetPathFromNode(TreeNodeAdv node)
	{
		if (node == null)
		{
			return string.Empty;
		}
		return node.GetPath(m_strPathSeparator);
	}

	public void ExtendSelectionTo(TreeNodeAdv selNode)
	{
		ExtendSelectionTo(selNode, removeCurrentMultipleSelection: true);
	}

	public void ExtendSelectionTo(TreeNodeAdv pSelectedNode, bool removeCurrentMultipleSelection)
	{
		if (SelectionMode == TreeSelectionMode.Single || m_selectionBaseNode == null || pSelectedNode == null)
		{
			return;
		}
		bool flag = SelectionMode == TreeSelectionMode.MultiSelectAll;
		if (flag || pSelectedNode.Parent == m_selectionBaseNode.Parent)
		{
			ArrayList arrayList = NewlySelectedNodes(pSelectedNode, flag);
			ArrayList nodesToRemove = null;
			if (removeCurrentMultipleSelection)
			{
				nodesToRemove = (MouseBasedSelectionOn ? m_latestMouseBasedSelection : SelectedNodes);
			}
			if (MouseBasedSelectionOn)
			{
				m_latestMouseBasedSelection = new ArrayList(arrayList);
			}
			if (SetSelectedNode(arrayList, nodesToRemove, TreeViewAdvAction.ByMouse))
			{
				ActiveNode = pSelectedNode;
			}
		}
	}

	private ArrayList NewlySelectedNodes(TreeNodeAdv pSelectedNode, bool pMultiSelectAll)
	{
		ArrayList arrayList = new ArrayList();
		if (m_selectedNodes.Contains(pSelectedNode) && (m_pressedKey == Keys.Up || m_pressedKey == Keys.Down))
		{
			m_selectedNodes.Remove(SelectUpwardDirection ? pSelectedNode.NextVisibleNode : pSelectedNode.PrevVisibleNode);
			EnsureVisible(pSelectedNode);
			arrayList = m_selectedNodes;
			m_pressedKey = Keys.None;
		}
		else
		{
			if (m_pressedKey == Keys.None)
			{
				SelectUpwardDirection = m_selectionBaseNode.Bounds.Y >= pSelectedNode.Bounds.Y;
			}
			TreeNodeAdv treeNodeAdv = m_selectionBaseNode;
			bool selectUpwardDirection = SelectUpwardDirection;
			while (treeNodeAdv != null && treeNodeAdv != pSelectedNode)
			{
				if (treeNodeAdv.Enabled && (pMultiSelectAll || treeNodeAdv.Parent == pSelectedNode.Parent))
				{
					arrayList.Add(treeNodeAdv);
				}
				treeNodeAdv = (selectUpwardDirection ? treeNodeAdv.PrevVisibleNode : treeNodeAdv.NextVisibleNode);
			}
			arrayList.Add(pSelectedNode);
		}
		return arrayList;
	}

	public new DragDropEffects DoDragDrop(object data, DragDropEffects allowedEffects)
	{
		CanDrag = false;
		DragDropEffects dragDropEffects = DragDropEffects.None;
		dragDropEffects = base.DoDragDrop(data, allowedEffects);
		if (!AllowDrop)
		{
			AllowDropStubWorks = true;
			dragDropEffects = DragDropEffects.None;
		}
		return dragDropEffects;
	}

	[DocumentationExclude]
	public void DispatchDragOver(DragEventArgs drgevent)
	{
		OnDragOver(drgevent);
	}

	[DocumentationExclude]
	public void DispatchOnDragDrop(DragEventArgs drgevent)
	{
		OnDragDrop(drgevent);
	}

	[DocumentationExclude]
	public void DispatchOnDragEnter(DragEventArgs drgevent)
	{
		OnDragEnter(drgevent);
	}

	[DocumentationExclude]
	public void DispatchOnDragLeave(EventArgs e)
	{
		OnDragLeave(e);
	}

	[DocumentationExclude]
	public void DispatchOnQueryContinueDrag(QueryContinueDragEventArgs args)
	{
		OnQueryContinueDrag(args);
	}

	[DocumentationExclude]
	public void DispatchOnGiveFeedback(GiveFeedbackEventArgs args)
	{
		OnGiveFeedback(args);
	}

	[DocumentationExclude]
	public DragDropEffects DispatchDoDragDrop(object data, DragDropEffects allowedEffects)
	{
		return DoDragDrop(data, allowedEffects);
	}

	public Size MeasureDisplayStringSize(Graphics graphics, string text, Font font)
	{
		return ControlDrawing.MeasureDisplayStringSize(graphics, text, font, GetIsMirrored());
	}

	public Size MeasureDisplayStringSize(Graphics graphics, string text, Font font, int width)
	{
		return ControlDrawing.MeasureDisplayStringSize(graphics, text, font, GetIsMirrored(), width);
	}

	public void CollapseAll()
	{
		if (Root.HasNodes)
		{
			Root.CollapseAll();
		}
	}

	public void ExpandAll()
	{
		if (Root.HasNodes)
		{
			Root.ExpandAll();
		}
	}

	public void CancelEditMode()
	{
		CancelEdit = true;
		EndEdit(cancel: true);
		CancelEdit = false;
	}

	public int GetNodeCount(bool includeSubTrees)
	{
		return Root.GetNodeCount(includeSubTrees);
	}

	public void EnsureVisible(TreeNodeAdv node)
	{
		RefreshVScrollbar();
		EnsureVisibleV(node, showOnTop: false);
		EnsureVisibleH(node);
	}

	public void EnsureVisibleH(TreeNodeAdv node)
	{
		if (Root != null && node != null)
		{
			int num = node.NodeX - node.Bounds.X - TreeAllColumnsRectangle.Width + node.Width;
			if (num > base.HScrollBar.Value)
			{
				base.HScrollBar.Value = num;
			}
			else if (node.NodeX < 0)
			{
				base.HScrollBar.Value = node.NodeX - node.Bounds.X;
			}
		}
	}

	public void EnsureVisibleV(TreeNodeAdv node, bool showOnTop)
	{
		if (!VerticallScrollBar || (!node.Visible && !DesignModeInternal))
		{
			return;
		}
		int num = NodeToRowIndex(node);
		TreeNodeAdv lastVisibleNode = LastVisibleNode;
		int num2 = ((lastVisibleNode == null) ? base.VScrollBar.Maximum : NodeToRowIndex(lastVisibleNode));
		if (showOnTop)
		{
			VScrollPos = num;
		}
		else if (num < VScrollPos || num >= num2)
		{
			if (num < VScrollPos)
			{
				VScrollPos = num;
			}
			if (num >= num2)
			{
				VScrollPos = GetEVVScrollPos(node);
			}
		}
	}

	public TreeNodeAdv GetNodeAtPoint(int x, int y)
	{
		return GetNodeAtPoint(new Point(x, y));
	}

	public TreeNodeAdv GetNodeAtPoint(Point pt)
	{
		return GetNodeAtPoint(pt, textBounds: false);
	}

	public TreeNodeAdv GetNodeAtPoint(Point pt, bool textBounds)
	{
		return GetNodeAtPoint(pt, textBounds, pHitTextOrImageBounds: false);
	}

	public TreeNodeAdv GetNodeAtPoint(Point pt, bool pHitTextBounds, bool pHitTextOrImageBounds)
	{
		TreeNodeAdv treeNodeAdv = null;
		if (!HasColumns || Columns[0].Visible)
		{
			treeNodeAdv = PointToNode(pt);
			if (treeNodeAdv != null)
			{
				int num = NodeToRowIndex(treeNodeAdv);
				Rectangle textBounds = treeNodeAdv.TextBounds;
				Rectangle textAndImageBounds = treeNodeAdv.TextAndImageBounds;
				if (HasColumns)
				{
					Rectangle rect = new Rectangle(-HScrollPos, -VScrollPos, Columns[0].Width, base.Height);
					textBounds.Intersect(rect);
					textAndImageBounds.Intersect(rect);
				}
				if (num >= VScrollPos && num <= NodeToRowIndex(LastVisibleNode) && (pHitTextBounds || pHitTextOrImageBounds) && (!pHitTextBounds || !textBounds.Contains(pt)) && (!pHitTextOrImageBounds || !textAndImageBounds.Contains(pt)))
				{
					treeNodeAdv = null;
				}
			}
		}
		return treeNodeAdv;
	}

	public TreeNodeAdvSubItem GetSubItemAtPoint(int x, int y)
	{
		return GetSubItemAtPoint(new Point(x, y));
	}

	public TreeNodeAdvSubItem GetSubItemAtPoint(Point pt)
	{
		TreeNodeAdv treeNodeAdv = null;
		TreeNodeAdvSubItem result = null;
		if (HasColumns)
		{
			treeNodeAdv = PointToNode(pt);
			if (treeNodeAdv != null)
			{
				for (int i = 0; i < treeNodeAdv.SubItems.Count; i++)
				{
					if (treeNodeAdv.SubItems[i].Bounds.Contains(pt))
					{
						result = treeNodeAdv.SubItems[i];
					}
				}
			}
		}
		return result;
	}

	public TreeNodeAdv GetNodeAtPointEx(Point pt)
	{
		Update();
		if (HasColumns && !Columns[0].Visible)
		{
			return null;
		}
		TreeNodeAdv treeNodeAdv = PointToNode(pt);
		if (treeNodeAdv != null)
		{
			int num = NodeToRowIndex(treeNodeAdv);
			if (num < VScrollPos || num > NodeToRowIndex(LastVisibleNode))
			{
				return treeNodeAdv;
			}
			if (treeNodeAdv.TextBounds.Contains(pt))
			{
				return treeNodeAdv;
			}
			if (treeNodeAdv.TextAndImageBounds.Contains(pt))
			{
				return treeNodeAdv;
			}
		}
		return null;
	}

	protected internal virtual void OnColumnChanged(TreeColumnStyleChangedEventArgs e)
	{
		if (e != null && e.StyleChange != null && e.StyleChange.Sip.PropertyName == "Width")
		{
			Rectangle bounds = e.Column.Bounds;
			bounds.Y = -m_headerHeight;
			if (GetIsMirrored())
			{
				bounds.X = 0;
			}
			bounds.Width = base.Width;
			bounds.Height = base.Height;
			InvalidateNc(bounds);
			RefreshHScrollbar();
			DoLayout();
		}
		else
		{
			InvalidateNc();
		}
	}

	protected virtual void OnColumnSelected(TreeViewColumnSelectedChangedEventArgs e)
	{
		if (this.ColumnHighlighted != null)
		{
			this.ColumnHighlighted(this, e);
		}
	}

	protected virtual void OnColumnClick(TreeColumnAdv column)
	{
		if (this.ColumnClick != null)
		{
			this.ColumnClick(this, new TreeViewColumnSelectedChangedEventArgs(column));
		}
	}

	protected virtual void OnColumnResized(TreeColumnAdv column, int prevWidth, int currentWidth)
	{
		if (this.ColumnResized != null)
		{
			this.ColumnResized(this, new TreeViewColumnResizedEventArgs(column, prevWidth, currentWidth));
		}
	}

	protected virtual void OnColumnResizing(TreeColumnAdv column, int prevPos, int currentPos)
	{
		if (this.ColumnResizing != null)
		{
			this.ColumnResizing(this, new TreeViewColumnResizeEventArgs(column, prevPos, currentPos));
		}
	}

	protected virtual void OnColumnDoubleClick(TreeColumnAdv column)
	{
		if (this.ColumnDoubleClick != null)
		{
			this.ColumnDoubleClick(this, new TreeViewColumnSelectedChangedEventArgs(column));
		}
	}

	[DocumentationExclude]
	protected virtual void OnSelectionModeChanged()
	{
		if (m_selectedNodes.Count > 1)
		{
			m_selectedNodes.RemoveRange(1, m_selectedNodes.Count - 1);
			TreeNodeAdv activeNode = (SelectedNode = m_selectedNodes[0]);
			ActiveNode = activeNode;
		}
	}

	protected virtual void OnNodeEditorValidateString(TreeNodeAdvCancelableEditEventArgs e)
	{
		if (this.NodeEditorValidateString != null)
		{
			this.NodeEditorValidateString(this, e);
		}
	}

	protected virtual void OnNodeEditorValidating(TreeNodeAdvCancelableEditEventArgs e)
	{
		if (this.NodeEditorValidating != null)
		{
			IsEditEnding = true;
			this.NodeEditorValidating(this, e);
			IsEditEnding = false;
		}
	}

	protected virtual void OnNodeEditorValidated(TreeNodeAdvEditEventArgs e)
	{
		if (this.NodeEditorValidated != null)
		{
			this.NodeEditorValidated(this, e);
		}
	}

	protected virtual void OnEditCancelled(TreeNodeAdvEditEventArgs e)
	{
		if (this.EditCancelled != null)
		{
			this.EditCancelled(this, e);
		}
	}

	protected virtual void OnBeforeEdit(TreeNodeAdvBeforeEditEventArgs e)
	{
		if (this.BeforeEdit != null)
		{
			this.BeforeEdit(this, e);
		}
	}

	protected virtual void OnNodeStateImageListChanged()
	{
		InvalidateWindow();
		RaiseNodeStateImageList();
	}

	protected virtual void OnDefaultExpandImageIndexChanged()
	{
		Invalidate();
		RaiseDefaultExpandImageIndexChanged();
	}

	protected virtual void OnDefaultCollapseImageIndexChanged()
	{
		Invalidate();
		RaiseDefaultCollapseImageIndexChanged();
	}

	protected virtual void OnItemDrag(ItemDragEventArgs e)
	{
		if (this.ItemDrag != null)
		{
			if (!(e.Item is TreeNodeAdv[]))
			{
				throw new Exception("The OnItemDrag method is called with invalid argument type.");
			}
			this.ItemDrag(this, e);
		}
	}

	protected virtual void OnNodeBackgroundPaint(TreeNodeAdvPaintBackgroundEventArgs e)
	{
		if (this.NodeBackgroundPaint != null)
		{
			this.NodeBackgroundPaint(this, e);
		}
	}

	protected virtual void OnBeforeNodePaint(TreeNodeAdvPaintEventArgs e)
	{
		if (this.BeforeNodePaint != null)
		{
			this.BeforeNodePaint(this, e);
		}
	}

	protected virtual void OnAfterNodePaint(TreeNodeAdvPaintEventArgs e)
	{
		if (this.AfterNodePaint != null)
		{
			this.AfterNodePaint(this, e);
		}
	}

	protected virtual void OnBeforeExpand(TreeViewAdvCancelableNodeEventArgs e)
	{
		if (this.BeforeExpand != null)
		{
			this.BeforeExpand(this, e);
		}
	}

	protected virtual void OnBeforeCollapse(TreeViewAdvCancelableNodeEventArgs e)
	{
		if (this.BeforeCollapse != null)
		{
			this.BeforeCollapse(this, e);
		}
	}

	protected virtual void OnAfterExpand(TreeViewAdvNodeEventArgs e)
	{
		ValidateScrollPosition();
		if (this.AfterExpand != null)
		{
			this.AfterExpand(this, e);
		}
	}

	protected virtual void OnAfterCollapse(TreeViewAdvNodeEventArgs e)
	{
		ValidateScrollPosition();
		if (this.AfterCollapse != null)
		{
			this.AfterCollapse(this, e);
		}
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		if (m_toolTip.IsShowing() && (VerticallScrollBar || HorizontalScrollBar))
		{
			m_toolTip.HidePopup();
		}
		if (IsEditing)
		{
			CancelEditMode();
		}
		base.OnMouseWheel(e);
	}

	protected virtual void OnAfterSelect(EventArgs e)
	{
		if (this.AfterSelect != null)
		{
			this.AfterSelect(this, e);
		}
	}

	protected internal virtual void OnAfterCheck(TreeNodeAdvEventArgs e)
	{
		if (IsMouseDown)
		{
			e.Action = TreeViewAdvAction.ByMouse;
		}
		if (IsKeyDown)
		{
			e.Action = TreeViewAdvAction.ByKeyboard;
		}
		if (e.Node != null)
		{
			m_checkedNodes.ResolveNode(e.Node);
		}
		if (this.AfterCheck != null)
		{
			this.AfterCheck(this, e);
		}
	}

	protected internal virtual void OnAfterInteractiveChecks(TreeNodeAdvEventArgs e)
	{
		if (this.AfterInteractiveChecks != null)
		{
			this.AfterInteractiveChecks(this, e);
		}
	}

	protected virtual void OnBeforeSelect(TreeViewAdvCancelableSelectionEventArgs e)
	{
		if (this.BeforeSelect != null)
		{
			Invoke(this.BeforeSelect, this, e);
		}
	}

	protected internal virtual void OnBeforeCheck(TreeNodeAdvBeforeCheckEventArgs e)
	{
		if (this.BeforeCheck != null)
		{
			this.BeforeCheck(this, e);
		}
	}

	protected virtual void SetDefaultSelectionOnEnter()
	{
		if (!Root.HasNodes)
		{
			return;
		}
		if (Control.MouseButtons != MouseButtons.None)
		{
			TreeNodeAdv nodeAtPoint = GetNodeAtPoint(PointToClient(Control.MousePosition));
			if (nodeAtPoint != null && nodeAtPoint.Enabled && SetSelectedNode(nodeAtPoint, m_selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = nodeAtPoint;
				m_selectionBaseNode = nodeAtPoint;
			}
		}
		if (SelectedNode == null)
		{
			TreeNodeAdv nextSelectableNode = Root.NextSelectableNode;
			if (SetSelectedNode(nextSelectableNode, m_selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = nextSelectableNode;
				m_selectionBaseNode = nextSelectableNode;
			}
		}
	}

	protected override void OnVScrollBarValueChanged(object sender, EventArgs e)
	{
		if (VScrollPos != base.VScrollBar.Value)
		{
			InVScroll = true;
			VScrollPos = base.VScrollBar.Value;
			InVScroll = false;
		}
		base.OnVScrollBarValueChanged(sender, e);
	}

	protected override void OnHScrollBarValueChanged(object sender, EventArgs e)
	{
		if (HScrollPos != base.HScrollBar.Value)
		{
			InHScroll = true;
			HScrollPos = base.HScrollBar.Value;
			InHScroll = false;
		}
		InvalidateNc();
		base.OnHScrollBarValueChanged(sender, e);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		if (m_root != null)
		{
			rootMaxXChanged(m_root.MaxX);
		}
		ValidateScrollPosition();
		RefreshHScrollbar();
		if (Root != null)
		{
			RefreshVScrollbar();
		}
		if (BackgroundColor.Style == BrushStyle.Gradient || GetIsMirrored() || IsColumnsGradient())
		{
			Invalidate(base.ClientRectangle);
		}
		base.OnSizeChanged(e);
	}

	protected override void OnInvalidated(InvalidateEventArgs e)
	{
		base.OnInvalidated(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if ((e.Button & MouseButtons.Right) > MouseButtons.None)
		{
			RMouseDownNode = ((HasColumns && !Columns[0].Visible) ? null : PointToNode(new Point(e.X, e.Y)));
		}
		base.OnMouseDown(e);
		if (IsEditing)
		{
			return;
		}
		IsMouseDown = true;
		Dragging = false;
		ClickedOnSelection = false;
		CanDrag = false;
		Point point = (m_lastButtonDownPoint = (m_ptMouseDown = new Point(e.X, e.Y)));
		m_lastButtonDownNode = GetNodeAtPoint(point);
		bool flag = !base.ContainsFocus;
		bool flag2 = e.Button == MouseButtons.Left;
		bool flag3 = e.Button == MouseButtons.Right;
		IsLeftMouseDown = flag2;
		TreeNodeAdv treeNodeAdv = GetNodeAtPoint(point);
		if (treeNodeAdv == null)
		{
			treeNodeAdv = Root;
		}
		if (flag2 && treeNodeAdv.ProcessMouseDown(point))
		{
			IsMouseDown = false;
			return;
		}
		if (Focused && !Focused)
		{
			IsMouseDown = false;
			return;
		}
		bool flag4 = (Control.ModifierKeys & Keys.Control) == Keys.Control;
		bool flag5 = (Control.ModifierKeys & Keys.Shift) == Keys.Shift;
		bool flag6 = true;
		if (flag2 && m_activeNode != null)
		{
			bool flag7 = CheckToolTipClicked(point);
			if (e.Clicks == 2)
			{
				flag6 = false;
			}
			else if (e.Clicks == 1 && flag7)
			{
				OnClick(e);
				OnMouseClick(e);
			}
		}
		if (e.Clicks == 2)
		{
			OnMouseUp(e);
			IsMouseDown = false;
		}
		else
		{
			if (!flag6)
			{
				return;
			}
			if (flag2 && AllowMouseBasedSelection)
			{
				TreeNodeAdv treeNodeAdv2 = GetNodeAtPoint(point, pHitTextBounds: false, !FullRowSelect);
				if (treeNodeAdv2 == null)
				{
					treeNodeAdv2 = Root;
				}
				if (treeNodeAdv2 != m_activeNode && !SelectedNodes.Contains(treeNodeAdv2))
				{
					MouseBasedSelectionOn = true;
				}
			}
			if (!flag4 && !flag5)
			{
				if (flag2)
				{
					if (m_activeNode != null && m_activeNode.Bounds.Contains(point))
					{
						if (m_activeNode.TextBounds.Contains(point) || FullRowSelect)
						{
							if (!flag)
							{
								ClickedOnSelection = true;
							}
							CanDrag = true;
						}
						else if (!DragOnText)
						{
							CanDrag = true;
						}
					}
				}
				else if (flag3 && RMouseDownNode != null && RMouseDownNode.Bounds.Contains(point) && (!DragOnText || RMouseDownNode.TextBounds.Contains(point) || FullRowSelect))
				{
					CanDrag = true;
				}
			}
			if (!flag2)
			{
				m_lastSelectedNode = GetNodeAtPoint(point);
				EnsureVisibleFlag = false;
				if (m_lastSelectedNode != null)
				{
					ApplyMouseBasedSelectionOn(m_lastSelectedNode);
				}
				EnsureVisibleFlag = true;
				RMouseDownNode = m_lastSelectedNode;
				m_lastSelectedNode = null;
				IsMouseDown = false;
			}
			if (!flag6)
			{
				return;
			}
			TreeNodeAdv treeNodeAdv3 = GetNodeAtPoint(point);
			if (treeNodeAdv3 == null)
			{
				treeNodeAdv3 = Root;
			}
			if (m_selectedNodes.Contains(treeNodeAdv3) && !flag4 && !flag5)
			{
				if (!flag)
				{
					ClickedOnSelection = true;
				}
				if (!DragOnText || (DragOnText && treeNodeAdv3.TextBounds.Contains(point)) || FullRowSelect)
				{
					CanDrag = true;
				}
			}
			else
			{
				TreeNodeAdv nodeAtPoint = GetNodeAtPoint(point, pHitTextBounds: false, !FullRowSelect);
				if (nodeAtPoint != null && nodeAtPoint.Enabled)
				{
					if (!DragOnText || (DragOnText && nodeAtPoint.TextBounds.Contains(point)) || FullRowSelect)
					{
						CanDrag = true;
					}
					if (SingleSelect && flag4)
					{
						ClickedOnSelection = true;
					}
					if ((!flag4 && !flag5) || SingleSelect)
					{
						m_lMouseDownNode = nodeAtPoint;
					}
					else if (!flag5 || (flag4 && flag5))
					{
						m_lMouseDownNode = nodeAtPoint;
					}
					else
					{
						bool removeCurrentMultipleSelection = !flag4;
						m_pressedKey = Keys.None;
						EnsureVisibleFlag = false;
						ExtendSelectionTo(nodeAtPoint, removeCurrentMultipleSelection);
						EnsureVisibleFlag = true;
					}
				}
				StartAutoScrollingInternal();
			}
			if (flag2)
			{
				m_lastSelectedNode = GetNodeAtPoint(point);
				LMouseDownNode = m_lastSelectedNode;
				EnsureVisibleFlag = false;
				if (m_lastSelectedNode != null)
				{
					ApplyMouseBasedSelectionOn(m_lastSelectedNode);
				}
				EnsureVisibleFlag = true;
				m_lastSelectedNode = null;
				IsMouseDown = false;
			}
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		IsMouseUp = true;
		bool bCtrl = (Control.ModifierKeys & Keys.Control) == Keys.Control;
		bool bShift = (Control.ModifierKeys & Keys.Shift) == Keys.Shift;
		if (AllowDropStubWorks)
		{
			m_draggedTnas = null;
			AllowDropStubWorks = false;
			DragHelper.EndDrag();
		}
		m_highlightedNode = null;
		m_lastButtonDownNode = null;
		m_pressedColumn = null;
		MouseBasedSelectionOn = false;
		NodesSelectionOnMouseUp(bCtrl, bShift, e);
		m_ptMouseDown = Point.Empty;
		base.OnMouseUp(e);
		IsMouseUp = false;
	}

	private void NodesSelectionOnMouseUp(bool bCtrl, bool bShift, MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			Point point = new Point(e.X, e.Y);
			TreeNodeAdv nodeAtPoint = GetNodeAtPoint(point);
			if (ClickedOnSelection && m_ptMouseDown == point && nodeAtPoint != null)
			{
				ArrayList nodesToAdd = new ArrayList(new TreeNodeAdv[1] { nodeAtPoint });
				if (SetSelectedNode(nodesToAdd, m_selectedNodes, TreeViewAdvAction.ByMouse, fireEvent: true, forceRemove: true))
				{
					ActiveNode = nodeAtPoint;
					m_selectionBaseNode = nodeAtPoint;
					if (!bCtrl && nodeAtPoint.TextBounds.Contains(point))
					{
						LabelEditStartTimer = new Timer();
					}
				}
			}
			if ((!bShift || (bCtrl && bShift)) && MultiSelect && m_selectedNodes.Contains(nodeAtPoint) && IsMouseDownWithCtrl)
			{
				if (SetSelectedNode(null, nodeAtPoint, TreeViewAdvAction.ByMouse))
				{
					ActiveNode = nodeAtPoint;
				}
				IsMouseDownWithCtrl = false;
			}
			TreeNodeAdv lMouseDownNode = (RMouseDownNode = null);
			LMouseDownNode = lMouseDownNode;
			StopAutoScrollingInternal();
		}
		else
		{
			Dragging = false;
			Invalidate();
			if (e.Button == MouseButtons.Right)
			{
				RMouseDownNode = null;
			}
		}
	}

	protected override void OnDoubleClick(EventArgs e)
	{
		Point pt = PointToClient(Cursor.Position);
		TreeNodeAdv nodeAtPoint = GetNodeAtPoint(pt);
		if (nodeAtPoint != null)
		{
			CheckBoxPart checkBoxPart = nodeAtPoint.CheckBox as CheckBoxPart;
			if (nodeAtPoint.PlusMinus.Visible && (checkBoxPart == null || !checkBoxPart.Visible || !nodeAtPoint.EnabledButtons || !checkBoxPart.Bounds.Contains(pt)))
			{
				Rectangle bounds = nodeAtPoint.PlusMinus.Bounds;
				bounds.Inflate(4, 3);
				if (!bounds.Contains(pt) && IsLeftMouseDown && nodeAtPoint.Bounds.Contains(pt) && (nodeAtPoint.HasNodes || LoadOnDemand))
				{
					nodeAtPoint.Expanded = !nodeAtPoint.Expanded;
				}
			}
		}
		ClearSelectionClickMonitors();
		base.OnDoubleClick(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		Root.RecalculateAllDimensions();
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		MouseLeaved = false;
		base.OnMouseEnter(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		ProcessColumnResize(e);
		if (AllowDropStubWorks)
		{
			GiveFeedbackEventArgs gfbevent = new GiveFeedbackEventArgs(DragDropEffects.None, useDefaultCursors: true);
			OnGiveFeedback(gfbevent);
			m_draggedTnas = null;
			AllowDropStubWorks = false;
			DragHelper.EndDrag();
			return;
		}
		ResetMouseEventArgs();
		if (e.Button == MouseButtons.None && ContextMenu != null)
		{
			RMouseDownNode = null;
			LMouseDownNode = null;
		}
		if (IgnoreNextMouseMove)
		{
			IgnoreNextMouseMove = false;
			return;
		}
		if (m_helpText != null && m_helpText.IsShowing())
		{
			if (m_tnHelpTextNode != null)
			{
				if (!m_tnHelpTextNode.TextBounds.Contains(e.X, e.Y))
				{
					m_helpText.HidePopup();
					m_tnHelpTextNode = null;
				}
			}
			else if (GetSubItemAtPoint(e.X, e.Y) != m_previousHelpTextSubItem)
			{
				m_helpText.HidePopup();
			}
		}
		if (e.Button == MouseButtons.Left)
		{
			ProcessLeftMouseButton(e);
		}
		else if (e.Button == MouseButtons.Right)
		{
			ProcessRightMouseButton(e);
		}
		ProcessHotTracking(e);
	}

	private void ProcessColumnResize(MouseEventArgs e)
	{
		if (!ColumnsMovedMode)
		{
			return;
		}
		Point point = PointToScreen(new Point(e.X, e.Y));
		int num = ((!GetIsMirrored()) ? 1 : (-1));
		int num2 = num * (point.X - m_iColumnsPressedPosition);
		TreeColumnAdv[] visibleColumns = Columns.VisibleColumns;
		if (visibleColumns.Length > m_iColumnsPressedIndex)
		{
			TreeColumnAdv treeColumnAdv = visibleColumns[m_iColumnsPressedIndex];
			if (treeColumnAdv.Width + num2 < 4)
			{
				num2 = 4 - treeColumnAdv.Width;
			}
			Cursor.Current = Cursors.VSplit;
			int num3 = num * m_iColumnsOffset;
			int num4 = num * num2;
			DrawReversibleLine(num3);
			DrawReversibleLine(num4);
			OnColumnResizing(treeColumnAdv, num3, num4);
			m_iColumnsOffset = num2;
		}
	}

	private void ProcessHotTracking(MouseEventArgs e)
	{
		if (!HotTracking)
		{
			return;
		}
		TreeNodeAdv lastVisibleNode = LastVisibleNode;
		int num = 0;
		if (lastVisibleNode != null)
		{
			num = lastVisibleNode.Bounds.Bottom;
		}
		Point pt = new Point(e.X, e.Y);
		TreeNodeAdv treeNodeAdv = null;
		if (pt.Y <= num)
		{
			treeNodeAdv = GetNodeAtPoint(pt);
		}
		if (treeNodeAdv != m_lastNodeOver)
		{
			if (m_lastNodeOver != null)
			{
				Invalidate(m_lastNodeOver.Bounds);
			}
			m_lastNodeOver = treeNodeAdv;
		}
		if (treeNodeAdv != null)
		{
			Invalidate(treeNodeAdv.Bounds);
		}
	}

	private void ProcessRightMouseButton(MouseEventArgs e)
	{
		if (!ColumnsMovedMode && !Dragging && CanDrag && RMouseDownNode != null && IsDraggedPastMouseDownPoint(new Point(e.X, e.Y)))
		{
			TreeNodeAdv[] array = null;
			RaiseItemDrag(new ItemDragEventArgs(item: (!m_selectedNodes.Contains(RMouseDownNode)) ? new TreeNodeAdv[1] { RMouseDownNode } : (m_selectedNodes.ToArray(typeof(TreeNodeAdv)) as TreeNodeAdv[]), button: e.Button));
			CanDrag = false;
		}
	}

	private void ProcessLeftMouseButton(MouseEventArgs e)
	{
		TreeNodeAdv[] array = null;
		if (ColumnsMovedMode || !IsDraggedPastMouseDownPoint(new Point(e.X, e.Y)))
		{
			return;
		}
		if (m_activeNode != m_root && !Dragging && CanDrag)
		{
			if (LMouseDownNode != null && SingleSelect)
			{
				array = new TreeNodeAdv[1] { LMouseDownNode };
			}
			else if (MultiSelect && m_selectedNodes.Count > 0)
			{
				ArrayList arrayList = new ArrayList(m_selectedNodes.ToArray(typeof(TreeNodeAdv)));
				if (LMouseDownNode != null)
				{
					bool flag = true;
					if (SelectionMode == TreeSelectionMode.MultiSelectSameLevel)
					{
						TreeNodeAdv treeNodeAdv = m_selectedNodes[0];
						flag = treeNodeAdv.Parent == LMouseDownNode.Parent;
					}
					if (arrayList.Contains(LMouseDownNode))
					{
						flag = false;
					}
					if (flag)
					{
						arrayList.Add(LMouseDownNode);
					}
				}
				array = arrayList.ToArray(typeof(TreeNodeAdv)) as TreeNodeAdv[];
			}
			else if (SingleSelect && SelectedNode != null)
			{
				array = new TreeNodeAdv[1] { SelectedNode };
			}
			TreeNodeAdv lMouseDownNode = LMouseDownNode;
			LMouseDownNode = null;
			if (array != null)
			{
				RaiseItemDrag(new ItemDragEventArgs(e.Button, array));
				if (DragCueOn)
				{
					DragCueOn = false;
					DragHelper.EndDrag();
				}
				CanDrag = false;
				if (MouseBasedSelectionOn)
				{
					LMouseDownNode = lMouseDownNode;
				}
			}
		}
		if (MouseBasedSelectionOn)
		{
			ProcessMouseBasedSelection(e);
		}
		else
		{
			LMouseDownNode = null;
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		MouseLeaved = true;
		if (m_lastNodeOver != null)
		{
			Invalidate(m_lastNodeOver.Bounds);
			m_lastNodeOver = null;
		}
		base.OnMouseLeave(e);
		if (Control.MouseButtons == MouseButtons.None)
		{
			StopAutoScrollingInternal();
		}
	}

	protected override void OnLeave(EventArgs e)
	{
		if (HideSelection)
		{
			Invalidate();
			InvalidateNc();
		}
		base.OnLeave(e);
	}

	protected virtual void ProcessMouseBasedSelection(MouseEventArgs e)
	{
		TreeNodeAdv nodeAtPoint = GetNodeAtPoint(new Point(e.X, e.Y), textBounds: false);
		if (nodeAtPoint != null && nodeAtPoint != Root && nodeAtPoint.Enabled)
		{
			if (SingleSelect)
			{
				LMouseDownNode = nodeAtPoint;
			}
			else if (LMouseDownNode != null)
			{
				ApplyMouseBasedSelectionOn(LMouseDownNode);
				LMouseDownNode = null;
			}
			else
			{
				ExtendSelectionTo(nodeAtPoint, removeCurrentMultipleSelection: true);
			}
		}
	}

	[DocumentationExclude]
	protected virtual void UpdateTips(bool mouseHover)
	{
		TreeNodeAdv treeNodeAdv = null;
		TreeNodeAdvSubItem treeNodeAdvSubItem = null;
		bool flag = false;
		if ((!base.ContainsFocus && !Focused && !mouseHover) || IsEditing)
		{
			flag = true;
		}
		Form form = FindForm();
		if (!mouseHover && form != null && !form.ContainsFocus)
		{
			flag = true;
		}
		if (!flag)
		{
			Point pt = PointToClient(Control.MousePosition);
			treeNodeAdv = GetNodeAtPoint(pt, pHitTextBounds: true, pHitTextOrImageBounds: false);
			treeNodeAdvSubItem = GetSubItemAtPoint(pt);
			if (treeNodeAdv == null || treeNodeAdv == m_root || pt.X < treeNodeAdv.TextBounds.Left || pt.X > treeNodeAdv.TextBounds.Right)
			{
				flag = true;
			}
		}
		if (treeNodeAdvSubItem != null)
		{
			if (treeNodeAdvSubItem.HelpText != null && treeNodeAdvSubItem.HelpText.Length > 0)
			{
				if (!m_toolTip.IsShowing())
				{
					m_helpText.PopupParent = null;
				}
				if (!m_helpText.IsShowing())
				{
					Point location = new Point(Control.MousePosition.X, Control.MousePosition.Y + 30);
					IgnoreNextMouseMove = true;
					m_helpText.Text = treeNodeAdvSubItem.HelpText;
					m_tnHelpTextNode = null;
					m_previousHelpTextSubItem = treeNodeAdvSubItem;
					m_helpText.ShowPopup(location);
				}
			}
			return;
		}
		if (flag)
		{
			m_helpText.HidePopup();
			m_toolTip.HidePopup();
			return;
		}
		Rectangle rectangle = new Rectangle(treeNodeAdv.TextBounds.Location, treeNodeAdv.TextBounds.Size);
		rectangle.Intersect(TreeColumnRectangle);
		if (treeNodeAdv.TextBounds != rectangle)
		{
			if (!m_toolTip.IsShowing())
			{
				m_toolTip.Font = treeNodeAdv.Font;
				m_toolTip.Text = treeNodeAdv.Text;
				m_toolTip.ShowPopup(PointToScreen(treeNodeAdv.TextBounds.Location));
			}
			m_toolTip.CurrentPopupChild = m_helpText;
			m_helpText.PopupParent = m_toolTip;
		}
		if (treeNodeAdv.HelpText != null && treeNodeAdv.HelpText.Length > 0)
		{
			if (!m_toolTip.IsShowing())
			{
				m_helpText.PopupParent = null;
			}
			if (!m_helpText.IsShowing())
			{
				Point location2 = new Point(Control.MousePosition.X, Control.MousePosition.Y + 30);
				IgnoreNextMouseMove = true;
				m_helpText.Text = treeNodeAdv.HelpText;
				m_tnHelpTextNode = treeNodeAdv;
				m_helpText.ShowPopup(location2);
			}
		}
	}

	protected override void OnMouseHover(EventArgs e)
	{
		base.OnMouseHover(e);
		UpdateTips(mouseHover: true);
	}

	protected override void OnSetCursor(ref Message m)
	{
		Cursor.Current = Cursor;
	}

	protected override void OnDragEnter(DragEventArgs drgevent)
	{
		Dragging = true;
		base.OnDragEnter(drgevent);
		m_helpText.HidePopup();
		m_toolTip.HidePopup();
		Invalidate();
		StartAutoScrollingInternal();
	}

	protected override void OnDragLeave(EventArgs e)
	{
		m_highlightedNode = null;
		base.OnDragLeave(e);
		Dragging = false;
		Invalidate();
		StopAutoScrollingInternal();
	}

	protected override void OnDragOver(DragEventArgs e)
	{
		Point p = new Point(e.X, e.Y);
		p = PointToClient(p);
		m_highlightedNode = GetNodeAtPoint(p);
		if (m_highlightedNode == m_lastButtonDownNode)
		{
			m_highlightedNode = null;
		}
		MouseBasedSelectionOn = false;
		base.OnDragOver(e);
	}

	protected override void OnDragDrop(DragEventArgs drgevent)
	{
		Dragging = false;
		Invalidate();
		base.OnDragDrop(drgevent);
	}

	protected override void OnQueryContinueDrag(QueryContinueDragEventArgs args)
	{
		base.OnQueryContinueDrag(args);
		if (args.Action == DragAction.Drop)
		{
			m_highlightedNode = null;
			DragHelper.EndDrag();
			DragCueOn = false;
			CanGetDragImage = false;
		}
		else if (args.Action == DragAction.Cancel)
		{
			DragHelper.CancelDrag();
			DragCueOn = false;
			CanGetDragImage = false;
		}
		else
		{
			CanGetDragImage = true;
		}
	}

	protected override void OnGiveFeedback(GiveFeedbackEventArgs args)
	{
		base.OnGiveFeedback(args);
		if (ShowDragNodeCue && CanGetDragImage)
		{
			DragCueOn = true;
			if (DragHelper.IsDragging || AllowDropStubWorks)
			{
				Point dragWindowLocation = GetDragWindowLocation(bFinal: true);
				DragHelper.DoDrag(dragWindowLocation, args.Effect);
			}
		}
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if (IsEditing)
		{
			switch (keyData)
			{
			case Keys.Return:
				if (IsEditing)
				{
					EndEdit(cancel: false);
					return true;
				}
				break;
			case Keys.Escape:
				CancelEdit = true;
				EndEdit(cancel: true);
				CancelEdit = false;
				return true;
			}
		}
		return base.ProcessDialogKey(keyData);
	}

	protected override bool IsInputKey(Keys keyData)
	{
		bool flag = true;
		if ((LabelEdit && keyData == Keys.F2) || keyData == Keys.Return || keyData == Keys.Escape)
		{
			flag = false;
		}
		else
		{
			switch (keyData & Keys.KeyCode)
			{
			case Keys.Prior:
			case Keys.Next:
			case Keys.End:
			case Keys.Home:
				flag = (keyData & Keys.Control) != Keys.Control && ActiveNode == null;
				break;
			case Keys.Left:
			case Keys.Up:
			case Keys.Right:
			case Keys.Down:
				flag = ActiveNode == null;
				break;
			case Keys.Space:
				flag = false;
				break;
			case Keys.Back:
				flag = !AllowKeyboardSearch;
				break;
			}
		}
		if (flag)
		{
			return base.IsInputKey(keyData);
		}
		return true;
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		EnsureVisibleSelectedNode = true;
		Keys keyData = e.KeyData;
		Keys keys = keyData & Keys.KeyCode;
		if (keyData == Keys.F2 && LabelEdit)
		{
			m_pressedKey = Keys.F2;
			if ((Control.MouseButtons == MouseButtons.Left || Control.MouseButtons == MouseButtons.Right) && m_lastButtonDownPoint != Point.Empty && GetNodeAtPointEx(m_lastButtonDownPoint) != null)
			{
				return;
			}
			BeginEdit();
			e.Handled = true;
		}
		else if (keyData == Keys.Return && ActiveNode != null && ActiveNode.HasNodes)
		{
			ActiveNode.Expanded = !ActiveNode.Expanded;
			e.Handled = true;
		}
		if (!e.Handled && keyData == Keys.Escape)
		{
			m_pressedKey = Keys.Escape;
			CancelMouseBasedSelection();
			e.Handled = true;
			if (base.Parent is Form && ((Form)base.Parent).CancelButton != null)
			{
				((Form)base.Parent).CancelButton.PerformClick();
			}
		}
		if (!e.Handled)
		{
			if (keys == Keys.Next)
			{
				ProcessPageDownKey(e);
			}
			else if (keys == Keys.Prior)
			{
				ProcessPageUpKey(e);
			}
			else if (keys == Keys.Home)
			{
				ProcessHomeKey(e);
			}
			else if (keys == Keys.End)
			{
				ProcessEndKey(e);
			}
			else if (keys == Keys.Up && ActiveNode != null)
			{
				ProcessUpKey(e);
			}
			else if (keys == Keys.Down && ActiveNode != null)
			{
				ProcessDownKey(e);
			}
			else if ((keyData == (Keys)(GetIsMirrored() ? 39 : 37) || keyData == Keys.Back) && ActiveNode != null)
			{
				ProcessLeftOrBackSpaceKey(e);
			}
			else if (keyData == (Keys)(GetIsMirrored() ? 37 : 39) && ActiveNode != null)
			{
				ProcessRightArrowKey(e);
			}
			else if (keys == Keys.Space)
			{
				ProcessSpaceKey(e);
			}
			if (!e.Handled && AllowKeyboardSearch && (keyData.ToString().Length == 1 || keyData == Keys.Space || keyData == Keys.Back || ((Control.ModifierKeys & Keys.Shift) > Keys.None && (keyData & ~(Keys.ShiftKey | Keys.Shift)) > Keys.None) || (keyData.ToString().StartsWith("D") && keyData.ToString().Length == 2)))
			{
				ProccessSearchKey(e);
			}
		}
		base.OnKeyDown(e);
	}

	private void ProcessSpaceKey(KeyEventArgs e)
	{
		Keys keyData = e.KeyData;
		bool flag = (Control.ModifierKeys & Keys.Control) > Keys.None;
		if (MultiSelect && flag)
		{
			if (m_activeNode != null)
			{
				if (m_activeNode.IsSelected)
				{
					SetSelectedNode(null, m_activeNode, TreeViewAdvAction.ByKeyboard);
				}
				else
				{
					SetSelectedNode(m_activeNode, new ArrayList(), TreeViewAdvAction.ByKeyboard);
				}
				m_selectionBaseNode = m_activeNode;
			}
		}
		else
		{
			if (!(m_strKeySearch == "") && AllowKeyboardSearch)
			{
				return;
			}
			CheckState checkState = CheckState.Checked;
			bool flag2 = false;
			IsKeyDown = true;
			if (m_activeNode != null && m_activeNode.EnabledButtons)
			{
				m_activeNode.Checked = !m_activeNode.Checked;
				checkState = m_activeNode.CheckState;
				flag2 = true;
			}
			foreach (TreeNodeAdv selectedNode in SelectedNodes)
			{
				if (selectedNode != m_activeNode && selectedNode.EnabledButtons)
				{
					if (flag2)
					{
						selectedNode.CheckState = checkState;
						continue;
					}
					selectedNode.Checked = !selectedNode.Checked;
					checkState = selectedNode.CheckState;
					flag2 = true;
				}
			}
			IsKeyDown = false;
		}
	}

	private void ProccessSearchKey(KeyEventArgs e)
	{
		Keys keyData = e.KeyData;
		bool flag = (Control.ModifierKeys & Keys.Shift) > Keys.None;
		m_keyInputTimer.Enabled = false;
		m_keyInputTimer.Enabled = true;
		if (keyData == Keys.Space && m_strKeySearch.Length > 0)
		{
			m_strKeySearch += " ";
		}
		if (keyData == Keys.Back && m_strKeySearch.Length > 0)
		{
			m_strKeySearch = m_strKeySearch.Substring(0, m_strKeySearch.Length - 1);
		}
		if (keyData.ToString().StartsWith("D") && keyData.ToString().Length == 2)
		{
			m_strKeySearch += keyData.ToString().Substring(keyData.ToString().Length - 1, 1);
		}
		else if (keyData != Keys.Space && keyData != Keys.Back)
		{
			if (flag)
			{
				m_strKeySearch += keyData & ~e.Modifiers;
			}
			else
			{
				m_strKeySearch += keyData;
			}
		}
		FindNode(m_strKeySearch, flag);
	}

	private void ProcessRightArrowKey(KeyEventArgs e)
	{
		if (m_activeNode != null)
		{
			if (!m_activeNode.Expanded)
			{
				m_activeNode.Expanded = true;
			}
			else
			{
				TreeNodeAdv nextSelectableNode = m_activeNode.NextSelectableNode;
				if (nextSelectableNode != null && nextSelectableNode.Parent == m_activeNode)
				{
					TreeNodeAdv treeNodeAdv = nextSelectableNode;
					if (SetSelectedNode(nextSelectableNode, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
					{
						ActiveNode = treeNodeAdv;
						m_selectionBaseNode = treeNodeAdv;
					}
				}
			}
		}
		e.Handled = true;
	}

	private void ProcessLeftOrBackSpaceKey(KeyEventArgs e)
	{
		if (m_activeNode.Expanded && m_activeNode.HasNodes && e.KeyCode != Keys.Back)
		{
			m_activeNode.Expanded = false;
		}
		else if (m_activeNode.Parent != null && m_activeNode.Parent != m_root && m_activeNode.Parent.Enabled)
		{
			TreeNodeAdv treeNodeAdv = m_activeNode.Parent;
			if (SetSelectedNode(treeNodeAdv, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
			{
				ActiveNode = treeNodeAdv;
				m_selectionBaseNode = treeNodeAdv;
			}
		}
		e.Handled = true;
	}

	private void ProcessPageDownKey(KeyEventArgs e)
	{
		bool flag = SelectionMode == TreeSelectionMode.Single && SelectedNode == null;
		bool flag2 = (Control.ModifierKeys & Keys.Control) > Keys.None;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) > Keys.None;
		m_pressedKey = Keys.Next;
		SelectUpwardDirection = false;
		if (flag2)
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.LargeIncrement);
			TreeNodeAdv lastVisibleNode = LastVisibleNode;
			if (flag || IsMultipleSelection(lastVisibleNode))
			{
				ActiveNode = lastVisibleNode;
				m_selectionBaseNode = lastVisibleNode;
			}
			e.Handled = true;
		}
		else if (flag3)
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.Last);
			if (ActiveNode != null)
			{
				BeginUpdate();
				for (int i = NodeToRowIndex(ActiveNode); i <= base.VScrollBar.Maximum; i++)
				{
					TreeNodeAdv treeNodeAdv = RowIndexToNode(i);
					if (IsMultipleSelection(treeNodeAdv))
					{
						ExtendSelectionTo(treeNodeAdv);
					}
					else
					{
						SetNextNodeSelected(treeNodeAdv);
					}
				}
				TreeNodeAdv treeNodeAdv2 = RowIndexToNode(base.VScrollBar.Maximum);
				treeNodeAdv2.BringIntoView();
				EndUpdate(update: false);
			}
			e.Handled = true;
		}
		else if (ActiveNode != null)
		{
			int num = NodeToRowIndex(ActiveNode);
			int num2 = num + base.VScrollBar.LargeChange - 1;
			if (num2 > base.VScrollBar.Maximum)
			{
				num2 = base.VScrollBar.Maximum;
			}
			TreeNodeAdv treeNodeAdv3 = RowIndexToNode(num2);
			if (treeNodeAdv3.Enabled && SetSelectedNode(treeNodeAdv3, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
			{
				ActiveNode = treeNodeAdv3;
				m_selectionBaseNode = treeNodeAdv3;
			}
			e.Handled = true;
		}
	}

	private void ProcessPageUpKey(KeyEventArgs e)
	{
		bool flag = SelectedNode == null && SelectionMode == TreeSelectionMode.Single;
		bool flag2 = (Control.ModifierKeys & Keys.Control) > Keys.None;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) > Keys.None;
		SelectUpwardDirection = true;
		m_pressedKey = Keys.Prior;
		if (flag2)
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.LargeDecrement);
			if (flag)
			{
				ActiveNode = TopVisibleNode;
				m_selectionBaseNode = TopVisibleNode;
			}
			e.Handled = true;
		}
		else if (flag3)
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.First);
			if (ActiveNode != null)
			{
				BeginUpdate();
				for (int num = NodeToRowIndex(ActiveNode); num >= base.VScrollBar.Minimum; num--)
				{
					TreeNodeAdv treeNodeAdv = RowIndexToNode(num);
					if (IsMultipleSelection(treeNodeAdv))
					{
						ExtendSelectionTo(treeNodeAdv);
					}
					else
					{
						SetNextNodeSelected(treeNodeAdv);
					}
				}
				EndUpdate(update: false);
				TreeNodeAdv treeNodeAdv2 = RowIndexToNode(base.VScrollBar.Minimum);
				treeNodeAdv2.BringIntoView();
				RefreshVScrollbar(treeNodeAdv2, treeNodeAdv2.Bounds.Y);
			}
			e.Handled = true;
		}
		else if (ActiveNode != null)
		{
			int num2 = NodeToRowIndex(ActiveNode);
			int num3 = num2 - base.VScrollBar.LargeChange + 1;
			if (num3 < base.VScrollBar.Minimum)
			{
				num3 = base.VScrollBar.Minimum;
			}
			TreeNodeAdv treeNodeAdv3 = RowIndexToNode(num3);
			if (treeNodeAdv3.Enabled && SetSelectedNode(treeNodeAdv3, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
			{
				ActiveNode = treeNodeAdv3;
				m_selectionBaseNode = treeNodeAdv3;
			}
			e.Handled = true;
		}
	}

	private void ProcessHomeKey(KeyEventArgs e)
	{
		bool flag = SelectedNode == null && SelectionMode == TreeSelectionMode.Single;
		bool flag2 = (Control.ModifierKeys & Keys.Control) > Keys.None;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) > Keys.None;
		SelectUpwardDirection = true;
		m_pressedKey = Keys.Home;
		if (flag2 && (!flag2 || !flag3))
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.First);
			if (flag)
			{
				ActiveNode = RowIndexToNode(base.VScrollBar.Minimum);
				m_selectionBaseNode = ActiveNode;
			}
			e.Handled = true;
		}
		else if (flag3 || (flag2 && flag3))
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.First);
			if (ActiveNode != null)
			{
				BeginUpdate();
				for (int num = NodeToRowIndex(ActiveNode); num >= base.VScrollBar.Minimum; num--)
				{
					TreeNodeAdv treeNodeAdv = RowIndexToNode(num);
					if (IsMultipleSelection(treeNodeAdv))
					{
						ExtendSelectionTo(treeNodeAdv);
					}
					else
					{
						SetNextNodeSelected(treeNodeAdv);
					}
				}
				EndUpdate(update: false);
				TreeNodeAdv treeNodeAdv2 = RowIndexToNode(base.VScrollBar.Minimum);
				treeNodeAdv2.BringIntoView();
				RefreshVScrollbar(treeNodeAdv2, treeNodeAdv2.Bounds.Y);
			}
			e.Handled = true;
		}
		else if (ActiveNode != null)
		{
			TreeNodeAdv treeNodeAdv3 = RowIndexToNode(base.VScrollBar.Minimum);
			if (treeNodeAdv3.Enabled && SetSelectedNode(treeNodeAdv3, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
			{
				ActiveNode = treeNodeAdv3;
				m_selectionBaseNode = treeNodeAdv3;
				RefreshVScrollbar(treeNodeAdv3, treeNodeAdv3.Bounds.Y);
			}
			e.Handled = true;
		}
	}

	private void ProcessDownKey(KeyEventArgs e)
	{
		bool flag = SelectedNode == null && SelectionMode == TreeSelectionMode.Single;
		bool flag2 = (Control.ModifierKeys & Keys.Control) > Keys.None;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) > Keys.None;
		m_pressedKey = Keys.Down;
		SelectUpwardDirection = false;
		if (m_activeNode.NextSelectableNode != null)
		{
			TreeNodeAdv nextSelectableNode = ActiveNode.NextSelectableNode;
			if (flag3)
			{
				BeginUpdate();
				if (IsMultipleSelection(nextSelectableNode))
				{
					m_lastSelectedByKeyBoard = nextSelectableNode;
					ExtendSelectionTo(nextSelectableNode);
				}
				else
				{
					SetNextNodeSelected(nextSelectableNode);
				}
				EndUpdate(update: false);
			}
			else if (flag2)
			{
				if (flag || IsMultipleSelection(nextSelectableNode))
				{
					ActiveNode = nextSelectableNode;
					if (ActiveNode == LastVisibleNode)
					{
						base.VScrollBar.SendScrollMessage(ScrollEventType.SmallIncrement);
					}
				}
				else
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.SmallIncrement);
				}
			}
			else
			{
				SetNextNodeSelected(nextSelectableNode);
			}
		}
		else
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.SmallIncrement);
		}
		e.Handled = true;
	}

	private void ProcessUpKey(KeyEventArgs e)
	{
		bool flag = SelectedNode == null && SelectionMode == TreeSelectionMode.Single;
		bool flag2 = (Control.ModifierKeys & Keys.Control) > Keys.None;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) > Keys.None;
		m_pressedKey = Keys.Up;
		if (ActiveNode.PrevSelectableNode != null && ActiveNode.PrevSelectableNode != m_root)
		{
			TreeNodeAdv prevSelectableNode = ActiveNode.PrevSelectableNode;
			SelectUpwardDirection = true;
			if (flag3)
			{
				BeginUpdate();
				if (IsMultipleSelection(prevSelectableNode))
				{
					m_lastSelectedByKeyBoard = prevSelectableNode;
					ExtendSelectionTo(prevSelectableNode);
				}
				else
				{
					SetNextNodeSelected(prevSelectableNode);
				}
				EndUpdate(update: false);
			}
			else if (flag2)
			{
				if (flag || IsMultipleSelection(prevSelectableNode))
				{
					if (ActiveNode == TopVisibleNode)
					{
						base.VScrollBar.SendScrollMessage(ScrollEventType.SmallDecrement);
					}
					ActiveNode = prevSelectableNode;
				}
				else
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.SmallDecrement);
				}
			}
			else
			{
				SetNextNodeSelected(prevSelectableNode);
			}
		}
		else
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.SmallDecrement);
		}
		e.Handled = true;
	}

	private void ProcessEndKey(KeyEventArgs e)
	{
		bool flag = SelectedNode == null && SelectionMode == TreeSelectionMode.Single;
		bool flag2 = (Control.ModifierKeys & Keys.Control) > Keys.None;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) > Keys.None;
		SelectUpwardDirection = false;
		m_pressedKey = Keys.End;
		if (flag2 && (!flag2 || !flag3))
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.Last);
			if (flag)
			{
				ActiveNode = RowIndexToNode(base.VScrollBar.Maximum);
				m_selectionBaseNode = ActiveNode;
			}
			e.Handled = true;
		}
		else if (flag3 || (flag2 && flag3))
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.Last);
			if (ActiveNode != null)
			{
				base.VScrollBar.SendScrollMessage(ScrollEventType.Last);
				TreeNodeAdv activeNode = ActiveNode;
				BeginUpdate();
				for (int i = NodeToRowIndex(ActiveNode); i <= base.VScrollBar.Maximum; i++)
				{
					activeNode = RowIndexToNode(i);
					if (IsMultipleSelection(activeNode))
					{
						ExtendSelectionTo(activeNode);
					}
					else
					{
						SetNextNodeSelected(activeNode);
					}
				}
				TreeNodeAdv treeNodeAdv = RowIndexToNode(base.VScrollBar.Maximum);
				treeNodeAdv.BringIntoView();
				EndUpdate(update: false);
			}
			e.Handled = true;
		}
		else if (ActiveNode != null)
		{
			TreeNodeAdv treeNodeAdv2 = RowIndexToNode(base.VScrollBar.Maximum);
			if (treeNodeAdv2.Enabled && SetSelectedNode(treeNodeAdv2, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
			{
				ActiveNode = treeNodeAdv2;
				m_selectionBaseNode = treeNodeAdv2;
			}
			e.Handled = true;
		}
	}

	protected override bool IsInputChar(char charCode)
	{
		return true;
	}

	protected override void OnUpdatingChanged(EventArgs e)
	{
		if (!base.Updating)
		{
			RefreshVScrollbar();
		}
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			this.ThemeChanged(this, e);
		}
	}

	protected override void OnScrollbarsVisibleChanged(EventArgs e)
	{
		if (!HorizontalScrollBar)
		{
			HScrollPos = 0;
		}
		base.OnScrollbarsVisibleChanged(e);
	}

	protected virtual void OnBorderStyleChanged(EventArgs e)
	{
		if (this.BorderStyleChanged != null)
		{
			this.BorderStyleChanged(this, e);
		}
	}

	protected virtual void OnBorder3DStyleChanged(EventArgs e)
	{
		if (this.Border3DStyleChanged != null)
		{
			this.Border3DStyleChanged(this, e);
		}
	}

	protected virtual void OnBorderSingleChanged(EventArgs e)
	{
		if (this.BorderSingleChanged != null)
		{
			this.BorderSingleChanged(this, e);
		}
	}

	protected virtual void OnBorderColorChanged(EventArgs e)
	{
		if (this.BorderColorChanged != null)
		{
			this.BorderColorChanged(this, e);
		}
	}

	protected virtual void OnBackgroundColorChanged(EventArgs e)
	{
		if (this.BackgroundColorChanged != null)
		{
			this.BackgroundColorChanged(this, e);
		}
	}

	protected virtual void OnBorderSidesChanged(EventArgs e)
	{
		if (this.BorderSidesChanged != null)
		{
			this.BorderSidesChanged(this, e);
		}
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new TreeViewAdvAcessibleObject(this);
	}

	protected override void OnEnter(EventArgs arg)
	{
		if (SelectedNode == null && !IsBroughtIntoView && (ShouldSelectNodeOnEnter || Focused))
		{
			SetDefaultSelectionOnEnter();
		}
		base.OnEnter(arg);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		InvalidateNodeCollection(SelectedNodes);
		InvalidateNodeCollection(m_hashHighlightedNodes.Values);
		base.OnGotFocus(e);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		UpdateTips(mouseHover: false);
		for (int i = 0; i < SelectedNodes.Count; i++)
		{
			TreeNodeAdv treeNodeAdv = SelectedNodes[i];
			if (treeNodeAdv.Visible || DesignModeInternal)
			{
				if (FullRowSelect)
				{
					Rectangle bounds = treeNodeAdv.Bounds;
					bounds.Inflate(treeNodeAdv.Bounds.X, 0);
					bounds.Width -= treeNodeAdv.Bounds.X;
					Invalidate(bounds);
				}
				else
				{
					Invalidate(treeNodeAdv.Bounds);
				}
			}
		}
		using (Graphics g = CreateGraphics())
		{
			if (KeepDottedSelection)
			{
				int j = 0;
				for (int count = SelectedNodes.Count; j < count; j++)
				{
					TreeNodeAdv treeNodeAdv2 = SelectedNodes[j];
					if (treeNodeAdv2.Visible || DesignModeInternal)
					{
						treeNodeAdv2.DrawFocusRect(g);
					}
				}
			}
		}
		base.OnLostFocus(e);
	}

	public override void Refresh()
	{
		Root.RecalculateAllDimensions();
		base.Refresh();
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		if (base.HScrollBar != null)
		{
			base.HScrollBar.BeginUpdate();
			base.HScrollBar.FetchScrollBar();
			base.HScrollBar.EndUpdate();
		}
		if (base.VScrollBar != null)
		{
			base.VScrollBar.BeginUpdate();
			base.VScrollBar.FetchScrollBar();
			base.VScrollBar.EndUpdate();
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		ControlStyles flag = ControlStyles.UserPaint | ControlStyles.Selectable | ControlStyles.UserMouse | ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer;
		SetStyle(flag, value: true);
		UpdateStyles();
	}

	protected override void WndProc(ref Message m)
	{
		bool flag = true;
		CheckOnColumnClicked(ref m);
		if (m_rgnCached != IntPtr.Zero)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(m_rgnCached);
			m_rgnCached = IntPtr.Zero;
		}
		if (m.Msg == 794)
		{
			InvalidateWindow();
		}
		else if (m.Msg == 133)
		{
			m_rgnCached = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		else if (m.Msg == 791)
		{
			if (((int)m.LParam & 2) != 0)
			{
				using Graphics pGraphics = Graphics.FromHdc(m.WParam);
				Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = default(Syncfusion.Runtime.InteropServices.NativeMethods.RECT);
				if (Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowRect((int)base.Handle, ref lpRect) != 0)
				{
					Rectangle pWindowInScreen = new Rectangle(lpRect.left, lpRect.top, lpRect.Width, lpRect.Height);
					Rectangle rectangle = new Rectangle(0, 0, lpRect.Width, lpRect.Height);
					NCPaintEventArgs ncEventArgs = new NCPaintEventArgs(pGraphics, rectangle, rectangle, pWindowInScreen, IntPtr.Zero);
					OnNCPaint(ncEventArgs);
				}
			}
		}
		else if (m.Msg == 160)
		{
			WmNcMouseMove(ref m);
		}
		else if (m.Msg == 123)
		{
			if ((int)m.LParam == -1)
			{
				if (WmContextMenuByKey(ref m))
				{
					return;
				}
			}
			else if (IsDraggedPastMouseDownPoint(PointToClient(Control.MousePosition)))
			{
				return;
			}
		}
		else if (m.Msg == 533)
		{
			WmCaptureChanged(ref m);
		}
		else if (m.Msg == 161)
		{
			flag = WmNcLButtonDown(ref m);
		}
		else if (m.Msg == 514)
		{
			if (ColumnsMovedMode)
			{
				base.Capture = false;
			}
		}
		else if (m.Msg == 132)
		{
			flag = !WmNcHitTest(ref m);
		}
		else if (m.Msg == 135)
		{
			m.Result = new IntPtr(1 | m.Result.ToInt32());
			flag = false;
		}
		else if (m.Msg == 515 && 1 == (int)m.WParam)
		{
			Point mousePos = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
			if (CheckToolTipClicked(mousePos))
			{
				m.Result = IntPtr.Zero;
				OnDoubleClick(EventArgs.Empty);
				OnMouseDoubleClick(new MouseEventArgs(MouseButtons.Left, 2, Control.MousePosition.X, Control.MousePosition.Y, 0));
				flag = false;
			}
		}
		if (flag)
		{
			base.WndProc(ref m);
		}
	}

	private void CheckOnColumnClicked(ref Message m)
	{
		if (m.Msg == 167 || m.Msg == 161 || m.Msg == 164)
		{
			WmNcButtonDown(ref m);
		}
		else if (m.Msg == 169 || m.Msg == 163 || m.Msg == 166)
		{
			WmNcButtonDblClk(ref m);
		}
		else if (m.Msg == 168 || m.Msg == 162 || m.Msg == 165)
		{
			WmNcButtonUp(ref m);
		}
	}

	private void WmNcButtonDblClk(ref Message m)
	{
		if (ShowColumnsHeader && HasColumns)
		{
			Point pt = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
			TreeColumnAdv columnByScreenPoint = GetColumnByScreenPoint(pt);
			if (columnByScreenPoint != null)
			{
				OnColumnDoubleClick(columnByScreenPoint);
				m_boolean[56] = true;
			}
		}
	}

	private bool WmNcHitTest(ref Message m)
	{
		bool result = false;
		if (ShowColumnsHeader)
		{
			Point pt = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
			pt.Offset(-m_iNcScreenOffsetX, -m_iNcScreenOffsetY);
			bool flag = false;
			if (HasColumns)
			{
				TreeColumnAdv[] visibleColumns = Columns.VisibleColumns;
				foreach (TreeColumnAdv treeColumnAdv in visibleColumns)
				{
					bool flag2 = treeColumnAdv.Bounds.Contains(pt);
					bool highlighted = treeColumnAdv.Highlighted;
					treeColumnAdv.Highlighted = flag2;
					if (flag2 && !highlighted)
					{
						OnColumnSelected(new TreeViewColumnSelectedChangedEventArgs(treeColumnAdv));
					}
					if (treeColumnAdv.Highlighted)
					{
						flag = true;
					}
				}
			}
			if (flag || pt.Y <= m_headerHeight)
			{
				m.Result = (IntPtr)18;
				result = true;
			}
		}
		return result;
	}

	private bool WmContextMenuByKey(ref Message m)
	{
		if (ContextMenu != null && SelectedNode != null)
		{
			Point menuPositionForKeyboardInvoke = ((IProvideCustomContextMenuPositionalInformation)this).GetMenuPositionForKeyboardInvoke();
			RMouseDownNode = SelectedNode;
			ContextMenu.Show(this, menuPositionForKeyboardInvoke);
			RMouseDownNode = null;
			return true;
		}
		return false;
	}

	private void WmCaptureChanged(ref Message m)
	{
		if (ColumnsMovedMode)
		{
			bool isMirrored = GetIsMirrored();
			TreeColumnAdv treeColumnAdv = ((Columns.VisibleColumns.Length > m_iColumnsPressedIndex) ? Columns.VisibleColumns[m_iColumnsPressedIndex] : null);
			ColumnsMovedMode = false;
			PointToScreen(Point.Empty);
			int num = ((!isMirrored) ? 1 : (-1));
			DrawReversibleLine(num * m_iColumnsOffset);
			if (treeColumnAdv != null)
			{
				treeColumnAdv.Width += m_iColumnsOffset;
				OnColumnResized(treeColumnAdv, treeColumnAdv.Width - m_iColumnsOffset, treeColumnAdv.Width);
			}
			if (isMirrored)
			{
				RefreshHScrollbar();
				base.HScrollBar.Value += Math.Min(m_iColumnsOffset, base.HScrollBar.Maximum - base.HScrollBar.Minimum - base.HScrollBar.LargeChange + 1);
			}
			m_iColumnsOffset = 0;
		}
	}

	private void WmNcMouseMove(ref Message m)
	{
		if (!ShowColumnsHeader || !HasColumns)
		{
			return;
		}
		Point point = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
		point.Offset(-m_iNcScreenOffsetX, -m_iNcScreenOffsetY);
		int num = 0;
		int num2 = 0;
		TreeColumnAdv[] visibleColumns = Columns.VisibleColumns;
		if (visibleColumns.Length <= 0)
		{
			return;
		}
		TreeColumnAdv treeColumnAdv = visibleColumns[0];
		if (treeColumnAdv.Bounds.Y > point.Y || treeColumnAdv.Bounds.Bottom < point.Y)
		{
			return;
		}
		int i = 0;
		for (int num3 = visibleColumns.Length; i < num3; i++)
		{
			TreeColumnAdv treeColumnAdv2 = visibleColumns[i];
			TreeColumnAdv treeColumnAdv3 = ((i + 1 != num3) ? visibleColumns[i + 1] : null);
			if (GetIsMirrored())
			{
				num = treeColumnAdv2.Bounds.X + Math.Min(2, treeColumnAdv2.Bounds.Width);
				num2 = ((i + 1 != num3) ? (treeColumnAdv3.Bounds.X + treeColumnAdv3.Width - 2) : (treeColumnAdv2.Bounds.X - 2));
			}
			else
			{
				num = ((i + 1 != num3) ? treeColumnAdv3.Bounds.X : (treeColumnAdv2.Bounds.X + treeColumnAdv2.Bounds.Width));
				num2 = treeColumnAdv2.Bounds.X + treeColumnAdv2.Bounds.Width - Math.Min(2, treeColumnAdv2.Bounds.Width);
			}
			if (num >= point.X && num2 <= point.X)
			{
				Cursor.Current = Cursors.VSplit;
				break;
			}
		}
	}

	private bool WmNcLButtonDown(ref Message m)
	{
		Point pt = PointToClient(new Point(Control.MousePosition.X, Control.MousePosition.Y));
		if (IsEditing && GetNodeAtPoint(pt) != null)
		{
			EndEdit(cancel: false);
			if (IsEditing)
			{
				return false;
			}
		}
		if (ShowColumnsHeader && HasColumns)
		{
			Point point = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
			point.Offset(-m_iNcScreenOffsetX, -m_iNcScreenOffsetY);
			TreeColumnAdv[] visibleColumns = Columns.VisibleColumns;
			if (visibleColumns.Length > 0)
			{
				TreeColumnAdv treeColumnAdv = visibleColumns[0];
				if (treeColumnAdv.Bounds.Y <= point.Y && treeColumnAdv.Bounds.Bottom >= point.Y)
				{
					int i = 0;
					for (int num = visibleColumns.Length; i < num; i++)
					{
						TreeColumnAdv treeColumnAdv2 = visibleColumns[i];
						TreeColumnAdv treeColumnAdv3 = ((i + 1 != num) ? visibleColumns[i + 1] : null);
						int num2;
						int num3;
						if (GetIsMirrored())
						{
							num2 = treeColumnAdv2.Bounds.X + Math.Min(2, treeColumnAdv2.Bounds.Width);
							num3 = ((i + 1 != num) ? (treeColumnAdv3.Bounds.X + treeColumnAdv3.Width - 2) : (treeColumnAdv2.Bounds.X - 2));
						}
						else
						{
							num2 = ((i + 1 != num) ? (treeColumnAdv3.Bounds.X + 2) : (treeColumnAdv2.Bounds.X + treeColumnAdv2.Bounds.Width));
							num3 = treeColumnAdv2.Bounds.X + treeColumnAdv2.Bounds.Width - Math.Min(2, treeColumnAdv2.Bounds.Width);
						}
						if (num2 >= point.X && num3 <= point.X)
						{
							base.Capture = true;
							m_iColumnsPressedIndex = i;
							m_iColumnsPressedPosition = point.X + m_iNcScreenOffsetX;
							PointToScreen(Point.Empty);
							DrawReversibleLine(0);
							ColumnsMovedMode = true;
							Cursor.Current = Cursors.VSplit;
							break;
						}
					}
				}
			}
		}
		return true;
	}

	private void WmNcButtonDown(ref Message m)
	{
		if (ShowColumnsHeader && HasColumns)
		{
			Point pt = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
			m_pressedColumn = GetColumnByScreenPoint(pt);
		}
	}

	private void WmNcButtonUp(ref Message m)
	{
		if (ShowColumnsHeader && HasColumns)
		{
			Point pt = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
			TreeColumnAdv columnByScreenPoint = GetColumnByScreenPoint(pt);
			if (columnByScreenPoint == m_pressedColumn && !m_boolean[56])
			{
				OnColumnClick(columnByScreenPoint);
			}
			m_boolean[56] = false;
		}
	}

	private void DrawReversibleLine(int offset)
	{
		Point point = PointToScreen(Point.Empty);
		Rectangle rectangle = new Rectangle(m_iColumnsPressedPosition + offset, point.Y, 1, base.ClientRectangle.Height);
		ControlPaint.DrawReversibleFrame(rectangle, Color.Gray, FrameStyle.Thick);
	}

	private TreeColumnAdv GetColumnByScreenPoint(Point pt)
	{
		Refresh();
		pt.Offset(-m_iNcScreenOffsetX, -m_iNcScreenOffsetY);
		foreach (TreeColumnAdv column in Columns)
		{
			if (column.Bounds.Contains(pt))
			{
				return column;
			}
		}
		return null;
	}

	protected override void OnNcCalcSize(ref Rectangle client)
	{
		if (ShowColumnsHeader)
		{
			client.Y += m_headerHeight;
			client.Height -= m_headerHeight;
		}
		base.OnNcCalcSize(ref client);
	}

	protected override void OnNCPaint(NCPaintEventArgs ncEventArgs)
	{
		base.OnNCPaint(ncEventArgs);
		Rectangle windowInScreenRectangle = ncEventArgs.WindowInScreenRectangle;
		if (windowInScreenRectangle.Width <= 0 || windowInScreenRectangle.Height <= 0)
		{
			return;
		}
		Bitmap bitmap = null;
		Graphics graphics = null;
		if (useDefaultDrawing)
		{
			graphics = ncEventArgs.Graphics;
		}
		else
		{
			bitmap = new Bitmap(windowInScreenRectangle.Width, windowInScreenRectangle.Height, ncEventArgs.Graphics);
			graphics = Graphics.FromImage(bitmap);
		}
		Rectangle displayRectangle = ncEventArgs.DisplayRectangle;
		m_iNcScreenOffsetX = windowInScreenRectangle.X;
		m_iNcScreenOffsetY = windowInScreenRectangle.Y;
		bool flag = ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && ThemedBorder;
		int bordersOffset = GetBordersOffset();
		int num = ((flag && BorderStyle == BorderStyle.Fixed3D) ? 2 : 0);
		int num2 = DrawHeader(graphics, displayRectangle, bordersOffset + num);
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(displayRectangle.Location, new Size(bordersOffset, displayRectangle.Height)),
			new Rectangle(displayRectangle.Location, new Size(displayRectangle.Width, bordersOffset)),
			new Rectangle(displayRectangle.Width - bordersOffset, displayRectangle.Y, bordersOffset, displayRectangle.Height),
			new Rectangle(displayRectangle.X, displayRectangle.Height - bordersOffset, displayRectangle.Width, bordersOffset)
		};
		if (flag)
		{
			for (int i = 0; i < 4; i++)
			{
				ThemedDrawing.Edit.DrawThemeBackground(graphics, 1, 1, displayRectangle, array[i]);
			}
		}
		else
		{
			using (Brush brush = new SolidBrush(BackColor))
			{
				for (int j = 0; j < 4; j++)
				{
					graphics.FillRectangle(brush, array[j]);
				}
			}
			if (BorderSides != Border3DSide.All)
			{
				if (BorderSides != Border3DSide.Middle)
				{
					ControlDrawing controlDrawing = new ControlDrawing();
					controlDrawing.DrawBorder(graphics, displayRectangle, BorderStyle, Border3DStyle, BorderSingle, BorderColor, BorderSides);
				}
			}
			else
			{
				ControlDrawing controlDrawing2 = new ControlDrawing();
				controlDrawing2.DrawBorder(graphics, displayRectangle, BorderStyle, Border3DStyle, BorderSingle, BorderColor);
			}
		}
		if (!UseDefaultDrawing)
		{
			ncEventArgs.Graphics.DrawImage(bitmap, 0, 0);
			graphics.Dispose();
			bitmap.Dispose();
		}
		if (ncEventArgs.ClipRegion != IntPtr.Zero)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(ncEventArgs.ClipRegion);
		}
		ncEventArgs.ClipRegion = Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(windowInScreenRectangle.Left + bordersOffset, windowInScreenRectangle.Top + bordersOffset + ((!flag || BorderStyle != BorderStyle.Fixed3D) ? num2 : 0), windowInScreenRectangle.Right - bordersOffset, windowInScreenRectangle.Bottom - bordersOffset);
	}

	protected void InvalidateWindow()
	{
		if (base.IsHandleCreated)
		{
			NativeMethodsHelper.RedrawWindow(base.Handle, 1025);
		}
	}

	protected void InvalidateNodeCollection(ICollection col)
	{
		foreach (TreeNodeAdv item in col)
		{
			if (item.Visible || DesignModeInternal)
			{
				Rectangle rc = new Rectangle(TreeAllColumnsRectangle.X, item.Bounds.Y, TreeAllColumnsRectangle.Width, item.Bounds.Height);
				Invalidate(rc);
			}
		}
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle rcInScreen)
	{
		NCPaintEventArgs e2 = new NCPaintEventArgs(e.Graphics, e.ClipRectangle, displayRect, rcInScreen, IntPtr.Zero);
		OnNCPaint(e2);
		return e2.ClipRegion;
	}

	protected virtual int DrawHeader(Graphics g, Rectangle bounds, int bordersOffset)
	{
		int result = 0;
		bool isMirrored = GetIsMirrored();
		int num = ((!isMirrored) ? 1 : (-1));
		int num2 = (isMirrored ? bounds.Right : bounds.X) + num * bordersOffset;
		if (ShowColumnsHeader)
		{
			result = m_headerHeight;
			BrushPaint.FillRectangle(g, new Rectangle(bounds.X + bordersOffset, bounds.Y + bordersOffset, bounds.Width - bordersOffset * 2, result), m_HeaderBackground);
		}
		if (HasColumns)
		{
			if (isMirrored)
			{
				if (HorizontalScrollBar)
				{
					RefreshHScrollbar();
				}
				num2 += base.HScrollBar.Maximum - base.HScrollBar.Minimum - base.HScrollBar.LargeChange - HScrollPos + 1;
			}
			else
			{
				num2 -= HScrollPos;
			}
			TreeColumnAdv[] visibleColumns = Columns.VisibleColumns;
			foreach (TreeColumnAdv treeColumnAdv in visibleColumns)
			{
				if (isMirrored)
				{
					num2 -= treeColumnAdv.Width;
				}
				treeColumnAdv.UpdateColumnLocation(num2, bounds.Y + bordersOffset);
				if (ShowColumnsHeader)
				{
					treeColumnAdv.Draw(g, num2, bounds.Y + bordersOffset);
				}
				if (!isMirrored)
				{
					num2 += treeColumnAdv.Width;
				}
			}
		}
		return result;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		DrawBackground(e);
		Draw(e);
		Point point = PointToScreen(base.ClientRectangle.Location);
		m_iNcScreenOffsetX = point.X;
		m_iNcScreenOffsetY = point.Y - HeaderHeight - 2 - GetBordersOffset();
		if (NeedUpdateEditTop)
		{
			NeedUpdateEditTop = false;
			if (m_labelEditor.Visible && m_activeNode != null && m_labelEditor.Top != m_activeNode.Bounds.Top)
			{
				m_labelEditor.Top = m_activeNode.Bounds.Top;
			}
		}
	}

	[DocumentationExclude]
	protected virtual void DrawBackground(PaintEventArgs e)
	{
		Rectangle r = base.ClientRectangle;
		if (r.Height <= 0 || r.Width <= 0)
		{
			return;
		}
		bool flag = XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed;
		if (!ThemesEnabled || !flag || IgnoreThemeBackground)
		{
			if (BackgroundColor != BrushInfo.Empty)
			{
				if (IsHorizontalGradient)
				{
					int num = (HorizontalScrollBar ? (-HScrollPos) : 0);
					int num2 = 0;
					int num3 = 0;
					num3 = base.HScrollBar.Maximum + base.Width;
					int num4 = r.Height;
					r = new Rectangle(num, num2, num3, num4);
				}
				BrushPaint.FillRectangle(e.Graphics, r, BackgroundColor);
			}
		}
		else
		{
			ThemedDrawing.Edit.DrawThemeBackground(e.Graphics, 1, base.Enabled ? 1 : 4, new Rectangle(-2, -2, r.Width + 4, base.Height + 4));
		}
		DrawBackgroundColumns(e);
	}

	[DocumentationExclude]
	protected virtual void DrawBackgroundColumns(PaintEventArgs e)
	{
		if (!HasColumns)
		{
			return;
		}
		Rectangle clientRectangle = base.ClientRectangle;
		bool isMirrored = GetIsMirrored();
		int num = (isMirrored ? clientRectangle.Right : clientRectangle.X);
		num += (isMirrored ? 1 : (-1)) * HScrollPos;
		Region clip = e.Graphics.Clip;
		TreeColumnAdv[] visibleColumns = Columns.VisibleColumns;
		foreach (TreeColumnAdv treeColumnAdv in visibleColumns)
		{
			if (isMirrored)
			{
				num = treeColumnAdv.Bounds.X;
			}
			if (treeColumnAdv.AreaBackground != BrushInfo.Empty)
			{
				Rectangle rectangle = new Rectangle(num, clientRectangle.Y, treeColumnAdv.Width, clientRectangle.Height);
				if (clip.IsVisible(rectangle))
				{
					BrushPaint.FillRectangle(e.Graphics, rectangle, treeColumnAdv.AreaBackground);
				}
			}
			if (!isMirrored)
			{
				num += treeColumnAdv.Width;
			}
		}
	}

	[DocumentationExclude]
	protected virtual void Draw(PaintEventArgs e)
	{
		if (Root == null)
		{
			return;
		}
		if (!Root.HasNodes)
		{
			VerticallScrollBar = false;
			if (!m_bScrollersRefreshed)
			{
				RefreshVScrollbar();
				RefreshHScrollbar();
				m_bScrollersRefreshed = true;
			}
			return;
		}
		m_bScrollersRefreshed = false;
		TreeNodeAdv treeNodeAdv = PointToNode(base.ClientRectangle.Location);
		if (treeNodeAdv == null)
		{
			return;
		}
		Point mousePos = PointToClient(Control.MousePosition);
		bool mouseDown = (Control.MouseButtons & MouseButtons.Left) == MouseButtons.Left;
		int num = NodeToPoint(treeNodeAdv).Y;
		int bottom = base.ClientRectangle.Bottom;
		RefreshVScrollbar(treeNodeAdv, NodeToPoint(treeNodeAdv).Y);
		RefreshHScrollbar();
		if (treeNodeAdv == null)
		{
			return;
		}
		TreeNodeAdv lastVisibleNode = LastVisibleNode;
		TreeNodeAdv treeNodeAdv2 = treeNodeAdv;
		ArrayList arrayList = new ArrayList();
		while (num < bottom && treeNodeAdv2 != null)
		{
			if (NeedUpdateCustomControls)
			{
				arrayList.Add(treeNodeAdv2);
			}
			if (!HasColumns || Columns[0].Visible)
			{
				Region clip = e.Graphics.Clip;
				Rectangle treeColumnRectangle = TreeColumnRectangle;
				if (GetIsMirrored() && FullRowSelect && VerticallScrollBar)
				{
					treeColumnRectangle.X = Columns[0].Bounds.X;
				}
				Region region = new Region(treeColumnRectangle);
				e.Graphics.Clip = region;
				DrawNode(e.Graphics, e.ClipRectangle, treeNodeAdv2, num, Point.Empty, mouseDown: false, background: true);
				DrawNode(e.Graphics, e.ClipRectangle, treeNodeAdv2, num, mousePos, mouseDown, background: false);
				e.Graphics.Clip = clip;
				region.Dispose();
			}
			DrawNodeSubItems(e.Graphics, treeNodeAdv2, num);
			num += treeNodeAdv2.Height;
			treeNodeAdv2 = treeNodeAdv2.NextVisibleNode;
		}
		if (ShowLines && ((lastVisibleNode != null && !HasColumns) || Columns[0].Visible))
		{
			Region clip2 = e.Graphics.Clip;
			Region region2 = new Region(TreeColumnRectangle);
			region2.Intersect(ExcludedDrawingRegion);
			e.Graphics.Clip = region2;
			DrawVerticalLines(e.Graphics, treeNodeAdv, Root, 0, lastVisibleNode.TreeRowIndex);
			ExcludedDrawingRegion.MakeInfinite();
			e.Graphics.Clip = clip2;
			region2.Dispose();
		}
		UpdateCustomControls(e, arrayList);
	}

	protected virtual void DrawNode(Graphics g, Rectangle clip, TreeNodeAdv node, int y, Point mousePos, bool mouseDown, bool background)
	{
		int nWidth = base.ClientRectangle.Width - m_gutterSpace + base.HScrollBar.Value;
		int num = 0;
		bool isMirrored = GetIsMirrored();
		num = ((!isMirrored) ? (m_gutterSpace - base.HScrollBar.Value) : MirrorHorizontalPosition(m_gutterSpace, nWidth));
		node.SetBounds(new Rectangle(num, y, nWidth, node.Height));
		bool selected = false;
		bool active = false;
		bool hotTrack = false;
		if (!PreparingDragCueBitmap)
		{
			selected = m_selectedNodes.Contains(node) && (!HideSelection || Focused);
			active = node == m_activeNode;
			hotTrack = HotTracking && !MouseLeaved && node.TextAndImageBounds.Contains(PointToClient(Control.MousePosition)) && !Dragging;
		}
		int num2 = node.Bounds.X;
		int num3 = 3 + node.Level * Indent + node.Width;
		if (isMirrored)
		{
			num2 = MirrorHorizontalPosition(num2, num3);
		}
		int nNodeRight = num2 + num3;
		TreeNodeAdv mouseDownNode = GetMouseDownNode();
		if (background)
		{
			DrawNodeBackground(g, node, y, mouseDownNode, clip, active, selected, hotTrack);
		}
		else
		{
			DrawNodeInternal(g, node, mouseDownNode, clip, active, selected, hotTrack, mouseDown, mousePos, num2, nNodeRight);
		}
	}

	protected virtual void DrawNodeSubItems(Graphics g, TreeNodeAdv node, int offsetY)
	{
		bool isMirrored = GetIsMirrored();
		if (!HasColumns)
		{
			return;
		}
		int bordersOffset = GetBordersOffset();
		int num = ((VerticallScrollBar && isMirrored) ? SystemInformation.VerticalScrollBarWidth : 0);
		TreeNodeAdv mouseDownNode = GetMouseDownNode();
		Rectangle bounds = Columns[0].Bounds;
		int num2 = (isMirrored ? bounds.X : bounds.Right) - bordersOffset - num;
		Rectangle selectionBounds = GetSelectionBounds(offsetY, isMirrored, node);
		if (!Columns[0].Visible)
		{
			num2 = (isMirrored ? base.ClientRectangle.Width : 0);
		}
		int i = 1;
		for (int count = Columns.Count; i < count; i++)
		{
			TreeColumnAdv treeColumnAdv = Columns[i];
			if (!treeColumnAdv.Visible)
			{
				continue;
			}
			if (isMirrored)
			{
				num2 = treeColumnAdv.Bounds.X;
			}
			if (i < node.SubItems.Count && node.SubItems[i].Visible)
			{
				TreeNodeAdvSubItem treeNodeAdvSubItem = node.SubItems[i];
				if (g.Clip.IsVisible(num2, offsetY, treeColumnAdv.Width, treeNodeAdvSubItem.Height))
				{
					treeNodeAdvSubItem.Draw(g, num2, offsetY, mouseDownNode, selectionBounds);
				}
			}
			else if (FullRowSelect)
			{
				Rectangle bounds2 = new Rectangle(num2, offsetY, treeColumnAdv.Width, node.Height);
				DrawBackgroundForEmptyColumnCell(g, selectionBounds, bounds2, node, mouseDownNode);
			}
			if (!isMirrored)
			{
				num2 += treeColumnAdv.Width;
			}
		}
		if (FullRowSelect && node == ActiveNode)
		{
			ControlPaint.DrawFocusRectangle(g, selectionBounds, node.TextColor, node.Background.BackColor);
		}
	}

	protected virtual void DrawBackgroundForEmptyColumnCell(Graphics g, Rectangle selectionBounds, Rectangle bounds, TreeNodeAdv node, TreeNodeAdv mouseDownNode)
	{
		BrushInfo brush = BrushInfo.Empty;
		bool flag = SelectedNodes.Contains(node) && (!HideSelection || Focused);
		if (flag && (mouseDownNode == null || SelectedNodes.Contains(mouseDownNode)))
		{
			if (Focused)
			{
				brush = SelectedNodeBackground.Clone();
			}
			else if (!HideSelection)
			{
				brush = InactiveSelectedNodeBackground.Clone();
			}
		}
		else
		{
			flag = false;
		}
		if (node == mouseDownNode)
		{
			flag = true;
			brush = SelectedNodeBackground.Clone();
		}
		if (flag)
		{
			Region clip = g.Clip;
			using (Region region = new Region(bounds))
			{
				region.Intersect(clip);
				g.Clip = region;
				BrushPaint.FillRectangle(g, selectionBounds, brush);
			}
			g.Clip = clip;
		}
	}

	protected virtual void DrawNodeInternal(Graphics g, TreeNodeAdv node, TreeNodeAdv mouseDownNode, Rectangle clip, bool active, bool selected, bool hotTrack, bool mouseDown, Point mousePos, int nNodeLeft, int nNodeRight)
	{
		int num = (GetIsMirrored() ? HScrollPos : 0);
		if (!active && !OwnerDrawNodes && ((nNodeLeft > clip.Left + num && nNodeLeft > clip.Right + num) || (nNodeRight < clip.Left + num && nNodeRight < clip.Right + num)))
		{
			return;
		}
		if (selected && mouseDownNode != null && !m_selectedNodes.Contains(mouseDownNode))
		{
			selected = false;
		}
		if (node == mouseDownNode)
		{
			selected = true;
		}
		bool selected2 = node == m_highlightedNode || selected;
		if (!selected)
		{
			if (m_highlightedNode != null)
			{
				if (m_highlightedNode.Nodes.Count == 0)
				{
					selected2 = false;
				}
			}
			else
			{
				selected2 = false;
			}
		}
		Point textLocation = new Point(node.TextBounds.Left, node.TextBounds.Y);
		Color foreColor = node.GetForeColor(selected, hotTrack);
		int level = node.Level - 1;
		TreeNodeAdvPaintEventArgs e = new TreeNodeAdvPaintEventArgs(node, g, node.Bounds, textLocation, level, m_parentIndent, selected2, active, FullRowSelect, hotTrack, foreColor);
		if ((m_paintFilter == null || !m_paintFilter.OnBeforeNodePaint(e)) && OwnerDrawNodes)
		{
			OnBeforeNodePaint(e);
		}
		if (!e.Handled)
		{
			node.Draw(ThemedDrawing.TreeView, ThemedDrawing.Button, m_penLine, mousePos, mouseDown, e);
		}
		if (OwnerDrawNodes)
		{
			OnAfterNodePaint(e);
		}
		if (m_paintFilter != null)
		{
			m_paintFilter.OnAfterNodePaint(e);
		}
	}

	protected virtual void DrawNodeBackground(Graphics g, TreeNodeAdv node, int offsetY, TreeNodeAdv mouseDownNode, Rectangle clip, bool active, bool selected, bool hotTrack)
	{
		BrushInfo brushInfo = BrushInfo.Empty;
		if (selected && (mouseDownNode == null || m_selectedNodes.Contains(mouseDownNode)))
		{
			if (Focused)
			{
				brushInfo = SelectedNodeBackground.Clone();
			}
			else if (!HideSelection)
			{
				brushInfo = InactiveSelectedNodeBackground.Clone();
			}
		}
		else
		{
			selected = false;
		}
		if (node == mouseDownNode)
		{
			selected = true;
			brushInfo = SelectedNodeBackground.Clone();
		}
		TreeNodeAdvPaintBackgroundEventArgs e = new TreeNodeAdvPaintBackgroundEventArgs(node, g, selected, active, FullRowSelect, hotTrack, brushInfo);
		if ((m_paintFilter == null || !m_paintFilter.OnNodeBackgroundPaint(e)) && OwnerDrawNodesBackground)
		{
			OnNodeBackgroundPaint(e);
		}
		if (e.Handled)
		{
			return;
		}
		Rectangle rectangle = Rectangle.Empty;
		rectangle = ((!FullRowSelect) ? new Rectangle(0, node.Bounds.Y, node.Bounds.Width + node.Bounds.X, node.Bounds.Height) : GetSelectionBounds(offsetY, GetIsMirrored(), node));
		BrushPaint.FillRectangle(g, rectangle, node.Background);
		if (e.BrushInfo.IsEmpty || IsEditing)
		{
			return;
		}
		Rectangle r = (FullRowSelect ? rectangle : node.TextBounds);
		if (r.IntersectsWith(clip))
		{
			if (!FullRowSelect || !selected)
			{
				r.Intersect(TreeColumnRectangle);
			}
			BrushPaint.FillRectangle(g, r, e.BrushInfo);
		}
	}

	protected virtual void DrawVerticalLines(Graphics g, TreeNodeAdv topCRNode, TreeNodeAdv node, int rowIndex, int lastNode)
	{
		int num = node.VisibleNodeCount;
		if ((VerticallScrollBar && rowIndex + num <= base.VScrollBar.Value) || (VerticallScrollBar && rowIndex > lastNode) || !node.HasNodes || (!node.Visible && !DesignModeInternal) || !node.Expanded)
		{
			return;
		}
		if (node.HasNodes)
		{
			TreeNodeAdv lastVisibleNode = node.LastVisibleNode;
			if (lastVisibleNode != null)
			{
				num -= lastVisibleNode.VisibleNodeCount - ((lastVisibleNode.Visible || DesignModeInternal) ? 1 : 0);
			}
		}
		TreeNodeAdv treeNodeAdv = topCRNode;
		if (treeNodeAdv.Level <= node.Level)
		{
			treeNodeAdv = node.FirstNode;
		}
		else
		{
			while (treeNodeAdv != null && treeNodeAdv.Parent != node)
			{
				treeNodeAdv = treeNodeAdv.Parent;
			}
			if (treeNodeAdv == null)
			{
				treeNodeAdv = node.FirstNode;
			}
		}
		if (!VerticallScrollBar || rowIndex + num > base.VScrollBar.Value)
		{
			int level = node.Level;
			if (level != 0 || ShowRootLines)
			{
				bool isMirrored = GetIsMirrored();
				int num2 = level * Indent + node.PlusMinus.Width / 2 + m_gutterSpace;
				if (base.HScrollBar.Enabled && !isMirrored)
				{
					num2 -= base.HScrollBar.Value;
				}
				if (level != 0 && !NeedRootLinesSpace)
				{
					num2 -= Indent;
					num2 += node.PlusMinus.Width / 2;
				}
				if (isMirrored)
				{
					num2 = MirrorHorizontalPosition(num2, 1);
				}
				TreeNodeAdv treeNodeAdv2 = node.LastVisibleNode;
				if (treeNodeAdv2 != null)
				{
					int i = treeNodeAdv.Index;
					for (int count = node.Nodes.Count; i < count; i++)
					{
						TreeNodeAdv treeNodeAdv3 = node.Nodes[i];
						int treeRowIndex = treeNodeAdv3.TreeRowIndex;
						if (VerticallScrollBar && treeRowIndex > lastNode && (treeNodeAdv3.Visible || DesignModeInternal))
						{
							treeNodeAdv2 = treeNodeAdv3;
							break;
						}
						if (TransparentControls && treeNodeAdv3.ShouldDrawPlusMinus())
						{
							Rectangle rect = new Rectangle(num2 - 2, NodeToPoint(treeNodeAdv3).Y + (treeNodeAdv3.Height - treeNodeAdv3.PlusMinus.Height) / 2, 4, treeNodeAdv3.PlusMinus.Height);
							g.SetClip(rect, CombineMode.Exclude);
						}
					}
					int num3 = 0;
					if ((level == 0 && VScrollPos == 1) || node.TreeRowIndex >= VScrollPos)
					{
						num3 = ((level == 0 && VScrollPos == 1) ? (NodeToPoint(node.FirstNode).Y + node.FirstNode.Height / 2) : (NodeToPoint(node).Y + node.Height));
					}
					int num4 = NodeToPoint(treeNodeAdv2).Y + treeNodeAdv2.Height / 2;
					g.DrawLine(m_penLine, new Point(num2, num3), new Point(num2, num4));
					if (TransparentControls)
					{
						g.ResetClip();
					}
				}
			}
		}
		int count2 = node.Nodes.Count;
		for (int j = node.Nodes.IndexOf(treeNodeAdv); j < count2; j++)
		{
			int num5 = NodeToRowIndex(node.Nodes[j]);
			if (VerticallScrollBar && num5 > lastNode)
			{
				break;
			}
			DrawVerticalLines(g, topCRNode, node.Nodes[j], num5, lastNode);
		}
	}

	protected virtual void OnPrint(object sender, PrintPageEventArgs e)
	{
		Printing = true;
		Invalidate(invalidateChildren: true);
		e.Graphics.TranslateTransform(e.MarginBounds.X, e.MarginBounds.Y, MatrixOrder.Append);
		OnPaint(new PaintEventArgs(e.Graphics, base.ClientRectangle));
		Printing = false;
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		bool flag = false;
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && !IgnoreThemeBackground)
		{
			int left = pevent.ClipRectangle.Left;
			int top = pevent.ClipRectangle.Top;
			int num = pevent.ClipRectangle.Width;
			int num2 = pevent.ClipRectangle.Height;
			if (left != 0 || top != 0 || num != base.ClientRectangle.Width || num2 != base.ClientRectangle.Height)
			{
				flag = PaintChildrenBackground(pevent.Graphics, this, pevent.ClipRectangle);
			}
			flag = false;
		}
		if (!flag)
		{
			base.OnPaintBackground(pevent);
		}
	}

	[DocumentationExclude]
	protected virtual void ThemedPaintBackground(Graphics graphics, Rectangle rect, Rectangle clip)
	{
		ThemedDrawing.Edit.DrawThemeBackground(graphics, 1, base.Enabled ? 1 : 4, rect, clip);
	}

	protected virtual bool PaintChildrenBackground(Graphics graphics, Control control, Rectangle clipRect)
	{
		foreach (Control control2 in control.Controls)
		{
			Rectangle r = new Rectangle(control2.Location, control2.Size);
			r = control2.Parent.RectangleToScreen(r);
			if (RectangleToClient(r).Contains(clipRect))
			{
				if (PaintChildrenBackground(graphics, control2, clipRect))
				{
					return true;
				}
				Rectangle treeColumnRectangle = TreeColumnRectangle;
				treeColumnRectangle = RectangleToScreen(treeColumnRectangle);
				treeColumnRectangle = control2.RectangleToClient(treeColumnRectangle);
				clipRect = RectangleToScreen(clipRect);
				clipRect = control2.RectangleToClient(clipRect);
				ThemedPaintBackground(graphics, treeColumnRectangle, clipRect);
				return true;
			}
		}
		return false;
	}

	private void UpdateCustomControls(PaintEventArgs e, ArrayList drawedNodes)
	{
		if (!NeedUpdateCustomControls)
		{
			return;
		}
		NeedUpdateCustomControls = false;
		foreach (DictionaryEntry item in CustomControlCollection)
		{
			Control control = (Control)item.Key;
			TreeNodeAdv treeNodeAdv = (TreeNodeAdv)item.Value;
			if (drawedNodes.Contains(item.Value))
			{
				control.Visible = true;
				treeNodeAdv.UpdateCustomConrtol();
			}
			else if (treeNodeAdv.Bounds.Y >= e.ClipRectangle.Y)
			{
				control.Visible = false;
			}
		}
	}

	protected int GetBordersOffset()
	{
		int result = ((m_borderStyle != BorderStyle.Fixed3D) ? 1 : 2);
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && ThemedBorder)
		{
			result = 1;
		}
		if (m_borderStyle == BorderStyle.None)
		{
			result = 0;
		}
		return result;
	}

	private Rectangle GetColumnsRect(bool isAll)
	{
		Rectangle result = base.ClientRectangle;
		if (HasColumns)
		{
			int num = (isAll ? Columns.GetTotalColumnsWidth(visible: true) : Columns[0].Width);
			if (GetIsMirrored())
			{
				int num2 = base.HScrollBar.Maximum - base.HScrollBar.Minimum - base.HScrollBar.LargeChange + 1 - HScrollPos;
				result = new Rectangle(result.Right - num + num2, result.Y, num, result.Height);
			}
			else
			{
				result = new Rectangle(result.X - HScrollPos, result.Y, num, result.Height);
			}
		}
		return result;
	}

	private void DoLayout()
	{
	}

	private void PrepareEditor()
	{
		m_strLastText = m_activeNode.Text;
		m_labelEditor.Visible = true;
		IsEditEnding = true;
		m_labelEditor.Focus();
		IsEditEnding = false;
		m_labelEditor.SelectAll();
	}

	private void ShowEditor()
	{
		m_labelEditor.Tag = m_activeNode.Text;
		m_labelEditor.Font = m_activeNode.Font;
		m_textSelectionLength = m_labelEditor.SelectionLength;
		m_selectionStart = m_labelEditor.SelectionStart;
	}

	private void HideEditor()
	{
		IgnoreLeave = true;
		m_labelEditor.Hide();
		IgnoreLeave = false;
	}

	private void LabelEditStartTimer_Tick(object sender, EventArgs e)
	{
		if (ActiveNode == m_activeNodeForLabelEdit)
		{
			LabelEditStartTimer = null;
			BeginEdit(ActiveNode);
		}
	}

	private void labelEditor_KeyUp(object sender, KeyEventArgs e)
	{
		m_textSelectionLength = m_labelEditor.SelectionLength;
		m_selectionStart = m_labelEditor.SelectionStart;
	}

	private void labelEditor_KeyDown(object sender, KeyEventArgs e)
	{
		m_textSelectionLength = m_labelEditor.SelectionLength;
		m_selectionStart = m_labelEditor.SelectionStart;
		switch (e.KeyData)
		{
		case Keys.Return:
			if (IsEditing)
			{
				EndEdit(cancel: false);
			}
			break;
		case Keys.Escape:
			if (IsEditing)
			{
				CancelEdit = true;
				EndEdit(cancel: true);
				CancelEdit = false;
			}
			break;
		}
	}

	private void labelEditor_TextChanged(object sender, EventArgs e)
	{
		if (m_labelEditor.Text != m_strLastText)
		{
			TreeNodeAdvCancelableEditEventArgs e2 = new TreeNodeAdvCancelableEditEventArgs(m_activeNode, m_labelEditor.Text);
			OnNodeEditorValidateString(e2);
			if (e2.Cancel)
			{
				m_labelEditor.Text = m_strLastText;
				m_labelEditor.SelectionStart = ((m_labelEditor.SelectionStart == -1) ? m_labelEditor.Text.Length : m_selectionStart);
				m_labelEditor.SelectionLength = m_textSelectionLength;
			}
			else
			{
				m_strLastText = m_labelEditor.Text;
			}
			Graphics graphics = CreateGraphics();
			int num = Math.Min(graphics.MeasureString(m_labelEditor.Text, m_labelEditor.Font).ToSize().Width + 15, TreeColumnRectangle.Width - m_activeNode.TextBounds.X);
			graphics.Dispose();
			if (num < 50)
			{
				num = 50;
			}
			m_labelEditor.Width = num;
			m_strLastText = m_labelEditor.Text;
		}
	}

	private void labelEditor_MouseUp(object sender, MouseEventArgs e)
	{
		m_textSelectionLength = m_labelEditor.SelectionLength;
		m_selectionStart = m_labelEditor.SelectionStart;
	}

	private void labelEditor_LostFocus(object sender, EventArgs e)
	{
		if (!IgnoreLeave && ClientHeight > 0 && !IsEditEnding)
		{
			EndEdit(cancel: false);
		}
	}

	private void labelEditor_Leave(object sender, EventArgs e)
	{
		if (!IgnoreLeave)
		{
			EndEdit();
		}
	}

	private void ScrollWindow(int pValue)
	{
		int yAmount = ((m_vScrollPos > pValue) ? 1 : (-1));
		m_vScrollPos = pValue;
		ScrollWindow(0, yAmount, base.ClientRectangle, base.ClientRectangle, allowUpdate: true);
	}

	private void RaiseNodeStateImageList()
	{
		if (this.NodeStateImageListChanged != null)
		{
			this.NodeStateImageListChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseDefaultExpandImageIndexChanged()
	{
		if (this.DefaultExpandImageIndexChanged != null)
		{
			this.DefaultExpandImageIndexChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseDefaultCollapseImageIndexChanged()
	{
		if (this.DefaultCollapseImageIndexChanged != null)
		{
			this.DefaultCollapseImageIndexChanged(this, EventArgs.Empty);
		}
	}

	private void UpdateColumnsHeight()
	{
		if (!HasColumns)
		{
			return;
		}
		foreach (TreeColumnAdv column in Columns)
		{
			column.Height = m_headerHeight;
		}
	}

	private Bitmap ExtractSelectedBoundsFromBmp(Bitmap bmp, TreeNodeAdv[] tnas)
	{
		Rectangle selectedNodesRectangle = GetSelectedNodesRectangle(tnas);
		TreeNodeAdv treeNodeAdv = ((tnas != null && tnas.Length > 0) ? tnas[0].Parent : null);
		if (base.HScrollBar.Enabled)
		{
			selectedNodesRectangle.X += base.HScrollBar.Value;
		}
		Rectangle[] array = new Rectangle[tnas.Length];
		int minIndex = GetMinIndex(tnas);
		int maxIndex = GetMaxIndex(tnas);
		int i = minIndex;
		int num = 0;
		for (; i <= maxIndex; i++)
		{
			if (treeNodeAdv != null && SelectedNodes.Contains(treeNodeAdv.Nodes[i]))
			{
				Point location = new Point(0, ItemHeight * (i - minIndex));
				Size size = new Size(selectedNodesRectangle.Width, ItemHeight);
				if (base.HScrollBar.Enabled)
				{
					location.X += base.HScrollBar.Value;
				}
				ref Rectangle reference = ref array[num++];
				reference = new Rectangle(location, size);
			}
		}
		Bitmap bitmap = new Bitmap(selectedNodesRectangle.Width, selectedNodesRectangle.Height);
		Graphics graphics = Graphics.FromImage(bitmap);
		if (BackgroundColor != BrushInfo.Empty)
		{
			BrushPaint.FillRectangle(graphics, new Rectangle(0, 0, bitmap.Width, bitmap.Height), BackgroundColor);
		}
		else
		{
			graphics.FillRectangle(SystemBrushes.Window, 0, 0, selectedNodesRectangle.Width, selectedNodesRectangle.Height);
		}
		for (int j = 0; j < SelectedNodes.Count; j++)
		{
			TreeNodeAdv treeNodeAdv2 = SelectedNodes[j];
			graphics.DrawString(treeNodeAdv2.Text, treeNodeAdv2.Font, Brushes.Black, array[j]);
		}
		graphics.Dispose();
		return bitmap;
	}

	protected Rectangle GetSelectedNodesRectangle(TreeNodeAdv[] tnas)
	{
		Rectangle result = Rectangle.Empty;
		if (tnas != null && tnas.Length > 0)
		{
			TreeNodeAdv treeNodeAdv = tnas[0].Parent;
			int minIndex = GetMinIndex(tnas);
			int maxIndex = GetMaxIndex(tnas);
			int num = tnas[0].Width;
			for (int i = 1; i < tnas.Length; i++)
			{
				if (tnas[i].Width > num)
				{
					num = tnas[i].Width;
				}
			}
			Point location = treeNodeAdv?.Nodes[minIndex].Bounds.Location ?? Point.Empty;
			Size size = new Size(num, (maxIndex - minIndex + 1) * ItemHeight);
			result = new Rectangle(location, size);
		}
		return result;
	}

	private int GetMinIndex(TreeNodeAdv[] tnas)
	{
		int index = tnas[0].Index;
		for (int i = 1; i < tnas.Length; i++)
		{
			if (tnas[i].Index < index)
			{
				index = tnas[i].Index;
			}
		}
		return index;
	}

	private int GetMaxIndex(TreeNodeAdv[] tnas)
	{
		int index = tnas[0].Index;
		for (int i = 1; i < tnas.Length; i++)
		{
			if (tnas[i].Index > index)
			{
				index = tnas[i].Index;
			}
		}
		return index;
	}

	internal void rootMaxXChanged(int maxX)
	{
		if (HScroll)
		{
			int num = base.Width;
			if (VerticallScrollBar)
			{
				num -= SystemInformation.VerticalScrollBarWidth;
				num -= 3;
			}
			num = Math.Max(0, num);
			if (!InHScroll && maxX > num && !HasColumns)
			{
				base.HScrollBar.Minimum = 0;
				base.HScrollBar.Maximum = maxX;
				base.HScrollBar.LargeChange = num;
			}
			if (maxX > num && Root.HasNodes)
			{
				base.HScrollBar.Enabled = true;
				HorizontalScrollBar = true;
			}
		}
	}

	[DocumentationExclude]
	internal bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	[DocumentationExclude]
	protected int MirrorHorizontalPosition(int nX, int nWidth)
	{
		int num = ((m_borderStyle != BorderStyle.Fixed3D) ? 1 : 2);
		int num2 = 2 * num + nWidth + nX;
		if (HorizontalScrollBar)
		{
			num2 -= base.HScrollBar.Maximum - base.HScrollBar.Minimum - base.HScrollBar.LargeChange - base.HScrollBar.Value + 1;
		}
		if (VerticallScrollBar && !Office2007ScrollBars)
		{
			num2 += SystemInformation.VerticalScrollBarWidth;
		}
		return base.Width - num2;
	}

	private void RefreshHScrollbar()
	{
		int num = 0;
		if (Columns != null && Columns.VisibleColumns.Length > 0)
		{
			TreeColumnAdv[] visibleColumns = Columns.VisibleColumns;
			foreach (TreeColumnAdv treeColumnAdv in visibleColumns)
			{
				num += treeColumnAdv.Width;
			}
		}
		else if (Root != null)
		{
			num = Root.MaxX;
		}
		int num2 = DisplayRectangle.Width;
		bool flag = num2 < num;
		num2 = Math.Max(0, num2);
		int maximum = Math.Max(num2, num);
		base.HScrollBar.Minimum = 0;
		base.HScrollBar.Maximum = maximum;
		base.HScrollBar.LargeChange = DisplayRectangle.Width + 1;
		if (Office2007ScrollBars && VerticallScrollBar)
		{
			base.HScrollBar.LargeChange -= SystemInformation.VerticalScrollBarWidth;
		}
		if (base.HScrollBar.Value >= base.HScrollBar.Maximum - base.HScrollBar.LargeChange)
		{
			base.HScrollBar.Value = base.HScrollBar.Maximum - base.HScrollBar.LargeChange + 1;
		}
		flag = flag && base.HScrollBar.Maximum - base.HScrollBar.Minimum + 1 - base.HScrollBar.LargeChange > 0;
		if (!flag)
		{
			base.HScrollBar.Value = 0;
		}
		HorizontalScrollBar = flag;
		HScroll = flag;
	}

	private void RefreshVScrollbar()
	{
		RefreshVScrollbar(PointToNode(Point.Empty), 0);
	}

	private void RefreshVScrollbar(TreeNodeAdv currentNode, int y)
	{
		if (InVScroll)
		{
			return;
		}
		base.VScrollBar.Minimum = 1;
		base.VScrollBar.Maximum = Math.Max(base.VScrollBar.Minimum, Root.VisibleNodeCount - 1);
		VScrollPos = VScrollPos;
		base.VScrollBar.Value = VScrollPos;
		int num = ClientHeight;
		TreeNodeAdv treeNodeAdv = RowIndexToNode(VScrollPos);
		int num2 = 0;
		int num3 = 0;
		while (treeNodeAdv != null && num3 + treeNodeAdv.Height < num)
		{
			num3 += treeNodeAdv.Height;
			treeNodeAdv = treeNodeAdv.NextVisibleNode;
			num2++;
		}
		base.VScrollBar.LargeChange = num2;
		int num4 = TreeColumnRectangle.Height;
		if (currentNode != null && VScrollPos == 1)
		{
			while (currentNode != null && y + currentNode.Height < num4)
			{
				y += currentNode.Height;
				currentNode = currentNode.NextVisibleNode;
			}
		}
		VerticallScrollBar = y > num4 || currentNode != null || VScrollPos > 1;
		if (VScrollPos > 1)
		{
			VScroll = VisibleCount < base.VScrollBar.Maximum;
			if (!VScroll)
			{
				VScrollPos = 1;
			}
		}
		else
		{
			VScroll = currentNode != null;
		}
	}

	private void MoveScrollBarOnClick(TreeNodeAdv currentNode)
	{
		if (currentNode == null)
		{
			throw new ArgumentNullException("currentNode");
		}
		int num = 0;
		Point point = NodeToPoint(currentNode);
		int i = 0;
		for (int count = currentNode.Nodes.Count; i < count; i++)
		{
			if (point.Y < 0)
			{
				break;
			}
			TreeNodeAdv treeNodeAdv = currentNode.Nodes[i];
			if (NodeToPoint(treeNodeAdv).Y + treeNodeAdv.Height > TreeColumnRectangle.Height)
			{
				num++;
				point.Y -= treeNodeAdv.Height;
			}
			if (point.Y == 0)
			{
				break;
			}
		}
		if (num > 0)
		{
			VScrollPos += num;
		}
	}

	private void ValidateScrollPosition()
	{
		if (TreeColumnRectangle.IsEmpty || Root == null || VScrollPos == 1)
		{
			return;
		}
		TreeNodeAdv topVisibleNode = TopVisibleNode;
		TreeNodeAdv lastVisibleNode = LastVisibleNode;
		if (topVisibleNode == null)
		{
			return;
		}
		int bottom = lastVisibleNode.Bounds.Bottom;
		bottom += 3;
		TreeNodeAdv treeNodeAdv = PointToNode(new Point(1, bottom));
		if (treeNodeAdv == null)
		{
			int num = ClientHeight - lastVisibleNode.Bounds.Bottom;
			int num2 = NodeToRowIndex(topVisibleNode);
			int num3 = num2;
			while (num > 0 && num3 > 1)
			{
				num3--;
				TreeNodeAdv treeNodeAdv2 = RowIndexToNode(num3);
				num -= treeNodeAdv2.Bounds.Height;
			}
			if (num <= 0)
			{
				num3++;
			}
			if (num2 > num3)
			{
				VScrollPos -= num2 - num3;
			}
		}
	}

	private TreeNodeAdv GetNode(TreeNodeAdv node, string path)
	{
		int num = path.IndexOf(PathSeparator);
		string text = ((num != -1) ? path.Substring(0, num) : path);
		for (int i = 0; i < node.Nodes.Count; i++)
		{
			if (node.Nodes[i].Text == text)
			{
				if (path == text || (AddSeparatorAtEnd && path == text + PathSeparator))
				{
					return node.Nodes[i];
				}
				string path2 = path.Substring(num + 1, path.Length - num - 1);
				TreeNodeAdv node2 = GetNode(node.Nodes[i], path2);
				if (node2 != null)
				{
					return node2;
				}
			}
		}
		return null;
	}

	private bool CheckToolTipClicked(Point mousePos)
	{
		if (m_toolTip == null || !m_toolTip.IsShowing())
		{
			return false;
		}
		Point pt = PointToScreen(mousePos);
		return m_toolTip.Parent.RectangleToScreen(m_toolTip.Bounds).Contains(pt);
	}

	private void ApplyMouseBasedSelectionOn(TreeNodeAdv node)
	{
		bool flag = (Control.ModifierKeys & Keys.Control) == Keys.Control;
		bool flag2 = (Control.ModifierKeys & Keys.Shift) == Keys.Shift;
		if (!flag && !flag2)
		{
			if ((!MultiSelect || !m_selectedNodes.Contains(node)) && SetSelectedNode(node, m_selectedNodes, TreeViewAdvAction.ByMouse))
			{
				ActiveNode = node;
				m_selectionBaseNode = node;
			}
		}
		else
		{
			if ((flag2 && (!flag || !flag2)) || !MultiSelect)
			{
				return;
			}
			if (m_selectedNodes.Contains(node) && !flag)
			{
				if (SetSelectedNode(null, node, TreeViewAdvAction.ByMouse))
				{
					ActiveNode = node;
				}
			}
			else
			{
				bool flag3 = SelectionMode == TreeSelectionMode.MultiSelectAll;
				TreeNodeAdv treeNodeAdv = null;
				if (SelectedNodes.Count > 0)
				{
					treeNodeAdv = SelectedNodes[0];
				}
				if (m_selectedNodes.Count > 0 && m_selectedNodes.Contains(node) && flag)
				{
					IsMouseDownWithCtrl = true;
					return;
				}
				IsMouseDownWithCtrl = false;
				if ((treeNodeAdv == null || flag3 || treeNodeAdv.Parent == node.Parent) && SetSelectedNode(node, new ArrayList(), TreeViewAdvAction.ByMouse))
				{
					ActiveNode = node;
				}
			}
			if (ActiveNode == node)
			{
				m_selectionBaseNode = node;
			}
		}
	}

	private void ClearSelectionClickMonitors()
	{
		LabelEditStartTimer = null;
		ClickedOnSelection = false;
		m_ptMouseDown = Point.Empty;
	}

	protected internal void SetSelectionBaseNode(TreeNodeAdv node)
	{
		m_selectionBaseNode = node;
	}

	private bool IsDraggedPastMouseDownPoint(Point pt)
	{
		if (m_ptMouseDown == Point.Empty)
		{
			return true;
		}
		if (Math.Abs(m_ptMouseDown.X - pt.X) > 2 || Math.Abs(m_ptMouseDown.Y - pt.Y) > 2)
		{
			return true;
		}
		return false;
	}

	private void StopAutoScrollingInternal()
	{
		base.AutoScrollBounds = Rectangle.Empty;
	}

	private void StartAutoScrollingInternal()
	{
		base.AccelerateScrolling = AccelerateScrollingBehavior.Default;
	}

	private Point GetDragWindowLocation(bool bFinal)
	{
		Point point = Control.MousePosition;
		if (!KeepDragCapturePoint)
		{
			point.Y += 20;
			if (bFinal)
			{
				point.Y += DragHelper.DragWindow.DragBitmap.Height / 2;
			}
		}
		else
		{
			Rectangle selectedNodesRectangle = GetSelectedNodesRectangle(m_draggedTnas);
			if (base.HScrollBar.Enabled)
			{
				selectedNodesRectangle.X += base.HScrollBar.Value;
			}
			Point empty = Point.Empty;
			Point point2 = PointToClient(point);
			empty.X = point2.X - selectedNodesRectangle.Left;
			empty.Y = point2.Y - selectedNodesRectangle.Top;
			DragHelper.DragWindow.SetOrigin(empty);
		}
		return point;
	}

	private void CancelMouseBasedSelection()
	{
		MouseBasedSelectionOn = false;
		LMouseDownNode = null;
	}

	private void SetNextNodeSelected(TreeNodeAdv newNode)
	{
		if (newNode == null)
		{
			throw new ArgumentNullException("newNode");
		}
		if (SetSelectedNode(newNode, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
		{
			ActiveNode = newNode;
			m_selectionBaseNode = newNode;
			RefreshVScrollbar(newNode, newNode.Bounds.Y);
		}
	}

	private bool IsMultipleSelection(TreeNodeAdv node)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		if (SelectionMode == TreeSelectionMode.Single)
		{
			return false;
		}
		return true;
	}

	private void FindNode(string s, bool bShiftPressed)
	{
		int num = 0;
		TreeNodeAdv treeNodeAdv = ((!bShiftPressed || Nodes.Count <= 0) ? m_activeNode : Nodes[0]);
		if (treeNodeAdv == null && Nodes.Count > 0)
		{
			treeNodeAdv = Nodes[0];
		}
		if (treeNodeAdv == null)
		{
			return;
		}
		TreeNodeAdv treeNodeAdv2;
		if (treeNodeAdv.Text.Length >= s.Length && s.ToUpper() == treeNodeAdv.Text.Substring(0, s.Length).ToUpper())
		{
			treeNodeAdv2 = treeNodeAdv;
		}
		else
		{
			treeNodeAdv2 = treeNodeAdv.NextSelectableNode;
			if (treeNodeAdv2 == null)
			{
				treeNodeAdv2 = treeNodeAdv;
			}
		}
		bool flag = false;
		while (treeNodeAdv2 != treeNodeAdv || !flag)
		{
			int num2 = 0;
			for (num2 = 0; num2 < s.Length && num2 < treeNodeAdv2.Text.Length && s.ToUpper()[num2] == treeNodeAdv2.Text.ToUpper()[num2]; num2++)
			{
			}
			if (num2 > num)
			{
				num = num2;
				if (SetSelectedNode(treeNodeAdv2, m_selectedNodes, TreeViewAdvAction.ByKeyboard))
				{
					ActiveNode = treeNodeAdv2;
					m_selectionBaseNode = treeNodeAdv2;
				}
			}
			treeNodeAdv2 = treeNodeAdv2.NextSelectableNode;
			if (treeNodeAdv2 == null)
			{
				treeNodeAdv2 = Nodes[0];
				flag = true;
			}
		}
		Invalidate();
	}

	internal void MakeDirty()
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanging(this, null);
			componentChangeService.OnComponentChanged(this, null, null, null);
		}
		Invalidate();
	}

	internal void ExpandedChanged(TreeNodeAdv node, bool expanded)
	{
		try
		{
			if (base.Updating)
			{
				return;
			}
			if (IsVerticalGradient)
			{
				Invalidate();
				return;
			}
			Point location = NodeToPoint(node);
			if (node.HasNodes)
			{
				if (location.Y < base.Height)
				{
					Invalidate(new Rectangle(location, new Size(base.ClientRectangle.Width, base.Height - location.Y)));
				}
			}
			else
			{
				Invalidate(new Rectangle(location, new Size(base.ClientRectangle.Width, node.Height)));
			}
			RefreshVScrollbar();
			if (expanded)
			{
				MoveScrollBarOnClick(node);
			}
			Update();
		}
		finally
		{
			TreeViewAdvNodeEventArgs e = new TreeViewAdvNodeEventArgs(node);
			if (expanded)
			{
				OnAfterExpand(e);
			}
			else
			{
				OnAfterCollapse(e);
			}
		}
	}

	internal void NodesChanging()
	{
		CancelMode();
	}

	internal void NodesChanged()
	{
		if (!base.Updating)
		{
			if (LastVisibleNode == null)
			{
				VScrollPos = 1;
				base.VScrollBar.Value = VScrollPos;
			}
			Invalidate();
		}
	}

	private void keyInputTimer_Tick(object sender, EventArgs e)
	{
		m_keyInputTimer.Enabled = false;
		m_strKeySearch = "";
		Invalidate();
	}

	private int GetEVVScrollPos(TreeNodeAdv node)
	{
		int num = NodeToPoint(node).Y + node.Height;
		int num2 = num;
		int num3 = NodeToRowIndex(node);
		int num4 = num3;
		int num5 = ClientHeight;
		while (num - num2 < num5 && node != null)
		{
			num2 -= node.Height;
			num3--;
			TreeNodeAdv treeNodeAdv = RowIndexToNode(num3);
			if (num - num2 >= num5)
			{
				break;
			}
			node = treeNodeAdv;
		}
		if (node != null)
		{
			int num6 = NodeToRowIndex(node);
			if (num - num2 > num5 && num6 != num4)
			{
				num6++;
			}
			return num6;
		}
		return 1;
	}

	internal bool ExpandedChanging(TreeNodeAdv node, bool expanding)
	{
		TreeViewAdvCancelableNodeEventArgs e = new TreeViewAdvCancelableNodeEventArgs(node, cancel: false);
		if (expanding)
		{
			base.VScrollBar.BeginUpdate();
			base.HScrollBar.BeginUpdate();
			OnBeforeExpand(e);
			base.VScrollBar.EndUpdate();
			base.HScrollBar.EndUpdate();
		}
		else
		{
			OnBeforeCollapse(e);
			if (!SelectOnCollapse)
			{
				if (!e.Cancel && IsCollapsedContainsSelectionNodes(e.Node))
				{
					TreeNodeAdvCollection treeNodeAdvCollection = new TreeNodeAdvCollection(null);
					bool flag = false;
					bool flag2 = false;
					if (IsCollapsedContainsActiveNode(e.Node))
					{
						flag2 = true;
					}
					if (IsCollapsedContainsSelectionNodes(e.Node))
					{
						flag = true;
					}
					foreach (TreeNodeAdv selectedNode in SelectedNodes)
					{
						if (IsNodeUnderCollapsedNode(e.Node, selectedNode))
						{
							treeNodeAdvCollection.Add(selectedNode);
						}
					}
					foreach (TreeNodeAdv item in treeNodeAdvCollection)
					{
						SelectedNodes.Remove(item);
					}
					treeNodeAdvCollection.Clear();
					foreach (TreeNodeAdv value in m_hashHighlightedNodes.Values)
					{
						if (IsNodeUnderCollapsedNode(e.Node, value))
						{
							treeNodeAdvCollection.Add(value);
						}
					}
					treeNodeAdvCollection.Add(e.Node);
					foreach (TreeNodeAdv item2 in treeNodeAdvCollection)
					{
						m_hashHighlightedNodes.Remove(item2);
					}
					if (!MultiSelect)
					{
						SelectedNode = null;
					}
					if (flag && m_selectedNodes.Contains(e.Node))
					{
						SetSelectedNode(e.Node, new ArrayList(), TreeViewAdvAction.Collapse);
					}
					if (flag2 && flag)
					{
						m_activeNode = e.Node;
					}
				}
			}
			else
			{
				if (!e.Cancel && MultiSelect)
				{
					if (IsCollapsedContainsSelectionNodes(e.Node) || IsCollapsedContainsActiveNode(e.Node) || IsNodeUnderCollapsedNode(e.Node, SelectedNode) || e.Node == SelectedNode)
					{
						RemoveNodeFromList(e.Node);
					}
				}
				else if (!e.Cancel && SingleSelect && IsNodeUnderCollapsedNode(e.Node, SelectedNode))
				{
					SelectedNode = e.Node;
				}
				if (SelectedNode != null && !e.Cancel && SelectedNode != e.Node && SelectedNode.Parent == e.Node)
				{
					SelectedNode = e.Node;
				}
			}
		}
		return !e.Cancel;
	}

	private bool IsNodeUnderCollapsedNode(TreeNodeAdv collapsed, TreeNodeAdv node)
	{
		if (node == null || collapsed == null || node == collapsed)
		{
			return false;
		}
		if (node.Parent == null || node.Parent == Root)
		{
			return false;
		}
		if (node.Parent == collapsed)
		{
			return true;
		}
		return IsNodeUnderCollapsedNode(collapsed, node.Parent);
	}

	private bool IsCollapsedContainsActiveNode(TreeNodeAdv collapsed)
	{
		return IsNodeUnderCollapsedNode(collapsed, ActiveNode);
	}

	private bool IsColumnsGradient()
	{
		if (HasColumns)
		{
			foreach (TreeColumnAdv column in Columns)
			{
				if (column.AreaBackground.Style == BrushStyle.Gradient && column.AreaBackground.GradientStyle != GradientStyle.Horizontal)
				{
					return true;
				}
			}
		}
		return false;
	}

	private void RemoveNodeFromList(TreeNodeAdv collapsedNode)
	{
		TreeNodeAdvCollection treeNodeAdvCollection = new TreeNodeAdvCollection();
		foreach (TreeNodeAdv selectedNode in SelectedNodes)
		{
			if (IsNodeUnderCollapsedNode(collapsedNode, selectedNode))
			{
				treeNodeAdvCollection.Add(selectedNode);
			}
		}
		m_activeNode = collapsedNode;
		if (!m_selectedNodes.Contains(collapsedNode))
		{
			SetSelectedNode(collapsedNode, treeNodeAdvCollection, TreeViewAdvAction.Collapse);
		}
		else if (treeNodeAdvCollection.Count > 0)
		{
			collapsedNode = null;
			SetSelectedNode(collapsedNode, treeNodeAdvCollection, TreeViewAdvAction.Collapse);
		}
	}

	private bool IsCollapsedContainsSelectionNodes(TreeNodeAdv collapsednode)
	{
		foreach (TreeNodeAdv selectedNode in SelectedNodes)
		{
			if (IsNodeUnderCollapsedNode(collapsednode, selectedNode))
			{
				return true;
			}
		}
		if (!SelectOnCollapse && IsNodeUnderCollapsedNode(collapsednode, m_activeNode))
		{
			return true;
		}
		return false;
	}

	internal void RemovedNode(TreeNodeAdv node)
	{
		ArrayList nodesToRemove = new ArrayList(new TreeNodeAdv[1] { node });
		SetSelectedNode(null, nodesToRemove, TreeViewAdvAction.Unknown, fireEvent: false, forceRemove: true);
		if (ActiveNode == node)
		{
			ActiveNode = null;
		}
	}

	internal bool IsBaseStyleRemoveable(string styleName)
	{
		switch (styleName)
		{
		case "Standard":
		case "Standard - Column":
		case "Standard - SubItem":
			return false;
		default:
			return true;
		}
	}

	internal string GetHintTextForStyle(string styleName)
	{
		string result = string.Empty;
		if (styleName == "Standard")
		{
			result = "Standard Style applied for all nodes. Not deletable.";
		}
		else
		{
			int num = IsNodeLevelStyle(styleName);
			if (num != -1)
			{
				result = "Style will be used for nodes in Level " + num;
			}
		}
		return result;
	}

	private int IsNodeLevelStyle(string styleName)
	{
		string text = "NodeLevel";
		if (styleName.IndexOf(text) == 0)
		{
			styleName = styleName.Substring(text.Length);
			int num = -1;
			try
			{
				num = int.Parse(styleName);
			}
			catch
			{
			}
			if (num < -1)
			{
				num = -1;
			}
			return num;
		}
		return -1;
	}

	private void UpdateRootPlusMinusVisibility()
	{
		if (Root == null)
		{
			return;
		}
		foreach (TreeNodeAdv node in Root.Nodes)
		{
			node.UpdatePlusMinusVisibility();
		}
	}

	private void iterate(TreeNodeAdv tna, bool bExpanded, TreeNodeAdvCollection collection)
	{
		if (tna.HasNodes)
		{
			if (tna.Expanded == bExpanded && !collection.Contains(tna))
			{
				collection.Add(tna);
			}
			foreach (TreeNodeAdv node in tna.Nodes)
			{
				iterate(node, bExpanded, collection);
			}
		}
		if (tna.NextNode != null)
		{
			iterate(tna.NextNode, bExpanded, collection);
		}
	}

	internal bool SetSelectedNode(TreeNodeAdv nodeToAdd, ArrayList removedNodes, TreeViewAdvAction action)
	{
		ArrayList arrayList = new ArrayList();
		if (nodeToAdd != null)
		{
			arrayList.Add(nodeToAdd);
		}
		return SetSelectedNode(arrayList, removedNodes, action);
	}

	internal bool SetSelectedNode(TreeNodeAdv nodeToAdd, TreeNodeAdv nodeToRemove, TreeViewAdvAction action)
	{
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		if (nodeToAdd != null)
		{
			arrayList.Add(nodeToAdd);
		}
		if (nodeToRemove != null)
		{
			arrayList2.Add(nodeToRemove);
		}
		return SetSelectedNode(arrayList, arrayList2, action);
	}

	internal bool SetSelectedNode(ArrayList nodesToAdd, ArrayList nodesToRemove, TreeViewAdvAction action)
	{
		return SetSelectedNode(nodesToAdd, nodesToRemove, action, fireEvent: true, forceRemove: false);
	}

	protected internal bool SetSelectedNode(ArrayList nodesToAdd, ArrayList nodesToRemove, TreeViewAdvAction action, bool fireEvent, bool forceRemove)
	{
		if (nodesToRemove == null && nodesToAdd == null)
		{
			return true;
		}
		if (nodesToRemove == null)
		{
			nodesToRemove = new ArrayList();
		}
		if (nodesToAdd == null)
		{
			bool flag = false;
			foreach (TreeNodeAdv item in nodesToRemove)
			{
				if (m_selectedNodes.Contains(item))
				{
					flag = true;
					break;
				}
			}
			if (!flag)
			{
				return true;
			}
			nodesToAdd = new ArrayList();
		}
		if (nodesToRemove.Count == nodesToAdd.Count)
		{
			bool flag2 = false;
			for (int i = 0; i < nodesToRemove.Count; i++)
			{
				if (nodesToRemove[i] != nodesToAdd[i])
				{
					flag2 = true;
					break;
				}
			}
			if (!flag2)
			{
				return true;
			}
		}
		if (nodesToRemove == m_selectedNodes)
		{
			nodesToRemove = m_selectedNodes.Clone() as ArrayList;
		}
		if (nodesToAdd.Count == 0 && nodesToRemove.Count == 0)
		{
			return true;
		}
		SelectedNodesCollection selectedNodesCollection = SelectedNodes.Clone() as SelectedNodesCollection;
		foreach (TreeNodeAdv item2 in nodesToRemove)
		{
			selectedNodesCollection.Remove(item2);
		}
		bool flag3 = selectedNodesCollection.Count == 0 && SelectionMode == TreeSelectionMode.Single;
		foreach (TreeNodeAdv item3 in nodesToAdd)
		{
			bool flag4 = (selectedNodesCollection.Count > 0 && selectedNodesCollection[0].Parent == item3.Parent && SelectionMode == TreeSelectionMode.MultiSelectSameLevel) || selectedNodesCollection.Count == 0 || SelectionMode == TreeSelectionMode.MultiSelectAll;
			if ((flag3 || flag4) && (!selectedNodesCollection.Contains(item3) || SelectionMode != TreeSelectionMode.MultiSelectSameLevel))
			{
				selectedNodesCollection.Add(item3);
			}
		}
		OrderNodesByRowIndex(selectedNodesCollection);
		TreeViewAdvCancelableSelectionEventArgs e = new TreeViewAdvCancelableSelectionEventArgs(selectedNodesCollection, action, cancel: false);
		if (fireEvent)
		{
			e.SelectedNodes.SetFixedSize(fixedSize: true);
			OnBeforeSelect(e);
			e.SelectedNodes.SetFixedSize(fixedSize: false);
		}
		if (!e.Cancel)
		{
			m_selectedNodes.Clear();
			TreeNodeAdv treeNodeAdv2 = null;
			if (SelectUpwardDirection)
			{
				for (int num = selectedNodesCollection.Count - 1; num >= 0; num--)
				{
					TreeNodeAdv treeNodeAdv3 = selectedNodesCollection[num];
					treeNodeAdv2 = treeNodeAdv3;
					m_selectedNodes.Add(treeNodeAdv3);
					if (EnsureVisibleSelectedNode && EnsureVisibleFlag && (!IsMouseUp || (IsMouseUp && treeNodeAdv3 == m_lastSelectedNode)))
					{
						EnsureVisible(treeNodeAdv3);
					}
				}
			}
			else
			{
				foreach (TreeNodeAdv item4 in selectedNodesCollection)
				{
					treeNodeAdv2 = item4;
					m_selectedNodes.Add(item4);
					if (!EnsureVisibleSelectedNode || !EnsureVisibleFlag || (IsMouseUp && (!IsMouseUp || item4 != m_lastSelectedNode)))
					{
						continue;
					}
					if (m_lastSelectedByKeyBoard != null)
					{
						if (item4 == m_lastSelectedByKeyBoard)
						{
							EnsureVisible(item4);
						}
					}
					else
					{
						EnsureVisible(item4);
					}
				}
				m_lastSelectedByKeyBoard = null;
			}
			if (selectedNodesCollection.Count > 0)
			{
				RefreshHighlitedNodes();
				Invalidate();
			}
			if (treeNodeAdv2 != null && treeNodeAdv2 != Root)
			{
				m_currentSelectedNodeIndex = treeNodeAdv2.Parent.Nodes.IndexOf(treeNodeAdv2);
			}
			else
			{
				m_currentSelectedNodeIndex = -1;
			}
			if (fireEvent)
			{
				OnAfterSelect(EventArgs.Empty);
			}
		}
		else if (forceRemove)
		{
			foreach (TreeNodeAdv item5 in nodesToRemove)
			{
				m_selectedNodes.Remove(item5);
			}
			if (nodesToRemove.Count > 0)
			{
				RefreshHighlitedNodes();
				Invalidate();
			}
		}
		return !e.Cancel;
	}

	private void AddHighlightParent(TreeNodeAdv node)
	{
		if (node != null && node != Root && !m_hashHighlightedNodes.ContainsKey(node))
		{
			m_hashHighlightedNodes.Add(node, node);
			AddHighlightParent(node.Parent);
		}
	}

	private void RefreshHighlitedNodes()
	{
		if (m_hashHighlightedNodes == null)
		{
			m_hashHighlightedNodes = new Hashtable();
		}
		else
		{
			m_hashHighlightedNodes.Clear();
		}
		foreach (TreeNodeAdv selectedNode in SelectedNodes)
		{
			AddHighlightParent(selectedNode.Parent);
		}
	}

	private void OrderNodesByRowIndex(ArrayList nodes)
	{
		ArrayList arrayList = new ArrayList();
		foreach (TreeNodeAdv node2 in nodes)
		{
			if (arrayList.Count == 0)
			{
				arrayList.Add(node2);
				continue;
			}
			int num = NodeToRowIndex(node2);
			int num2 = -1;
			bool flag = false;
			foreach (TreeNodeAdv item in arrayList)
			{
				num2++;
				if (NodeToRowIndex(item) > num)
				{
					arrayList.Insert(num2, node2);
					flag = true;
					break;
				}
			}
			if (!flag)
			{
				arrayList.Add(node2);
			}
		}
		nodes.Clear();
		nodes.AddRange(arrayList);
	}

	private Rectangle GetSelectionBounds(int offsetY, bool bMirror, TreeNodeAdv node)
	{
		int num = 0;
		int num2 = 0;
		Rectangle result = default(Rectangle);
		int bordersOffset = GetBordersOffset();
		int num3 = ((VerticallScrollBar && bMirror) ? SystemInformation.VerticalScrollBarWidth : 0);
		if (HasColumns && Columns.Count > 0)
		{
			num2 = ((!bMirror) ? Columns[0].Bounds.X : Columns[0].Bounds.Right) - bordersOffset - num3;
			int i = 0;
			for (int count = Columns.Count; i < count; i++)
			{
				if (Columns[i].Visible)
				{
					num += (bMirror ? (-Columns[i].Width) : Columns[i].Width);
				}
			}
		}
		else
		{
			num2 = ((!bMirror) ? node.Bounds.X : node.Bounds.Right);
			num = (bMirror ? (-node.Bounds.Width) : node.Bounds.Width);
		}
		if (bMirror)
		{
			num2 += num;
			num = -num;
		}
		result.Width = num;
		result.X = num2;
		result.Y = offsetY;
		result.Height = node.Height;
		return result;
	}

	private TreeNodeAdv GetMouseDownNode()
	{
		TreeNodeAdv result = null;
		bool flag = (Control.ModifierKeys & Keys.Control) == Keys.Control;
		if (RMouseDownNode != null)
		{
			result = RMouseDownNode;
		}
		else if (LMouseDownNode != null && (SingleSelect || !flag))
		{
			result = LMouseDownNode;
		}
		return result;
	}

	private void GradientPanel_BackColorChanged(object sender, EventArgs e)
	{
		InvalidateWindow();
	}

	private void selectedNodes_Changed(object sender, CollectionChangeEventArgs e)
	{
		if (e.Element != null)
		{
			if (e.Action == CollectionChangeAction.Add)
			{
				if (e.Element is TreeNodeAdv treeNodeAdv && treeNodeAdv.TreeView != this)
				{
					throw new ArgumentException("A TreeNodeAdv that was not a child of the MultiColumnTreeView was added to the MultiColumnTreeView's SelectedNodes collection. This is not allowed.");
				}
				TreeNodeAdv lMouseDownNode = (RMouseDownNode = null);
				LMouseDownNode = lMouseDownNode;
			}
			else if (e.Action == CollectionChangeAction.Remove)
			{
				ClickedOnSelection = false;
			}
		}
		Invalidate();
	}

	private void columns_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		UpdateColumnsHeight();
		InvalidateNc();
		RefreshHScrollbar();
	}

	private void OnPrintDocumentBeginPrint(object sender, PrintEventArgs e)
	{
		m_ptPrintPosition = new Point(0, 0);
		m_pdCurrentDirection = PrintDirection.Horizontal;
		m_iPageNumber = 0;
		m_dtDateTime = DateTime.Now;
	}

	private void OnPrintDocumentPrintPage(object sender, PrintPageEventArgs e)
	{
		Graphics graphics = e.Graphics;
		Rectangle srcRect = new Rectangle(m_ptPrintPosition, e.MarginBounds.Size);
		Rectangle marginBounds = e.MarginBounds;
		m_iPageNumber++;
		if (srcRect.Height % m_iNodeHeight > 0)
		{
			srcRect.Height -= srcRect.Height % m_iNodeHeight;
		}
		graphics.DrawImage(m_imgControl, marginBounds, srcRect, GraphicsUnit.Pixel);
		if (m_imgControl.Height - m_iScrollBarHeight > srcRect.Bottom || m_imgControl.Width - m_iScrollBarWidth > srcRect.Right)
		{
			e.HasMorePages = true;
		}
		if (m_pdCurrentDirection == PrintDirection.Horizontal)
		{
			if (srcRect.Right < m_imgControl.Width - m_iScrollBarWidth)
			{
				m_ptPrintPosition.X += srcRect.Width + 1;
			}
			else
			{
				m_ptPrintPosition.X = 0;
				m_ptPrintPosition.Y += srcRect.Height + 1;
				m_pdCurrentDirection = PrintDirection.Vertical;
			}
		}
		else if (m_pdCurrentDirection == PrintDirection.Vertical && srcRect.Right < m_imgControl.Width - m_iScrollBarWidth)
		{
			m_pdCurrentDirection = PrintDirection.Horizontal;
			m_ptPrintPosition.X += srcRect.Width + 1;
		}
		else
		{
			m_ptPrintPosition.Y += srcRect.Height + 1;
		}
		using Brush brush = new SolidBrush(Color.White);
		string s = m_iPageNumber.ToString(NumberFormatInfo.CurrentInfo);
		Font font = new Font(FontFamily.GenericSansSerif, 10f);
		SizeF sizeF = graphics.MeasureString(s, font);
		PointF pointF = new PointF(e.PageBounds.Width / 2, e.MarginBounds.Bottom + (e.PageBounds.Bottom - e.MarginBounds.Bottom) / 2);
		PointF point = new PointF(pointF.X - sizeF.Width / 2f, pointF.Y - sizeF.Height / 2f);
		graphics.DrawString(s, font, brush, point);
	}
}
