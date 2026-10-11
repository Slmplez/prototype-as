using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Drawing.Printing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Advanced tree control that surpasses the functionality and look of the standard TreeView control.")]
[ToolboxBitmap(typeof(TreeViewAdv), "ToolboxIcons.TreeViewAdv.bmp")]
[Designer(typeof(TreeViewAdvDesigner))]
[DefaultProperty("Nodes")]
[ToolboxItem(true)]
public class TreeViewAdv : ScrollControl, ISupportInitialize, IThemedControl, INonClientPaintingSupport, IProvideCustomContextMenuPositionalInformation, IDragDispatcher, ISuppportHistory
{
	internal const int DEF_DEFAULT_IMAGE_INDEX = -1;

	private Border3DSide borderSides = Border3DSide.All;

	private Border3DStyle border3DStyle = Border3DStyle.Sunken;

	private BorderStyle borderStyle = BorderStyle.Fixed3D;

	private ButtonBorderStyle borderSingle = ButtonBorderStyle.Solid;

	private Color borderColor = Color.Black;

	private ControlDrawing cd;

	private ThemedControlDrawing tcd;

	private bool themedBorder = true;

	private bool ignoreThemeBackground;

	private ToolTipAdv helpText;

	private bool ignoreNextMouseMove;

	private Timer timer;

	private TreeNodeAdv toolTipNode;

	internal ITreeNodeAdvPaintFilter paintFilter;

	private bool m_bMouseLeaved = true;

	private Hashtable m_hashHighlightedNodes = new Hashtable();

	private TreeNodeAdv m_highlightedNode;

	private bool m_bAllowDropStubWorks;

	private bool m_bKeepDottedSelection = true;

	private bool m_bKeepDragCapturePoint;

	private ImageList m_nodeStateImageList;

	private int m_defaultCollapseImageIndex = -1;

	private int m_defaultExpandImageIndex = -1;

	private bool delayToolTip;

	private IntPtr cachedRgn = IntPtr.Zero;

	internal ArrayList m_RemovedCustomControls = new ArrayList();

	internal Hashtable m_ControlBounds = new Hashtable();

	internal Hashtable m_ControlParent = new Hashtable();

	private Point m_lastButtonDownPoint = Point.Empty;

	private TreeNodeAdv m_lastButtonDownNode;

	internal static string NodeLevelStyleBaseName = "NodeLevel";

	internal static string BaseStyleBaseName = "BaseStyle";

	private IContainer components;

	private TreeNodeAdv root;

	private int itemHeight = -1;

	private int parentIndent = 19;

	internal static string DefaultBaseStyleName = "Standard";

	private TreeNodeAdv activeNode;

	private TreeNodeAdv selectionBaseNode;

	private bool mouseBasedSelectionOn;

	private ArrayList latestMouseBasedSelectionCollection;

	private bool keySearching = true;

	private Timer keyInputTimer;

	private TextBox labelEditor;

	private string keySearch = "";

	private DashStyle lineStyle = DashStyle.Dot;

	private Color lineColor = Color.Gray;

	private bool fullRowSelect;

	private bool hideSelection = true;

	private bool preparingDragCueBitmap;

	private bool dragging;

	private CheckedNodesColection checkedNodes;

	private SelectedNodesCollection selectedNodes;

	private bool clickedOnSelection;

	private Point mouseDownPoint = Point.Empty;

	private Timer labelEditStartTimer;

	private TreeNodeAdv activeNodeForLabelEdit;

	private bool canDrag;

	private bool hotTracking;

	private bool allowMouseBasedSelection;

	private bool showLines = true;

	private bool showRootLines = true;

	private string pathSeparator = "\\";

	private bool printing;

	private ToolTipAdv toolTip;

	private bool loadOnDemand;

	private bool ownerDrawNodes;

	private bool ownerDrawNodesBackground;

	private ThemedControlDrawing buttonTD;

	private ThemedControlDrawing treeTD;

	private bool labelEdit;

	private bool addSeparatorAtEnd;

	private int gutterSpace = 3;

	private Graphics measuringGraphics;

	private int nodeCount;

	private TreeSelectionMode selectionMode;

	private bool ensureVisibleSelectedNode = true;

	private bool transparentControls;

	private ImageList leftImageList;

	private ImageList rightImageList;

	private ImageList stateImageList;

	private bool dragOnText = true;

	private BrushInfo selectedNodeBackground = new BrushInfo(SystemColors.Highlight);

	private BrushInfo inactiveSelectedNodeBackground = new BrushInfo(SystemColors.Control);

	private Color selectedNodeForeColor = SystemColors.HighlightText;

	private Color inactiveSelectedNodeForeColor = SystemColors.ControlText;

	private TreeNodeAdv rmousedownnode;

	private TreeNodeAdv lmousedownnode;

	internal int curSelectedNodeIndex = -1;

	private BrushInfo bgBrush;

	private DragHelper dragHelper;

	private bool showDragNodeCue = true;

	private Hashtable baseStyles = new Hashtable();

	private TreeNodeAdvStyleInfo boundStyle;

	private TreeNodeAdv[] draggedTnas;

	private bool broughtIntoView;

	private bool selectUpwardDirection;

	private Keys bKeypressed;

	private TreeNodeAdv m_lastSelectedByKeyBoard;

	private bool sortWithChildNodes;

	private bool recalculateExpansion = true;

	private bool focusFailedOnValidation;

	internal bool inNodeRefresh;

	private bool m_needUpdateEditTop;

	private bool ignoreLeave;

	private bool IsEditEnding;

	private HistoryManager m_historyManager;

	private bool m_bHistoryEnabled;

	private StyleNamePairsList stylePairs;

	private TreeNodeAdvCollection tnaCollection = new TreeNodeAdvCollection();

	private bool selectOnCollapse = true;

	internal bool m_bAutoControlsAdding = true;

	private Hashtable m_htCustomControlCollection = new Hashtable();

	private bool suspendExpandRecalculate;

	private bool shouldSelectNodeOnEnter = true;

	private Control m_focusSubscribed;

	private bool m_bHScroll = true;

	private bool m_bVScroll = true;

	private int _hScrollPos = 1;

	private int _vScrollPos = 1;

	private bool inVScroll;

	private bool inHScroll;

	private bool m_bNeedUpdateCustomControls = true;

	private bool m_bIsKeyDown;

	private bool m_bIsMouseDown;

	private bool IsLeftMouseDown;

	private bool m_bIsMouseUp;

	private TreeNodeAdv m_lastSelectedNode;

	private bool ensureVisible = true;

	private bool IsMouseDownWithCtrl;

	private TreeNodeAdv lastNodeOver;

	private TreeNodeAdv m_tnHelpTextNode;

	private bool dragCueOn;

	private int m_textSelectionLength;

	private int m_selectionStart;

	private string lastText = "";

	private bool cancelEdit;

	private bool updating;

