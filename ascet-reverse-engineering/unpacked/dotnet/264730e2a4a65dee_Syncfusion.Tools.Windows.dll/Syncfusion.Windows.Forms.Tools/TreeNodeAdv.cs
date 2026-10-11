using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(TreeNodeAdvConverter))]
public class TreeNodeAdv : MarshalByRefObject, ICloneable, IComparable, ISupportInitialize, ISerializable
{
	internal const int c_nDrawTextFlags = 2404;

	private const int DEF_DEFAULT_IMAGE_INDEX = -1;

	private const int spc = 3;

	private const int c_nDisplayNodeTextWidthPadding = 4;

	private Control m_customControl;

	private TreeNodeAdvStyleInfo nodeData;

	private ChildTreeNodeAdvStyleInfo childStyle;

	private bool expanded;

	private TreeNodeAdvCollection nodes;

	private TreeViewAdv _treeView;

	internal TreeNodeAdv parent;

	private TreeNodeAdvPart plusMinus;

	private OptionButtonPart optionButton;

	private int leftImageListXRel;

	private int stateImageListXRel;

	private int rightImageListXRel;

	private int lineRightRel;

	private Rectangle bounds = Rectangle.Empty;

	private bool m_bShowPlusOnExpand;

	private int textLocationXRel;

	private int textWidth;

	private int nodeXRel;

	private CheckBoxPart checkBox;

	private bool visible;

	private bool optioned;

	private CultureInfo culture = CultureInfo.CurrentCulture;

	private bool expandedOnce;

	private int width;

	private int maxX;

	internal TreeNodeAdvAccessibleObject acsoNode;

	internal static TreeNodeAdv checkStateChangingSourceNode;

	private static Hashtable htRecalculatingNodes = new Hashtable();

	private Hashtable partialCheckedState;

	private int m_expandImageIndex = -1;

	private int m_collapseImageIndex = -1;

	private Size m_printTextSize = Size.Empty;

	private object tag;

	private int visibleNodeCount = -1;

	private int m_leftImagePadding;

	private int m_rightImagePadding;

	private int m_leftStateImagePadding;

	private int m_rightStateImagePadding;

	private bool m_bIsUndoRedoPerforming;

	private TreeNodePrimitivesCollection m_primitives;

	private int m_customControlRelativeLocation;

	[Editor(typeof(CustomControlEditor), typeof(UITypeEditor))]
	[DefaultValue(null)]
	[Description("Gets or sets node custom control.")]
	public Control CustomControl
	{
		get
		{
			return m_customControl;
		}
		set
		{
			if (m_customControl != value)
			{
				m_customControl = value;
				if (TreeView != null)
				{
					CustomControlCollectionChanging(this, CollectionChangeAction.Refresh);
				}
			}
		}
	}

	[DefaultValue(false)]
	public bool ShowPlusOnExpand
	{
		get
		{
			return m_bShowPlusOnExpand;
		}
		set
		{
			m_bShowPlusOnExpand = value;
		}
	}