	[Category("Behavior")]
	[Browsable(true)]
	[DefaultValue(false)]
	[Description("Delays the tooltip by one second")]
	public bool DelayToolTip
	{
		get
		{
			return delayToolTip;
		}
		set
		{
			delayToolTip = value;
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Gets or sets value which indicates if control must draw dotted rectangle around  selected node then it has no focus.")]
	public bool KeepDottedSelection
	{
		get
		{
			return m_bKeepDottedSelection;
		}
		set
		{
			m_bKeepDottedSelection = value;
		}
	}

	[Description("Gets or sets value which indicates if cue image should be drawn at a distance below the mouse cursor while draging or not. ")]
	[DefaultValue(false)]
	[Browsable(true)]
	[Category("Appearance")]
	public bool KeepDragCapturePoint
	{
		get
		{
			return m_bKeepDragCapturePoint;
		}
		set
		{
			m_bKeepDragCapturePoint = value;
			dragHelper.DragWindow.DragParent = (value ? this : null);
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[Description("This will sort all the nodes including child nodes.")]
	[Category("Behavior")]
	public bool SortWithChildNodes
	{
		get
		{
			return sortWithChildNodes;
		}
		set
		{
			sortWithChildNodes = value;
		}
	}

	[Description("This will ignore the theme's background color and draw the BackgroundColor when ThemesEnabled is true.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool IgnoreThemeBackground
	{
		get
		{
			return ignoreThemeBackground;
		}
		set
		{
			if (ignoreThemeBackground != value)
			{
				ignoreThemeBackground = value;
				Invalidate();
			}
		}
	}

	internal bool ThemedBorder
	{
		get
		{
			return themedBorder;
		}
		set
		{
			themedBorder = value;
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 65536;
			createParams.ExStyle &= -513;
			createParams.Style &= -8388609;
			BorderStyle borderStyle = this.borderStyle;
			if (borderStyle == BorderStyle.Fixed3D && ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && themedBorder)
			{
				borderStyle = BorderStyle.FixedSingle;
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
			createParams.Style = createParams.Style | 0x2000 | 2 | 0x10000;
			return createParams;
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the control is drawn themed.")]
	public bool ThemesEnabled
	{
		get
		{
			return StandardStyle.ThemesEnabled;
		}
		set
		{
			StandardStyle.ThemesEnabled = value;
			RecreateHandle();
			Root.RecalculateAllDimensions();
			Invalidate();
			OnThemeChanged(EventArgs.Empty);
		}
	}

	[Description("Indicates the border sides of the control.")]
	[Category("Appearance")]
	[DefaultValue(Border3DSide.All)]
	public Border3DSide BorderSides
	{
		get
		{
			return borderSides;
		}
		set
		{
			if (borderSides != value)
			{
				borderSides = value;
				OnBorderSidesChanged();
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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("Lets you set the background color, gradient, etc. overriding the BackColor setting.")]
	public BrushInfo BackgroundColor
	{
		get
		{
			return bgBrush;
		}
		set
		{
			if (bgBrush != value)
			{
				bgBrush = value;
				if (IsVerticalGradient)
				{
					base.DisableScrollWindow = true;
				}
				else
				{
					base.DisableScrollWindow = false;
				}
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the color of the 2D border.")]
	public Color BorderColor
	{
		get
		{
			return borderColor;
		}
		set
		{
			if (borderColor != value)
			{
				borderColor = value;
				OnBorderColorChanged();
				UpdateNc();
			}
		}
	}

	[DefaultValue(ButtonBorderStyle.Solid)]
	[Category("Appearance")]
	[Description("Indicates the 2D border style.")]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return borderSingle;
		}
		set
		{
			if (borderSingle != value)
			{
				borderSingle = value;
				OnBorderSingleChanged();
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
			return borderStyle;
		}
		set
		{
			base.BorderStyle = BorderStyle.None;
			if (this.borderStyle != value)
			{
				BorderStyle borderStyle = value;
				if (value == BorderStyle.FixedSingle)
				{
					borderStyle = BorderStyle.Fixed3D;
				}
				base.BorderStyle = borderStyle;
				this.borderStyle = value;
				UpdateStyles();
				InvalidateWindow();
				OnBorderStyleChanged();
			}
		}
	}

	[DefaultValue(Border3DStyle.Sunken)]
	[Description("Indicates the style of the 3D border.")]
	[Category("Appearance")]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return border3DStyle;
		}
		set
		{
			if (border3DStyle != value)
			{
				border3DStyle = value;
				OnBorder3DStyleChanged();
				InvalidateWindow();
			}
		}
	}

	private bool IsVerticalGradient
	{
		get
		{
			if (bgBrush != null && bgBrush.Style == BrushStyle.Gradient && bgBrush.GradientStyle == GradientStyle.Vertical)
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
			if (bgBrush != null && bgBrush.Style == BrushStyle.Gradient && bgBrush.GradientStyle == GradientStyle.Horizontal)
			{
				return true;
			}
			return false;
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[Description("HistoryManager to use for Undo\\Redo operations.")]
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

	[Description("Indicates, record actions for Undo\\Redo using, or not.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool HistoryEnabled
	{
		get
		{
			return m_bHistoryEnabled;
		}
		set
		{
			if (value != m_bHistoryEnabled)
			{
				m_bHistoryEnabled = value;
			}
		}
	}

	internal bool IsBroughtIntoView
	{
		get
		{
			return broughtIntoView;
		}
		set
		{
			if (broughtIntoView != value)
			{
				broughtIntoView = value;
			}
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Specifies whether a semi-transaprent image of the selected nodes should be drawn beside the cursor during drag and drop.")]
	public virtual bool ShowDragNodeCue
	{
		get
		{
			return showDragNodeCue;
		}
		set
		{
			showDragNodeCue = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public TreeNodeAdv ActiveNode
	{
		get
		{
			return activeNode;
		}
		set
		{
			if (activeNode != value)
			{
				activeNode = value;
				Invalidate();
			}
		}
	}

	[Description("The helptext control of the TreeViewAdv.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Appearance")]
	public virtual ToolTipAdv HelpTextControl => helpText;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The tooltip control of the TreeViewAdv.")]
	[Category("Appearance")]
	public virtual ToolTipAdv ToolTipControl => toolTip;

	[Description("Indicates the  text color of the selected node.")]
	[Category("Appearance")]
	public virtual Color SelectedNodeForeColor
	{
		get
		{
			return selectedNodeForeColor;
		}
		set
		{
			selectedNodeForeColor = value;
			Invalidate();
		}
	}

	[Description("Indicates the  text color of the selected node when not focused.")]
	[Category("Appearance")]
	public virtual Color InactiveSelectedNodeForeColor
	{
		get
		{
			return inactiveSelectedNodeForeColor;
		}
		set
		{
			inactiveSelectedNodeForeColor = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Indicates the background of the selected node.")]
	public virtual BrushInfo SelectedNodeBackground
	{
		get
		{
			return selectedNodeBackground;
		}
		set
		{
			selectedNodeBackground = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Indicates the background of the selected node when the control is not focused.")]
	public virtual BrushInfo InactiveSelectedNodeBackground
	{
		get
		{
			return inactiveSelectedNodeBackground;
		}
		set
		{
			inactiveSelectedNodeBackground = value;
			Invalidate();
		}
	}

	[Description("Indicates if the drag-drop operation will occur only if the node is dragged on the text area.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public virtual bool DragOnText
	{
		get
		{
			return dragOnText;
		}
		set
		{
			dragOnText = value;
		}
	}

	[Description("Specifies the StateImageList index value of the image that is displayed when a tree node has no children.")]
	[Category("Appearance - Images")]
	[Localizable(true)]
	public virtual int NoChildrenImgIndex
	{
		get
		{
			return StandardStyle.NoChildrenImgIndex;
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

	[Category("Appearance - Images")]
	[Description("Specifies the StateImageList index value of the image that is displayed when a tree node is expanded.")]
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

	[Description("Indicates the imagelist that holds images to be drawn based the state of the node.")]
	[Category("Appearance - Images")]
	[DefaultValue(null)]
	public virtual ImageList StateImageList
	{
		get
		{
			return stateImageList;
		}
		set
		{
			UpdateImageList(ref stateImageList, value);
		}
	}

	[Description("Indicates the imagelist that holds images to be drawn on the right of the node.")]
	[DefaultValue(null)]
	[Category("Appearance - Images")]
	public virtual ImageList RightImageList
	{
		get
		{
			return rightImageList;
		}
		set
		{
			UpdateImageList(ref rightImageList, value);
		}
	}

	[Description("Indicates the imagelist that holds images to be drawn on the left of the node.")]
	[DefaultValue(null)]
	[Category("Appearance - Images")]
	public virtual ImageList LeftImageList
	{
		get
		{
			return leftImageList;
		}
		set
		{
			UpdateImageList(ref leftImageList, value);
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the controls (eg PlusMinus) will have a transparent background.")]
	[Category("Appearance")]
	public virtual bool TransparentControls
	{
		get
		{
			return transparentControls;
		}
		set
		{
			if (transparentControls != value)
			{
				transparentControls = value;
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Indicates if the selected node will be brought to view by scrolling, if necessary.")]
	public virtual bool EnsureVisibleSelectedNode
	{
		get
		{
			return ensureVisibleSelectedNode;
		}
		set
		{
			ensureVisibleSelectedNode = value;
		}
	}

	internal int NodeCount
	{
		get
		{
			return nodeCount;
		}
		set
		{
			nodeCount = value;
		}
	}

	[Category("Behavior")]
	[Description("Indicates the selection mode for the tree.")]
	[DefaultValue(TreeSelectionMode.Single)]
	public virtual TreeSelectionMode SelectionMode
	{
		get
		{
			return selectionMode;
		}
		set
		{
			if (selectionMode != value)
			{
				selectionMode = value;
				OnSelectionModeChanged();
			}
		}
	}

	private bool MultiSelect => SelectionMode != TreeSelectionMode.Single;

	private bool SingleSelect => !MultiSelect;

	internal TreeNodeAdvStyleInfo BoundStyle => boundStyle;

	[Description("Returns a collection of base styles used in the tree.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Editor(typeof(TreeNodeAdvBaseStylesEditor), typeof(UITypeEditor))]
	[Category("Appearance")]
	public virtual Hashtable BaseStyles => baseStyles;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[DocumentationExclude]
	public StyleNamePairsList BaseStylePairs
	{
		get
		{
			bool flag = true;
			StyleNamePairsList styleNamePairsList = new StyleNamePairsList(this);
			foreach (string key in baseStyles.Keys)
			{
				styleNamePairsList.Add(new StyleNamePair(key, baseStyles[key] as TreeNodeAdvStyleInfo));
			}
			if (stylePairs.Count == styleNamePairsList.Count)
			{
				flag = false;
				for (int i = 0; i < styleNamePairsList.Count; i++)
				{
					if ((stylePairs[i] as StyleNamePair).name != (styleNamePairsList[i] as StyleNamePair).name)
					{
						flag = true;
						break;
					}
				}
			}
			if (flag)
			{
				stylePairs = styleNamePairsList;
			}
			return stylePairs;
		}
	}

	[Description("Can also be edited via the BaseStyles property editor. It is the style that all the nodes inherit from, by default.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TreeNodeAdvStyleInfo StandardStyle
	{
		get
		{
			if (baseStyles.Contains(DefaultBaseStyleName))
			{
				return baseStyles[DefaultBaseStyleName] as TreeNodeAdvStyleInfo;
			}
			return null;
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicates if the TreeNodeAdv.GetPath method adds a separator at the end of the path string returned.")]
	public virtual bool AddSeparatorAtEnd
	{
		get
		{
			return addSeparatorAtEnd;
		}
		set
		{
			addSeparatorAtEnd = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates the space left on the left side of the control.")]
	[DefaultValue(3)]
	public virtual int GutterSpace
	{
		get
		{
			return gutterSpace;
		}
		set
		{
			if (gutterSpace != value)
			{
				gutterSpace = value;
				NeedUpdateCustomControls = true;
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
			return labelEdit;
		}
		set
		{
			labelEdit = value;
		}
	}

	[Description("Indicates if the BeforeNodePaint event will be fired before drawing a node.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public virtual bool OwnerDrawNodes
	{
		get
		{
			return ownerDrawNodes;
		}
		set
		{
			ownerDrawNodes = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the NodeBackgroundPaint event will be fired before drawing a node's background.")]
	[Category("Behavior")]
	public virtual bool OwnerDrawNodesBackground
	{
		get
		{
			return ownerDrawNodesBackground;
		}
		set
		{
			ownerDrawNodesBackground = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Specifies if the tree should follow the load-on-demand paradigm.")]
	public virtual bool LoadOnDemand
	{
		get
		{
			return loadOnDemand;
		}
		set
		{
			loadOnDemand = value;
		}
	}

	[Description("Indicates if the TreeViewAdv is printing.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Printing => printing;

	[Obsolete("Use PrintPreview function instead.")]
	public PrintDocument PrintDocument => null;

	[DefaultValue(true)]
	[Description("Indicates if node dimension calculation should be done on load.")]
	public bool RecalculateExpansion
	{
		get
		{
			return recalculateExpansion;
		}
		set
		{
			if (recalculateExpansion != value)
			{
				recalculateExpansion = value;
			}
		}
	}

	[Description("Indicates if the nodes will have an option button.")]
	[Category("Appearance")]
	[DefaultValue(false)]
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
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Category("Appearance")]
	public bool IsEditing => labelEditor.Visible;

	[Localizable(true)]
	[DefaultValue("\\")]
	[Description("Indicates the separator string that splits the path of a node.")]
	[Category("Appearance")]
	public virtual string PathSeparator
	{
		get
		{
			return pathSeparator;
		}
		set
		{
			pathSeparator = value;
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
			return showLines;
		}
		set
		{
			if (showLines != value)
			{
				showLines = value;
				Root.RecalculateAllDimensions();
				Invalidate();
			}
		}
	}

	[Description("Indicates whether lines are displayed between root nodes.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public virtual bool ShowRootLines
	{
		get
		{
			return showRootLines;
		}
		set
		{
			if (showRootLines != value)
			{
				showRootLines = value;
				UpdateRootPlusMinusVisibility();
				Root.RecalculateAllDimensions();
				Invalidate();
			}
		}
	}

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

	[DefaultValue(19)]
	[Description("Indicates the indent of the child nodes from the parent node.")]
	[Category("Appearance")]
	public virtual int Indent
	{
		get
		{
			return parentIndent;
		}
		set
		{
			if (parentIndent != value)
			{
				parentIndent = value;
				Root.RecalculateAllDimensions();
				Invalidate();
			}
		}
	}

	[Description("Indicates if the nodes will have a hot tracked appearance when the mouse cursor is hovering over them.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public virtual bool HotTracking
	{
		get
		{
			return hotTracking;
		}
		set
		{
			hotTracking = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates multiple nodes can be selected with mouse down and drag.")]
	[Category("Behavior")]
	public virtual bool AllowMouseBasedSelection
	{
		get
		{
			return allowMouseBasedSelection;
		}
		set
		{
			allowMouseBasedSelection = value;
		}
	}

	private bool MouseBasedSelectionOn
	{
		get
		{
			return mouseBasedSelectionOn;
		}
		set
		{
			if (mouseBasedSelectionOn != value)
			{
				mouseBasedSelectionOn = value;
				latestMouseBasedSelectionCollection = null;
			}
		}
	}

	[Browsable(false)]
	public TreeNodeAdvCollection ExpandedNodes
	{
		get
		{
			tnaCollection.Clear();
			iterate(Nodes[0], bExpanded: true);
			return tnaCollection;
		}
	}

	[Browsable(false)]
	public TreeNodeAdvCollection CollapsedNodes
	{
		get
		{
			tnaCollection.Clear();
			iterate(Nodes[0], bExpanded: false);
			return tnaCollection;
		}
	}

	[Browsable(false)]
	[Description("Indicates the selected nodes of the TreeViewAdv.")]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public SelectedNodesCollection SelectedNodes => selectedNodes;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("Indicates the checked nodes of the TreeViewAdv.")]
	[Category("Behavior")]
	public CheckedNodesColection CheckedNodes => checkedNodes;

	internal Rectangle SelectedNodesBounds
	{
		get
		{
			Rectangle rectangle = Rectangle.Empty;
			foreach (TreeNodeAdv selectedNode in selectedNodes)
			{
				Rectangle bounds = selectedNode.Bounds;
				rectangle = Rectangle.Union(rectangle, bounds);
			}
			return rectangle;
		}
	}

	[Description("Indicates if the TreeViewAdv will hide it's selected nodes when not focused.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public virtual bool HideSelection
	{
		get
		{
			return hideSelection;
		}
		set
		{
			if (hideSelection != value)
			{
				hideSelection = value;
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
			return fullRowSelect;
		}
		set
		{
			if (fullRowSelect != value)
			{
				fullRowSelect = value;
				if (selectedNodes.Count > 0)
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
			return lineColor;
		}
		set
		{
			if (lineColor != value)
			{
				lineColor = value;
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
			return lineStyle;
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
			else if (lineStyle != value)
			{
				lineStyle = value;
				Invalidate();
			}
		}
	}

	private Pen LinePen
	{
		get
		{
			Pen pen = new Pen(LineColor);
			pen.DashStyle = LineStyle;
			return pen;
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets a value to indicate if keyboard based searching should be allowed.")]
	[DefaultValue(true)]
	public virtual bool AllowKeyboardSearch
	{
		get
		{
			return keySearching;
		}
		set
		{
			keySearching = value;
		}
	}

	[Description("Indicates if the state of the a node's checkbox indicates the checkstate of the child nodes checkboxes.")]
	[Category("Behavior")]
	[DefaultValue(false)]
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

	[DefaultValue(true)]
	[Category("Behavior")]
	[Description("Indicates whether the node should be selected if it's child node is selected or not.")]
	public bool SelectOnCollapse
	{
		get
		{
			return selectOnCollapse;
		}
		set
		{
			selectOnCollapse = value;
		}
	}

	[Description("Indicates if check boxes will be shown for the nodes.")]
	[Category("Appearance")]
	public virtual bool ShowCheckBoxes
	{
		get
		{
			return StandardStyle.ShowCheckBox;
		}
		set
		{
			StandardStyle.ShowCheckBox = value;
			Root.RecalculateAllDimensions();
			Invalidate();
		}
	}

	[Category("Behavior")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("Indicates the selected node of the TreeViewAdv.")]
	public virtual TreeNodeAdv SelectedNode
	{
		get
		{
			if (SelectedNodes != null && SelectedNodes.Count > 0)
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
			if ((selectedNodes.Count != 1 || selectedNodes[0] != value) && SetSelectedNode(value, selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = value;
				selectionBaseNode = value;
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
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public virtual TreeNodeAdv SelectionBaseNode => selectionBaseNode;

	[Description("Indicates the default height of the nodes.")]
	[Category("Appearance")]
	public virtual int ItemHeight
	{
		get
		{
			if (itemHeight != -1)
			{
				return itemHeight;
			}
			return base.FontHeight + 3;
		}
		set
		{
			if (itemHeight != value)
			{
				itemHeight = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public virtual TreeNodeAdv Root
	{
		get
		{
			return root;
		}
		set
		{
			root = value;
			root.TreeView = this;
			RefreshCustomControlCollection();
			root.Visible = true;
			UpdateRootPlusMinusVisibility();
			root.RecalculateAllDimensions();
			root.Expand();
			Invalidate();
		}
	}

	internal Hashtable CustomControlCollection => m_htCustomControlCollection;

	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Indicates the top-level nodes of the TreeViewAdv.")]
	public virtual TreeNodeAdvCollection Nodes => root.Nodes;

	[Browsable(false)]
	[Description("Indicates the node on which the user did a right-mouse down.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public virtual TreeNodeAdv RMouseDownNode
	{
		get
		{
			return rmousedownnode;
		}
		set
		{
			if (rmousedownnode != value)
			{
				rmousedownnode = value;
				Invalidate();
			}
		}
	}

	private TreeNodeAdv LMouseDownNode
	{
		get
		{
			return lmousedownnode;
		}
		set
		{
			if (lmousedownnode != value)
			{
				lmousedownnode = value;
				Invalidate();
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
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

	[Description("Gets or sets a value indicating whether the Recalculation of the Nodes maximum hieght should be done while expanding or collapsing.")]
	[Browsable(true)]
	[Category("Behaviour")]
	[DefaultValue(false)]
	public bool SuspendExpandRecalculate
	{
		get
		{
			return suspendExpandRecalculate;
		}
		set
		{
			suspendExpandRecalculate = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(false)]
	[Category("Scrolling")]
	[Description("Specifies if size box should be drawn when both scrollbars are visible and the control is not docked in an MDIChild window.")]
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
	[Description("ImageList with images that are displayed instead of expand or collapse button.")]
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

	[Category("Appearance - Images")]
	[DefaultValue(-1)]
	[Description("Index of default image for collapse button.")]
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

	[Category("Appearance - Images")]
	[Description("Index of default image for expand button.")]
	[DefaultValue(-1)]
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
	[Description("Gets or sets a value indicating whether the default node should be selected on the TreeViewAdv control gains focus.")]
	[Category("Behavior")]
	public bool ShouldSelectNodeOnEnter
	{
		get
		{
			return shouldSelectNodeOnEnter;
		}
		set
		{
			shouldSelectNodeOnEnter = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
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

	[DefaultValue(false)]
	[Description("Specifies if the scroll control can increase the ScrollBar.SmallChange property when doing accelerated scrolling.")]
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

	protected bool HorisontalScroll
	{
		get
		{
			return base.HScroll;
		}
		set
		{
			base.HScroll = value && !base.UseSharedScrollBars;
		}
	}

	protected bool VerticallScroll
	{
		get
		{
			return base.VScroll;
		}
		set
		{
			base.VScroll = value && !base.UseSharedScrollBars;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool VScroll
	{
		get
		{
			return m_bVScroll;
		}
		set
		{
			m_bVScroll = value;
			VerticallScroll = m_bVScroll;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool HScroll
	{
		get
		{
			return m_bHScroll;
		}
		set
		{
			m_bHScroll = value;
			HorisontalScroll = m_bHScroll;
		}
	}

	[Category("Scrolling")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The position of the Horizontal scrollbar")]
	[Browsable(false)]
	public int HScrollPos
	{
		get
		{
			if (!base.HScrollBar.Enabled)
			{
				return 0;
			}
			return _hScrollPos;
		}
		set
		{
			if (_hScrollPos != value)
			{
				NeedUpdateCustomControls = true;
				int xAmount = _hScrollPos - value;
				_hScrollPos = value;
				ScrollWindow(xAmount, 0, base.ClientRectangle, base.ClientRectangle, allowUpdate: true);
			}
		}
	}

	[DefaultValue(1)]
	[Description("The position of the Vertical scrollbar.")]
	[Category("Scrolling")]
	[Browsable(false)]
	public int VScrollPos
	{
		get
		{
			return _vScrollPos;
		}
		set
		{
			int num = 0;
			if (_vScrollPos != value)
			{
				NeedUpdateCustomControls = true;
				if (IsEditing)
				{
					cancelEdit = true;
					EndEdit(cancel: false);
					cancelEdit = false;
				}
				int num2 = value;
				if (num2 < base.VScrollBar.Minimum)
				{
					num2 = base.VScrollBar.Minimum;
				}
				else if (num2 > base.VScrollBar.Maximum)
				{
					num2 = base.VScrollBar.Maximum;
				}
				num = ((_vScrollPos > num2) ? 1 : (-1));
				_vScrollPos = num2;
				if (base.VScrollBar.Value != value)
				{
					base.VScrollBar.Value = value;
				}
				ScrollWindow(0, num, base.ClientRectangle, base.ClientRectangle, allowUpdate: true);
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public TreeNodeAdv TopVisibleNode => RowIndexToNode(VScrollPos);

	internal virtual bool NeedUpdateCustomControls
	{
		get
		{
			return m_bNeedUpdateCustomControls;
		}
		set
		{
			m_bNeedUpdateCustomControls = value;
		}
	}

	private Timer LabelEditStartTimer
	{
		get
		{
			return labelEditStartTimer;
		}
		set
		{
			if (labelEditStartTimer != null)
			{
				labelEditStartTimer.Tick -= LabelEditStartTimer_Tick;
				labelEditStartTimer.Enabled = false;
			}
			if (ActiveNode == null || !LabelEdit)
			{
				value = null;
			}
			labelEditStartTimer = value;
			if (labelEditStartTimer != null)
			{
				labelEditStartTimer.Tick += LabelEditStartTimer_Tick;
				labelEditStartTimer.Interval = SystemInformation.DoubleClickTime;
				labelEditStartTimer.Enabled = true;
				activeNodeForLabelEdit = ActiveNode;
			}
		}
	}

	private bool DragCueOn
	{
		get
		{
			return dragCueOn;
		}
		set
		{
			if (dragCueOn == value)
			{
				return;
			}
			dragCueOn = value;
			if (value)
			{
				Bitmap draggedNodesBitmap = GetDraggedNodesBitmap();
				if (draggedNodesBitmap != null)
				{
					Point dragWindowLocation = GetDragWindowLocation(bFinal: false);
					dragWindowLocation.Y += draggedNodesBitmap.Height / 2;
					dragHelper.StartDrag(draggedNodesBitmap, dragWindowLocation, DragDropEffects.All);
				}
			}
		}
	}

	[Description("Gets the number of tree nodes that can be fully visible in the tree view  control.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public int VisibleCount => base.ClientRectangle.Height / ItemHeight;

	[DocumentationExclude]
	protected int ClientHeight => base.ClientRectangle.Height;

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public virtual TreeNodeAdv LastVisibleNode
	{
		get
		{
			TreeNodeAdv treeNodeAdv = PointToNode(new Point(3, 3));
			if (treeNodeAdv == null)
			{
				return null;
			}
			int num = NodeToPoint(treeNodeAdv).Y + treeNodeAdv.Height;
			int num2 = NodeToRowIndex(treeNodeAdv);
			int num3 = ClientHeight;
			while (num < num3)
			{
				num += treeNodeAdv.Height;
				num2++;
				TreeNodeAdv treeNodeAdv2 = RowIndexToNode(num2);
				if (treeNodeAdv2 != null)
				{
					treeNodeAdv = treeNodeAdv2;
					continue;
				}
				return treeNodeAdv;
			}
			return treeNodeAdv;
		}
	}

	[Category("Property Changed")]
	[Description("Occurs when the tree's BorderStyle is changed.")]
	public event EventHandler BorderStyleChanged;

	[Category("Property Changed")]
	[Description("Occurs when the tree's Border3DStyle is changed.")]
	public event EventHandler Border3DStyleChanged;

	[Category("Property Changed")]
	[Description("Occurs when the tree's Border2DStyle is changed.")]
	public event EventHandler BorderSingleChanged;

	[Description("Occurs when the tree's BorderColor is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderColorChanged;

	[Category("Property Changed")]
	[Description("Occurs when the tree's GradientBackground is changed.")]
	public event EventHandler GradientBackgroundChanged;

	[Category("Property Changed")]
	[Description("Occurs when the tree's VerticalGradient is changed.")]
	public event EventHandler VerticalGradientChanged;

	[Category("Property Changed")]
	[Description("Occurs when the tree's GradientColors is changed.")]
	public event EventHandler GradientColorsChanged;

	[Description("Occurs when the tree's BorderSides is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Description("Occurs when the ThemesEnabled property changes.")]
	[Category("Property Changed")]
	public event EventHandler ThemeChanged;

	[Category("Drag Drop")]
	[Description("Occurs when the user begins dragging an item.")]
	public event ItemDragEventHandler ItemDrag;

	[Description("Occurs when NodeStateImageList is changed.")]
	[Category("Property Changed")]
	public event EventHandler NodeStateImageListChanged;

	[Category("Property Changed")]
	[Description("Occurs when DefaultCollapseImageIndex is changed.")]
	public event EventHandler DefaultCollapseImageIndexChanged;

	[Description("Occurs when DefaultExpandImageIndex is changed.")]
	[Category("Property Changed")]
	public event EventHandler DefaultExpandImageIndexChanged;

	[Category("Editor Action")]
	[Description("Occurs for each TextChanged event in the node editor control.")]
	public event TreeNodeAdvCancelableEditEventHandler NodeEditorValidateString;

	[Description("Lets you validate the new node label entered by the user.")]
	[Category("Editor Action")]
	public event TreeNodeAdvCancelableEditEventHandler NodeEditorValidating;

	[Description("Notifies that a new label has been provided for a node by the user.")]
	[Category("Editor Action")]
	public event TreeNodeAdvEditEventHandler NodeEditorValidated;

	[Description("Occurs when the user cancels the editing mode.")]
	[Category("Editor Action")]
	public event TreeNodeAdvEditEventHandler EditCancelled;

	[Description("Occurs before a node gets into edit mode.")]
	[Category("Editor Action")]
	public event TreeViewAdvBeforeEditEventHandler BeforeEdit;

	[Description("Fired before a node is being painted when the OwnerDrawNodes property is set to true.")]
	[Category("Appearance")]
	public event TreeNodeAdvPaintEventHandler BeforeNodePaint;

	[Category("Appearance")]
	[Description("Fired after a node is being painted when the OwnerDrawNodes property is set to true.")]
	public event TreeNodeAdvPaintEventHandler AfterNodePaint;

	[Category("Appearance")]
	[Description("Fired to draw the background of a node if the OwnerDrawNodesBackground property is set.")]
	public event TreeNodeAdvPaintBackgroundEventHandler NodeBackgroundPaint;

	[Description("Occurs before a node is selected.")]
	[Category("Action")]
	public event TreeNodeAdvBeforeSelectEventHandler BeforeSelect;

	[Description("Occurs before a node's checkbox is checked.")]
	[Category("Action")]
	public event TreeViewAdvBeforeCheckEventHandler BeforeCheck;

	[Description("Occurs after a node is selected.")]
	[Category("Action")]
	public event EventHandler AfterSelect;

	[Description("Occurs after a node is checked.")]
	[Category("Action")]
	public event TreeNodeAdvEventHandler AfterCheck;

	[Description("Occurs after one or more node's CheckState has changed due to InteractiveCheckBox setting.")]
	[Category("Action")]
	public event TreeNodeAdvEventHandler AfterInteractiveChecks;

	[Description("Occurs before a node is expanded.")]
	[Category("Action")]
	public event TreeViewAdvCancelableNodeEventHandler BeforeExpand;

	[Category("Action")]
	[Description("Occurs before a node has collapsed.")]
	public event TreeViewAdvCancelableNodeEventHandler BeforeCollapse;

	[Description("Occurs after a node is expanded.")]
	[Category("Action")]
	public event TreeViewAdvNodeEventHandler AfterExpand;

	[Description("Occurs after a node has collapsed.")]
	[Category("Action")]
	public event TreeViewAdvNodeEventHandler AfterCollapse;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
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

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rectangle = displayRect;
		int num = ((borderStyle != BorderStyle.Fixed3D) ? 1 : 2);
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && themedBorder)
		{
			num = 1;
		}
		if (borderStyle == BorderStyle.None)
		{
			num = 0;
		}
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(rectangle.Location, new Size(num, rectangle.Height)),
			new Rectangle(rectangle.Location, new Size(rectangle.Width, num)),
			new Rectangle(rectangle.Width - num, rectangle.Y, num, rectangle.Height),
			new Rectangle(rectangle.X, rectangle.Height - num, rectangle.Width, num)
		};
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && themedBorder)
		{
			for (int i = 0; i < 4; i++)
			{
				tcd.DrawThemeBackground(graphics, 1, 1, rectangle, array[i]);
			}
		}
		else
		{
			Brush brush = new SolidBrush(BackColor);
			for (int j = 0; j < 4; j++)
			{
				graphics.FillRectangle(brush, array[j]);
			}
			brush.Dispose();
			if (BorderSides != Border3DSide.All)
			{
				if (BorderSides != Border3DSide.Middle)
				{
					cd.DrawBorder(graphics, rectangle, borderStyle, border3DStyle, borderSingle, borderColor, borderSides);
				}
			}
			else
			{
				cd.DrawBorder(graphics, rectangle, borderStyle, border3DStyle, borderSingle, borderColor);
			}
		}
		using (NCPaintEventArgs ncEventArgs = new NCPaintEventArgs(e.Graphics, e.ClipRectangle, displayRect, windowRectInScreen, IntPtr.Zero))
		{
			OnNCPaint(ncEventArgs);
		}
		return Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(windowRectInScreen.Left + num, windowRectInScreen.Top + num, windowRectInScreen.Right - num, windowRectInScreen.Bottom - num);
	}

	protected override void WndProc(ref Message m)
	{
		if (base.UpdatingStyles && m.Msg != 133)
		{
			base.WndProc(ref m);
			return;
		}
		Point pt = PointToClient(new Point(Control.MousePosition.X, Control.MousePosition.Y));
		if (m.Msg == 33 && base.CanFocus && base.Visible && (!labelEditor.Bounds.Contains(pt) || !IsEditing))
		{
			bool flag = true;
			foreach (DictionaryEntry item in CustomControlCollection)
			{
				Control control = (Control)item.Key;
				if (control.Visible && control.Bounds.Contains(pt))
				{
					flag = false;
					break;
				}
			}
			IContainerControl containerControl = GetContainerControl();
			if (flag && (containerControl == null || containerControl is Form || containerControl.ActiveControl == null || containerControl.ActiveControl == this || base.Controls.Contains(containerControl.ActiveControl)))
			{
				if (VerticallScroll)
				{
					Rectangle rectangle = new Rectangle(base.Bounds.Width - SystemInformation.VerticalScrollBarWidth, 0, SystemInformation.VerticalScrollBarWidth, base.Bounds.Height);
					if (!rectangle.Contains(pt))
					{
						Focus();
					}
				}
				else
				{
					Focus();
					if (!Focused)
					{
						focusFailedOnValidation = true;
					}
				}
			}
		}
		if (cachedRgn != IntPtr.Zero)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(cachedRgn);
			cachedRgn = IntPtr.Zero;
		}
		if (m.Msg == 794)
		{
			InvalidateWindow();
		}
		if (m.Msg == 133)
		{
			cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		if (m.Msg == 123)
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
		else if (m.Msg == 161 && GetNodeAtPoint(pt) != null)
		{
			if (IsEditing)
			{
				EndEdit(cancel: false);
				if (IsEditing)
				{
					return;
				}
			}
		}
		else
		{
			if (m.Msg == 135)
			{
				m.Result = new IntPtr(1 | m.Result.ToInt32());
				return;
			}
			if (m.Msg == 515 && 1 == (int)m.WParam)
			{
				Point mousePos = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
				if (CheckToolTipClicked(mousePos))
				{
					m.Result = IntPtr.Zero;
					OnDoubleClick(new EventArgs());
					OnMouseDoubleClick(new MouseEventArgs(MouseButtons.Left, 2, mousePos.X, mousePos.Y, 0));
					return;
				}
			}
			else if (base.DesignMode && RightToLeft == RightToLeft.Yes && m.Msg == 49910)
			{
				return;
			}
		}
		base.WndProc(ref m);
	}

	Point IProvideCustomContextMenuPositionalInformation.GetMenuPositionForKeyboardInvoke()
	{
		Point result = new Point(0, 0);
		if (SelectedNode != null)
		{
			Rectangle textBounds = SelectedNode.TextBounds;
			result.X = Math.Max(textBounds.X, 0);
			result.Y = Math.Max(textBounds.Y + textBounds.Height / 2, 0);
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

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			this.ThemeChanged(this, e);
		}
	}

	protected virtual void OnBorderStyleChanged()
	{
		if (this.BorderStyleChanged != null)
		{
			this.BorderStyleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorder3DStyleChanged()
	{
		if (this.Border3DStyleChanged != null)
		{
			this.Border3DStyleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderSingleChanged()
	{
		if (this.BorderSingleChanged != null)
		{
			this.BorderSingleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderColorChanged()
	{
		if (this.BorderColorChanged != null)
		{
			this.BorderColorChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnGradientBackgroundChanged()
	{
		if (this.GradientBackgroundChanged != null)
		{
			this.GradientBackgroundChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnVerticalGradientChanged()
	{
		if (this.VerticalGradientChanged != null)
		{
			this.VerticalGradientChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnGradientColorsChanged()
	{
		if (this.GradientColorsChanged != null)
		{
			this.GradientColorsChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderSidesChanged()
	{
		if (this.BorderSidesChanged != null)
		{
			this.BorderSidesChanged(this, EventArgs.Empty);
		}
	}

	protected void ResetThemesEnabled()
	{
		StandardStyle.ResetThemesEnabled();
	}

	protected bool ShouldSerializeThemesEnabled()
	{
		return StandardStyle.ShouldSerializeThemesEnabled();
	}

	protected bool ShouldSerializeBackColor()
	{
		if (BackColor == SystemColors.Window)
		{
			return false;
		}
		return true;
	}

	public override void ResetBackColor()
	{
		BackColor = SystemColors.Window;
	}

	public virtual void ResetToolTip()
	{
		toolTip = new ToolTipAdv(this);
		toolTip.BackColor = SystemColors.Info;
		toolTip.BorderStyle = BorderStyle.FixedSingle;
		toolTip.Name = "toolTip";
		toolTip.TabIndex = 1;
		toolTip.Text = "toolTip";
		toolTip.Visible = false;
	}

	public virtual void ResetHelpText()
	{
		helpText = new ToolTipAdv(this);
		helpText.BorderStyle = BorderStyle.FixedSingle;
		helpText.Name = "helpText";
		helpText.TabIndex = 0;
		helpText.Text = "help text";
		helpText.Visible = false;
	}

	protected void ResetBackgroundColor()
	{
		BackgroundColor = BrushInfo.Empty;
	}

	protected bool ShouldSerializeBackgroundColor()
	{
		if (bgBrush == BrushInfo.Empty)
		{
			return false;
		}
		return true;
	}

	protected void ResetBorderColor()
	{
		BorderColor = Color.Black;
	}

	protected bool ShouldSerializeBorderColor()
	{
		if (borderColor == Color.Black)
		{
			return false;
		}
		return true;
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		bool flag = false;
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && !ignoreThemeBackground)
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
		tcd.DrawThemeBackground(graphics, 1, base.Enabled ? 1 : 4, rect, clip);
	}

	private bool PaintChildrenBackground(Graphics graphics, Control control, Rectangle clipRect)
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
				Rectangle clientRectangle = base.ClientRectangle;
				clientRectangle = RectangleToScreen(clientRectangle);
				clientRectangle = control2.RectangleToClient(clientRectangle);
				clipRect = RectangleToScreen(clipRect);
				clipRect = control2.RectangleToClient(clipRect);
				ThemedPaintBackground(graphics, clientRectangle, clipRect);
				return true;
			}
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual void DrawBackground(PaintEventArgs e)
	{
		if (base.ClientRectangle.Height <= 0 || base.ClientRectangle.Width <= 0)
		{
			return;
		}
		Rectangle r = base.ClientRectangle;
		if (!ThemesEnabled || !XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed || IgnoreThemeBackground)
		{
			if (BackgroundColor != BrushInfo.Empty)
			{
				if (IsHorizontalGradient)
				{
					int num = (HorisontalScroll ? (-HScrollPos) : 0);
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
			tcd.DrawThemeBackground(e.Graphics, 1, base.Enabled ? 1 : 4, new Rectangle(-2, -2, base.ClientRectangle.Width + 4, base.Height + 4));
		}
	}

	private void GradientPanel_BackColorChanged(object sender, EventArgs e)
	{
		InvalidateWindow();
	}

	private void InvalidateWindow()
	{
		int redrawFlags = 1281;
		NativeMethodsHelper.RedrawWindow(base.Handle, redrawFlags);
	}

	protected virtual void OnNodeStateImageListChanged()
	{
		Invalidate();
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

	public void BeginEdit(TreeNodeAdv node)
	{
		if (node != null && node.TreeView == this)
		{
			if (SetSelectedNode(node, selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = node;
				selectionBaseNode = node;
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
		SetSelectedNode(ActiveNode, selectedNodes, TreeViewAdvAction.Unknown);
		if (SelectedNode != ActiveNode)
		{
			return;
		}
		labelEditor.Text = string.Empty;
		TreeNodeAdvBeforeEditEventArgs e = new TreeNodeAdvBeforeEditEventArgs(activeNode, labelEditor);
		OnBeforeEdit(e);
		if (e.TextBox.Text != string.Empty)
		{
			labelEditor.Text = e.TextBox.Text;
		}
		else
		{
			labelEditor.Text = e.Node.Text;
		}
		if (!e.Cancel)
		{
			Rectangle textBounds = activeNode.TextBounds;
			if (textBounds.Width < 50)
			{
				textBounds.Width = 50;
			}
			labelEditor.Bounds = textBounds;
			PrepareEditor();
			m_needUpdateEditTop = true;
			ShowEditor();
		}
	}

	private void PrepareEditor()
	{
		lastText = activeNode.Text;
		labelEditor.Visible = true;
		IsEditEnding = true;
		labelEditor.Focus();
		IsEditEnding = false;
		labelEditor.SelectAll();
	}

	private void ShowEditor()
	{
		labelEditor.Tag = activeNode.Text;
		labelEditor.Font = activeNode.Font;
		m_textSelectionLength = labelEditor.SelectionLength;
		m_selectionStart = labelEditor.SelectionStart;
	}

	public virtual void EndEdit(bool cancel)
	{
		if (!IsEditing || IsEditEnding)
		{
			return;
		}
		bool flag = false;
		if (activeNode != null)
		{
			if (!cancel)
			{
				TreeNodeAdvCancelableEditEventArgs e = new TreeNodeAdvCancelableEditEventArgs(activeNode, labelEditor.Text);
				OnNodeEditorValidating(e);
				cancel = e.Cancel;
				if (cancel)
				{
					flag = e.ContinueEditing;
				}
			}
			if (cancel)
			{
				activeNode.Text = (string)labelEditor.Tag;
			}
			else
			{
				string text = labelEditor.Text;
				if (m_historyManager != null && m_bHistoryEnabled && text != activeNode.Text)
				{
					TreeViewCommand cmd = new TreeViewCommand(activeNode, text);
					m_historyManager.Do(cmd);
				}
				activeNode.Text = text;
			}
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
		if (activeNode != null)
		{
			if (!cancel)
			{
				OnNodeEditorValidated(new TreeNodeAdvEditEventArgs(activeNode, activeNode.Text));
			}
			else if (cancelEdit)
			{
				OnEditCancelled(new TreeNodeAdvEditEventArgs(activeNode, labelEditor.Text));
			}
		}
	}

	public void EndEdit()
	{
		EndEdit(cancel: false);
	}

	private void labelEditor_Leave(object sender, EventArgs e)
	{
		if (!ignoreLeave)
		{
			EndEdit();
		}
	}

	private void HideEditor()
	{
		ignoreLeave = true;
		labelEditor.Hide();
		ignoreLeave = false;
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

	public void RaiseItemDrag(ItemDragEventArgs e)
	{
		if (!(e.Item is TreeNodeAdv[]))
		{
			throw new Exception("The RaiseItemDrag method is called with invalid argument type.");
		}
		draggedTnas = e.Item as TreeNodeAdv[];
		OnItemDrag(e);
		if (!m_bAllowDropStubWorks)
		{
			draggedTnas = null;
		}
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

	protected virtual void OnAfterSelect(EventArgs e)
	{
		if (this.AfterSelect != null)
		{
			this.AfterSelect(this, e);
		}
	}

	protected internal virtual void OnAfterCheck(TreeNodeAdvEventArgs e)
	{
		if (m_bIsMouseDown)
		{
			e.Action = TreeViewAdvAction.ByMouse;
		}
		if (m_bIsKeyDown)
		{
			e.Action = TreeViewAdvAction.ByKeyboard;
		}
		if (e.Node != null)
		{
			checkedNodes.ResolveNode(e.Node);
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
			this.BeforeSelect(this, e);
		}
	}

	protected internal virtual void OnBeforeCheck(TreeNodeAdvBeforeCheckEventArgs e)
	{
		if (this.BeforeCheck != null)
		{
			this.BeforeCheck(this, e);
		}
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedNodeForeColor()
	{
		return selectedNodeForeColor != SystemColors.HighlightText;
	}

	[DocumentationExclude]
	protected void ResetSelectedNodeForeColor()
	{
		SelectedNodeForeColor = SystemColors.HighlightText;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeInactiveSelectedNodeForeColor()
	{
		return inactiveSelectedNodeForeColor != SystemColors.ControlText;
	}

	[DocumentationExclude]
	protected void ResetInactiveSelectedNodeForeColor()
	{
		InactiveSelectedNodeForeColor = SystemColors.ControlText;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeSelectedNodeBackground()
	{
		return !selectedNodeBackground.Equals(new BrushInfo(SystemColors.Highlight));
	}

	[DocumentationExclude]
	protected void ResetSelectedNodeBackground()
	{
		SelectedNodeBackground = new BrushInfo(SystemColors.Highlight);
	}

	[DocumentationExclude]
	protected bool ShouldSerializeInactiveSelectedNodeBackground()
	{
		return !inactiveSelectedNodeBackground.Equals(new BrushInfo(SystemColors.Control));
	}

	[DocumentationExclude]
	protected void ResetInactiveSelectedNodeBackground()
	{
		InactiveSelectedNodeBackground = new BrushInfo(SystemColors.Control);
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

	private void ImageList_HandleRecreated(object sender, EventArgs e)
	{
		Root.RecalculateAllDimensions();
		Invalidate();
	}

	[DocumentationExclude]
	private void UpdateImageList(ref ImageList ilTarget, ImageList ilSource)
	{
		if (ilTarget != ilSource)
		{
			if (ilTarget != null)
			{
				ilTarget.RecreateHandle -= ImageList_HandleRecreated;
			}
			ilTarget = ilSource;
			if (ilTarget != null)
			{
				ilTarget.RecreateHandle += ImageList_HandleRecreated;
			}
			Root.RecalculateAllDimensions();
			Invalidate();
		}
	}

	[DocumentationExclude]
	protected virtual void OnSelectionModeChanged()
	{
		if (selectedNodes.Count > 1)
		{
			selectedNodes.RemoveRange(1, selectedNodes.Count - 1);
			TreeNodeAdv treeNodeAdv = (SelectedNode = selectedNodes[0]);
			ActiveNode = treeNodeAdv;
		}
	}

	internal bool IsBaseStyleRemoveable(string styleName)
	{
		if (styleName == DefaultBaseStyleName)
		{
			return false;
		}
		return true;
	}

	internal string GetHintTextForStyle(string styleName)
	{
		string result = string.Empty;
		if (styleName == DefaultBaseStyleName)
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
		string nodeLevelStyleBaseName = NodeLevelStyleBaseName;
		if (styleName.IndexOf(nodeLevelStyleBaseName) == 0)
		{
			styleName = styleName.Substring(nodeLevelStyleBaseName.Length);
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

	private void UpdateRootPlusMinusVisibility()
	{
		foreach (TreeNodeAdv node in Root.Nodes)
		{
			node.UpdatePlusMinusVisibility();
		}
	}

	private void iterate(TreeNodeAdv tna, bool bExpanded)
	{
		if (tna.HasChildren)
		{
			if (tna.Expanded == bExpanded && !tnaCollection.Contains(tna))
			{
				tnaCollection.Add(tna);
			}
			foreach (TreeNodeAdv node in tna.Nodes)
			{
				iterate(node, bExpanded);
			}
		}
		if (tna.NextNode != null)
		{
			iterate(tna.NextNode, bExpanded);
		}
	}

	protected bool ShouldSerializeLineColor()
	{
		return lineColor != Color.Gray;
	}

	protected void ResetLineColor()
	{
		LineColor = Color.Gray;
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
				if (selectedNodes != null && selectedNodes.Contains(item))
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
		if (nodesToRemove == selectedNodes)
		{
			nodesToRemove = selectedNodes.Clone() as ArrayList;
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
			selectedNodes.Clear();
			TreeNodeAdv treeNodeAdv2 = null;
			if (selectUpwardDirection)
			{
				for (int num = selectedNodesCollection.Count - 1; num >= 0; num--)
				{
					TreeNodeAdv treeNodeAdv3 = selectedNodesCollection[num];
					treeNodeAdv2 = treeNodeAdv3;
					selectedNodes.Add(treeNodeAdv3);
					if (ensureVisibleSelectedNode && ensureVisible && (!m_bIsMouseUp || (m_bIsMouseUp && treeNodeAdv3 == m_lastSelectedNode)))
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
					selectedNodes.Add(item4);
					if (!ensureVisibleSelectedNode || !ensureVisible || (m_bIsMouseUp && (!m_bIsMouseUp || item4 != m_lastSelectedNode)))
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
				curSelectedNodeIndex = treeNodeAdv2.Parent.Nodes.IndexOf(treeNodeAdv2);
			}
			else
			{
				curSelectedNodeIndex = -1;
			}
			if (action == TreeViewAdvAction.ByMouse && base.HScrollBar.Value != 0)
			{
				base.HScrollBar.Value = 0;
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
				selectedNodes.Remove(item5);
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

	public void ResetItemHeight()
	{
		itemHeight = -1;
		Root.RecalculateAllDimensions();
	}

	protected bool ShouldSerializeItemHeight()
	{
		if (itemHeight != -1)
		{
			return true;
		}
		return false;
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

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new TreeViewAdvAcessibleObject(this);
	}

	protected override void OnEnter(EventArgs arg)
	{
		if (SelectedNode == null && !IsBroughtIntoView)
		{
			if (ShouldSelectNodeOnEnter)
			{
				SetDefaultSelectionOnEnter();
			}
			else if (Focused)
			{
				SetDefaultSelectionOnEnter();
			}
		}
		base.OnEnter(arg);
	}

	protected virtual void SetDefaultSelectionOnEnter()
	{
		if (Nodes.Count <= 0)
		{
			return;
		}
		if (Control.MouseButtons != MouseButtons.None)
		{
			TreeNodeAdv nodeAtPoint = GetNodeAtPoint(PointToClient(Control.MousePosition));
			if (nodeAtPoint != null && nodeAtPoint.Enabled && SetSelectedNode(nodeAtPoint, selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = nodeAtPoint;
				selectionBaseNode = nodeAtPoint;
			}
		}
		if (SelectedNode == null && ShouldSelectNodeOnEnter)
		{
			TreeNodeAdv nextSelectableNode = Root.NextSelectableNode;
			if (SetSelectedNode(nextSelectableNode, selectedNodes, TreeViewAdvAction.Unknown))
			{
				ActiveNode = nextSelectableNode;
				selectionBaseNode = nextSelectableNode;
			}
		}
	}

	private void InvalidateNodeCollection(ICollection col)
	{
		foreach (TreeNodeAdv item in col)
		{
			if (item.Visible)
			{
				Rectangle rc = new Rectangle(base.ClientRectangle.X, item.Bounds.Y, base.ClientRectangle.Width, item.Bounds.Height);
				Invalidate(rc);
			}
		}
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
			if (treeNodeAdv.Visible)
			{
				if (FullRowSelect)
				{
					Rectangle bounds = treeNodeAdv.Bounds;
					bounds.Inflate(treeNodeAdv.Bounds.X, 0);
					bounds.Width += gutterSpace - treeNodeAdv.Bounds.X;
					Invalidate(bounds);
				}
				else
				{
					Invalidate(treeNodeAdv.Bounds);
				}
			}
		}
		Graphics g = CreateGraphics();
		if (KeepDottedSelection)
		{
			int j = 0;
			for (int count = SelectedNodes.Count; j < count; j++)
			{
				TreeNodeAdv treeNodeAdv2 = SelectedNodes[j];
				if (treeNodeAdv2.Visible)
				{
					treeNodeAdv2.DrawFocusRect(g, this);
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
		NeedUpdateCustomControls = true;
		base.OnRightToLeftChanged(e);
		if (base.HScrollBar.InnerScrollBar != null)
		{
			base.HScrollBar.InnerScrollBar.RightToLeft = RightToLeft;
		}
		if (base.VScrollBar.InnerScrollBar != null)
		{
			base.VScrollBar.InnerScrollBar.RightToLeft = RightToLeft;
		}
		base.VScrollBar.RightToLeft = RightToLeft;
		base.HScrollBar.RightToLeft = RightToLeft;
		if (Office2007ScrollBars && RightToLeft == RightToLeft.Yes)
		{
			base.HScrollBar.Value = ReflectPosition(HScrollPos);
		}
		else
		{
			base.HScrollBar.Value = HScrollPos;
		}
	}

	public TreeViewAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(TreeViewAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		bgBrush = BrushInfo.Empty;
		stylePairs = new StyleNamePairsList(this);
		cd = new ControlDrawing();
		if (XPThemes.IsThemedOS)
		{
			tcd = new ThemedControlDrawing("EDIT");
			buttonTD = new ThemedControlDrawing("BUTTON");
			treeTD = new ThemedControlDrawing("TREEVIEW");
		}
		boundStyle = new TreeNodeAdvStyleInfo(new TreeBoundStyleInfoStore(this));
		TreeNodeAdvStyleInfo value = new TreeNodeAdvStyleInfo(new TreeViewAdvStyleInfoIdentity(this));
		baseStyles[DefaultBaseStyleName] = value;
		InitializeComponent();
		BackColor = SystemColors.Window;
		base.BackColorChanged += GradientPanel_BackColorChanged;
		SetStyle(ControlStyles.Selectable, value: true);
		SetStyle(ControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
		Root = new TreeNodeAdv("root");
		root.Expand();
		checkedNodes = new CheckedNodesColection();
		selectedNodes = new SelectedNodesCollection();
		selectedNodes.CollectionChanged += selectedNodes_Changed;
		base.VScrollBar.SupportsThumbTrack = true;
		base.HScrollBar.SupportsThumbTrack = true;
		base.HScrollBar.SmallChange = 10;
		AllowIncreaseSmallChange = false;
		dragHelper = new DragHelper();
		base.InsideScrollMargins = new Size(0, 10);
		timer = new Timer();
	}

	public void Print()
	{
		PrintHelper printHelper = new PrintHelper();
		printHelper.PrintTree(this, string.Empty);
	}

	public void PrintPreview()
	{
		PrintHelper printHelper = new PrintHelper();
		printHelper.PrintPreviewTree(this, string.Empty);
	}

	public Bitmap GetDraggedNodesBitmap()
	{
		if (draggedTnas == null || draggedTnas.Length == 0)
		{
			return null;
		}
		Rectangle clientRectangle = base.ClientRectangle;
		if (base.HScrollBar.Enabled)
		{
			clientRectangle.X = -base.HScrollBar.Value;
			clientRectangle.Width = base.ClientRectangle.Width + base.HScrollBar.Maximum;
		}
		Bitmap bitmap = new Bitmap(clientRectangle.Width, clientRectangle.Height);
		Graphics graphics = Graphics.FromImage(bitmap);
		if (clientRectangle.X < 0)
		{
			graphics.TranslateTransform(-clientRectangle.X, 0f, MatrixOrder.Append);
		}
		PaintEventArgs e = new PaintEventArgs(graphics, clientRectangle);
		preparingDragCueBitmap = true;
		string baseStyle = string.Empty;
		if (BaseStyles.Contains("DragNodeCueStyle"))
		{
			baseStyle = StandardStyle.BaseStyle;
			StandardStyle.BaseStyle = "DragNodeCueStyle";
		}
		graphics.FillRectangle(SystemBrushes.Window, clientRectangle);
		OnPaint(e);
		if (BaseStyles.Contains("DragNodeCueStyle"))
		{
			StandardStyle.BaseStyle = baseStyle;
		}
		preparingDragCueBitmap = false;
		graphics.Dispose();
		Bitmap result = ExtractSelectedBoundsFromBmp(bitmap, draggedTnas);
		bitmap.Dispose();
		return result;
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
		if (treeNodeAdv != null)
		{
			int i = minIndex;
			int num = 0;
			for (; i <= maxIndex; i++)
			{
				if (i < treeNodeAdv.Nodes.Count && SelectedNodes.Contains(treeNodeAdv.Nodes[i]))
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
		Rectangle empty = Rectangle.Empty;
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
		return new Rectangle(location, size);
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

	private void ResolveNodes(TreeNodeAdv node)
	{
		for (int i = 0; i < node.Nodes.Count; i++)
		{
			ResolveNodes(node.Nodes[i]);
		}
		checkedNodes.ResolveNode(node);
	}

	void ISupportInitialize.BeginInit()
	{
		RefreshVScrollbar(null, 0);
	}

	void ISupportInitialize.EndInit()
	{
		root.RecalculateAllDimensions();
		root.Expand();
		VerticallScroll = true;
		HorisontalScroll = true;
		for (int i = 0; i < Nodes.Count; i++)
		{
			ResolveNodes(Nodes[i]);
		}
		RefreshVScrollbar();
		rootMaxXChanged(root.MaxX);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			LabelEditStartTimer = null;
			if (helpText != null)
			{
				helpText.Dispose();
			}
			if (toolTip != null)
			{
				toolTip.Dispose();
			}
			if (selectedNodes != null)
			{
				selectedNodes.CollectionChanged -= selectedNodes_Changed;
				selectedNodes = null;
			}
			if (checkedNodes != null)
			{
				checkedNodes = null;
			}
			if (labelEditor != null)
			{
				labelEditor.TextChanged -= labelEditor_TextChanged;
				labelEditor.MouseUp -= labelEditor_MouseUp;
				labelEditor.KeyDown -= labelEditor_KeyDown;
				labelEditor.Leave -= labelEditor_Leave;
				labelEditor.LostFocus -= labelEditor_LostFocus;
			}
			if (stateImageList != null)
			{
				if (stateImageList != null)
				{
					stateImageList.RecreateHandle -= ImageList_HandleRecreated;
				}
				stateImageList = null;
			}
			if (rightImageList != null)
			{
				if (rightImageList != null)
				{
					rightImageList.RecreateHandle -= ImageList_HandleRecreated;
				}
				rightImageList = null;
			}
			if (leftImageList != null)
			{
				if (leftImageList != null)
				{
					leftImageList.RecreateHandle -= ImageList_HandleRecreated;
				}
				leftImageList = null;
			}
			if (dragHelper != null)
			{
				dragHelper.DragWindow.Dispose();
			}
			if (tcd != null)
			{
				tcd.Dispose();
			}
			if (buttonTD != null)
			{
				buttonTD.Dispose();
			}
			if (treeTD != null)
			{
				treeTD.Dispose();
			}
			if (timer != null)
			{
				timer.Dispose();
			}
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
		this.keyInputTimer = new System.Windows.Forms.Timer(this.components);
		this.labelEditor = new System.Windows.Forms.TextBox();
		this.toolTip = new Syncfusion.Windows.Forms.ToolTipAdv(this);
		this.helpText = new Syncfusion.Windows.Forms.ToolTipAdv(this);
		base.SuspendLayout();
		this.keyInputTimer.Interval = 500;
		this.keyInputTimer.Tick += new System.EventHandler(keyInputTimer_Tick);
		this.labelEditor.AcceptsReturn = true;
		this.labelEditor.AcceptsTab = true;
		this.labelEditor.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.labelEditor.Location = new System.Drawing.Point(530, 0);
		this.labelEditor.Name = "labelEditor";
		this.labelEditor.TabIndex = 0;
		this.labelEditor.Text = "";
		this.labelEditor.Visible = false;
		this.labelEditor.TextChanged += new System.EventHandler(labelEditor_TextChanged);
		this.labelEditor.KeyUp += new System.Windows.Forms.KeyEventHandler(labelEditor_KeyUp);
		this.labelEditor.KeyDown += new System.Windows.Forms.KeyEventHandler(labelEditor_KeyDown);
		this.labelEditor.MouseUp += new System.Windows.Forms.MouseEventHandler(labelEditor_MouseUp);
		this.labelEditor.Leave += new System.EventHandler(labelEditor_Leave);
		this.labelEditor.LostFocus += new System.EventHandler(labelEditor_LostFocus);
		this.toolTip.BackColor = System.Drawing.SystemColors.Info;
		this.toolTip.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.toolTip.Name = "toolTip";
		this.toolTip.TabIndex = 1;
		this.toolTip.Text = "toolTip";
		this.toolTip.Visible = false;
		this.helpText.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		this.helpText.Name = "helpText";
		this.helpText.TabIndex = 0;
		this.helpText.Text = "help text";
		this.helpText.Visible = false;
		base.Controls.AddRange(new System.Windows.Forms.Control[1] { this.labelEditor });
		base.Size = new System.Drawing.Size(312, 368);
		base.SizeChanged += new System.EventHandler(TreeViewAdv_SizeChanged);
		base.ScrollbarsVisibleChanged += new System.EventHandler(TreeViewAdv_ScrollbarsVisibleChanged);
		base.Leave += new System.EventHandler(TreeViewAdv_Leave);
		base.ResumeLayout(false);
	}

	internal void rootMaxXChanged(int maxX)
	{
		if (!HScroll)
		{
			return;
		}
		int num = base.Width;
		if (VerticallScroll)
		{
			num -= SystemInformation.VerticalScrollBarWidth;
			num -= 3;
		}
		if (num < 0)
		{
			num = 0;
		}
		if (maxX > num && Nodes.Count > 0)
		{
			HorisontalScroll = true;
			base.HScrollBar.Enabled = true;
		}
		else
		{
			base.HScrollBar.Value = 0;
			base.HScrollBar.Enabled = false;
			HorisontalScroll = false;
		}
		if (!inHScroll && maxX > num)
		{
			base.HScrollBar.Minimum = 0;
			base.HScrollBar.Maximum = maxX;
			base.HScrollBar.LargeChange = num;
			HScrollPos = 0;
			if (Office2007ScrollBars && RightToLeft == RightToLeft.Yes)
			{
				base.HScrollBar.Value = ReflectPosition(HScrollPos);
			}
			else
			{
				base.HScrollBar.Value = HScrollPos;
			}
		}
		if (base.HScrollBar.InnerScrollBar != null && base.HScrollBar.InnerScrollBar is IScrollBar scrollBar)
		{
			scrollBar.UpdateScrollInfo();
		}
	}

	internal int ReflectPosition(int position)
	{
		if (base.HScrollBar != null)
		{
			return base.HScrollBar.Minimum + (base.HScrollBar.Maximum - base.HScrollBar.LargeChange + 1) - position;
		}
		return -1;
	}

	internal virtual int DrawNode(Graphics g, Rectangle clip, TreeNodeAdv node, int y, int level, Point mousePos, bool mouseDown, bool background)
	{
		int num = 3;
		int num2 = 0;
		int nWidth = base.ClientRectangle.Width - gutterSpace + base.HScrollBar.Value;
		bool isMirrored = GetIsMirrored();
		num2 = ((!isMirrored) ? (gutterSpace - base.HScrollBar.Value) : MirrorHorizontalPosition(gutterSpace, nWidth));
		node.iBounds = new Rectangle(num2, y, nWidth, node.Height);
		_ = Control.ModifierKeys;
		bool flag = false;
		bool flag2 = false;
		bool hotTracked = false;
		if (!preparingDragCueBitmap)
		{
			flag = selectedNodes.Contains(node) && (!hideSelection || Focused);
			flag2 = node == activeNode;
			hotTracked = hotTracking && !m_bMouseLeaved && node.TextAndImageBounds.Contains(PointToClient(Control.MousePosition)) && !dragging;
		}
		int num3 = node.Bounds.X;
		int num4 = num + node.Level * Indent + node.Width;
		if (isMirrored)
		{
			num3 = MirrorHorizontalPosition(num3, num4);
		}
		int num5 = num3 + num4;
		if (node.OptionedChild != null && !node.OptionedChild.IsVisible)
		{
			foreach (TreeNodeAdv value in m_hashHighlightedNodes.Values)
			{
				if (value == node)
				{
					flag = true;
					break;
				}
			}
		}
		if (!background)
		{
			if (flag2 || ownerDrawNodes || ((num3 <= clip.Left || num3 <= clip.Right) && (num5 >= clip.Left || num5 >= clip.Right)))
			{
				bool selected = node == m_highlightedNode || flag;
				if (!flag)
				{
					if (m_highlightedNode != null)
					{
						if (m_highlightedNode.Nodes.Count == 0)
						{
							selected = false;
						}
					}
					else
					{
						selected = false;
					}
				}
				Point textLocation = new Point(node.TextBounds.Left, node.TextBounds.Y);
				Color foreColor = node.GetForeColor(flag, hotTracked);
				TreeNodeAdvPaintEventArgs e = new TreeNodeAdvPaintEventArgs(node, g, node.Bounds, textLocation, level, parentIndent, selected, flag2, fullRowSelect, hotTracked, foreColor);
				if ((paintFilter == null || !paintFilter.OnBeforeNodePaint(e)) && ownerDrawNodes)
				{
					OnBeforeNodePaint(e);
				}
				if (!e.Handled)
				{
					using Pen linePen = LinePen;
					node.Draw(treeTD, buttonTD, linePen, mousePos, mouseDown, e);
				}
				if (ownerDrawNodes)
				{
					OnAfterNodePaint(e);
				}
				if (paintFilter != null)
				{
					paintFilter.OnAfterNodePaint(e);
				}
			}
		}
		else
		{
			BrushInfo brushInfo = BrushInfo.Empty;
			if (flag)
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
			TreeNodeAdvPaintBackgroundEventArgs e2 = new TreeNodeAdvPaintBackgroundEventArgs(node, g, flag, flag2, fullRowSelect, hotTracked, brushInfo);
			if ((paintFilter == null || !paintFilter.OnNodeBackgroundPaint(e2)) && ownerDrawNodesBackground)
			{
				OnNodeBackgroundPaint(e2);
			}
			Rectangle bounds = node.Bounds;
			bounds.Inflate(node.Bounds.X, 0);
			bounds.Width += gutterSpace - node.Bounds.X;
			if (!e2.Handled)
			{
				BrushPaint.FillRectangle(g, bounds, node.Background);
			}
			if (!e2.BrushInfo.IsEmpty && !e2.Handled && !IsEditing && (fullRowSelect ? bounds : node.TextBounds).IntersectsWith(clip))
			{
				BrushPaint.FillRectangle(g, fullRowSelect ? bounds : node.TextBounds, e2.BrushInfo);
			}
		}
		return y + node.Height;
	}

	private void DrawVerticalLines(Graphics g, TreeNodeAdv topCRNode, TreeNodeAdv node, int rowIndex, int lastNode)
	{
		int num = node.VisibleNodeCount;
		if ((VerticallScroll && rowIndex + num <= base.VScrollBar.Value) || (VerticallScroll && rowIndex > lastNode) || !node.HasChildren || !node.Expanded)
		{
			return;
		}
		if (node.Nodes.Count > 0)
		{
			TreeNodeAdv treeNodeAdv = node.Nodes[node.Nodes.Count - 1];
			num -= treeNodeAdv.VisibleNodeCount - (treeNodeAdv.Visible ? 1 : 0);
		}
		TreeNodeAdv treeNodeAdv2 = topCRNode;
		if (treeNodeAdv2.Level <= node.Level)
		{
			treeNodeAdv2 = node.Nodes[0];
		}
		else
		{
			while (treeNodeAdv2 != null && treeNodeAdv2.Parent != node)
			{
				treeNodeAdv2 = treeNodeAdv2.Parent;
			}
			if (treeNodeAdv2 == null)
			{
				treeNodeAdv2 = node.Nodes[0];
			}
		}
		if (!VerticallScroll || rowIndex + num > base.VScrollBar.Value)
		{
			int level = node.Level;
			if (level != 0 || ShowRootLines)
			{
				bool isMirrored = GetIsMirrored();
				int num2 = level * Indent + node.PlusMinus.Width / 2 + gutterSpace;
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
				TreeNodeAdv treeNodeAdv3 = node.Nodes[node.Nodes.Count - 1];
				int count = node.Nodes.Count;
				for (int i = node.Nodes.IndexOf(treeNodeAdv2); i < count; i++)
				{
					TreeNodeAdv treeNodeAdv4 = node.Nodes[i];
					int num3 = NodeToRowIndex(treeNodeAdv4);
					if (VerticallScroll && num3 > lastNode)
					{
						treeNodeAdv3 = treeNodeAdv4;
						break;
					}
					if (transparentControls && treeNodeAdv4.ShouldDrawPlusMinus())
					{
						g.SetClip(new Rectangle(num2 - 2, NodeToPoint(treeNodeAdv4).Y + (treeNodeAdv4.Height - treeNodeAdv4.PlusMinus.Height) / 2, 4, treeNodeAdv4.PlusMinus.Height), CombineMode.Exclude);
					}
				}
				int num4 = 0;
				if ((level == 0 && VScrollPos == 1) || NodeToRowIndex(node) >= VScrollPos)
				{
					num4 = ((level == 0 && VScrollPos == 1) ? (NodeToPoint(node.FirstNode).Y + node.FirstNode.Height / 2) : (NodeToPoint(node).Y + node.Height));
				}
				int num5 = NodeToPoint(treeNodeAdv3).Y + treeNodeAdv3.Height / 2;
				using (Pen pen = LinePen)
				{
					g.DrawLine(pen, new Point(num2, num4), new Point(num2, num5));
				}
				if (transparentControls)
				{
					g.ResetClip();
				}
			}
		}
		int count2 = node.Nodes.Count;
		for (int j = node.Nodes.IndexOf(treeNodeAdv2); j < count2; j++)
		{
			int num6 = NodeToRowIndex(node.Nodes[j]);
			if (VerticallScroll && num6 > lastNode)
			{
				break;
			}
			DrawVerticalLines(g, topCRNode, node.Nodes[j], num6, lastNode);
		}
	}

	private void CustomControlsRefresh()
	{
		if (CustomControlCollection.Count <= 0)
		{
			return;
		}
		int i = 0;
		for (int count = Nodes.Count; i < count; i++)
		{
			TreeNodeAdv treeNodeAdv = Nodes[i];
			if (treeNodeAdv.CustomControl != null)
			{
				treeNodeAdv.CustomControlCollectionChanging(treeNodeAdv, CollectionChangeAction.Refresh);
			}
		}
	}

	[DocumentationExclude]
	public void Draw(PaintEventArgs e)
	{
		if (Nodes.Count == 0)
		{
			VerticallScroll = false;
			HorisontalScroll = false;
			return;
		}
		Point mousePos = PointToClient(Control.MousePosition);
		bool mouseDown = (Control.MouseButtons & MouseButtons.Left) == MouseButtons.Left;
		int num = base.VScrollBar.Value + 2;
		int bottom = base.ClientRectangle.Bottom;
		TreeNodeAdv treeNodeAdv = PointToNode(base.ClientRectangle.Location);
		DrawSelectionRectangles(e.Graphics, e.ClipRectangle);
		if (showLines && treeNodeAdv != null)
		{
			TreeNodeAdv lastVisibleNode = LastVisibleNode;
			if (lastVisibleNode != null)
			{
				DrawVerticalLines(e.Graphics, treeNodeAdv, Root, 0, NodeToRowIndex(lastVisibleNode));
			}
		}
		int num2 = 0;
		if (treeNodeAdv != null)
		{
			num = NodeToPoint(treeNodeAdv).Y;
			ArrayList arrayList = new ArrayList();
			num2 = treeNodeAdv.TreeRowIndex;
			while (num < bottom && treeNodeAdv != null)
			{
				int level = treeNodeAdv.Level - 1;
				num = DrawNode(e.Graphics, e.ClipRectangle, treeNodeAdv, num, level, mousePos, mouseDown, background: false);
				if (NeedUpdateCustomControls)
				{
					arrayList.Add(treeNodeAdv);
				}
				num2++;
				treeNodeAdv = RowIndexToNode(num2);
				if (treeNodeAdv != null && treeNodeAdv.TreeRowIndex != num2)
				{
					treeNodeAdv = RowIndexToNode(num2);
				}
			}
			if (NeedUpdateCustomControls)
			{
				NeedUpdateCustomControls = false;
				Hashtable hashtable = (Hashtable)CustomControlCollection.Clone();
				foreach (DictionaryEntry item in hashtable)
				{
					Control control = (Control)item.Key;
					TreeNodeAdv treeNodeAdv2 = (TreeNodeAdv)item.Value;
					if (arrayList.Contains(item.Value))
					{
						control.Visible = true;
						treeNodeAdv2.UpdateCustomConrtol();
					}
					else if (treeNodeAdv2.Bounds.Y >= e.ClipRectangle.Y)
					{
						control.Visible = false;
					}
				}
			}
		}
		RefreshVScrollbar(treeNodeAdv, num);
	}

	[DocumentationExclude]
	internal bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	[DocumentationExclude]
	protected int MirrorHorizontalPosition(int nX, int nWidth)
	{
		int num = ((borderStyle != BorderStyle.Fixed3D) ? 1 : 2);
		int num2 = 2 * num + nWidth + nX;
		if (HorisontalScroll)
		{
			num2 -= HScrollPos;
		}
		if (VerticallScroll && !Office2007ScrollBars)
		{
			num2 += SystemInformation.VerticalScrollBarWidth;
		}
		return base.Width - num2;
	}

	private void UpdateVerticalScrollBar()
	{
		if (!VScroll)
		{
			return;
		}
		int num = 1;
		int num2 = Math.Max(num, Root.VisibleNodeCount);
		int num3 = base.ClientSize.Height;
		while (num3 > 0 && num2 > num)
		{
			TreeNodeAdv treeNodeAdv = RowIndexToNode(num2 - 1);
			if (treeNodeAdv != null)
			{
				num3 -= treeNodeAdv.Height;
				if (num3 <= 0)
				{
					break;
				}
			}
			num2--;
		}
		base.VScrollBar.Minimum = num;
		base.VScrollBar.Maximum = num2;
		Invalidate();
	}

	private void RefreshVScrollbar()
	{
		RefreshVScrollbar(PointToNode(new Point(0, 0)), 0);
	}

	private void RefreshVScrollbar(TreeNodeAdv currentNode, int y)
	{
		if (!VScroll || !base.IsHandleCreated || inVScroll)
		{
			return;
		}
		base.VScrollBar.Minimum = 1;
		base.VScrollBar.Maximum = Math.Max(base.VScrollBar.Minimum, Root.VisibleNodeCount - 1);
		VScrollPos = VScrollPos;
		base.VScrollBar.Value = VScrollPos;
		int num = base.VScrollBar.Maximum;
		TreeNodeAdv treeNodeAdv = null;
		int num2 = base.VScrollBar.Minimum;
		do
		{
			int num3 = 0;
			int num4 = 0;
			int num5 = num2;
			do
			{
				num5++;
				treeNodeAdv = RowIndexToNode(num5);
				if (treeNodeAdv != null)
				{
					num4 += treeNodeAdv.Height;
					num3++;
				}
			}
			while (treeNodeAdv != null && num4 + treeNodeAdv.Height < ClientHeight);
			if (treeNodeAdv != null)
			{
				num = Math.Min(num, num3);
			}
			num2++;
		}
		while (num2 < Root.VisibleNodeCount - 1 && treeNodeAdv != null);
		base.VScrollBar.LargeChange = num;
		int num6 = base.Height;
		if (currentNode != null && VScrollPos == 1)
		{
			int num7 = currentNode.TreeRowIndex;
			while (y <= num6 && currentNode != null)
			{
				y += currentNode.Height;
				num7++;
				currentNode = RowIndexToNode(num7);
			}
		}
		bool verticallScroll = VerticallScroll;
		if (VScrollPos == 1 && y > num6 - SystemInformation.HorizontalScrollBarHeight && y <= num6)
		{
			if (verticallScroll)
			{
				rootMaxXChanged(root.MaxX);
			}
			if (HorisontalScroll)
			{
				num6 -= SystemInformation.HorizontalScrollBarHeight;
			}
		}
		bool flag = y > num6 || currentNode != null || VScrollPos > 1;
		if (verticallScroll != flag && !base.FillSplitterPane)
		{
			VerticallScroll = flag;
		}
		base.VScrollBar.Enabled = flag;
		if (VerticallScroll && !verticallScroll)
		{
			rootMaxXChanged(root.MaxX);
		}
		if (base.VScrollBar.InnerScrollBar != null && base.VScrollBar.InnerScrollBar is IScrollBar scrollBar)
		{
			scrollBar.UpdateScrollInfo();
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
			if (NodeToPoint(treeNodeAdv).Y + treeNodeAdv.Height > base.ClientRectangle.Height)
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

	private void DrawSelectionRectangles(Graphics g, Rectangle clipRectangle)
	{
		TreeNodeAdv treeNodeAdv = PointToNode(new Point(clipRectangle.X, clipRectangle.Y));
		if (treeNodeAdv == null || treeNodeAdv == root)
		{
			return;
		}
		int num = NodeToPoint(treeNodeAdv).Y;
		int bottom = clipRectangle.Bottom;
		int num2 = treeNodeAdv.TreeRowIndex;
		while (num < bottom && treeNodeAdv != null)
		{
			int level = treeNodeAdv.Level - 1;
			num = DrawNode(g, clipRectangle, treeNodeAdv, num, level, new Point(0, 0), mouseDown: false, background: true);
			num2++;
			treeNodeAdv = RowIndexToNode(num2);
			if (treeNodeAdv != null && treeNodeAdv.TreeRowIndex != num2)
			{
				treeNodeAdv = RowIndexToNode(num2);
			}
		}
	}

	protected override void OnParentChanged(EventArgs e)
	{
		if (m_focusSubscribed != null)
		{
			m_focusSubscribed.GotFocus -= Parent_GotFocus;
		}
		if (base.Parent != null)
		{
			base.Parent.GotFocus += Parent_GotFocus;
		}
		m_focusSubscribed = base.Parent;
		base.OnParentChanged(e);
	}

	private void Parent_GotFocus(object sender, EventArgs e)
	{
		if (base.Parent != null && base.Parent.Controls.Count == 1)
		{
			Focus();
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		DrawBackground(e);
		Draw(e);
		if (m_needUpdateEditTop)
		{
			m_needUpdateEditTop = false;
			if (labelEditor.Visible && activeNode != null && labelEditor.Top != activeNode.Bounds.Top)
			{
				labelEditor.Top = activeNode.Bounds.Top;
			}
		}
	}

	public TreeNodeAdv PointToNode(Point pt)
	{
		int num = 0;
		int num2 = VScrollPos;
		for (TreeNodeAdv treeNodeAdv = RowIndexToNode(num2); treeNodeAdv != null; treeNodeAdv = RowIndexToNode(num2))
		{
			num += treeNodeAdv.Height;
			if (num > pt.Y)
			{
				return treeNodeAdv;
			}
			num2++;
		}
		return null;
	}

	public Point NodeToPoint(TreeNodeAdv node)
	{
		int num = NodeToRowIndex(node);
		if (node == root)
		{
			if (!VerticallScroll || !root.HasChildren)
			{
				return new Point(0, -root.Height / 2);
			}
			if (root.HasChildren)
			{
				return new Point(0, NodeToPoint(RowIndexToNode(1)).Y - root.Height / 2);
			}
		}
		if (num < VScrollPos)
		{
			int num2 = 0;
			for (int num3 = VScrollPos; num3 > num; num3--)
			{
				node = RowIndexToNode(num3);
				if (node != null)
				{
					num2 -= node.Height;
				}
			}
			return new Point(0, num2);
		}
		int num4 = 0;
		for (int i = VScrollPos; i < num; i++)
		{
			node = RowIndexToNode(i);
			if (node != null)
			{
				num4 += node.Height;
			}
		}
		return new Point(0, num4);
	}

	public int GetHeightOfRows(int start, int end)
	{
		int num = 0;
		for (int i = start; i <= end; i++)
		{
			TreeNodeAdv treeNodeAdv = RowIndexToNode(i);
			if (treeNodeAdv == null)
			{
				break;
			}
			num += treeNodeAdv.Height;
		}
		return num;
	}

	public Rectangle NodeToRectangle(TreeNodeAdv node)
	{
		Point location = NodeToPoint(node);
		return new Rectangle(location, new Size(base.ClientRectangle.Width, node.Height));
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
		cancelEdit = true;
		EndEdit(cancel: true);
		cancelEdit = false;
	}

	protected override void OnVScrollBarValueChanged(object sender, EventArgs e)
	{
		if (VScrollPos != base.VScrollBar.Value)
		{
			inVScroll = true;
			VScrollPos = base.VScrollBar.Value;
			inVScroll = false;
		}
		base.OnVScrollBarValueChanged(sender, e);
	}

	protected override void OnHScrollBarValueChanged(object sender, EventArgs e)
	{
		if (HScrollPos != base.HScrollBar.Value)
		{
			inHScroll = true;
			HScrollPos = base.HScrollBar.Value;
			inHScroll = false;
		}
		base.OnHScrollBarValueChanged(sender, e);
	}

	private void ValidateScrollPosition()
	{
		if (base.ClientRectangle.IsEmpty || Root == null || VScrollPos == 1)
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

	protected override void OnSizeChanged(EventArgs e)
	{
		NeedUpdateCustomControls = true;
		ValidateScrollPosition();
		base.OnSizeChanged(e);
		CustomControlsRefresh();
	}

	protected override void OnInvalidated(InvalidateEventArgs e)
	{
		base.OnInvalidated(e);
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

	public TreeNodeAdv GetNodeFromPath(string path)
	{
		return GetNode(root, path);
	}

	public string GetPathFromNode(TreeNodeAdv node)
	{
		if (node == null)
		{
			return "";
		}
		return node.GetPath(pathSeparator);
	}

	private void TreeViewAdv_SizeChanged(object sender, EventArgs e)
	{
		rootMaxXChanged(root.MaxX);
		Invalidate();
	}

	private void selectedNodes_Changed(object sender, CollectionChangeEventArgs e)
	{
		if (e.Action == CollectionChangeAction.Add && e.Element != null)
		{
			TreeNodeAdv treeNodeAdv = e.Element as TreeNodeAdv;
			if (treeNodeAdv.TreeView != this)
			{
				throw new ArgumentException("A TreeNodeAdv that was not a child of the TreeViewAdv was added to the TreeViewAdv's SelectedNodes collection. This is not allowed.");
			}
			TreeNodeAdv lMouseDownNode = (RMouseDownNode = null);
			LMouseDownNode = lMouseDownNode;
		}
		else if (e.Action == CollectionChangeAction.Remove && e.Element != null)
		{
			clickedOnSelection = false;
		}
		Invalidate();
	}

	private bool CheckToolTipClicked(Point mousePos)
	{
		if (toolTip == null || !toolTip.IsShowing())
		{
			return false;
		}
		Point pt = PointToScreen(mousePos);
		return toolTip.Parent.RectangleToScreen(toolTip.Bounds).Contains(pt);
	}

	protected virtual void FocusInternal(object sender, EventArgs e)
	{
		Focus();
		if (!Focused)
		{
			focusFailedOnValidation = true;
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if ((e.Button & MouseButtons.Right) > MouseButtons.None)
		{
			RMouseDownNode = PointToNode(new Point(e.X, e.Y));
		}
		if (focusFailedOnValidation)
		{
			focusFailedOnValidation = false;
			return;
		}
		base.OnMouseDown(e);
		if (IsEditing)
		{
			return;
		}
		m_bIsMouseDown = true;
		dragging = false;
		clickedOnSelection = false;
		canDrag = false;
		Point point = (m_lastButtonDownPoint = (mouseDownPoint = new Point(e.X, e.Y)));
		m_lastButtonDownNode = GetNodeAtPoint(point);
		bool flag = !base.ContainsFocus;
		bool flag2 = e.Button == MouseButtons.Left;
		bool flag3 = e.Button == MouseButtons.Right;
		IsLeftMouseDown = flag2;
		TreeNodeAdv nodeAtPoint = GetNodeAtPoint(point);
		if (nodeAtPoint == null)
		{
			nodeAtPoint = Root;
		}
		if (flag2 && nodeAtPoint.ProcessMouseDown(point))
		{
			m_bIsMouseDown = false;
			return;
		}
		if (Focused && !Focused)
		{
			m_bIsMouseDown = false;
			return;
		}
		if (!Focused && base.CanFocus)
		{
			if (base.Parent.Parent == null)
			{
				FocusInternal(this, EventArgs.Empty);
			}
			else
			{
				BeginInvoke(new EventHandler(FocusInternal));
			}
		}
		if (focusFailedOnValidation)
		{
			focusFailedOnValidation = false;
			return;
		}
		bool flag4 = (Control.ModifierKeys & Keys.Control) == Keys.Control;
		bool flag5 = (Control.ModifierKeys & Keys.Shift) == Keys.Shift;
		bool flag6 = true;
		if (flag2 && activeNode != null)
		{
			bool flag7 = CheckToolTipClicked(point);
			if (e.Clicks == 2)
			{
				flag6 = false;
			}
			else if (e.Clicks == 1 && flag7)
			{
				ActiveNode = GetNodeAtPoint(point);
				OnClick(e);
				OnMouseClick(e);
			}
		}
		if (e.Clicks == 2)
		{
			OnMouseUp(e);
			m_bIsMouseDown = false;
		}
		else
		{
			if (!flag6)
			{
				return;
			}
			if (flag2 && AllowMouseBasedSelection)
			{
				TreeNodeAdv nodeAtPoint2 = GetNodeAtPoint(point, textBounds: false, !fullRowSelect);
				if (nodeAtPoint2 == null)
				{
					nodeAtPoint2 = Root;
				}
				if (nodeAtPoint2 != activeNode && !SelectedNodes.Contains(nodeAtPoint2))
				{
					MouseBasedSelectionOn = true;
				}
			}
			if (!flag4 && !flag5)
			{
				if (flag2)
				{
					if (activeNode != null && activeNode.Bounds.Contains(point))
					{
						if (activeNode.TextBounds.Contains(point) || FullRowSelect)
						{
							if (!flag)
							{
								clickedOnSelection = true;
							}
							canDrag = true;
						}
						else if (!dragOnText)
						{
							canDrag = true;
						}
					}
				}
				else if (flag3 && RMouseDownNode != null && RMouseDownNode.Bounds.Contains(point) && (!dragOnText || RMouseDownNode.TextBounds.Contains(point) || FullRowSelect))
				{
					canDrag = true;
				}
			}
			if (!flag2)
			{
				m_lastSelectedNode = GetNodeAtPoint(point);
				ensureVisible = false;
				if (m_lastSelectedNode != null)
				{
					if (m_lastSelectedNode != ActiveNode && flag3 && toolTip != null && toolTip.IsShowing())
					{
						toolTip.HidePopup(PopupCloseType.Deactivated);
					}
					ApplyMouseBasedSelectionOn(m_lastSelectedNode);
				}
				ensureVisible = true;
				RMouseDownNode = m_lastSelectedNode;
				m_lastSelectedNode = null;
				m_bIsMouseDown = false;
			}
			else
			{
				if (!flag6)
				{
					return;
				}
				TreeNodeAdv nodeAtPoint3 = GetNodeAtPoint(point);
				if (nodeAtPoint3 == null)
				{
					nodeAtPoint3 = Root;
				}
				if (selectedNodes.Contains(nodeAtPoint3) && !flag4 && !flag5)
				{
					if (!flag)
					{
						clickedOnSelection = true;
					}
					if (!dragOnText || (dragOnText && nodeAtPoint3.TextBounds.Contains(point)) || FullRowSelect)
					{
						canDrag = true;
					}
				}
				else
				{
					TreeNodeAdv nodeAtPoint4 = GetNodeAtPoint(point, textBounds: false, !fullRowSelect);
					if (nodeAtPoint4 != null && nodeAtPoint4.Enabled)
					{
						if (!dragOnText || (dragOnText && nodeAtPoint4.TextBounds.Contains(point)) || FullRowSelect)
						{
							canDrag = true;
						}
						if (SingleSelect && flag4)
						{
							clickedOnSelection = true;
						}
						if ((!flag4 && !flag5) || SingleSelect)
						{
							lmousedownnode = nodeAtPoint4;
						}
						else if (!flag5 || (flag4 && flag5))
						{
							lmousedownnode = nodeAtPoint4;
						}
						else
						{
							bool removeCurrentMultipleSelection = !flag4;
							bKeypressed = Keys.None;
							ensureVisible = false;
							ExtendSelectionTo(nodeAtPoint4, removeCurrentMultipleSelection);
							ensureVisible = true;
						}
					}
					StartAutoScrollingInternal();
				}
				if (!flag2)
				{
					return;
				}
				m_lastSelectedNode = GetNodeAtPoint(point);
				LMouseDownNode = m_lastSelectedNode;
				ensureVisible = false;
				if (m_lastSelectedNode != null)
				{
					if (m_lastSelectedNode != ActiveNode && toolTip != null && toolTip.IsShowing())
					{
						toolTip.HidePopup(PopupCloseType.Deactivated);
					}
					ApplyMouseBasedSelectionOn(m_lastSelectedNode);
				}
				ensureVisible = true;
				m_lastSelectedNode = null;
				m_bIsMouseDown = false;
			}
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Right && activeNode != null)
		{
			bool flag = CheckToolTipClicked(new Point(e.X, e.Y));
			if (e.Clicks == 1 && flag)
			{
				OnClick(e);
				OnMouseClick(e);
			}
		}
		m_bIsMouseUp = true;
		bool flag2 = (Control.ModifierKeys & Keys.Control) == Keys.Control;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) == Keys.Shift;
		if (m_bAllowDropStubWorks)
		{
			draggedTnas = null;
			m_bAllowDropStubWorks = false;
			dragHelper.EndDrag();
		}
		m_highlightedNode = null;
		m_lastButtonDownNode = null;
		MouseBasedSelectionOn = false;
		if (e.Button != MouseButtons.Left)
		{
			dragging = false;
			Invalidate();
			mouseDownPoint = Point.Empty;
			base.OnMouseUp(e);
			m_bIsMouseUp = false;
			if ((e.Button & MouseButtons.Right) > MouseButtons.None)
			{
				RMouseDownNode = null;
			}
			return;
		}
		Point point = new Point(e.X, e.Y);
		if (clickedOnSelection && mouseDownPoint == point)
		{
			TreeNodeAdv nodeAtPoint = GetNodeAtPoint(point);
			if (nodeAtPoint != null)
			{
				ArrayList nodesToAdd = new ArrayList(new TreeNodeAdv[1] { nodeAtPoint });
				if (SetSelectedNode(nodesToAdd, selectedNodes, TreeViewAdvAction.ByMouse, fireEvent: true, forceRemove: true))
				{
					ActiveNode = nodeAtPoint;
					selectionBaseNode = nodeAtPoint;
					if (!flag2 && nodeAtPoint.TextBounds.Contains(point))
					{
						LabelEditStartTimer = new Timer();
					}
				}
			}
		}
		if ((!flag3 || (flag2 && flag3)) && MultiSelect)
		{
			TreeNodeAdv nodeAtPoint2 = GetNodeAtPoint(point);
			if (selectedNodes.Contains(nodeAtPoint2) && IsMouseDownWithCtrl)
			{
				if (SetSelectedNode(null, nodeAtPoint2, TreeViewAdvAction.ByMouse))
				{
					ActiveNode = nodeAtPoint2;
				}
				IsMouseDownWithCtrl = false;
			}
		}
		TreeNodeAdv lMouseDownNode = (RMouseDownNode = null);
		LMouseDownNode = lMouseDownNode;
		mouseDownPoint = Point.Empty;
		StopAutoScrollingInternal();
		base.OnMouseUp(e);
		m_bIsMouseUp = false;
	}

	private void ApplyMouseBasedSelectionOn(TreeNodeAdv node)
	{
		bool flag = (Control.ModifierKeys & Keys.Control) == Keys.Control;
		bool flag2 = (Control.ModifierKeys & Keys.Shift) == Keys.Shift;
		if (!flag && !flag2)
		{
			if ((!MultiSelect || !selectedNodes.Contains(node)) && SetSelectedNode(node, selectedNodes, TreeViewAdvAction.ByMouse))
			{
				ActiveNode = node;
				selectionBaseNode = node;
			}
		}
		else
		{
			if ((flag2 && (!flag || !flag2)) || !MultiSelect)
			{
				return;
			}
			if (selectedNodes.Contains(node) && !flag)
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
				if (selectedNodes.Count > 0 && selectedNodes.Contains(node) && flag)
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
				selectionBaseNode = node;
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
				if (!bounds.Contains(pt) && IsLeftMouseDown && nodeAtPoint.Bounds.Contains(pt) && (nodeAtPoint.HasChildren || LoadOnDemand))
				{
					nodeAtPoint.Expanded = !nodeAtPoint.Expanded;
				}
			}
		}
		ClearSelectionClickMonitors();
		base.OnDoubleClick(e);
	}

	private void ClearSelectionClickMonitors()
	{
		LabelEditStartTimer = null;
		clickedOnSelection = false;
		mouseDownPoint = Point.Empty;
	}

	protected internal void SetSelectionBaseNode(TreeNodeAdv node)
	{
		selectionBaseNode = node;
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		Root.RecalculateAllDimensions();
	}

	private void LabelEditStartTimer_Tick(object sender, EventArgs e)
	{
		if (ActiveNode == activeNodeForLabelEdit)
		{
			LabelEditStartTimer = null;
			BeginEdit(ActiveNode);
		}
	}

	public void ExtendSelectionTo(TreeNodeAdv selNode)
	{
		ExtendSelectionTo(selNode, removeCurrentMultipleSelection: true);
	}

	public void ExtendSelectionTo(TreeNodeAdv selNode, bool removeCurrentMultipleSelection)
	{
		if (SelectionMode == TreeSelectionMode.Single || selectionBaseNode == null || selNode == null)
		{
			return;
		}
		bool flag = SelectionMode == TreeSelectionMode.MultiSelectAll;
		if (!flag && selNode.Parent != selectionBaseNode.Parent)
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		TreeNodeAdv treeNodeAdv = selectionBaseNode;
		if (bKeypressed == Keys.None)
		{
			selectUpwardDirection = selectionBaseNode.Bounds.Y >= selNode.Bounds.Y;
			while (treeNodeAdv != null && treeNodeAdv != selNode)
			{
				if (treeNodeAdv.Enabled && (flag || treeNodeAdv.Parent == selNode.Parent))
				{
					arrayList.Add(treeNodeAdv);
				}
				treeNodeAdv = (selectUpwardDirection ? treeNodeAdv.PrevVisibleNode : treeNodeAdv.NextVisibleNode);
			}
		}
		else
		{
			while (treeNodeAdv != null && treeNodeAdv != selNode)
			{
				if (treeNodeAdv.Enabled && (flag || treeNodeAdv.Parent == selNode.Parent))
				{
					arrayList.Add(treeNodeAdv);
				}
				treeNodeAdv = (selectUpwardDirection ? treeNodeAdv.PrevVisibleNode : treeNodeAdv.NextVisibleNode);
			}
		}
		arrayList.Add(selNode);
		if (selectedNodes.Contains(selNode) && (bKeypressed == Keys.Up || bKeypressed == Keys.Down))
		{
			if (selectUpwardDirection)
			{
				selectedNodes.Remove(selNode.NextVisibleNode);
			}
			else
			{
				selectedNodes.Remove(selNode.PrevVisibleNode);
			}
			EnsureVisible(selNode);
			arrayList = selectedNodes;
			bKeypressed = Keys.None;
		}
		ArrayList nodesToRemove = null;
		if (removeCurrentMultipleSelection)
		{
			nodesToRemove = ((!MouseBasedSelectionOn) ? SelectedNodes : latestMouseBasedSelectionCollection);
		}
		if (MouseBasedSelectionOn)
		{
			latestMouseBasedSelectionCollection = new ArrayList(arrayList);
		}
		if (SetSelectedNode(arrayList, nodesToRemove, TreeViewAdvAction.ByMouse))
		{
			ActiveNode = selNode;
		}
	}

	private bool IsDraggedPastMouseDownPoint(Point pt)
	{
		if (mouseDownPoint == Point.Empty)
		{
			return true;
		}
		if (Math.Abs(mouseDownPoint.X - pt.X) > 2 || Math.Abs(mouseDownPoint.Y - pt.Y) > 2)
		{
			return true;
		}
		return false;
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		m_bMouseLeaved = false;
		base.OnMouseEnter(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (m_bAllowDropStubWorks)
		{
			GiveFeedbackEventArgs gfbevent = new GiveFeedbackEventArgs(DragDropEffects.None, useDefaultCursors: true);
			OnGiveFeedback(gfbevent);
			draggedTnas = null;
			m_bAllowDropStubWorks = false;
			dragHelper.EndDrag();
			return;
		}
		ResetMouseEventArgs();
		if (e.Button == MouseButtons.None && ContextMenu != null)
		{
			RMouseDownNode = null;
			LMouseDownNode = null;
		}
		if (ignoreNextMouseMove)
		{
			ignoreNextMouseMove = false;
			return;
		}
		if (helpText != null && helpText.IsShowing())
		{
			if (m_tnHelpTextNode != null)
			{
				if (!m_tnHelpTextNode.TextBounds.Contains(e.X, e.Y))
				{
					helpText.HidePopup();
					m_tnHelpTextNode = null;
				}
			}
			else
			{
				helpText.HidePopup();
			}
		}
		if (e.Button == MouseButtons.Left)
		{
			TreeNodeAdv[] array = null;
			if (IsDraggedPastMouseDownPoint(new Point(e.X, e.Y)))
			{
				if (activeNode != root && !dragging && canDrag)
				{
					_ = Control.ModifierKeys;
					_ = Control.ModifierKeys;
					if (LMouseDownNode != null && SingleSelect)
					{
						array = new TreeNodeAdv[1] { LMouseDownNode };
					}
					else if (MultiSelect && selectedNodes.Count > 0)
					{
						ArrayList arrayList = new ArrayList(selectedNodes.ToArray(typeof(TreeNodeAdv)));
						if (LMouseDownNode != null)
						{
							bool flag = true;
							if (SelectionMode == TreeSelectionMode.MultiSelectSameLevel)
							{
								TreeNodeAdv treeNodeAdv = selectedNodes[0];
								flag = treeNodeAdv.parent == LMouseDownNode.parent;
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
							dragHelper.EndDrag();
						}
						canDrag = false;
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
		}
		else if (e.Button == MouseButtons.Right && IsDraggedPastMouseDownPoint(new Point(e.X, e.Y)) && !dragging && canDrag && RMouseDownNode != null)
		{
			TreeNodeAdv[] array2 = null;
			RaiseItemDrag(new ItemDragEventArgs(item: (!selectedNodes.Contains(RMouseDownNode)) ? new TreeNodeAdv[1] { RMouseDownNode } : (selectedNodes.ToArray(typeof(TreeNodeAdv)) as TreeNodeAdv[]), button: e.Button));
			canDrag = false;
		}
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
		TreeNodeAdv treeNodeAdv2 = null;
		if (pt.Y <= num)
		{
			treeNodeAdv2 = GetNodeAtPoint(pt);
		}
		if (treeNodeAdv2 != lastNodeOver)
		{
			if (lastNodeOver != null)
			{
				Invalidate(lastNodeOver.Bounds);
			}
			lastNodeOver = treeNodeAdv2;
		}
		if (treeNodeAdv2 != null)
		{
			Invalidate(treeNodeAdv2.Bounds);
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		m_bMouseLeaved = true;
		if (lastNodeOver != null)
		{
			Invalidate(lastNodeOver.Bounds);
			lastNodeOver = null;
		}
		base.OnMouseLeave(e);
		if (Control.MouseButtons == MouseButtons.None)
		{
			StopAutoScrollingInternal();
		}
	}

	public new DragDropEffects DoDragDrop(object data, DragDropEffects allowedEffects)
	{
		canDrag = false;
		DragDropEffects dragDropEffects = DragDropEffects.None;
		dragDropEffects = base.DoDragDrop(data, allowedEffects);
		if (!AllowDrop)
		{
			m_bAllowDropStubWorks = true;
			dragDropEffects = DragDropEffects.None;
		}
		return dragDropEffects;
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
			treeNodeAdv = GetNodeAtPoint(pt, textBounds: true, textOrImageBounds: false);
			if (treeNodeAdv == null || treeNodeAdv == root)
			{
				flag = true;
			}
		}
		if (flag)
		{
			helpText.HidePopup();
			toolTip.HidePopup();
			if (timer.Enabled)
			{
				timer.Tick -= timer_Tick;
				timer.Stop();
			}
			return;
		}
		Rectangle rectangle = new Rectangle(treeNodeAdv.TextBounds.Location, treeNodeAdv.TextBounds.Size);
		rectangle.Intersect(base.ClientRectangle);
		if (treeNodeAdv.TextBounds != rectangle)
		{
			if (toolTip.IsDisposed)
			{
				ResetToolTip();
			}
			if (!toolTip.IsShowing())
			{
				toolTip.Font = treeNodeAdv.Font;
				toolTip.Text = treeNodeAdv.Text;
				toolTipNode = treeNodeAdv;
				if (delayToolTip)
				{
					timer.Interval = 1000;
					timer.Tick += timer_Tick;
					timer.Start();
				}
				else
				{
					toolTip.ShowPopup(PointToScreen(treeNodeAdv.TextBounds.Location));
				}
			}
			toolTip.CurrentPopupChild = helpText;
			helpText.PopupParent = toolTip;
		}
		if (treeNodeAdv.HelpText != string.Empty)
		{
			if (!toolTip.IsDisposed && !toolTip.IsShowing())
			{
				helpText.PopupParent = null;
			}
			if (helpText.IsDisposed)
			{
				ResetHelpText();
			}
			if (!helpText.IsShowing())
			{
				helpText.Text = treeNodeAdv.HelpText;
				Point location = new Point(Control.MousePosition.X, Control.MousePosition.Y + 30);
				ignoreNextMouseMove = true;
				m_tnHelpTextNode = treeNodeAdv;
				helpText.ShowPopup(location);
			}
		}
	}

	private void timer_Tick(object sender, EventArgs e)
	{
		toolTip.ShowPopup(PointToScreen(toolTipNode.TextBounds.Location));
		timer.Tick -= timer_Tick;
		timer.Stop();
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
		dragging = true;
		base.OnDragEnter(drgevent);
		helpText.HidePopup();
		toolTip.HidePopup();
		if (timer.Enabled)
		{
			timer.Tick -= timer_Tick;
			timer.Stop();
		}
		Invalidate();
		StartAutoScrollingInternal();
	}

	private void StopAutoScrollingInternal()
	{
		base.AutoScrollBounds = Rectangle.Empty;
	}

	private void StartAutoScrollingInternal()
	{
		base.AccelerateScrolling = AccelerateScrollingBehavior.Immediate;
	}

	protected override void OnDragLeave(EventArgs e)
	{
		m_highlightedNode = null;
		base.OnDragLeave(e);
		dragging = false;
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
		dragging = false;
		Invalidate();
		base.OnDragDrop(drgevent);
	}

	protected override void OnQueryContinueDrag(QueryContinueDragEventArgs args)
	{
		base.OnQueryContinueDrag(args);
		if (args.Action == DragAction.Drop)
		{
			m_highlightedNode = null;
			dragHelper.EndDrag();
			DragCueOn = false;
		}
		else if (args.Action == DragAction.Cancel)
		{
			dragHelper.CancelDrag();
			DragCueOn = false;
		}
	}

	protected override void OnGiveFeedback(GiveFeedbackEventArgs args)
	{
		base.OnGiveFeedback(args);
		if (ShowDragNodeCue)
		{
			DragCueOn = true;
			if (dragHelper.IsDragging || m_bAllowDropStubWorks)
			{
				Point dragWindowLocation = GetDragWindowLocation(bFinal: true);
				dragHelper.DoDrag(dragWindowLocation, args.Effect);
			}
		}
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

	private Point GetDragWindowLocation(bool bFinal)
	{
		Point point = Control.MousePosition;
		if (!KeepDragCapturePoint)
		{
			point.Y += 20;
			if (bFinal)
			{
				point.Y += dragHelper.DragWindow.DragBitmap.Height / 2;
			}
		}
		else
		{
			Rectangle selectedNodesRectangle = GetSelectedNodesRectangle(draggedTnas);
			if (base.HScrollBar.Enabled)
			{
				selectedNodesRectangle.X += base.HScrollBar.Value;
			}
			Point empty = Point.Empty;
			Point point2 = PointToClient(point);
			empty.X = point2.X - selectedNodesRectangle.Left;
			empty.Y = point2.Y - selectedNodesRectangle.Top;
			dragHelper.DragWindow.SetOrigin(empty);
		}
		return point;
	}

	private void labelEditor_KeyUp(object sender, KeyEventArgs e)
	{
		m_textSelectionLength = labelEditor.SelectionLength;
		m_selectionStart = labelEditor.SelectionStart;
	}

	private void labelEditor_KeyDown(object sender, KeyEventArgs e)
	{
		m_textSelectionLength = labelEditor.SelectionLength;
		m_selectionStart = labelEditor.SelectionStart;
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
				cancelEdit = true;
				EndEdit(cancel: true);
				cancelEdit = false;
			}
			break;
		}
	}

	private void labelEditor_TextChanged(object sender, EventArgs e)
	{
		if (labelEditor.Text != lastText)
		{
			TreeNodeAdvCancelableEditEventArgs e2 = new TreeNodeAdvCancelableEditEventArgs(activeNode, labelEditor.Text);
			OnNodeEditorValidateString(e2);
			if (e2.Cancel)
			{
				labelEditor.Text = lastText;
				labelEditor.SelectionStart = ((labelEditor.SelectionStart == -1) ? labelEditor.Text.Length : m_selectionStart);
				labelEditor.SelectionLength = m_textSelectionLength;
			}
			else
			{
				lastText = labelEditor.Text;
			}
			Graphics graphics = CreateGraphics();
			int num = Math.Min(graphics.MeasureString(labelEditor.Text, labelEditor.Font).ToSize().Width + 15, base.ClientRectangle.Width - activeNode.TextBounds.X);
			graphics.Dispose();
			if (num < 50)
			{
				num = 50;
			}
			labelEditor.Width = num;
			lastText = labelEditor.Text;
		}
	}

	protected override bool ProcessDialogKey(Keys keyData)
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
			if (IsEditing)
			{
				cancelEdit = true;
				EndEdit(cancel: true);
				cancelEdit = false;
				return true;
			}
			break;
		}
		return base.ProcessDialogKey(keyData);
	}

	protected override bool IsInputKey(Keys keyData)
	{
		if (!labelEdit || keyData != Keys.F2)
		{
			switch (keyData)
			{
			case Keys.Return:
				break;
			case Keys.Escape:
				return true;
			default:
			{
				bool flag = (keyData & Keys.Control) == Keys.Control;
				if ((keyData & Keys.KeyCode) == Keys.Next)
				{
					if (flag)
					{
						return true;
					}
					if (ActiveNode != null)
					{
						return true;
					}
				}
				else if ((keyData & Keys.KeyCode) == Keys.Prior)
				{
					if (flag)
					{
						return true;
					}
					if (ActiveNode != null)
					{
						return true;
					}
				}
				else if ((keyData & Keys.KeyCode) == Keys.Home)
				{
					if (flag)
					{
						return true;
					}
					if (ActiveNode != null)
					{
						return true;
					}
				}
				else if ((keyData & Keys.KeyCode) == Keys.End)
				{
					if (flag)
					{
						return true;
					}
					if (ActiveNode != null)
					{
						return true;
					}
				}
				if ((keyData & Keys.KeyCode) == Keys.Up && ActiveNode != null)
				{
					return true;
				}
				if ((keyData & Keys.KeyCode) == Keys.Down && activeNode != null)
				{
					return true;
				}
				if (keyData == (Keys)(GetIsMirrored() ? 39 : 37) && activeNode != null)
				{
					return true;
				}
				if (keyData == (Keys)(GetIsMirrored() ? 37 : 39))
				{
					return true;
				}
				if ((keyData & Keys.KeyCode) == Keys.Space)
				{
					return true;
				}
				if (keySearching && keyData == Keys.Back)
				{
					return true;
				}
				return base.IsInputKey(keyData);
			}
			}
		}
		return true;
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
		if (SetSelectedNode(newNode, selectedNodes, TreeViewAdvAction.ByKeyboard))
		{
			ActiveNode = newNode;
			selectionBaseNode = newNode;
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

	private void SetNodesSelected(bool fromCurrentToFirst)
	{
		if (fromCurrentToFirst)
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.First);
		}
		else
		{
			base.VScrollBar.SendScrollMessage(ScrollEventType.Last);
		}
		if (ActiveNode == null)
		{
			return;
		}
		BeginUpdate();
		if (fromCurrentToFirst)
		{
			for (int num = NodeToRowIndex(ActiveNode); num >= base.VScrollBar.Minimum; num--)
			{
				PerformNodeSelection(num);
			}
		}
		else
		{
			for (int i = NodeToRowIndex(ActiveNode); i <= base.VScrollBar.Maximum; i++)
			{
				PerformNodeSelection(i);
			}
		}
		EndUpdate(update: false);
		TreeNodeAdv treeNodeAdv = ((!fromCurrentToFirst) ? RowIndexToNode(base.VScrollBar.Maximum) : RowIndexToNode(base.VScrollBar.Minimum));
		treeNodeAdv.BringIntoView();
	}

	private void PerformNodeSelection(int i)
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

	protected override void OnKeyDown(KeyEventArgs e)
	{
		EnsureVisibleSelectedNode = true;
		Keys keyData = e.KeyData;
		bool flag = SelectedNode == null && SelectionMode == TreeSelectionMode.Single;
		if (keyData == Keys.F2 && labelEdit)
		{
			bKeypressed = Keys.F2;
			if ((Control.MouseButtons == MouseButtons.Left || Control.MouseButtons == MouseButtons.Right) && m_lastButtonDownPoint != Point.Empty && GetNodeAtPointEx(m_lastButtonDownPoint) != null)
			{
				return;
			}
			BeginEdit();
			e.Handled = true;
		}
		else if (keyData == Keys.Return && activeNode != null && activeNode.HasChildren)
		{
			activeNode.Expanded = !activeNode.Expanded;
			e.Handled = true;
		}
		if (!e.Handled && keyData == Keys.Escape)
		{
			bKeypressed = Keys.Escape;
			CancelMouseBasedSelection();
			e.Handled = true;
			if (base.Parent is Form && ((Form)base.Parent).CancelButton != null)
			{
				((Form)base.Parent).CancelButton.PerformClick();
			}
		}
		if (!e.Handled)
		{
			bool flag2 = (Control.ModifierKeys & Keys.Control) > Keys.None;
			bool flag3 = (Control.ModifierKeys & Keys.Shift) > Keys.None;
			if ((keyData & Keys.KeyCode) == Keys.Next)
			{
				selectUpwardDirection = false;
				bKeypressed = Keys.Next;
				if (flag2)
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.LargeIncrement);
					TreeNodeAdv lastVisibleNode = LastVisibleNode;
					if (flag || IsMultipleSelection(lastVisibleNode))
					{
						ActiveNode = lastVisibleNode;
						selectionBaseNode = lastVisibleNode;
					}
					e.Handled = true;
				}
				else if (flag3 && SelectionMode != TreeSelectionMode.Single)
				{
					SetNodesSelected(fromCurrentToFirst: false);
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
					TreeNodeAdv treeNodeAdv = RowIndexToNode(num2);
					if (treeNodeAdv.Enabled && SetSelectedNode(treeNodeAdv, selectedNodes, TreeViewAdvAction.ByKeyboard))
					{
						ActiveNode = treeNodeAdv;
						selectionBaseNode = treeNodeAdv;
					}
					e.Handled = true;
				}
			}
			else if ((keyData & Keys.KeyCode) == Keys.Prior)
			{
				selectUpwardDirection = true;
				bKeypressed = Keys.Prior;
				if (flag2)
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.LargeDecrement);
					if (flag)
					{
						ActiveNode = TopVisibleNode;
						selectionBaseNode = TopVisibleNode;
					}
					e.Handled = true;
				}
				else if (flag3 && SelectionMode != TreeSelectionMode.Single)
				{
					SetNodesSelected(fromCurrentToFirst: true);
					e.Handled = true;
				}
				else if (ActiveNode != null)
				{
					int num3 = NodeToRowIndex(ActiveNode);
					int num4 = num3 - base.VScrollBar.LargeChange + 1;
					if (num4 < base.VScrollBar.Minimum)
					{
						num4 = base.VScrollBar.Minimum;
					}
					TreeNodeAdv treeNodeAdv2 = RowIndexToNode(num4);
					if (treeNodeAdv2.Enabled && SetSelectedNode(treeNodeAdv2, selectedNodes, TreeViewAdvAction.ByKeyboard))
					{
						ActiveNode = treeNodeAdv2;
						selectionBaseNode = treeNodeAdv2;
					}
					e.Handled = true;
				}
			}
			else if ((keyData & Keys.KeyCode) == Keys.Home)
			{
				selectUpwardDirection = true;
				bKeypressed = Keys.Home;
				if (flag2 && !flag3)
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.First);
					if (flag)
					{
						ActiveNode = RowIndexToNode(base.VScrollBar.Minimum);
						selectionBaseNode = ActiveNode;
					}
					e.Handled = true;
				}
				else if ((flag3 || flag2) && SelectionMode != TreeSelectionMode.Single)
				{
					SetNodesSelected(fromCurrentToFirst: true);
					e.Handled = true;
				}
				else if (ActiveNode != null)
				{
					TreeNodeAdv treeNodeAdv3 = RowIndexToNode(base.VScrollBar.Minimum);
					if (treeNodeAdv3.Enabled && SetSelectedNode(treeNodeAdv3, selectedNodes, TreeViewAdvAction.ByKeyboard))
					{
						ActiveNode = treeNodeAdv3;
						selectionBaseNode = treeNodeAdv3;
						RefreshVScrollbar(treeNodeAdv3, treeNodeAdv3.Bounds.Y);
					}
					e.Handled = true;
				}
			}
			else if ((keyData & Keys.KeyCode) == Keys.End)
			{
				selectUpwardDirection = false;
				bKeypressed = Keys.End;
				if (flag2 && !flag3)
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.Last);
					if (flag)
					{
						ActiveNode = RowIndexToNode(base.VScrollBar.Maximum);
						selectionBaseNode = ActiveNode;
					}
					e.Handled = true;
				}
				else if ((flag3 || flag2) && SelectionMode != TreeSelectionMode.Single)
				{
					SetNodesSelected(fromCurrentToFirst: false);
					e.Handled = true;
				}
				else if (ActiveNode != null)
				{
					TreeNodeAdv treeNodeAdv4 = RowIndexToNode(base.VScrollBar.Maximum);
					if (treeNodeAdv4.Enabled && SetSelectedNode(treeNodeAdv4, selectedNodes, TreeViewAdvAction.ByKeyboard))
					{
						ActiveNode = treeNodeAdv4;
						selectionBaseNode = treeNodeAdv4;
					}
					e.Handled = true;
				}
			}
			if (!e.Handled && (keyData & Keys.KeyCode) == Keys.Up && ActiveNode != null)
			{
				bKeypressed = Keys.Up;
				if (ActiveNode.PrevVisibleNode != null && ActiveNode.PrevVisibleNode != root)
				{
					TreeNodeAdv prevVisibleNode = ActiveNode.PrevVisibleNode;
					selectUpwardDirection = true;
					if (flag3)
					{
						BeginUpdate();
						if (IsMultipleSelection(prevVisibleNode))
						{
							m_lastSelectedByKeyBoard = prevVisibleNode;
							ExtendSelectionTo(prevVisibleNode);
						}
						else
						{
							SetNextNodeSelected(prevVisibleNode);
						}
						EndUpdate(update: false);
					}
					else if (flag2)
					{
						if (flag || IsMultipleSelection(prevVisibleNode))
						{
							if (ActiveNode == TopVisibleNode)
							{
								base.VScrollBar.SendScrollMessage(ScrollEventType.SmallDecrement);
							}
							ActiveNode = prevVisibleNode;
						}
						else
						{
							base.VScrollBar.SendScrollMessage(ScrollEventType.SmallDecrement);
						}
					}
					else
					{
						SetNextNodeSelected(prevVisibleNode);
					}
				}
				else
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.SmallDecrement);
				}
				e.Handled = true;
			}
			if (!e.Handled && (keyData & Keys.KeyCode) == Keys.Down && activeNode != null)
			{
				bKeypressed = Keys.Down;
				selectUpwardDirection = false;
				TreeNodeAdv nextVisibleNode = activeNode.NextVisibleNode;
				if (nextVisibleNode != null)
				{
					if (flag3)
					{
						BeginUpdate();
						if (IsMultipleSelection(nextVisibleNode))
						{
							m_lastSelectedByKeyBoard = nextVisibleNode;
							ExtendSelectionTo(nextVisibleNode);
						}
						else
						{
							SetNextNodeSelected(nextVisibleNode);
						}
						EndUpdate(update: false);
					}
					else if (flag2)
					{
						if (flag || IsMultipleSelection(nextVisibleNode))
						{
							ActiveNode = nextVisibleNode;
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
						SetNextNodeSelected(nextVisibleNode);
					}
				}
				else
				{
					base.VScrollBar.SendScrollMessage(ScrollEventType.SmallIncrement);
				}
				e.Handled = true;
			}
			if (!e.Handled && (keyData == (Keys)(GetIsMirrored() ? 39 : 37) || keyData == Keys.Back) && activeNode != null)
			{
				if (activeNode.Expanded && activeNode.HasChildren && keyData != Keys.Back)
				{
					activeNode.Expanded = false;
				}
				else if (activeNode.Parent != null && activeNode.Parent != root && activeNode.Parent.Enabled)
				{
					TreeNodeAdv nodeToAdd = activeNode.Parent;
					if (SetSelectedNode(nodeToAdd, selectedNodes, TreeViewAdvAction.ByKeyboard))
					{
						ActiveNode = nodeToAdd;
						selectionBaseNode = nodeToAdd;
					}
				}
				e.Handled = true;
			}
			if (!e.Handled && keyData == (Keys)(GetIsMirrored() ? 37 : 39) && activeNode != null)
			{
				if (!activeNode.Expanded)
				{
					activeNode.Expanded = true;
				}
				else
				{
					TreeNodeAdv nextSelectableNode = activeNode.NextSelectableNode;
					if (nextSelectableNode != null && nextSelectableNode.Parent == activeNode)
					{
						TreeNodeAdv treeNodeAdv5 = nextSelectableNode;
						if (SetSelectedNode(nextSelectableNode, selectedNodes, TreeViewAdvAction.ByKeyboard))
						{
							ActiveNode = treeNodeAdv5;
							selectionBaseNode = treeNodeAdv5;
						}
					}
				}
				e.Handled = true;
			}
			if (!e.Handled)
			{
				if (MultiSelect && (keyData & Keys.KeyCode) == Keys.Space && flag2)
				{
					if (activeNode != null)
					{
						if (activeNode.IsSelected)
						{
							SetSelectedNode(null, activeNode, TreeViewAdvAction.ByKeyboard);
						}
						else
						{
							SetSelectedNode(activeNode, new ArrayList(), TreeViewAdvAction.ByKeyboard);
						}
						selectionBaseNode = activeNode;
					}
				}
				else if (keyData == Keys.Space && (keySearch == "" || !keySearching))
				{
					CheckState checkState = CheckState.Checked;
					bool flag4 = false;
					m_bIsKeyDown = true;
					if (activeNode != null && activeNode.EnabledButtons)
					{
						activeNode.Checked = !activeNode.Checked;
						checkState = activeNode.CheckState;
						flag4 = true;
					}
					foreach (TreeNodeAdv selectedNode in SelectedNodes)
					{
						if (selectedNode != activeNode && selectedNode.EnabledButtons)
						{
							if (flag4)
							{
								selectedNode.CheckState = checkState;
								continue;
							}
							selectedNode.Checked = !selectedNode.Checked;
							checkState = selectedNode.CheckState;
							flag4 = true;
						}
					}
					m_bIsKeyDown = false;
				}
			}
			if (!e.Handled && keySearching && (keyData.ToString().Length == 1 || keyData == Keys.Space || keyData == Keys.Back || (flag3 && (keyData & ~(Keys.ShiftKey | Keys.Shift)) > Keys.None) || (keyData.ToString().StartsWith("D") && keyData.ToString().Length == 2)))
			{
				keyInputTimer.Enabled = false;
				keyInputTimer.Enabled = true;
				if (keyData == Keys.Space && keySearch.Length > 0)
				{
					keySearch += " ";
				}
				if (keyData == Keys.Back && keySearch.Length > 0)
				{
					keySearch = keySearch.Substring(0, keySearch.Length - 1);
				}
				if (keyData.ToString().StartsWith("D") && keyData.ToString().Length == 2)
				{
					keySearch += keyData.ToString().Substring(keyData.ToString().Length - 1, 1);
				}
				else if (keyData != Keys.Space && keyData != Keys.Back)
				{
					if (flag3)
					{
						if (keyData.ToString().Substring(0, 2).Contains(","))
						{
							keySearch += keyData & ~e.Modifiers;
						}
					}
					else
					{
						keySearch += keyData;
					}
				}
				FindNode(keySearch, flag3);
			}
		}
		base.OnKeyDown(e);
	}

	protected override bool IsInputChar(char charCode)
	{
		return true;
	}

	private void FindNode(string s, bool bShiftPressed)
	{
		if (activeNode == null || (!activeNode.Enabled && !(s != string.Empty)))
		{
			return;
		}
		int num = 0;
		TreeNodeAdv treeNodeAdv = (((!bShiftPressed || Nodes.Count <= 0) && activeNode != null) ? activeNode : Nodes[0]);
		if (treeNodeAdv == null)
		{
			return;
		}
		while (!treeNodeAdv.Enabled)
		{
			treeNodeAdv = treeNodeAdv.NextSelectableNode;
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
		while (!activeNode.Enabled)
		{
			activeNode = activeNode.PrevSelectableNode;
		}
		bool flag = false;
		while (treeNodeAdv2 != treeNodeAdv || !flag)
		{
			int i;
			for (i = 0; i < s.Length && i < treeNodeAdv2.Text.Length && s.ToUpper()[i] == treeNodeAdv2.Text.ToUpper()[i]; i++)
			{
			}
			if (i > num)
			{
				num = i;
				if (SetSelectedNode(treeNodeAdv2, selectedNodes, TreeViewAdvAction.ByKeyboard))
				{
					ActiveNode = treeNodeAdv2;
					selectionBaseNode = treeNodeAdv2;
				}
			}
			treeNodeAdv2 = treeNodeAdv2.NextSelectableNode;
			if (treeNodeAdv2 == null)
			{
				treeNodeAdv2 = Nodes[0];
				treeNodeAdv = activeNode;
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

	protected override void OnUpdatingChanged(EventArgs e)
	{
		updating = base.Updating;
		if (updating)
		{
			measuringGraphics = CreateGraphics();
			return;
		}
		UpdateVerticalScrollBar();
		if (measuringGraphics != null)
		{
			measuringGraphics.Dispose();
			measuringGraphics = null;
		}
	}

	public Size MeasureDisplayStringSize(Graphics graphics, string text, Font font)
	{
		if (string.Empty == text)
		{
			return Size.Empty;
		}
		IntPtr hdc = graphics.GetHdc();
		IntPtr hObject = font.ToHfont();
		Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(0, 0, 0, 0);
		try
		{
			IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject);
			int num = 3428;
			if (GetIsMirrored())
			{
				num |= 0x20000;
			}
			Syncfusion.Runtime.InteropServices.NativeMethods.DrawText(hdc, text, text.Length, ref lpRect, num);
			hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject2);
		}
		finally
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
			graphics.ReleaseHdc(hdc);
		}
		return new Size(lpRect.Width, lpRect.Height);
	}

	public void CollapseAll()
	{
		foreach (TreeNodeAdv node in Root.Nodes)
		{
			node.CollapseAll();
		}
	}

	public void ExpandAll()
	{
		foreach (TreeNodeAdv node in Root.Nodes)
		{
			node.ExpandAll();
		}
	}

	public void CancelEditMode()
	{
		cancelEdit = true;
		EndEdit(cancel: true);
		cancelEdit = false;
	}

	public int GetNodeCount(bool includeSubTrees)
	{
		return Root.GetNodeCount(includeSubTrees);
	}

	internal void ExpandedChanged(TreeNodeAdv node, bool expanded)
	{
		try
		{
			if (updating)
			{
				return;
			}
			if (IsVerticalGradient)
			{
				Invalidate();
				return;
			}
			Point location = NodeToPoint(node);
			if (node.HasChildren)
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
		if (LastVisibleNode == null)
		{
			VScrollPos = 1;
			base.VScrollBar.Value = VScrollPos;
		}
		if (!updating)
		{
			Invalidate();
		}
	}

	private void keyInputTimer_Tick(object sender, EventArgs e)
	{
		keyInputTimer.Enabled = false;
		keySearch = "";
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

	public void EnsureVisible(TreeNodeAdv node)
	{
		RefreshVScrollbar();
		EnsureVisibleV(node, showOnTop: false);
	}

	public void EnsureVisibleH(TreeNodeAdv node)
	{
		if (root != null)
		{
			int num = Indent * (node.Level - 1);
			int num2 = num + node.Width - base.ClientRectangle.Width;
			if (num2 >= base.HScrollBar.Value)
			{
				HScrollPos = num2;
			}
			else if (num < base.HScrollBar.Value)
			{
				HScrollPos = num;
			}
			if (RightToLeft == RightToLeft.Yes && Office2007ScrollBars)
			{
				base.HScrollBar.Value = ReflectPosition(HScrollPos);
			}
			else
			{
				base.HScrollBar.Value = HScrollPos;
			}
		}
	}

	public void EnsureVisibleV(TreeNodeAdv node, bool showOnTop)
	{
		if (!VerticallScroll || !node.Visible)
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

	private void TreeViewAdv_Leave(object sender, EventArgs e)
	{
		if (hideSelection)
		{
			Invalidate();
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
		return GetNodeAtPoint(pt, textBounds, textOrImageBounds: false);
	}

	public TreeNodeAdv GetNodeAtPoint(Point pt, bool textBounds, bool textOrImageBounds)
	{
		TreeNodeAdv treeNodeAdv = PointToNode(pt);
		if (treeNodeAdv != null)
		{
			int num = NodeToRowIndex(treeNodeAdv);
			if (num < VScrollPos || num > NodeToRowIndex(LastVisibleNode) || (!textBounds && !textOrImageBounds))
			{
				return treeNodeAdv;
			}
			if (textBounds && treeNodeAdv.TextBounds.Contains(pt))
			{
				return treeNodeAdv;
			}
			if (textOrImageBounds && treeNodeAdv.TextAndImageBounds.Contains(pt))
			{
				return treeNodeAdv;
			}
		}
		return null;
	}

	public TreeNodeAdv GetNodeAtPointEx(Point pt)
	{
		Update();
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

	internal bool ExpandedChanging(TreeNodeAdv node, bool expanding)
	{
		TreeViewAdvCancelableNodeEventArgs e = new TreeViewAdvCancelableNodeEventArgs(node, cancel: false);
		if (expanding)
		{
			base.VScrollBar.BeginUpdate();
			base.HScrollBar.BeginUpdate();
			OnBeforeExpand(e);
			base.HScrollBar.EndUpdate();
			base.VScrollBar.EndUpdate();
		}
		else
		{
			OnBeforeCollapse(e);
			if (!SelectOnCollapse)
			{
				if (!e.Cancel && IsCollapsedContainsSelectionNodes(e.Node))
				{
					TreeNodeAdvCollection treeNodeAdvCollection = new TreeNodeAdvCollection();
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
					if (flag && selectedNodes.Contains(e.Node))
					{
						SetSelectedNode(e.Node, new ArrayList(), TreeViewAdvAction.Collapse);
					}
					if (flag2 && flag)
					{
						activeNode = e.Node;
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
		try
		{
			if (node == null || node.parent == null || node.parent == Root)
			{
				return false;
			}
			if (node.parent == collapsed)
			{
				return true;
			}
			return IsNodeUnderCollapsedNode(collapsed, node.parent);
		}
		catch (NullReferenceException)
		{
			return false;
		}
	}

	private bool IsCollapsedContainsActiveNode(TreeNodeAdv collapsed)
	{
		if (activeNode != null && IsNodeUnderCollapsedNode(collapsed, activeNode))
		{
			return true;
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
		activeNode = collapsedNode;
		if (!selectedNodes.Contains(collapsedNode))
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
		if (!SelectOnCollapse && IsNodeUnderCollapsedNode(collapsednode, activeNode))
		{
			return true;
		}
		return false;
	}

	private void TreeViewAdv_ScrollbarsVisibleChanged(object sender, EventArgs e)
	{
		if (!HorisontalScroll)
		{
			HScrollPos = 0;
		}
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

	private void labelEditor_MouseUp(object sender, MouseEventArgs e)
	{
		m_textSelectionLength = labelEditor.SelectionLength;
		m_selectionStart = labelEditor.SelectionStart;
	}

	private void labelEditor_LostFocus(object sender, EventArgs e)
	{
		if (!ignoreLeave && ClientHeight > 0 && !IsEditEnding)
		{
			EndEdit(cancel: false);
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (base.DesignMode && RightToLeft == RightToLeft.Yes)
		{
			base.Width++;
			base.Width--;
		}
	}
}