	public static int PartsPadX => 3;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Appearance")]
	[Description("Contains information about the node's appearance and state.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdvStyleInfo NodeStyle => nodeData;

	[Category("Appearance - Children")]
	[Description("Contains information about the immediate child-nodes' appearance and state.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TreeNodeAdvStyleInfo ChildStyle => childStyle;

	[Category("Appearance")]
	[Localizable(true)]
	[Description("The font of the node.")]
	public Font Font
	{
		get
		{
			return NodeStyle.Font;
		}
		set
		{
			NodeStyle.Font = value;
		}
	}

	[Description("The Color of the text.")]
	[Category("Appearance")]
	public Color TextColor
	{
		get
		{
			return NodeStyle.TextColor;
		}
		set
		{
			NodeStyle.TextColor = value;
		}
	}

	[Description("The background of the node.")]
	[Category("Appearance")]
	public BrushInfo Background
	{
		get
		{
			return NodeStyle.Background;
		}
		set
		{
			NodeStyle.Background = value;
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[Description("The text of the node.")]
	public string Text
	{
		get
		{
			return NodeStyle.Text;
		}
		set
		{
			if (value != NodeStyle.Text)
			{
				NodeStyle.Text = value;
			}
		}
	}

	[Description("The help text of the node.")]
	[Localizable(true)]
	[Category("Appearance")]
	public string HelpText
	{
		get
		{
			return NodeStyle.HelpText;
		}
		set
		{
			NodeStyle.HelpText = value;
		}
	}

	[Category("Appearance")]
	[Description("The height of the node.")]
	public int Height
	{
		get
		{
			return NodeStyle.Height;
		}
		set
		{
			NodeStyle.Height = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "ControlText")]
	[Description("Indicates the color of the Check mark.")]
	public Color CheckColor
	{
		get
		{
			return NodeStyle.CheckColor;
		}
		set
		{
			if (value != NodeStyle.CheckColor)
			{
				NodeStyle.CheckColor = value;
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "ControlDark")]
	[Description("Indicates the color of the check mark when it is in intermediate state.")]
	public Color IntermediateCheckColor
	{
		get
		{
			return NodeStyle.IntermediateCheckColor;
		}
		set
		{
			if (value != NodeStyle.IntermediateCheckColor)
			{
				NodeStyle.IntermediateCheckColor = value;
			}
		}
	}

	[Browsable(false)]
	[DefaultValue(typeof(Brush), "Window")]
	[Description("Indicates the appearance of checkbox background.")]
	public Brush CheckBoxBackGround
	{
		get
		{
			return NodeStyle.CheckBoxBackground;
		}
		set
		{
			if (value != NodeStyle.CheckBoxBackground)
			{
				NodeStyle.CheckBoxBackground = value;
			}
		}
	}

	[Description(" Indicates the appearance of checkbox background when the checkbox is in intermediate state.")]
	[DefaultValue(typeof(Brush), "Control")]
	[Browsable(false)]
	public Brush IntermediateCheckBoxBackGround
	{
		get
		{
			return NodeStyle.IntermediateCheckBoxBackground;
		}
		set
		{
			if (value != NodeStyle.IntermediateCheckBoxBackground)
			{
				NodeStyle.IntermediateCheckBoxBackground = value;
			}
		}
	}

	[Description("Indicates if the checkbox of the node is visible.")]
	[Category("Appearance")]
	public bool ShowCheckBox
	{
		get
		{
			return NodeStyle.ShowCheckBox;
		}
		set
		{
			NodeStyle.ShowCheckBox = value;
		}
	}

	[Description("Indicates the color of the Option button.")]
	[DefaultValue(typeof(Color), "White")]
	[Category("Appearance")]
	public Color OptionButtonColor
	{
		get
		{
			return NodeStyle.OptionButtonColor;
		}
		set
		{
			if (value != NodeStyle.OptionButtonColor)
			{
				NodeStyle.OptionButtonColor = value;
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "Black")]
	[Description("Indicates the color of the Option button in selected state.")]
	public Color SelectedOptionButtonColor
	{
		get
		{
			return NodeStyle.SelectedOptionButtonColor;
		}
		set
		{
			if (value != NodeStyle.SelectedOptionButtonColor)
			{
				NodeStyle.SelectedOptionButtonColor = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the optionbutton of the node is visible.")]
	public bool ShowOptionButton
	{
		get
		{
			return NodeStyle.ShowOptionButton;
		}
		set
		{
			NodeStyle.ShowOptionButton = value;
		}
	}

	[Description("Indicates if the plus/minus of the node is visible.")]
	[Category("Appearance")]
	public bool ShowPlusMinus
	{
		get
		{
			return NodeStyle.ShowPlusMinus;
		}
		set
		{
			NodeStyle.ShowPlusMinus = value;
		}
	}

	[Description("Indicates the sort order of the node.")]
	[Category("Sorting")]
	[Localizable(true)]
	public SortOrder SortOrder
	{
		get
		{
			return NodeStyle.SortOrder;
		}
		set
		{
			NodeStyle.SortOrder = value;
		}
	}

	[Localizable(true)]
	[Description("Indicates the sort type of the node.")]
	[Category("Sorting")]
	public TreeNodeAdvSortType SortType
	{
		get
		{
			return NodeStyle.SortType;
		}
		set
		{
			NodeStyle.SortType = value;
		}
	}

	[Category("Sorting")]
	[Description("Indicates the IComparer object that compares two nodes.")]
	public IComparer Comparer
	{
		get
		{
			return NodeStyle.Comparer;
		}
		set
		{
			NodeStyle.Comparer = value;
		}
	}

	[Localizable(true)]
	[Description("Indicates the compare options used in the sorting of the node.")]
	[Category("Sorting")]
	public CompareOptions CompareOptions
	{
		get
		{
			return NodeStyle.CompareOptions;
		}
		set
		{
			NodeStyle.CompareOptions = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates the checkState of the node.")]
	public CheckState CheckState
	{
		get
		{
			return NodeStyle.CheckState;
		}
		set
		{
			if (CheckState == value)
			{
				return;
			}
			if (checkStateChangingSourceNode == null)
			{
				checkStateChangingSourceNode = this;
			}
			try
			{
				TreeViewAdv treeView = TreeView;
				if (treeView != null)
				{
					TreeNodeAdvBeforeCheckEventArgs e = new TreeNodeAdvBeforeCheckEventArgs(this, cancel: false, value);
					treeView.OnBeforeCheck(e);
					if (e.Cancel)
					{
						return;
					}
				}
				if (InteractiveCheckBox && CheckState == CheckState.Indeterminate)
				{
					CachePartialCheckedState();
				}
				NodeStyle.CheckState = value;
				if (treeView != null)
				{
					treeView.OnAfterCheck(new TreeNodeAdvEventArgs(this, TreeViewAdvAction.Unknown));
					if (checkStateChangingSourceNode == this)
					{
						treeView.OnAfterInteractiveChecks(new TreeNodeAdvEventArgs(this));
					}
				}
			}
			finally
			{
				if (checkStateChangingSourceNode == this)
				{
					checkStateChangingSourceNode = null;
				}
			}
		}
	}

	[Description("The base style for the node")]
	[Category("Appearance - Inherited")]
	public string BaseStyle
	{
		get
		{
			return NodeStyle.BaseStyle;
		}
		set
		{
			NodeStyle.BaseStyle = value;
		}
	}

	[TypeConverter(typeof(StringConverter))]
	[Category("Misc")]
	[Description("The tag of the node")]
	public object Tag
	{
		get
		{
			return nodeData.Tag;
		}
		set
		{
			nodeData.Tag = value;
		}
	}

	[Description("The imageindex to be drawn on the left of the node's text.")]
	[Category("Appearance - Images")]
	public int[] LeftImageIndices
	{
		get
		{
			return NodeStyle.LeftImageIndices;
		}
		set
		{
			NodeStyle.LeftImageIndices = value;
		}
	}

	[Category("Appearance - Images")]
	[Localizable(true)]
	[Description("The imageindex to be drawn on the right of the node's text.")]
	public int[] RightImageIndices
	{
		get
		{
			return NodeStyle.RightImageIndices;
		}
		set
		{
			NodeStyle.RightImageIndices = value;
		}
	}

	[Localizable(true)]
	[Description("The imageindex indicating the image in the StateImageList where the node has no children.")]
	[Category("Appearance - Images")]
	public int NoChildrenImgIndex
	{
		get
		{
			return NodeStyle.NoChildrenImgIndex;
		}
		set
		{
			NodeStyle.NoChildrenImgIndex = value;
		}
	}

	[Description("Indicates the imageindex in the StateImageList where the node is not expanded.")]
	[Localizable(true)]
	[Category("Appearance - Images")]
	public int ClosedImgIndex
	{
		get
		{
			return NodeStyle.ClosedImgIndex;
		}
		set
		{
			NodeStyle.ClosedImgIndex = value;
		}
	}

	[Localizable(true)]
	[Description("Indicates the imageindex in the StateImageList where the node is expanded.")]
	[Category("Appearance - Images")]
	public int OpenImgIndex
	{
		get
		{
			return NodeStyle.OpenImgIndex;
		}
		set
		{
			NodeStyle.OpenImgIndex = value;
		}
	}

	[Description("Indicates if the node's controls will be themed.")]
	[Category("Appearance")]
	public bool ThemesEnabled
	{
		get
		{
			return NodeStyle.ThemesEnabled;
		}
		set
		{
			NodeStyle.ThemesEnabled = value;
		}
	}

	[Category("Behavior")]
	[Description("Indicates if the node will have an interactive checkbox.")]
	public bool InteractiveCheckBox
	{
		get
		{
			return NodeStyle.InteractiveCheckBox;
		}
		set
		{
			NodeStyle.InteractiveCheckBox = value;
		}
	}

	internal int TreeRowIndex
	{
		get
		{
			if (Parent == null)
			{
				return 0;
			}
			return Parent.GetTreeRowIndexOfChild(this);
		}
	}

	[Description("Indicates if the node has been expanded at least once.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DefaultValue(false)]
	public bool ExpandedOnce
	{
		get
		{
			return expandedOnce;
		}
		set
		{
			if (expandedOnce != value)
			{
				expandedOnce = value;
				TreeViewAdv treeView = TreeView;
				if (treeView != null && treeView.LoadOnDemand)
				{
					UpdatePlusMinusVisibility();
				}
			}
		}
	}

	[Browsable(false)]
	[Localizable(true)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public CultureInfo Culture
	{
		get
		{
			return NodeStyle.Culture;
		}
		set
		{
			NodeStyle.Culture = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public bool IsEditing
	{
		get
		{
			if (TreeView.SelectedNode == this)
			{
				return TreeView.IsEditing;
			}
			return false;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public bool IsSelected
	{
		get
		{
			if (TreeView != null)
			{
				return TreeView.SelectedNodes.Contains(this);
			}
			return false;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public bool IsActiveNode
	{
		get
		{
			if (TreeView != null)
			{
				return TreeView.ActiveNode == this;
			}
			return false;
		}
	}

	public int NodeX
	{
		get
		{
			int num = 0;
			if (GetIsMirrored())
			{
				return bounds.Right - nodeXRel;
			}
			return bounds.X + nodeXRel;
		}
	}

	public int LeftImagesX => bounds.X + nodeXRel + leftImageListXRel;

	public int StateImageX => bounds.X + nodeXRel + stateImageListXRel;

	public int RightImagesX => bounds.X + nodeXRel + rightImageListXRel;

	public int CheckBoxX => checkBox.Bounds.X;

	public int OptionButtonX => optionButton.Bounds.X;

	public TreeNodeAdvPart CheckBox => checkBox;

	public TreeNodeAdvPart OptionButton => optionButton;

	private Font HotFont
	{
		get
		{
			Font font = NodeStyle.Font;
			return FontUtil.CreateFont(font, font.Style | FontStyle.Underline);
		}
	}

	[Category("Behavior")]
	[Description("Indicates if the node's checkbox is checked.")]
	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Checked
	{
		get
		{
			return CheckState == CheckState.Checked;
		}
		set
		{
			CheckState = (value ? CheckState.Checked : CheckState.Unchecked);
		}
	}

	[Category("Appearance")]
	[Description("Specifies if the node is enabled.")]
	[Localizable(true)]
	public bool Enabled
	{
		get
		{
			return NodeStyle.Enabled;
		}
		set
		{
			NodeStyle.Enabled = value;
		}
	}

	[Category("Appearance")]
	[Description("Specifies if the buttons in the node are enabled.")]
	[Localizable(true)]
	public bool EnabledButtons
	{
		get
		{
			return NodeStyle.EnabledButtons;
		}
		set
		{
			NodeStyle.EnabledButtons = value;
		}
	}

	[Description("Specifies if atleast one child of the parent node should be Optioned at all times.")]
	[Category("Behavior")]
	public bool EnsureDefaultOptionedChild
	{
		get
		{
			return NodeStyle.EnsureDefaultOptionedChild;
		}
		set
		{
			NodeStyle.EnsureDefaultOptionedChild = value;
		}
	}

	[Description("Indicates if the node's option button is checked.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool Optioned
	{
		get
		{
			return optioned;
		}
		set
		{
			if (optioned == value)
			{
				return;
			}
			optioned = value;
			OnCheckStateChanged(EventArgs.Empty);
			TreeViewAdv treeView = TreeView;
			if (treeView != null)
			{
				if (treeView.IsHandleCreated && treeView.Visible)
				{
					treeView.Invalidate(Bounds);
				}
				treeView.OnAfterCheck(new TreeNodeAdvEventArgs(this));
			}
		}
	}

	private Hashtable CachedPartialCheckedState => partialCheckedState;

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public bool HasChildren => nodes.Count > 0;

	internal int Width
	{
		get
		{
			return width;
		}
		set
		{
			width = value;
			if (Right > maxX)
			{
				MaxX = Right;
			}
		}
	}

	internal int Right => bounds.X + nodeXRel + width;

	internal int MaxX
	{
		get
		{
			return maxX;
		}
		set
		{
			if (maxX != value)
			{
				maxX = value;
				if (parent != null)
				{
					parent.childMaxXChanged(maxX);
				}
				else if (_treeView != null)
				{
					_treeView.rootMaxXChanged(maxX);
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv FirstNode
	{
		get
		{
			if (Nodes.Count <= 0)
			{
				return null;
			}
			return Nodes[0];
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv LastNode
	{
		get
		{
			if (Nodes.Count <= 0)
			{
				return null;
			}
			return Nodes[Nodes.Count - 1];
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv PrevNode
	{
		get
		{
			if (parent == null)
			{
				return null;
			}
			if (parent.Nodes.IndexOf(this) > 0)
			{
				return parent.Nodes[parent.Nodes.IndexOf(this) - 1];
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv PrevVisibleNode
	{
		get
		{
			if (parent == null)
			{
				return null;
			}
			if (parent.Nodes.IndexOf(this) > 0)
			{
				TreeNodeAdv treeNodeAdv = parent.Nodes[parent.Nodes.IndexOf(this) - 1];
				while (treeNodeAdv.Expanded && treeNodeAdv.Nodes.Count > 0)
				{
					treeNodeAdv = treeNodeAdv.Nodes[treeNodeAdv.Nodes.Count - 1];
				}
				return treeNodeAdv;
			}
			return parent;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TreeNodeAdv PrevSelectableNode
	{
		get
		{
			TreeNodeAdv prevVisibleNode = PrevVisibleNode;
			while (prevVisibleNode != null && !prevVisibleNode.Enabled)
			{
				prevVisibleNode = prevVisibleNode.PrevVisibleNode;
			}
			return prevVisibleNode;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv NextNode
	{
		get
		{
			if (parent == null)
			{
				return null;
			}
			if (parent.Nodes.IndexOf(this) < parent.Nodes.Count - 1)
			{
				return parent.Nodes[parent.Nodes.IndexOf(this) + 1];
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv NextVisibleNode
	{
		get
		{
			if (nodes.Count > 0 && expanded)
			{
				return nodes[0];
			}
			if (parent == null)
			{
				return null;
			}
			if (parent.Nodes.IndexOf(this) < parent.Nodes.Count - 1)
			{
				return parent.Nodes[parent.Nodes.IndexOf(this) + 1];
			}
			for (TreeNodeAdv treeNodeAdv = parent; treeNodeAdv != null; treeNodeAdv = treeNodeAdv.Parent)
			{
				if (treeNodeAdv.Parent == null)
				{
					return null;
				}
				if (treeNodeAdv.Parent.Nodes.IndexOf(treeNodeAdv) < treeNodeAdv.Parent.Nodes.Count - 1)
				{
					return treeNodeAdv.Parent.Nodes[treeNodeAdv.Parent.Nodes.IndexOf(treeNodeAdv) + 1];
				}
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv NextSelectableNode
	{
		get
		{
			TreeNodeAdv nextVisibleNode = NextVisibleNode;
			while (nextVisibleNode != null && !nextVisibleNode.Enabled)
			{
				nextVisibleNode = nextVisibleNode.NextVisibleNode;
			}
			return nextVisibleNode;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv OptionedChild
	{
		get
		{
			for (int i = 0; i < nodes.Count; i++)
			{
				if (nodes[i].Optioned)
				{
					return nodes[i];
				}
			}
			if (EnsureDefaultOptionedChild && nodes.Count > 0)
			{
				TreeNodeAdv treeNodeAdv = nodes[0];
				treeNodeAdv.optioned = true;
				if (TreeView != null && treeNodeAdv.OptionButton.Visible)
				{
					TreeView.Invalidate(treeNodeAdv.OptionButton.Bounds);
				}
				return treeNodeAdv;
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public Rectangle Bounds => bounds;

	[Browsable(false)]
	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public Rectangle DragCueBounds
	{
		get
		{
			if (TreeView != null && TreeView.StateImageList != null)
			{
				int num = bounds.X + nodeXRel + stateImageListXRel;
				int right = TextBounds.Right;
				return new Rectangle(num, bounds.Y, right - num, bounds.Height);
			}
			return TextBounds;
		}
	}

	[DocumentationExclude]
	protected internal Rectangle PrintTextBounds => new Rectangle(TextBounds.Location, m_printTextSize);

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Rectangle TextBounds
	{
		get
		{
			int num = 0;
			int num2 = nodeXRel + textLocationXRel;
			num = ((!GetIsMirrored()) ? (bounds.X + num2) : (bounds.Right - num2 - textWidth));
			return new Rectangle(num, Bounds.Y, textWidth, Bounds.Height);
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Rectangle TextAndImageBounds
	{
		get
		{
			int num = nodeXRel;
			num = ((leftImageListXRel > 0) ? (num + leftImageListXRel) : ((stateImageListXRel <= 0) ? (num + textLocationXRel) : (num + stateImageListXRel)));
			int num2 = nodeXRel + width - num;
			int num3 = 0;
			num3 = ((!GetIsMirrored()) ? (bounds.X + num) : (bounds.Right - num - num2));
			return new Rectangle(num3, Bounds.Y, num2, Bounds.Height);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	internal Rectangle iBounds
	{
		get
		{
			return bounds;
		}
		set
		{
			bounds = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsVisible => visible;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	internal bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			if (TreeView != null)
			{
				TreeView.NeedUpdateCustomControls = true;
			}
			if (visible && !value)
			{
				AdjustVisibleNodeCount(-1);
			}
			else if (!visible && value)
			{
				AdjustVisibleNodeCount(1);
			}
			visible = value;
			if (expanded || !value)
			{
				SetChildrenVisible(value);
			}
		}
	}

	public TreeNodeAdvPart PlusMinus => plusMinus;

	[Browsable(false)]
	[Description("Gets the parent tree node of the current tree node, if there is any.")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TreeNodeAdv Parent => parent;

	[Description("Gets the position of the tree node in the parent's tree nodes collection.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int Index
	{
		get
		{
			if (Parent != null)
			{
				return Parent.Nodes.IndexOf(this);
			}
			return -1;
		}
	}

	public int Level
	{
		get
		{
			if (parent == null)
			{
				return 0;
			}
			return parent.Level + 1;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeViewAdv TreeView
	{
		get
		{
			if (parent == null)
			{
				return _treeView;
			}
			return parent.TreeView;
		}
		set
		{
			_treeView = value;
		}
	}

	public string FullPath
	{
		get
		{
			if (TreeView != null)
			{
				return TreeView.GetPathFromNode(this);
			}
			return string.Empty;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object TagObject
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdvCollection Nodes => nodes;

	[Description("Indicates if the node is expanded.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool Expanded
	{
		get
		{
			return expanded;
		}
		set
		{
			if (expanded == value)
			{
				return;
			}
			TreeViewAdv treeView = TreeView;
			bool flag = false;
			if (treeView != null)
			{
				flag = TreeView.SuspendExpandRecalculate;
			}
			if (treeView != null)
			{
				if (parent != null && !treeView.ExpandedChanging(this, value))
				{
					return;
				}
				if (value && parent != null)
				{
					ExpandedOnce = true;
				}
			}
			expanded = value;
			SetChildrenVisible(value && visible);
			if (treeView != null && HasChildren && (!ShowPlusOnExpand || !treeView.LoadOnDemand))
			{
				treeView.ExpandedChanged(this, value);
			}
			if (!flag)
			{
				RecalculateMaxX();
			}
			if (TreeView == null || TreeView.RecalculateExpansion)
			{
				return;
			}
			foreach (TreeNodeAdv node in Nodes)
			{
				node.RecalculateDimensions();
				node.InvalidateTreeView();
			}
		}
	}

	[Description("Image index of image for expand button.")]
	[DefaultValue(-1)]
	[Category("Appearance - Images")]
	public int ExpandImageIndex
	{
		get
		{
			return m_expandImageIndex;
		}
		set
		{
			if (value != m_expandImageIndex)
			{
				m_expandImageIndex = value;
				OnExpandImageIndexChanged();
			}
		}
	}

	[DefaultValue(-1)]
	[Description("Image index of image for collapse button")]
	[Category("Appearance - Images")]
	public int CollapseImageIndex
	{
		get
		{
			return m_collapseImageIndex;
		}
		set
		{
			if (value != m_collapseImageIndex)
			{
				m_collapseImageIndex = value;
				OnCollapseImageIndexChanged();
			}
		}
	}

	private Image CollapseImage => GetNodeStateImage();

	private Image ExpandImage => GetNodeStateImage();

	internal int VisibleNodeCount
	{
		get
		{
			if (visibleNodeCount == -1)
			{
				if (TreeView == null)
				{
					return 0;
				}
				visibleNodeCount = 0;
				for (int i = 0; i < nodes.Count; i++)
				{
					TreeNodeAdv treeNodeAdv = nodes[i];
					if (treeNodeAdv.Visible)
					{
						visibleNodeCount += nodes[i].VisibleNodeCount;
					}
				}
				if (Visible)
				{
					visibleNodeCount++;
				}
			}
			return visibleNodeCount;
		}
	}

	[DefaultValue(0)]
	[Category("Appearance - Images")]
	public int LeftImagePadding
	{
		get
		{
			return m_leftImagePadding;
		}
		set
		{
			if (value != m_leftImagePadding)
			{
				if (value < 0)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				m_leftImagePadding = value;
				OnLeftImagePaddingChanged();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Appearance - Images")]
	public int RightImagePadding
	{
		get
		{
			return m_rightImagePadding;
		}
		set
		{
			if (value != m_rightImagePadding)
			{
				if (value < 0)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				m_rightImagePadding = value;
				OnRightImagePaddingChanged();
			}
		}
	}

	[Category("Appearance - Images")]
	[DefaultValue(0)]
	public int LeftStateImagePadding
	{
		get
		{
			return m_leftStateImagePadding;
		}
		set
		{
			if (value != m_leftStateImagePadding)
			{
				if (value < 0)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				m_leftStateImagePadding = value;
				OnStateImagePaddingChanged();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Appearance - Images")]
	public int RightStateImagePadding
	{
		get
		{
			return m_rightStateImagePadding;
		}
		set
		{
			if (value != m_rightStateImagePadding)
			{
				if (value < 0)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				m_rightStateImagePadding = value;
				OnStateImagePaddingChanged();
			}
		}
	}

	protected HistoryManager HistoryManager
	{
		get
		{
			HistoryManager result = null;
			if (TreeView != null && TreeView.HistoryEnabled)
			{
				result = TreeView.HistoryManager;
			}
			return result;
		}
	}

	protected internal bool IsUndoRedoPerforming
	{
		get
		{
			return m_bIsUndoRedoPerforming;
		}
		set
		{
			if (value != m_bIsUndoRedoPerforming)
			{
				m_bIsUndoRedoPerforming = value;
			}
		}
	}

	internal TreeNodeAdvAccessibleObject AccesibleObject
	{
		get
		{
			if (acsoNode == null)
			{
				acsoNode = new TreeNodeAdvAccessibleObject(this);
			}
			return acsoNode;
		}
	}

	private bool IsRoot
	{
		get
		{
			if (_treeView != null && _treeView.Root == this)
			{
				return true;
			}
			return false;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TreeNodePrimitivesCollection Primitives => m_primitives;

	private int ParentIndent
	{
		get
		{
			if (TreeView != null)
			{
				return TreeView.Indent;
			}
			return 19;
		}
	}

	public event EventHandler CheckStateChanged;

	[Category("Property Changed")]
	[Description("Occurs when ExpandImageIndex is changed.")]
	public event EventHandler ExpandImageIndexChanged;

	[Description("Occurs when CollapseImageIndex is changed.")]
	[Category("Property Changed")]
	public event EventHandler CollapseImageIndexChanged;

	public void ResetFont()
	{
		NodeStyle.ResetFont();
	}

	public bool ShouldSerializeFont()
	{
		return NodeStyle.ShouldSerializeFont();
	}

	public void ResetTextColor()
	{
		NodeStyle.ResetTextColor();
	}

	public bool ShouldSerializeTextColor()
	{
		return NodeStyle.ShouldSerializeTextColor();
	}

	public void ResetBackground()
	{
		NodeStyle.ResetBackground();
	}

	protected bool ShouldSerializeBackground()
	{
		return NodeStyle.ShouldSerializeBackground();
	}

	public void ResetText()
	{
		NodeStyle.ResetText();
	}

	protected bool ShouldSerializeText()
	{
		return NodeStyle.ShouldSerializeText();
	}

	public void ResetHelpText()
	{
		NodeStyle.ResetHelpText();
	}

	protected bool ShouldSerializeHelpText()
	{
		return NodeStyle.ShouldSerializeHelpText();
	}

	public void ResetHeight()
	{
		NodeStyle.ResetHeight();
	}

	protected bool ShouldSerializeHeight()
	{
		return NodeStyle.ShouldSerializeHeight();
	}

	public void ResetShowCheckBox()
	{
		NodeStyle.ResetShowCheckBox();
	}

	protected bool ShouldSerializeShowCheckBox()
	{
		return NodeStyle.ShouldSerializeShowCheckBox();
	}

	public void ResetShowOptionButton()
	{
		NodeStyle.ResetShowOptionButton();
	}

	protected bool ShouldSerializeShowOptionButton()
	{
		return NodeStyle.ShouldSerializeShowOptionButton();
	}

	public void ResetShowPlusMinus()
	{
		NodeStyle.ResetShowPlusMinus();
	}

	protected bool ShouldSerializeShowPlusMinus()
	{
		return NodeStyle.ShouldSerializeShowPlusMinus();
	}

	public void ResetSortOrder()
	{
		NodeStyle.ResetSortOrder();
	}

	protected bool ShouldSerializeSortOrder()
	{
		return NodeStyle.ShouldSerializeSortOrder();
	}

	public void ResetSortType()
	{
		NodeStyle.ResetSortType();
	}

	protected bool ShouldSerializeSortType()
	{
		return NodeStyle.ShouldSerializeSortType();
	}

	public void ResetComparer()
	{
		NodeStyle.ResetComparer();
	}

	protected bool ShouldSerializeComparer()
	{
		return NodeStyle.ShouldSerializeComparer();
	}

	public void ResetCompareOptions()
	{
		NodeStyle.ResetCompareOptions();
	}

	protected bool ShouldSerializeCompareOptions()
	{
		return NodeStyle.ShouldSerializeCompareOptions();
	}

	public void ResetCheckState()
	{
		NodeStyle.ResetCheckState();
	}

	protected bool ShouldSerializeCheckState()
	{
		return NodeStyle.ShouldSerializeCheckState();
	}

	public void ResetBaseStyle()
	{
		NodeStyle.ResetBaseStyle();
	}

	protected bool ShouldSerializeBaseStyle()
	{
		return NodeStyle.ShouldSerializeBaseStyle();
	}

	public void ResetTag()
	{
		NodeStyle.ResetTag();
	}

	protected bool ShouldSerializeTag()
	{
		return NodeStyle.ShouldSerializeTag();
	}

	public void ResetLeftImageIndices()
	{
		NodeStyle.ResetLeftImageIndices();
	}

	protected bool ShouldSerializeLeftImageIndices()
	{
		return NodeStyle.ShouldSerializeLeftImageIndices();
	}

	public void ResetRightImageIndices()
	{
		NodeStyle.ResetRightImageIndices();
	}

	protected bool ShouldSerializeRightImageIndices()
	{
		return NodeStyle.ShouldSerializeRightImageIndices();
	}

	public void ResetNoChildrenImgIndex()
	{
		NodeStyle.ResetNoChildrenImgIndex();
	}

	protected bool ShouldSerializeNoChildrenImgIndex()
	{
		return NodeStyle.ShouldSerializeNoChildrenImgIndex();
	}

	public void ResetClosedImgIndex()
	{
		NodeStyle.ResetClosedImgIndex();
	}

	protected bool ShouldSerializeClosedImgIndex()
	{
		return NodeStyle.ShouldSerializeClosedImgIndex();
	}

	public void ResetOpenImgIndex()
	{
		NodeStyle.ResetOpenImgIndex();
	}

	protected bool ShouldSerializeOpenImgIndex()
	{
		return NodeStyle.ShouldSerializeOpenImgIndex();
	}

	public void ResetThemesEnabled()
	{
		NodeStyle.ResetThemesEnabled();
	}

	protected bool ShouldSerializeThemesEnabled()
	{
		return NodeStyle.ShouldSerializeThemesEnabled();
	}

	public void ResetInteractiveCheckBox()
	{
		NodeStyle.ResetInteractiveCheckBox();
	}

	protected bool ShouldSerializeInteractiveCheckBox()
	{
		return NodeStyle.ShouldSerializeInteractiveCheckBox();
	}

	public void ResetCulture()
	{
		NodeStyle.ResetCulture();
	}

	protected bool ShouldSerializeCulture()
	{
		return NodeStyle.ShouldSerializeCulture();
	}

	[DocumentationExclude]
	internal bool GetIsMirrored()
	{
		if (TreeView != null)
		{
			return TreeView.GetIsMirrored();
		}
		return false;
	}

	public void ResetEnabled()
	{
		NodeStyle.ResetEnabled();
	}

	protected bool ShouldSerializeEnabled()
	{
		return NodeStyle.ShouldSerializeEnabled();
	}

	public void ResetEnabledButtons()
	{
		NodeStyle.ResetEnabledButtons();
	}

	protected bool ShouldSerializeEnabledButtons()
	{
		return NodeStyle.ShouldSerializeEnabledButtons();
	}

	public void ResetEnsureDefaultOptinedChild()
	{
		NodeStyle.ResetEnsureDefaultOptinedChild();
	}

	protected bool ShouldSerializeEnsureDefaultOptinedChild()
	{
		return NodeStyle.ShouldSerializeEnsureDefaultOptinedChild();
	}

	private void ClearCachedPartialCheckedState()
	{
		if (partialCheckedState != null)
		{
			partialCheckedState.Clear();
			partialCheckedState = null;
		}
	}

	private void CachePartialCheckedState()
	{
		if (partialCheckedState != null)
		{
			partialCheckedState.Clear();
		}
		partialCheckedState = new Hashtable();
		foreach (TreeNodeAdv node in Nodes)
		{
			if (node.ShowCheckBox)
			{
				partialCheckedState[node] = node.CheckState;
			}
		}
	}

	private void CheckState_Changed()
	{
		OnCheckStateChanged(EventArgs.Empty);
		if (!NodeStyle.InteractiveCheckBox)
		{
			return;
		}
		if (CheckState == CheckState.Checked || CheckState == CheckState.Unchecked)
		{
			CheckState checkState = CheckState;
			for (int i = 0; i < nodes.Count; i++)
			{
				if (nodes[i].ShowCheckBox)
				{
					nodes[i].CheckState = checkState;
				}
			}
		}
		else
		{
			if (CheckState != CheckState.Indeterminate || CachedPartialCheckedState == null)
			{
				return;
			}
			foreach (TreeNodeAdv node in Nodes)
			{
				if (node.ShowCheckBox && CachedPartialCheckedState.Contains(node))
				{
					node.CheckState = (CheckState)CachedPartialCheckedState[node];
				}
			}
		}
	}

	private void ShowPlusMinusChanged()
	{
		UpdatePlusMinusVisibility();
		InvalidateTreeView();
	}

	internal void UpdateAllPlusMinusVisibility()
	{
		foreach (TreeNodeAdv node in Nodes)
		{
			node.UpdateAllPlusMinusVisibility();
		}
		UpdatePlusMinusVisibility();
	}

	internal void UpdatePlusMinusVisibility()
	{
		bool flag = plusMinus.Visible;
		if (NodeStyle.ShowPlusMinus && (HasChildren || (TreeView != null && TreeView.LoadOnDemand && !ExpandedOnce)))
		{
			if (Level == 1 && TreeView != null)
			{
				plusMinus.Visible = TreeView.NeedRootLinesSpace;
			}
			else
			{
				plusMinus.Visible = true;
			}
		}
		else
		{
			plusMinus.Visible = false;
		}
		if (flag != plusMinus.Visible && TreeView != null)
		{
			TreeView.Invalidate(Bounds);
		}
	}

	internal void childMaxXChanged(int childMax)
	{
		if (Expanded)
		{
			if (childMax > maxX)
			{
				MaxX = childMax;
			}
			else if (htRecalculatingNodes[this] == null)
			{
				RecalculateMaxX();
			}
		}
	}

	public TreeNodeAdv GetNextNode()
	{
		if (nodes.Count > 0)
		{
			return nodes[0];
		}
		if (parent == null)
		{
			return null;
		}
		if (parent.Nodes.IndexOf(this) < parent.Nodes.Count - 1)
		{
			return parent.Nodes[parent.Nodes.IndexOf(this) + 1];
		}
		for (TreeNodeAdv treeNodeAdv = parent; treeNodeAdv != null; treeNodeAdv = treeNodeAdv.Parent)
		{
			if (treeNodeAdv.Parent == null)
			{
				return null;
			}
			if (treeNodeAdv.Parent.Nodes.IndexOf(treeNodeAdv) < treeNodeAdv.Parent.Nodes.Count - 1)
			{
				return treeNodeAdv.Parent.Nodes[treeNodeAdv.Parent.Nodes.IndexOf(treeNodeAdv) + 1];
			}
		}
		return null;
	}

	protected internal TreeNodeAdv GetOptionedChild()
	{
		if (nodes != null && nodes.Count > 0)
		{
			for (int i = 0; i < nodes.Count; i++)
			{
				if (nodes[i].Optioned)
				{
					return nodes[i];
				}
			}
		}
		return null;
	}

	private Image GetNodeStateImage()
	{
		Image result = null;
		if (TreeView != null && TreeView.NodeStateImageList != null)
		{
			ImageList.ImageCollection images = TreeView.NodeStateImageList.Images;
			if (images != null && images.Count > 0)
			{
				int num = (Expanded ? ExpandImageIndex : CollapseImageIndex);
				int num2 = (Expanded ? TreeView.DefaultExpandImageIndex : TreeView.DefaultCollapseImageIndex);
				if (num > -1 && num < images.Count)
				{
					result = images[num];
				}
				else if (num2 > -1 && num2 < images.Count)
				{
					result = images[num2];
				}
			}
		}
		return result;
	}

	public void Remove()
	{
		if (Parent != null)
		{
			Parent.Nodes.Remove(this);
		}
	}

	internal int GetTreeRowIndexOfChild(TreeNodeAdv child)
	{
		int num = TreeRowIndex + 1;
		int count = nodes.Count;
		for (int i = 0; i < count; i++)
		{
			TreeNodeAdv treeNodeAdv = nodes[i];
			if (treeNodeAdv == child)
			{
				break;
			}
			num += treeNodeAdv.VisibleNodeCount;
		}
		return num;
	}

	internal void ResetVisibleNodeCount(bool recurseOnChildren)
	{
		bool flag = visibleNodeCount > 0;
		visibleNodeCount = -1;
		if (flag && Parent != null)
		{
			Parent.ResetVisibleNodeCount(recurseOnChildren: false);
		}
		if (recurseOnChildren)
		{
			for (int i = 0; i < nodes.Count; i++)
			{
				TreeNodeAdv treeNodeAdv = nodes[i];
				treeNodeAdv.ResetVisibleNodeCount(recurseOnChildren: true);
			}
		}
	}

	internal void AdjustVisibleNodeCount(int delta)
	{
		if (visibleNodeCount != -1)
		{
			visibleNodeCount += delta;
		}
		if (Parent != null)
		{
			Parent.AdjustVisibleNodeCount(delta);
		}
	}

	public int GetNodeCount(bool includeSubTrees)
	{
		int num = Nodes.Count;
		if (includeSubTrees)
		{
			foreach (TreeNodeAdv node in Nodes)
			{
				num += node.GetNodeCount(includeSubTrees: true);
			}
		}
		return num;
	}

	internal TreeNodeAdv GetNodeAtAbsoluteRowIndex(int rowIndex)
	{
		return GetNodeAtRelativeRowIndex(rowIndex - TreeRowIndex);
	}

	internal TreeNodeAdv GetNodeAtRelativeRowIndex(int rowIndex)
	{
		if (rowIndex == 0)
		{
			return this;
		}
		rowIndex--;
		int count = nodes.Count;
		for (int i = 0; i < count; i++)
		{
			TreeNodeAdv treeNodeAdv = nodes[i];
			int num = treeNodeAdv.VisibleNodeCount;
			if (rowIndex < num)
			{
				return treeNodeAdv.GetNodeAtRelativeRowIndex(rowIndex);
			}
			rowIndex -= num;
		}
		return null;
	}

	[DocumentationExclude]
	protected virtual void OnLeftImagePaddingChanged()
	{
		RecalculateDimensions();
	}

	[DocumentationExclude]
	protected virtual void OnRightImagePaddingChanged()
	{
		RecalculateDimensions();
	}

	[DocumentationExclude]
	protected virtual void OnStateImagePaddingChanged()
	{
		RecalculateDimensions();
	}

	internal void StyleChanged(object sender, StyleChangedEventArgs e)
	{
		StyleInfoProperty sip = e.Sip;
		if (sip != null)
		{
			switch (sip.PropertyName)
			{
			case "CheckState":
				CheckState_Changed();
				break;
			case "ShowPlusMinus":
				ShowPlusMinusChanged();
				RecalculateDimensions();
				break;
			case "ShowOptionButton":
			case "ShowCheckBox":
			case "LeftImageIndices":
			case "StateImage":
			case "RightImageIndices":
			case "Text":
			case "Font":
				RecalculateDimensions();
				break;
			case "Comparer":
				Nodes.comparer = NodeStyle.Comparer;
				break;
			}
		}
		TreeViewAdv treeView = TreeView;
		if (treeView != null)
		{
			treeView.NeedUpdateCustomControls = true;
		}
		InvalidateTreeView();
	}

	private TreeNodeAdv(SerializationInfo info, StreamingContext context)
		: this()
	{
		nodeData = new TreeNodeAdvStyleInfo(info.GetValue("NodeStyle", typeof(TreeNodeAdvStyleInfoStore)) as TreeNodeAdvStyleInfoStore);
		nodeData.Changed += StyleChanged;
		childStyle = new ChildTreeNodeAdvStyleInfo(new TreeViewAdvStyleInfoIdentity(this), info.GetValue("ChildStyle", typeof(TreeNodeAdvStyleInfoStore)) as TreeNodeAdvStyleInfoStore);
	}

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("NodeStyle", NodeStyle.Store);
		info.AddValue("ChildStyle", ChildStyle.Store);
	}

	protected virtual void OnCheckStateChanged(EventArgs e)
	{
		if (this.CheckStateChanged != null)
		{
			this.CheckStateChanged(this, e);
		}
	}

	private void RaiseExpandImageIndexChanged()
	{
		if (this.ExpandImageIndexChanged != null)
		{
			this.ExpandImageIndexChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnExpandImageIndexChanged()
	{
		InvalidateTreeView();
		RaiseExpandImageIndexChanged();
	}

	private void RaiseCollapseImageIndexChanged()
	{
		if (this.CollapseImageIndexChanged != null)
		{
			this.CollapseImageIndexChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnCollapseImageIndexChanged()
	{
		InvalidateTreeView();
		RaiseCollapseImageIndexChanged();
	}

	void ISupportInitialize.BeginInit()
	{
	}

	void ISupportInitialize.EndInit()
	{
		nodes.Sort(NodeStyle.SortOrder);
	}

	public TreeNodeAdv()
	{
		Initialize("TreeNodeAdv", null);
	}

	public TreeNodeAdv(string text)
	{
		Initialize(text, null);
	}

	public TreeNodeAdv(string text, TreeNodeAdv[] nodes)
	{
		Initialize(text, nodes);
	}

	private void Initialize(string text, TreeNodeAdv[] nodeArray)
	{
		m_primitives = new TreeNodePrimitivesCollection();
		m_primitives.CollectionChanged += OnPrimitivesCollectionChanged;
		nodeData = new TreeNodeAdvStyleInfo(new TreeNodeAdvStyleInfoIdentity(this));
		nodeData.Changed += StyleChanged;
		nodeData.Text = text;
		childStyle = new ChildTreeNodeAdvStyleInfo(new TreeViewAdvStyleInfoIdentity(this));
		plusMinus = new TreeNodeAdvPart(this);
		plusMinus.Size = new Size(9, 9);
		checkBox = new CheckBoxPart(this);
		checkBox.Size = new Size(13, 13);
		optionButton = new OptionButtonPart(this);
		optionButton.Size = new Size(14, 14);
		nodes = new TreeNodeAdvCollection();
		nodes.CollectionChanged += Nodes_CollectionChanged;
		nodes.BeforeRemoving += nodes_BeforeRemoving;
		if (nodeArray != null)
		{
			nodes.AddRange(nodeArray);
		}
		RecalculateDimensions();
	}

	int IComparable.CompareTo(object obj)
	{
		if (obj is TreeNodeAdv)
		{
			TreeNodeAdv treeNodeAdv = (TreeNodeAdv)obj;
			if (parent == null)
			{
				return NodeStyle.Text.CompareTo(treeNodeAdv.NodeStyle.Text);
			}
			switch (parent.NodeStyle.SortType)
			{
			case TreeNodeAdvSortType.Text:
				return NodeTextCompare(treeNodeAdv.Text);
			case TreeNodeAdvSortType.Tag:
				return NodeTagCompare(treeNodeAdv.Tag);
			case TreeNodeAdvSortType.CheckBox:
				if (Checked)
				{
					if (treeNodeAdv.Checked)
					{
						return 0;
					}
					return 1;
				}
				if (treeNodeAdv.Checked)
				{
					return -1;
				}
				if (CheckState == CheckState.Indeterminate)
				{
					if (treeNodeAdv.CheckState == CheckState.Indeterminate)
					{
						return 0;
					}
					return 1;
				}
				if (treeNodeAdv.CheckState == CheckState.Unchecked)
				{
					return 0;
				}
				return -1;
			}
		}
		else
		{
			if (obj is string)
			{
				string text = (string)obj;
				if (parent == null)
				{
					return NodeTextCompare(text);
				}
				return parent.SortType switch
				{
					TreeNodeAdvSortType.Tag => NodeTagCompare(text), 
					_ => NodeTextCompare(text), 
				};
			}
			if (parent != null && parent.SortType == TreeNodeAdvSortType.Tag)
			{
				return NodeTagCompare(obj);
			}
		}
		return 0;
	}

	private int NodeTextCompare(string compareText)
	{
		return culture.CompareInfo.Compare(NodeStyle.Text, compareText, (parent != null) ? parent.NodeStyle.CompareOptions : CompareOptions.None);
	}

	private int NodeTagCompare(object compareTag)
	{
		if (Tag != null)
		{
			if (compareTag != null)
			{
				if (Tag is IComparable)
				{
					if (compareTag is IComparable)
					{
						return ((IComparable)Tag).CompareTo(compareTag);
					}
					return 1;
				}
				return -1;
			}
			return 1;
		}
		if (compareTag != null)
		{
			return -1;
		}
		return 0;
	}

	public void Sort()
	{
		if (TreeView.SortWithChildNodes && HasChildren)
		{
			nodes.Sort(NodeStyle.SortOrder);
			{
				foreach (TreeNodeAdv node in Nodes)
				{
					node.SortOrder = SortOrder;
					node.Sort();
				}
				return;
			}
		}
		if (!TreeView.SortWithChildNodes && HasChildren)
		{
			nodes.Sort(NodeStyle.SortOrder);
		}
	}

	public void Sort(TreeNodeAdvSortType sortType)
	{
		if (TreeView.SortWithChildNodes && HasChildren)
		{
			nodeData.SortType = sortType;
			Sort();
			{
				foreach (TreeNodeAdv node in Nodes)
				{
					node.Sort(sortType);
				}
				return;
			}
		}
		if (!TreeView.SortWithChildNodes && HasChildren)
		{
			nodeData.SortType = sortType;
			Sort();
		}
	}

	internal Rectangle MouseInControl(Point pt)
	{
		if (plusMinus.Visible && plusMinus.Bounds.Contains(pt))
		{
			return plusMinus.Bounds;
		}
		if (checkBox.Visible && checkBox.Bounds.Contains(pt))
		{
			return checkBox.Bounds;
		}
		if (optionButton.Visible && optionButton.Bounds.Contains(pt))
		{
			return optionButton.Bounds;
		}
		return Rectangle.Empty;
	}

	internal bool ProcessMouseDown(Point pt)
	{
		if (!Enabled)
		{
			return false;
		}
		if (plusMinus.Visible)
		{
			Rectangle rectangle = plusMinus.Bounds;
			rectangle.Inflate(4, 3);
			if (rectangle.Contains(pt))
			{
				if (!TreeView.RecalculateExpansion)
				{
					foreach (TreeNodeAdv node in Nodes)
					{
						node.RecalculateDimensions();
					}
				}
				if (!ShowPlusOnExpand || !TreeView.LoadOnDemand)
				{
					Expanded = !Expanded;
				}
				else if (!Expanded)
				{
					Expanded = true;
				}
				else
				{
					TreeView.ExpandedChanging(this, expanding: true);
				}
				return true;
			}
		}
		if (checkBox.Visible && EnabledButtons && checkBox.Bounds.Contains(pt))
		{
			bool flag = TreeView != null && TreeView.SelectionBaseNode != this;
			ToggleCheckState((Control.ModifierKeys & Keys.Shift) > Keys.None && flag);
			return true;
		}
		if (optionButton.Visible && EnabledButtons && optionButton.Bounds.Contains(pt))
		{
			if (!optioned && parent != null)
			{
				TreeNodeAdv optionedChild = parent.GetOptionedChild();
				if (optionedChild != null)
				{
					optionedChild.Optioned = false;
				}
				Optioned = true;
			}
			return true;
		}
		return false;
	}

	internal CheckState GetToggledState(CheckState current)
	{
		CheckState checkState = CheckState.Checked;
		switch (current)
		{
		case CheckState.Checked:
			return CheckState.Unchecked;
		case CheckState.Unchecked:
			if (InteractiveCheckBox && partialCheckedState != null)
			{
				return CheckState.Indeterminate;
			}
			break;
		}
		return CheckState.Checked;
	}

	[DocumentationExclude]
	protected void ToggleCheckState(bool multiNodeToggle)
	{
		TreeViewAdv treeView = TreeView;
		if (!multiNodeToggle || treeView.SelectionBaseNode == null)
		{
			CheckState = GetToggledState(CheckState);
		}
		else
		{
			if (TreeView == null)
			{
				return;
			}
			TreeNodeAdv selectionBaseNode = treeView.SelectionBaseNode;
			CheckState checkState = selectionBaseNode.CheckState;
			bool flag = selectionBaseNode.Bounds.Y > Bounds.Y;
			ArrayList arrayList = new ArrayList();
			TreeNodeAdv treeNodeAdv = selectionBaseNode;
			while (treeNodeAdv != null && treeNodeAdv != this)
			{
				if (treeNodeAdv.Enabled)
				{
					arrayList.Add(treeNodeAdv);
					if (treeNodeAdv.ShowCheckBox)
					{
						treeNodeAdv.CheckState = checkState;
					}
				}
				treeNodeAdv = (flag ? treeNodeAdv.PrevVisibleNode : treeNodeAdv.NextVisibleNode);
			}
			CheckState = checkState;
		}
	}

	public void Move(TreeNodeAdvCollection newNodesCollection)
	{
		Move(newNodesCollection, -1);
	}

	public void Move(TreeNodeAdvCollection newNodesCollection, int index)
	{
		HistoryManager historyManager = HistoryManager;
		historyManager?.BeginBlock();
		if (newNodesCollection != null)
		{
			if (Parent != null)
			{
				Parent.Nodes.Remove(this);
			}
			if (index == -1)
			{
				newNodesCollection.Add(this);
			}
			else
			{
				newNodesCollection.Insert(index, this);
			}
			historyManager?.CloseBlock();
		}
	}

	public void Move(TreeNodeAdv relativeNode, NodePositions nodePosition)
	{
		HistoryManager historyManager = HistoryManager;
		historyManager?.BeginBlock();
		if (relativeNode != null && ((nodePosition != NodePositions.Next && nodePosition != NodePositions.Previous) || relativeNode.Parent != null))
		{
			if (Parent != null)
			{
				Parent.Nodes.Remove(this);
			}
			switch (nodePosition)
			{
			case NodePositions.First:
				Move(relativeNode.Nodes, 0);
				break;
			case NodePositions.Last:
				Move(relativeNode.Nodes, -1);
				break;
			case NodePositions.Next:
				Move(relativeNode.Parent.Nodes, relativeNode.Parent.Nodes.IndexOf(relativeNode) + 1);
				break;
			case NodePositions.Previous:
				Move(relativeNode.Parent.Nodes, relativeNode.Parent.Nodes.IndexOf(relativeNode));
				break;
			}
			historyManager?.CloseBlock();
		}
	}

	public void Move(TreeNodeAdvCollection col, NodePositions nodePosition)
	{
		HistoryManager historyManager = HistoryManager;
		historyManager?.BeginBlock();
		if (col == null)
		{
			throw new ArgumentNullException("col");
		}
		if (Parent != null)
		{
			Parent.Nodes.Remove(this);
		}
		switch (nodePosition)
		{
		case NodePositions.First:
		case NodePositions.Previous:
			Move(col, 0);
			break;
		case NodePositions.Last:
		case NodePositions.Next:
			Move(col, -1);
			break;
		}
		historyManager?.CloseBlock();
	}

	internal void AddedNode(TreeNodeAdv node)
	{
		if (node.Parent != this && node.Parent != null)
		{
			node.Parent.Nodes.Remove(node);
		}
		bool flag = node.Visible;
		node.Visible = Visible && Expanded;
		bool flag2 = node.Visible && !flag;
		node.parent = this;
		if (!IsRoot)
		{
			bool flag3 = false;
			if (TreeView != null && TreeView.inNodeRefresh)
			{
				flag3 = true;
			}
			if (!flag3)
			{
				node.CheckStateChanged += childCheckStateChanged;
			}
			UpdateInteractiveCheckState();
		}
		TreeViewAdv treeView = TreeView;
		if (treeView != null)
		{
			if (treeView.RecalculateExpansion)
			{
				foreach (TreeNodeAdv node2 in node.Nodes)
				{
					node.AddedNode(node2);
				}
			}
			if (treeView.ShouldPrepareUpdate(markPaintPending: false))
			{
				node.RecalculateDimensions();
				if (node.Right > maxX)
				{
					MaxX = node.Right;
				}
				if (Nodes.Count == 1)
				{
					RecalculateDimensions();
				}
			}
		}
		if (flag2)
		{
			AdjustVisibleNodeCount(node.VisibleNodeCount);
		}
		UpdatePlusMinusVisibility();
		node.UpdateAllPlusMinusVisibility();
	}

	internal void RemovedNodes(ArrayList nodes)
	{
		foreach (TreeNodeAdv node in nodes)
		{
			RemovedNode(node);
		}
		MakeDirty();
	}

	internal void RemovedNode(TreeNodeAdv node)
	{
		if (Visible & Expanded)
		{
			AdjustVisibleNodeCount(node.VisibleNodeCount);
		}
		if (TreeView != null)
		{
			TreeView.RemovedNode(node);
		}
		node.parent = null;
		node.Visible = false;
		childMaxXChanged(0);
		if (!InteractiveCheckBox)
		{
			return;
		}
		if (partialCheckedState != null)
		{
			partialCheckedState.Remove(node);
			if (partialCheckedState.Count == 0)
			{
				partialCheckedState = null;
			}
		}
		UpdateInteractiveCheckState();
	}

	private void RemoveCheckedNode(TreeNodeAdv node, CheckedNodesColection nodes)
	{
		foreach (TreeNodeAdv node2 in node.Nodes)
		{
			RemoveCheckedNode(node2, nodes);
		}
		nodes.Remove(node);
	}

	private void Nodes_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (e.Action != CollectionChangeAction.Refresh)
		{
			CustomControlCollectionChanging(e.Element as TreeNodeAdv, e.Action);
		}
		if (TreeView != null)
		{
			TreeView.NodesChanging();
		}
		if (e.Action == CollectionChangeAction.Remove)
		{
			TreeNodeAdv treeNodeAdv = (TreeNodeAdv)e.Element;
			TreeViewAdv treeView = TreeView;
			if (treeView != null && treeView.SelectedNode != null && (treeView.SelectedNode == treeNodeAdv || treeView.SelectedNode.IsParent(treeNodeAdv)))
			{
				AdjustSelectedNode(treeView.curSelectedNodeIndex);
			}
			if (TreeView != null)
			{
				RemoveCheckedNode(treeNodeAdv, TreeView.CheckedNodes);
			}
			RemovedNode(treeNodeAdv);
		}
		else if (e.Action == CollectionChangeAction.Add)
		{
			if (e.Element is TreeNodeAdv treeNodeAdv2)
			{
				UpdateSelectedNodeIndexCache();
				AddedNode(treeNodeAdv2);
				MakeDirty();
				if (TreeView != null)
				{
					TreeView.CheckedNodes.ResolveNode(treeNodeAdv2);
					HistoryManager historyManager = HistoryManager;
					if (historyManager != null && !treeNodeAdv2.IsUndoRedoPerforming)
					{
						TreeViewCommand cmd = new TreeViewCommand(treeNodeAdv2, Action.Add);
						historyManager.Do(cmd);
					}
				}
			}
		}
		else if (e.Action == CollectionChangeAction.Refresh)
		{
			UpdateSelectedNodeIndexCache();
			TreeViewAdv treeView2 = TreeView;
			if (treeView2 != null)
			{
				treeView2.inNodeRefresh = true;
				foreach (TreeNodeAdv node in Nodes)
				{
					AddedNode(node);
					treeView2.CheckedNodes.ResolveNode(node);
					HistoryManager historyManager2 = HistoryManager;
					if (historyManager2 != null && !node.IsUndoRedoPerforming)
					{
						TreeViewCommand cmd2 = new TreeViewCommand(node, Action.Add);
						historyManager2.Do(cmd2);
					}
				}
				treeView2.inNodeRefresh = false;
			}
			MakeDirty();
		}
		UpdatePlusMinusVisibility();
		ResetVisibleNodeCount(recurseOnChildren: false);
		MakeDirty();
		if (TreeView != null)
		{
			TreeView.NodesChanged();
		}
	}

	private void AdjustSelectedNode(int prevIndex)
	{
		TreeNodeAdv treeNodeAdv = null;
		if (Nodes.Count == 0 && !IsRoot && Enabled)
		{
			treeNodeAdv = this;
		}
		if (Nodes.Count > 0 && treeNodeAdv == null)
		{
			if (prevIndex >= Nodes.Count)
			{
				prevIndex = Nodes.Count - 1;
			}
			if (prevIndex >= 0)
			{
				TreeNodeAdv treeNodeAdv2 = Nodes[prevIndex];
				while ((treeNodeAdv2.Parent != this || !treeNodeAdv2.Enabled) && ++prevIndex < Nodes.Count)
				{
					treeNodeAdv2 = Nodes[prevIndex];
				}
				if (treeNodeAdv2.Parent == this && treeNodeAdv2.Enabled)
				{
					treeNodeAdv = treeNodeAdv2;
				}
			}
		}
		if (treeNodeAdv == null)
		{
			TreeNodeAdv treeNodeAdv3 = NextSelectableNode;
			if (treeNodeAdv3 == null)
			{
				treeNodeAdv3 = PrevSelectableNode;
			}
			treeNodeAdv = treeNodeAdv3;
		}
		TreeViewAdv treeView = TreeView;
		if (treeView != null)
		{
			if (treeView.SetSelectedNode(treeNodeAdv, treeView.SelectedNodes, TreeViewAdvAction.Unknown))
			{
				treeView.ActiveNode = treeNodeAdv;
				treeView.SetSelectionBaseNode(treeNodeAdv);
			}
			else
			{
				treeView.SetSelectedNode(null, treeView.SelectedNodes, TreeViewAdvAction.Unknown, fireEvent: false, forceRemove: true);
				treeView.ActiveNode = null;
			}
		}
	}

	private void UpdateSelectedNodeIndexCache()
	{
		TreeViewAdv treeView = TreeView;
		if (treeView != null && treeView.SelectedNode != null && treeView.SelectedNode.Parent == this)
		{
			if (Nodes.IndexOf(treeView.SelectedNode) == -1)
			{
				treeView.SetSelectedNode(null, treeView.SelectedNodes, TreeViewAdvAction.Unknown, fireEvent: false, forceRemove: true);
				treeView.ActiveNode = null;
			}
			else
			{
				treeView.curSelectedNodeIndex = Nodes.IndexOf(treeView.SelectedNode);
			}
		}
	}

	public bool IsParent(TreeNodeAdv targetNode)
	{
		if (targetNode == null)
		{
			return false;
		}
		TreeNodeAdv treeNodeAdv = this;
		while (treeNodeAdv != null && treeNodeAdv.Parent != targetNode)
		{
			treeNodeAdv = treeNodeAdv.Parent;
		}
		if (treeNodeAdv != null && treeNodeAdv.Parent == targetNode)
		{
			return true;
		}
		return false;
	}

	private void childCheckStateChanged(object sender, EventArgs e)
	{
		UpdateInteractiveCheckState();
	}

	private void UpdateInteractiveCheckState()
	{
		if (!NodeStyle.InteractiveCheckBox || checkStateChangingSourceNode == this || IsParent(checkStateChangingSourceNode))
		{
			return;
		}
		int num = -1;
		for (int i = 0; i < nodes.Count; i++)
		{
			if (nodes[i].ShowCheckBox)
			{
				num = i;
				break;
			}
		}
		if (num == -1)
		{
			return;
		}
		CheckState checkState = nodes[num].CheckState;
		bool flag = true;
		for (int j = num + 1; j < nodes.Count; j++)
		{
			if (nodes[j].ShowCheckBox && checkState != nodes[j].CheckState)
			{
				flag = false;
			}
		}
		ClearCachedPartialCheckedState();
		if (flag)
		{
			CheckState = checkState;
			ClearCachedPartialCheckedState();
		}
		else
		{
			CheckState = CheckState.Indeterminate;
		}
	}

	private void InvalidateTreeView()
	{
		if (TreeView != null)
		{
			TreeView.Invalidate();
		}
	}

	object ICloneable.Clone()
	{
		return MemberwiseClone();
	}

	public TreeNodeAdv Clone()
	{
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv(NodeStyle.Text);
		treeNodeAdv.LeftStateImagePadding = LeftStateImagePadding;
		treeNodeAdv.RightStateImagePadding = RightStateImagePadding;
		treeNodeAdv.LeftImagePadding = LeftImagePadding;
		treeNodeAdv.RightImagePadding = RightImagePadding;
		treeNodeAdv.ExpandImageIndex = ExpandImageIndex;
		treeNodeAdv.CollapseImageIndex = CollapseImageIndex;
		treeNodeAdv.NodeStyle.ModifyStyle(NodeStyle, StyleModifyType.Copy);
		treeNodeAdv.ChildStyle.ModifyStyle(ChildStyle, StyleModifyType.Copy);
		treeNodeAdv.iBounds = Bounds;
		treeNodeAdv.SetPrimitives((TreeNodePrimitivesCollection)Primitives.Clone());
		treeNodeAdv.SetCustomControlMember(CustomControl);
		treeNodeAdv.Expanded = Expanded;
		treeNodeAdv.ShowPlusOnExpand = ShowPlusOnExpand;
		treeNodeAdv.Nodes.Clear();
		for (int i = 0; i < Nodes.Count; i++)
		{
			treeNodeAdv.Nodes.Add(Nodes[i].Clone());
		}
		treeNodeAdv.Visible = Visible;
		if (Tag is ICloneable)
		{
			treeNodeAdv.Tag = ((ICloneable)Tag).Clone();
		}
		return treeNodeAdv;
	}

	internal void SetCustomControlMember(Control control)
	{
		m_customControl = control;
	}

	private void ExpandParentSelf()
	{
		if (parent != null && (!parent.Expanded || !parent.visible))
		{
			parent.ExpandParentSelf();
		}
		Expand();
	}

	public void BringIntoView()
	{
		if (!Visible && parent != null)
		{
			parent.ExpandParentSelf();
		}
		if (Visible)
		{
			TreeViewAdv treeView = TreeView;
			if (treeView != null)
			{
				treeView.Update();
				treeView.EnsureVisible(this);
			}
			TreeView.IsBroughtIntoView = true;
		}
	}

	public void Expand()
	{
		Expanded = true;
		if (TreeView == null || TreeView.RecalculateExpansion)
		{
			return;
		}
		foreach (TreeNodeAdv node in Nodes)
		{
			node.RecalculateDimensions();
			node.InvalidateTreeView();
		}
	}

	public void ExpandAll()
	{
		Expanded = true;
		for (int i = 0; i < Nodes.Count; i++)
		{
			Nodes[i].ExpandAll();
			if (!TreeView.RecalculateExpansion)
			{
				Nodes[i].RecalculateDimensions();
			}
		}
	}

	public void CollapseAll()
	{
		for (int i = 0; i < Nodes.Count; i++)
		{
			Nodes[i].CollapseAll();
		}
		Expanded = false;
	}

	private void SetChildrenVisible(bool value)
	{
		for (int i = 0; i < nodes.Count; i++)
		{
			nodes[i].Visible = value;
		}
	}

	internal Color GetForeColor(bool selected, bool hotTracked)
	{
		TreeViewAdv treeView = TreeView;
		if (treeView != null)
		{
			if (selected)
			{
				if (treeView.Focused)
				{
					return treeView.SelectedNodeForeColor;
				}
				if (!treeView.HideSelection)
				{
					return treeView.InactiveSelectedNodeForeColor;
				}
			}
			if (!treeView.Enabled || !Enabled)
			{
				return SystemColors.GrayText;
			}
			if (!hotTracked)
			{
				return NodeStyle.TextColor;
			}
			return SystemColors.HotTrack;
		}
		return NodeStyle.TextColor;
	}

	internal void Draw(ThemedControlDrawing treeTD, ThemedControlDrawing buttonTD, Pen linePen, Point mousePos, bool mouseDown, TreeNodeAdvPaintEventArgs e)
	{
		TreeViewAdv treeView = TreeView;
		bool isMirrored = treeView.GetIsMirrored();
		DrawHorizontalLine(treeView, e, isMirrored, linePen);
		DrawLeftImageList(treeView, e, isMirrored);
		DrawStateImageList(treeView, e, isMirrored);
		DrawText(treeView, e);
		if (e.Active)
		{
			DrawFocusRect(e.Graphics, treeView);
		}
		DrawRightImageList(treeView, e, isMirrored);
		DrawControls(e, treeTD, buttonTD, mousePos, mouseDown);
	}

	private void DrawHorizontalLine(TreeViewAdv tvaTree, TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored, Pen linePen)
	{
		if (Level == 1 && !tvaTree.ShowRootLines)
		{
			return;
		}
		int num = 0;
		int num2 = 0;
		if (bIsMirrored)
		{
			int num3 = bounds.Right - nodeXRel;
			num2 = num3 - plusMinus.Width / 2;
			num = num3 - lineRightRel;
		}
		else
		{
			int num4 = bounds.X + nodeXRel;
			num = num4 + plusMinus.Width / 2;
			num2 = num4 + lineRightRel;
		}
		if (parent == null || !tvaTree.ShowLines)
		{
			return;
		}
		if (HasChildren && nodeData.ShowPlusMinus)
		{
			if (bIsMirrored)
			{
				num2 -= plusMinus.Width / 2;
			}
			else
			{
				num += plusMinus.Width / 2;
			}
		}
		int num5 = bounds.Y + NodeStyle.Height / 2;
		eaEventArgs.Graphics.DrawLine(linePen, num, num5, num2, num5);
	}

	private void DrawLeftImageList(TreeViewAdv tvaTree, TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored)
	{
		ImageList leftImageList = tvaTree.LeftImageList;
		if (leftImageList == null || eaEventArgs.HandledLeftImageList)
		{
			return;
		}
		int num = 0;
		if (leftImageListXRel == int.MinValue)
		{
			return;
		}
		int num2 = nodeXRel + leftImageListXRel;
		num = ((!bIsMirrored) ? (bounds.X + num2) : (bounds.Right - num2));
		int num3 = leftImageList.ImageSize.Width;
		int y = bounds.Y + (NodeStyle.Height - leftImageList.ImageSize.Height) / 2;
		int[] leftImageIndices = NodeStyle.LeftImageIndices;
		foreach (int num4 in leftImageIndices)
		{
			if (num4 >= 0 && num4 < leftImageList.Images.Count)
			{
				if (bIsMirrored)
				{
					num -= num3;
					num -= LeftImagePadding;
				}
				eaEventArgs.Graphics.DrawImage(leftImageList.Images[num4], num, y);
				if (!bIsMirrored)
				{
					num += num3;
					num += LeftImagePadding;
				}
			}
		}
	}

	private void DrawStateImageList(TreeViewAdv tvaTree, TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored)
	{
		ImageList stateImageList = tvaTree.StateImageList;
		if (stateImageList == null || eaEventArgs.HandledStateImageList || stateImageListXRel == int.MinValue)
		{
			return;
		}
		int num = 0;
		num = ((!HasChildren && (!tvaTree.LoadOnDemand || expandedOnce)) ? NodeStyle.NoChildrenImgIndex : ((!Expanded) ? NodeStyle.ClosedImgIndex : NodeStyle.OpenImgIndex));
		if (num >= 0 && num < stateImageList.Images.Count)
		{
			int num2 = 0;
			int num3 = stateImageListXRel + nodeXRel;
			if (bIsMirrored)
			{
				num2 = bounds.Right - num3 - stateImageList.ImageSize.Width;
				num2 -= LeftStateImagePadding;
			}
			else
			{
				num2 = bounds.X + num3;
				num2 += LeftStateImagePadding;
			}
			eaEventArgs.Graphics.DrawImage(stateImageList.Images[num], num2, bounds.Y + (NodeStyle.Height - stateImageList.ImageSize.Height) / 2);
		}
	}

	private Size GetNodeTextSize(Graphics g, Font f)
	{
		Size result = Size.Empty;
		if (Text != null && Text.Length > 0)
		{
			result = TreeView.MeasureDisplayStringSize(g, Text, f);
		}
		result.Width += 4;
		return result;
	}

	private void DrawText(TreeViewAdv tvaTree, TreeNodeAdvPaintEventArgs eaEventArgs)
	{
		Graphics graphics = eaEventArgs.Graphics;
		if (textLocationXRel == int.MinValue)
		{
			return;
		}
		if (tvaTree.Printing)
		{
			Point location = PrintTextBounds.Location;
			int num = PrintTextBounds.Width - TextBounds.Width;
			if (num > 0 && GetIsMirrored())
			{
				location.Offset(-num, 0);
			}
			graphics.DrawString(Text, Font, new SolidBrush(eaEventArgs.ForeColor), location);
		}
		else
		{
			if (eaEventArgs.HandledText || (tvaTree.IsEditing && tvaTree.ActiveNode == this))
			{
				return;
			}
			Font font = (eaEventArgs.HotTracked ? HotFont : NodeStyle.Font);
			IntPtr hdc = graphics.GetHdc();
			IntPtr hObject = font.ToHfont();
			try
			{
				IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject);
				Syncfusion.Runtime.InteropServices.NativeMethods.SetTextColor(hdc, Color.FromArgb(0, eaEventArgs.ForeColor.B, eaEventArgs.ForeColor.G, eaEventArgs.ForeColor.R).ToArgb() & 0xFFFFFF);
				Syncfusion.Runtime.InteropServices.NativeMethods.SetBkMode(hdc, 1);
				Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(TextBounds);
				lpRect.left += 2;
				int num2 = 2404;
				if (GetIsMirrored())
				{
					num2 |= 0x20000;
				}
				if (Text != null)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.DrawText(hdc, Text, Text.Length, ref lpRect, num2);
				}
				hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject2);
			}
			finally
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
				graphics.ReleaseHdc(hdc);
			}
		}
	}

	private void DrawFocusRect(TreeViewAdv tvaTree, TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored)
	{
		if (eaEventArgs.Active && tvaTree.Focused)
		{
			Graphics graphics = eaEventArgs.Graphics;
			Rectangle rectangle;
			if (eaEventArgs.FullRowSelect)
			{
				rectangle = bounds;
				rectangle.Inflate(bounds.X, 0);
				rectangle.Width -= bounds.X;
			}
			else
			{
				rectangle = (tvaTree.Printing ? PrintTextBounds : TextBounds);
			}
			ControlPaint.DrawFocusRectangle(graphics, rectangle, NodeStyle.TextColor, NodeStyle.Background.BackColor);
		}
	}

	protected internal void DrawFocusRect(Graphics g, TreeViewAdv tvaTree)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (tvaTree == null)
		{
			throw new ArgumentNullException("tvaTree");
		}
		if (!tvaTree.Focused && !tvaTree.KeepDottedSelection)
		{
			return;
		}
		Rectangle rectangle;
		if (tvaTree.FullRowSelect)
		{
			rectangle = bounds;
			rectangle.Inflate(bounds.X, 0);
			rectangle.Width -= bounds.X;
			if (tvaTree.GetIsMirrored())
			{
				rectangle.Width += tvaTree.GutterSpace;
			}
		}
		else
		{
			rectangle = (tvaTree.Printing ? PrintTextBounds : TextBounds);
		}
		if (!IsEditing && g.ClipBounds.IntersectsWith(rectangle))
		{
			ControlPaint.DrawFocusRectangle(g, rectangle, NodeStyle.TextColor, NodeStyle.Background.BackColor);
		}
	}

	private void DrawRightImageList(TreeViewAdv tvaTree, TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored)
	{
		ImageList rightImageList = tvaTree.RightImageList;
		if (rightImageList == null || eaEventArgs.HandledRightImageList || rightImageListXRel == int.MinValue)
		{
			return;
		}
		int num = 0;
		int num2 = rightImageListXRel + nodeXRel;
		num = ((!bIsMirrored) ? (bounds.X + num2 + RightImagePadding) : (bounds.Right - num2));
		int num3 = rightImageList.ImageSize.Width;
		int y = bounds.Y + (NodeStyle.Height - rightImageList.ImageSize.Height) / 2;
		int[] rightImageIndices = NodeStyle.RightImageIndices;
		if (tvaTree.Printing)
		{
			int num4 = PrintTextBounds.Width - TextBounds.Width;
			if (num4 > 0)
			{
				num = (bIsMirrored ? (num - num4) : (num + num4));
			}
		}
		foreach (int num5 in rightImageIndices)
		{
			if (num5 >= 0 && num5 < rightImageList.Images.Count)
			{
				if (bIsMirrored)
				{
					num -= num3;
					num -= RightImagePadding;
				}
				eaEventArgs.Graphics.DrawImage(rightImageList.Images[num5], num, y);
				if (!bIsMirrored)
				{
					num += num3;
					num += RightImagePadding;
				}
			}
		}
	}

	internal bool ShouldDrawPlusMinus()
	{
		if (plusMinus.Visible)
		{
			if (parent == null || !parent.Expanded || !HasChildren)
			{
				if (TreeView.LoadOnDemand)
				{
					return !expandedOnce;
				}
				return false;
			}
			return true;
		}
		return false;
	}

	private void DrawControls(TreeNodeAdvPaintEventArgs e, ThemedControlDrawing treeTD, ThemedControlDrawing buttonTD, Point pt, bool mouseDown)
	{
		if (NodeStyle.ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsAppThemed && XPThemes.IsThemeActive)
		{
			if (!e.HandledPlusMinus && ShouldDrawPlusMinus())
			{
				int stateID = ((!Expanded || (ShowPlusOnExpand && TreeView.LoadOnDemand)) ? 1 : 2);
				treeTD.DrawThemeBackground(e.Graphics, 2, stateID, plusMinus.Bounds);
			}
			if (!e.HandledCheckBox && checkBox.Visible && parent != null && parent.Expanded)
			{
				int num = 1;
				switch (CheckState)
				{
				case CheckState.Unchecked:
					num = 1;
					break;
				case CheckState.Checked:
					num = 5;
					break;
				case CheckState.Indeterminate:
					num = 9;
					break;
				}
				if (TreeView.Enabled && Enabled && EnabledButtons)
				{
					if (checkBox.Bounds.Contains(pt))
					{
						num = ((!mouseDown) ? (num + 1) : (num + 2));
					}
				}
				else
				{
					num += 3;
				}
				buttonTD.DrawThemeBackground(e.Graphics, 3, num, checkBox.Bounds);
			}
			if (e.HandledOptionButton || !optionButton.Visible || parent == null || !parent.Expanded)
			{
				return;
			}
			int num2 = 1;
			if (optioned)
			{
				num2 = 5;
			}
			if (TreeView.Enabled && Enabled && EnabledButtons)
			{
				if (optionButton.Bounds.Contains(pt))
				{
					num2 = ((!mouseDown) ? (num2 + 1) : (num2 + 2));
				}
			}
			else
			{
				num2 += 3;
			}
			buttonTD.DrawThemeBackground(e.Graphics, 2, num2, optionButton.Bounds);
			return;
		}
		bool transparentControls = TreeView.TransparentControls;
		Brush brush = new SolidBrush(TreeView.BackColor);
		if (!e.HandledPlusMinus && ShouldDrawPlusMinus())
		{
			int num3 = plusMinus.Width;
			int height = plusMinus.Height;
			Rectangle rect = new Rectangle(plusMinus.Location.X, plusMinus.Location.Y, num3 - 1, height - 1);
			if (!transparentControls)
			{
				e.Graphics.FillRectangle(brush, plusMinus.Bounds);
			}
			if (ExpandImage != null && Expanded)
			{
				e.Graphics.DrawImage(ExpandImage, rect);
			}
			else
			{
				if (Expanded)
				{
					e.Graphics.DrawRectangle(Pens.Gray, rect);
				}
				e.Graphics.DrawLine(Pens.Black, plusMinus.Location.X + 2, plusMinus.Location.Y + height / 2, plusMinus.Location.X + num3 - 3, plusMinus.Location.Y + height / 2);
			}
			if (!Expanded || (ShowPlusOnExpand && TreeView.LoadOnDemand))
			{
				if (CollapseImage != null)
				{
					e.Graphics.DrawImage(CollapseImage, rect);
				}
				else
				{
					e.Graphics.DrawRectangle(Pens.Gray, rect);
					e.Graphics.DrawLine(Pens.Black, plusMinus.Location.X + num3 / 2, plusMinus.Location.Y + 2, plusMinus.Location.X + num3 / 2, plusMinus.Location.Y + height - 3);
				}
			}
		}
		if (!e.HandledCheckBox && checkBox.Visible && parent != null && parent.Expanded && checkBox.xIndentFromNodeLeft != int.MinValue)
		{
			ButtonState buttonState = ButtonState.Normal;
			switch (CheckState)
			{
			case CheckState.Checked:
				buttonState = ButtonState.Checked;
				break;
			case CheckState.Indeterminate:
				buttonState = ButtonState.All;
				break;
			}
			if (!Enabled || !EnabledButtons)
			{
				buttonState |= ButtonState.Inactive;
			}
			ControlPaintAdv.DrawCheckBox(this, e.Graphics, checkBox.Bounds, buttonState);
		}
		if (!e.HandledOptionButton && optionButton.Visible && parent != null && parent.Expanded && optionButton.xIndentFromNodeLeft != int.MinValue)
		{
			ButtonState buttonState2 = ButtonState.Checked;
			if (!optioned)
			{
				buttonState2 = ButtonState.Normal;
			}
			if (!Enabled || !EnabledButtons)
			{
				buttonState2 |= ButtonState.Inactive;
			}
			ControlPaintAdv.DrawRadioButton(this, e.Graphics, optionButton.Bounds, buttonState2);
		}
		brush.Dispose();
	}

	internal void MakeDirty()
	{
		if (TreeView != null)
		{
			TreeView.MakeDirty();
		}
	}

	public bool HasNode(TreeNodeAdv node)
	{
		if (nodes.Contains(node))
		{
			return true;
		}
		for (int i = 0; i < nodes.Count; i++)
		{
			if (nodes[i].HasNode(node))
			{
				return true;
			}
		}
		return false;
	}

	internal void SetHeightIfChanged(int oldHeight, int newHeight)
	{
		if (NodeStyle.Height == oldHeight)
		{
			NodeStyle.Height = newHeight;
		}
		for (int i = 0; i < nodes.Count; i++)
		{
			nodes[i].SetHeightIfChanged(oldHeight, newHeight);
		}
	}

	public string GetPath(string separator)
	{
		if (parent == null)
		{
			return "";
		}
		string path = parent.GetPath(separator);
		if (TreeView != null && TreeView.AddSeparatorAtEnd)
		{
			if (path == "")
			{
				return NodeStyle.Text + separator;
			}
			return path + NodeStyle.Text + separator;
		}
		if (path == "")
		{
			return NodeStyle.Text;
		}
		return path + separator + NodeStyle.Text;
	}

	internal void SetPrimitives(TreeNodePrimitivesCollection primitives)
	{
		if (primitives != null)
		{
			m_primitives.CollectionChanged -= OnPrimitivesCollectionChanged;
			m_primitives = primitives;
			m_primitives.CollectionChanged += OnPrimitivesCollectionChanged;
			RecalculateAllDimensions();
		}
	}

	private bool LayoutPrimitive(ref int relativeLocation, ref int indent, int pmWidthWithSpace, int primitiveWidth, bool leftMostPartFound)
	{
		if (!leftMostPartFound)
		{
			leftMostPartFound = true;
			if (relativeLocation - primitiveWidth / 2 > pmWidthWithSpace)
			{
				relativeLocation -= primitiveWidth / 2;
			}
			lineRightRel = relativeLocation - 1;
		}
		indent = relativeLocation;
		relativeLocation += primitiveWidth + 3;
		return leftMostPartFound;
	}

	private bool LayoutCheckBox(ref int relativeLocation, int pmWidthWithSpace, bool leftMostPartFound)
	{
		return LayoutPrimitive(ref relativeLocation, ref CheckBox.xIndentFromNodeLeft, pmWidthWithSpace, CheckBox.Width, leftMostPartFound);
	}

	private bool LayoutOptionsButton(ref int relativeLocation, int pmWidthWithSpace, bool leftMostPartFound)
	{
		return LayoutPrimitive(ref relativeLocation, ref OptionButton.xIndentFromNodeLeft, pmWidthWithSpace, OptionButton.Width, leftMostPartFound);
	}

	private bool LayoutImages(ImageList imageList, int[] arrIndexes, ref int relativeLocation, int pmWidthWithSpace, int imagePadding, bool leftMostPartFound)
	{
		if (imageList != null && imageList.Images.Count > 0 && arrIndexes != null && arrIndexes.Length > 0)
		{
			bool flag = false;
			foreach (int num in arrIndexes)
			{
				if (num < 0 || num >= imageList.Images.Count)
				{
					continue;
				}
				if (!leftMostPartFound)
				{
					leftMostPartFound = true;
					if (relativeLocation - imageList.ImageSize.Width / 2 > pmWidthWithSpace)
					{
						relativeLocation -= imageList.ImageSize.Width / 2;
					}
					lineRightRel = relativeLocation - 1;
				}
				if (!flag)
				{
					flag = true;
				}
				relativeLocation += imageList.ImageSize.Width;
				relativeLocation += imagePadding;
			}
			if (flag)
			{
				relativeLocation += 3;
			}
		}
		return leftMostPartFound;
	}

	private bool LayoutStateImage(ImageList imageList, int imageIndex, ref int relativeLocation, int pmWidthWithSpace, int imagePadding, bool leftMostPartFound)
	{
		if (imageList != null && imageList.Images.Count > 0 && imageIndex >= 0 && imageIndex < imageList.Images.Count)
		{
			if (!leftMostPartFound)
			{
				leftMostPartFound = true;
				if (relativeLocation - imageList.ImageSize.Width / 2 > pmWidthWithSpace)
				{
					relativeLocation -= imageList.ImageSize.Width / 2;
				}
				lineRightRel = relativeLocation - 1;
			}
			stateImageListXRel = relativeLocation;
			relativeLocation += imageList.ImageSize.Width + 3;
			relativeLocation += imagePadding;
		}
		return leftMostPartFound;
	}

	private bool LayoutText(ref int relativeLocation, bool leftMostPartFound)
	{
		using (Graphics graphics = TreeView.CreateGraphics())
		{
			textWidth = GetNodeTextSize(graphics, nodeData.Font).Width;
			m_printTextSize = Size.Round(graphics.MeasureString(Text, Font));
			if (!leftMostPartFound)
			{
				leftMostPartFound = true;
				lineRightRel = relativeLocation - 1;
			}
			if (textWidth > 0)
			{
				relativeLocation += textWidth + 3;
			}
			Width = relativeLocation;
			int num = bounds.X + nodeXRel + width;
			if (!HasChildren)
			{
				MaxX = num;
			}
			else if (htRecalculatingNodes[this] == null)
			{
				RecalculateMaxX();
			}
			else if (num > MaxX)
			{
				MaxX = num;
			}
		}
		return leftMostPartFound;
	}

	internal void UpdateCustomConrtol()
	{
		if (CustomControl != null && CustomControl.Visible)
		{
			if (!GetIsMirrored())
			{
				CustomControl.Location = new Point(Bounds.X + m_customControlRelativeLocation + nodeXRel, Bounds.Y);
			}
			else
			{
				CustomControl.Location = new Point(Bounds.Right - m_customControlRelativeLocation - nodeXRel - CustomControl.Width, Bounds.Y);
			}
			CustomControl.Height = Height;
			CustomControl.Update();
		}
	}

	internal Rectangle GetCustomControlBounds()
	{
		return new Rectangle(Bounds.X + m_customControlRelativeLocation + nodeXRel, Bounds.Y, CustomControl.Width, Bounds.Height);
	}

	internal void SubscribeControlEvents(Control control)
	{
		control.SizeChanged += CustomControl_SizeChanged;
		control.LocationChanged += CustomControl_LocationChanged;
	}

	internal void UnSubscribeControlEvents(Control control)
	{
		control.SizeChanged -= CustomControl_SizeChanged;
		control.LocationChanged -= CustomControl_LocationChanged;
	}

	private void CustomControl_SizeChanged(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		if (control.Visible && control.Size.Height != Height)
		{
			control.Size = new Size(control.Width, Height);
		}
	}

	private void CustomControl_LocationChanged(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		Point point = (GetIsMirrored() ? new Point(Bounds.Right - m_customControlRelativeLocation - nodeXRel - control.Width, Bounds.Y) : new Point(Bounds.X + m_customControlRelativeLocation + nodeXRel, Bounds.Y));
		if (control.Visible && control.Location != point)
		{
			control.Location = point;
		}
	}

	internal void CustomControlCollectionChanging(TreeNodeAdv node, CollectionChangeAction action)
	{
		TreeViewAdv treeView = TreeView;
		if (treeView == null || node == null)
		{
			return;
		}
		switch (action)
		{
		case CollectionChangeAction.Add:
			if (node.CustomControl != null)
			{
				if (!treeView.CustomControlCollection.ContainsKey(node.CustomControl))
				{
					treeView.CustomControlCollection.Add(node.CustomControl, node);
					if (treeView.m_bAutoControlsAdding)
					{
						treeView.Controls.Add(node.CustomControl);
						node.SubscribeControlEvents(node.CustomControl);
					}
				}
				else if (treeView.CustomControlCollection[node.CustomControl] != node)
				{
					node.CustomControl = null;
				}
			}
			foreach (TreeNodeAdv node4 in node.Nodes)
			{
				CustomControlCollectionChanging(node4, action);
			}
			treeView.NeedUpdateCustomControls = true;
			break;
		case CollectionChangeAction.Remove:
			if (node.CustomControl != null)
			{
				if (treeView.CustomControlCollection.ContainsKey(node.CustomControl))
				{
					treeView.CustomControlCollection.Remove(node.CustomControl);
				}
				if (treeView.Controls.Contains(node.CustomControl))
				{
					treeView.Controls.Remove(node.CustomControl);
					node.UnSubscribeControlEvents(node.CustomControl);
				}
			}
			foreach (TreeNodeAdv node5 in node.Nodes)
			{
				CustomControlCollectionChanging(node5, action);
			}
			treeView.NeedUpdateCustomControls = true;
			break;
		case CollectionChangeAction.Refresh:
			if (treeView.CustomControlCollection.ContainsValue(node))
			{
				foreach (DictionaryEntry item in treeView.CustomControlCollection)
				{
					if (item.Value != node)
					{
						continue;
					}
					treeView.CustomControlCollection.Remove(item.Key);
					Control control = item.Key as Control;
					if ((node.CustomControl == null && control != null && treeView.Parent is TreeViewAdvEditorForm) || (node.CustomControl != null && item.Key != node.CustomControl))
					{
						TreeViewAdv tree = (treeView.Parent as TreeViewAdvEditorForm).Tree;
						if (!tree.m_RemovedCustomControls.Contains(control))
						{
							tree.m_RemovedCustomControls.Add(control);
						}
					}
					if (treeView.Controls.Contains(control))
					{
						treeView.Controls.Remove(control);
						UnSubscribeControlEvents(control);
					}
					break;
				}
			}
			if (node.CustomControl != null)
			{
				if (!treeView.CustomControlCollection.ContainsKey(node.CustomControl))
				{
					if (treeView.Parent is TreeViewAdvEditorForm)
					{
						TreeViewAdv tree2 = (treeView.Parent as TreeViewAdvEditorForm).Tree;
						if (!tree2.m_ControlBounds.ContainsKey(node.CustomControl))
						{
							tree2.m_ControlBounds[node.CustomControl] = node.CustomControl.Bounds;
						}
						if (!tree2.m_ControlParent.ContainsKey(node.CustomControl))
						{
							tree2.m_ControlParent[node.CustomControl] = node.CustomControl.Parent;
						}
						if (tree2.m_RemovedCustomControls.Contains(node.CustomControl))
						{
							tree2.m_RemovedCustomControls.Remove(node.CustomControl);
						}
					}
					treeView.CustomControlCollection.Add(node.CustomControl, node);
					if (treeView.m_bAutoControlsAdding)
					{
						treeView.Controls.Add(node.CustomControl);
						SubscribeControlEvents(node.CustomControl);
					}
				}
				else if (treeView.CustomControlCollection[node.CustomControl] != node)
				{
					node.CustomControl = null;
				}
			}
			RecalculateDimensions();
			treeView.NeedUpdateCustomControls = true;
			treeView.Invalidate();
			break;
		}
	}

	private bool LayoutCustomControl(ref int relativeLocation)
	{
		int indent = 0;
		m_customControlRelativeLocation = relativeLocation;
		return LayoutPrimitive(ref relativeLocation, ref indent, 0, CustomControl.Width, leftMostPartFound: true);
	}

	private void LayoutPrimitives(int width)
	{
		bool leftMostPartFound = false;
		int pmWidthWithSpace = 0;
		Hashtable hashtable = new Hashtable();
		ArrayList arrayList = new ArrayList();
		int i = 0;
		for (int count = m_primitives.Count; i < count; i++)
		{
			TreeNodePrimitive treeNodePrimitive = m_primitives[i];
			ArrayList arrayList2 = (ArrayList)hashtable[treeNodePrimitive.Index];
			if (arrayList2 == null)
			{
				arrayList2 = new ArrayList();
				arrayList.Add(treeNodePrimitive.Index);
			}
			arrayList2.Add(treeNodePrimitive);
			hashtable[treeNodePrimitive.Index] = arrayList2;
		}
		arrayList.Sort();
		CheckBox.xIndentFromNodeLeft = -1;
		CheckBox.xIndentFromNodeLeft = int.MinValue;
		OptionButton.xIndentFromNodeLeft = int.MinValue;
		leftImageListXRel = int.MinValue;
		rightImageListXRel = int.MinValue;
		stateImageListXRel = int.MinValue;
		textLocationXRel = int.MinValue;
		int j = 0;
		for (int count2 = arrayList.Count; j < count2; j++)
		{
			if (!(hashtable[arrayList[j]] is ArrayList { Count: not 0 } arrayList3))
			{
				continue;
			}
			foreach (TreeNodePrimitive item in arrayList3)
			{
				switch (item.PrimitiveType)
				{
				case PredefinedPrimitiveTypes.CheckBox:
					if (NodeStyle.ShowCheckBox)
					{
						leftMostPartFound = LayoutCheckBox(ref width, pmWidthWithSpace, leftMostPartFound);
					}
					break;
				case PredefinedPrimitiveTypes.OptionsButton:
					if (NodeStyle.ShowOptionButton)
					{
						leftMostPartFound = LayoutOptionsButton(ref width, pmWidthWithSpace, leftMostPartFound);
					}
					break;
				case PredefinedPrimitiveTypes.LeftImages:
					leftImageListXRel = width;
					leftMostPartFound = LayoutImages(TreeView.LeftImageList, NodeStyle.LeftImageIndices, ref width, pmWidthWithSpace, LeftImagePadding, leftMostPartFound);
					break;
				case PredefinedPrimitiveTypes.RightImages:
					rightImageListXRel = width;
					leftMostPartFound = LayoutImages(TreeView.RightImageList, NodeStyle.RightImageIndices, ref width, pmWidthWithSpace, RightImagePadding, leftMostPartFound);
					break;
				case PredefinedPrimitiveTypes.StateImage:
				{
					int num = 0;
					leftMostPartFound = LayoutStateImage(imageIndex: (HasChildren || (TreeView.LoadOnDemand && !expandedOnce)) ? (Expanded ? NodeStyle.OpenImgIndex : NodeStyle.ClosedImgIndex) : NodeStyle.NoChildrenImgIndex, imageList: TreeView.StateImageList, relativeLocation: ref width, pmWidthWithSpace: pmWidthWithSpace, imagePadding: LeftStateImagePadding + RightStateImagePadding, leftMostPartFound: leftMostPartFound);
					break;
				}
				case PredefinedPrimitiveTypes.Text:
					textLocationXRel = width;
					leftMostPartFound = LayoutText(ref width, leftMostPartFound);
					break;
				case PredefinedPrimitiveTypes.CustomControl:
					if (CustomControl != null)
					{
						leftMostPartFound = LayoutCustomControl(ref width);
					}
					break;
				}
			}
		}
	}

	private void RecalculateDimensions()
	{
		if (TreeView == null)
		{
			return;
		}
		TreeViewAdv treeView = TreeView;
		int indent = treeView.Indent;
		nodeXRel = (Level - 1) * indent;
		int num = 0;
		bool flag = false;
		int num2 = 0;
		if (Level != 1 || treeView.NeedRootLinesSpace)
		{
			if (NodeStyle.ShowPlusMinus)
			{
				PlusMinus.xIndentFromNodeLeft = 0;
			}
			num += plusMinus.Width + 3;
			num2 = num;
			if (num < indent)
			{
				num = indent + plusMinus.Width / 2;
			}
		}
		if (Level != 1 && !treeView.NeedRootLinesSpace)
		{
			nodeXRel -= indent;
			nodeXRel += plusMinus.Width / 2;
		}
		lineRightRel = num - 1;
		if (m_primitives != null && m_primitives.Count > 0)
		{
			LayoutPrimitives(num);
			return;
		}
		if (NodeStyle.ShowCheckBox)
		{
			if (!flag)
			{
				flag = true;
				if (num - CheckBox.Width / 2 > num2)
				{
					num -= CheckBox.Width / 2;
				}
				lineRightRel = num - 1;
			}
			CheckBox.xIndentFromNodeLeft = num;
			num += CheckBox.Width + 3;
		}
		if (NodeStyle.ShowOptionButton)
		{
			if (!flag)
			{
				flag = true;
				if (num - OptionButton.Width / 2 > num2)
				{
					num -= OptionButton.Width / 2;
				}
				lineRightRel = num - 1;
			}
			OptionButton.xIndentFromNodeLeft = num;
			num += OptionButton.Width + 3;
		}
		ImageList leftImageList = treeView.LeftImageList;
		if (leftImageList != null)
		{
			int[] leftImageIndices = NodeStyle.LeftImageIndices;
			bool flag2 = false;
			foreach (int num3 in leftImageIndices)
			{
				if (num3 < 0 || num3 >= leftImageList.Images.Count)
				{
					continue;
				}
				if (!flag)
				{
					flag = true;
					if (num - leftImageList.ImageSize.Width / 2 > num2)
					{
						num -= leftImageList.ImageSize.Width / 2;
					}
					lineRightRel = num - 1;
				}
				if (!flag2)
				{
					leftImageListXRel = num;
					flag2 = true;
				}
				num += leftImageList.ImageSize.Width;
				num += LeftImagePadding;
			}
			if (flag2)
			{
				num += 3;
			}
		}
		ImageList stateImageList = treeView.StateImageList;
		if (stateImageList != null)
		{
			int num4 = 0;
			num4 = ((!HasChildren && (!TreeView.LoadOnDemand || expandedOnce)) ? NodeStyle.NoChildrenImgIndex : ((!Expanded) ? NodeStyle.ClosedImgIndex : NodeStyle.OpenImgIndex));
			if (num4 >= 0 && num4 < stateImageList.Images.Count)
			{
				if (!flag)
				{
					flag = true;
					if (num - stateImageList.ImageSize.Width / 2 > num2)
					{
						num -= stateImageList.ImageSize.Width / 2;
					}
					lineRightRel = num - 1;
				}
				stateImageListXRel = num;
				num += stateImageList.ImageSize.Width + 3;
				num += LeftStateImagePadding + RightStateImagePadding;
			}
		}
		if (!flag)
		{
			flag = true;
			if (num - 9 > num2)
			{
				num -= 9;
			}
			lineRightRel = num - 1;
		}
		textLocationXRel = num;
		Graphics graphics = TreeView.CreateGraphics();
		textWidth = GetNodeTextSize(graphics, nodeData.Font).Width;
		m_printTextSize = Size.Round(graphics.MeasureString(Text, Font));
		if (textWidth > 0)
		{
			num += textWidth + 3;
		}
		rightImageListXRel = num;
		if (treeView.RightImageList != null)
		{
			num += treeView.RightImageList.ImageSize.Width * nodeData.RightImageIndices.Length + 3;
			num += nodeData.RightImageIndices.Length * RightImagePadding;
		}
		if (CustomControl != null)
		{
			m_customControlRelativeLocation = num;
			num += CustomControl.Width;
		}
		Width = num;
		int num5 = bounds.X + nodeXRel + num;
		if (!HasChildren)
		{
			MaxX = num5;
		}
		else if (htRecalculatingNodes[this] == null)
		{
			RecalculateMaxX();
		}
		else if (num5 > MaxX)
		{
			MaxX = num5;
		}
	}

	private void RecalculateMaxX()
	{
		int val = 3 + (Level - 1) * ParentIndent + Width;
		if (Expanded)
		{
			for (int i = 0; i < nodes.Count; i++)
			{
				val = Math.Max(val, nodes[i].MaxX);
			}
		}
		MaxX = val;
	}

	public void RecalculateAllDimensions()
	{
		TreeViewAdv treeView = TreeView;
		if (treeView != null)
		{
			treeView.NeedUpdateCustomControls = true;
		}
		htRecalculatingNodes[this] = 1;
		maxX = 0;
		for (int i = 0; i < nodes.Count; i++)
		{
			nodes[i].RecalculateAllDimensions();
		}
		RecalculateDimensions();
		htRecalculatingNodes.Remove(this);
	}

	private void nodes_BeforeRemoving(object sender, CollectionChangeEventArgs e)
	{
		TreeViewAdv treeView = TreeView;
		if (e.Element is TreeNodeAdv treeNodeAdv && treeView != null && treeView.HistoryEnabled && !treeNodeAdv.IsUndoRedoPerforming)
		{
			HistoryManager historyManager = treeView.HistoryManager;
			if (historyManager != null)
			{
				TreeViewCommand cmd = new TreeViewCommand(treeNodeAdv, Action.Remove);
				historyManager.Do(cmd);
			}
		}
	}

	private void OnPrimitivesCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		RecalculateDimensions();
	}
}
