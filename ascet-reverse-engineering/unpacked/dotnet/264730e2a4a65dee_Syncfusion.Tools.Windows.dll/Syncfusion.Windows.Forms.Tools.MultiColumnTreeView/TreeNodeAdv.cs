using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools.Controls.MultiColumnTreeView.Designers;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Serializable]
[TypeConverter(typeof(TreeNodeAdvConverter))]
public class TreeNodeAdv : MarshalByRefObject, ICloneable, IComparable, ISupportInitialize, ISerializable
{
	public sealed class TreeRowIndexComparer : IComparer
	{
		public static readonly IComparer Default = new TreeRowIndexComparer();

		private TreeRowIndexComparer()
		{
		}

		public int Compare(object x, object y)
		{
			int treeRowIndex = (x as TreeNodeAdv).TreeRowIndex;
			int num = (int)y;
			if (treeRowIndex < num)
			{
				return -1;
			}
			if (treeRowIndex > num)
			{
				return 1;
			}
			return 0;
		}
	}

	internal class VisibleEditor : UITypeEditor
	{
		public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
		{
			return base.EditValue(context, provider, value);
		}

		public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
		{
			return UITypeEditorEditStyle.DropDown;
		}
	}

	internal const int c_nDrawTextFlags = 2112;

	private const int DefaultImageIndex = -1;

	private const int spc = 3;

	private const int c_nDisplayNodeTextWidthPadding = 4;

	private const int DefaultParentIndent = 19;

	internal static TreeNodeAdv checkStateChangingSourceNode;

	private static Hashtable htRecalculatingNodes = new Hashtable();

	private TreeNodeAdvSubItemCollection m_subitems;

	private Size m_printTextSize = Size.Empty;

	private object m_tag;

	private int m_customControlRelativeLocation;

	private TreeNodePrimitivesCollection m_primitives;

	private int m_visibleNodeCount = -1;

	private bool m_bIsUndoRedoPerforming;

	private Control m_customControl;

	private TreeNodeAdvStyleInfo m_nodeData;

	private ChildTreeNodeAdvStyleInfo m_childStyle;

	private bool m_expanded;

	private TreeNodeAdvCollection m_nodes;

	private MultiColumnTreeView m_treeView;

	private TreeNodeAdv m_parent;

	private TreeNodeAdvPart m_plusMinus;

	private OptionButtonPart m_optionButton;

	private int m_leftImageListXRel;

	private int m_stateImageListXRel;

	private int m_rightImageListXRel;

	private int m_lineRightRel;

	private Rectangle m_bounds = Rectangle.Empty;

	private bool m_bShowPlusOnExpand;

	private int m_textLocationXRel;

	private int m_iTextWidth;

	private int m_nodeXRel;

	private CheckBoxPart m_checkBox;

	internal bool m_innerVisible = true;

	private bool m_optioned;

	private CultureInfo m_culture = CultureInfo.CurrentCulture;

	private bool m_expandedOnce;

	private int m_width;

	private int m_maxX;

	internal TreeNodeAdvAccessibleObject m_acsoNode;

	private Hashtable m_partialCheckedState;

	public TreeNodeAdvSubItem this[int index]
	{
		get
		{
			return SubItems[index];
		}
		set
		{
			SubItems[index] = value;
		}
	}

	[Description("Gets collection of node subitems.")]
	[Category("Data")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TreeNodeAdvSubItemCollection SubItems
	{
		get
		{
			if (m_subitems == null)
			{
				m_subitems = new TreeNodeAdvSubItemCollection(this);
				m_subitems.CollectionChanged += SubItems_CollectionChanged;
			}
			return m_subitems;
		}
	}

	protected internal bool HasSubItems
	{
		get
		{
			if (m_subitems != null)
			{
				return m_subitems.Count > 0;
			}
			return false;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Data")]
	public TreeNodePrimitivesCollection Primitives
	{
		get
		{
			if (m_primitives == null)
			{
				m_primitives = new TreeNodePrimitivesCollection(this);
			}
			return m_primitives;
		}
	}

	protected internal bool HasPrimitives
	{
		get
		{
			if (m_primitives != null)
			{
				return m_primitives.Count > 0;
			}
			return false;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(false)]
	public TreeNodeAdvCollection Nodes
	{
		get
		{
			if (m_nodes == null)
			{
				m_nodes = new TreeNodeAdvCollection(this);
			}
			return m_nodes;
		}
		set
		{
			if (value != m_nodes)
			{
				if (m_nodes != null)
				{
					m_nodes.ResetParent();
				}
				m_nodes = value;
				if (m_nodes != null)
				{
					m_nodes.SetParent(this);
				}
			}
		}
	}

	[Browsable(false)]
	public bool HasNodes
	{
		get
		{
			if (m_nodes != null)
			{
				return m_nodes.Count > 0;
			}
			return false;
		}
	}

	[Category("Data")]
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

	public static int PartsPadX => 3;

	[Description("The font of the node.")]
	[Localizable(true)]
	[Category("Appearance")]
	public Font Font
	{
		get
		{
			return CurrentStyleInfo.Font;
		}
		set
		{
			CurrentStyleInfo.Font = value;
			RecalculateDimensions();
		}
	}

	[Description("The Color of the text.")]
	[Category("Appearance")]
	public Color TextColor
	{
		get
		{
			return CurrentStyleInfo.TextColor;
		}
		set
		{
			CurrentStyleInfo.TextColor = value;
		}
	}

	[Category("Appearance")]
	[Description("The background of the node.")]
	public BrushInfo Background
	{
		get
		{
			return CurrentStyleInfo.Background;
		}
		set
		{
			CurrentStyleInfo.Background = value;
		}
	}

	[Description("The text of the node.")]
	[Localizable(true)]
	[Category("Appearance")]
	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	public string Text
	{
		get
		{
			return CurrentStyleInfo.Text;
		}
		set
		{
			CurrentStyleInfo.Text = value;
		}
	}

	[Localizable(true)]
	[Description("The help text of the node.")]
	[Category("Appearance")]
	public string HelpText
	{
		get
		{
			return CurrentStyleInfo.HelpText;
		}
		set
		{
			CurrentStyleInfo.HelpText = value;
		}
	}

	[Description("Gets / sets is node text should be drawn as multiline text or single line.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	[Localizable(true)]
	public bool Multiline
	{
		get
		{
			return NodeStyle.Multiline;
		}
		set
		{
			NodeStyle.Multiline = value;
		}
	}

	[Description("The height of the node.")]
	[Category("Appearance")]
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

	[Description("Indicates the color of the Check mark.")]
	[DefaultValue(typeof(Color), "ControlText")]
	[Category("Appearance")]
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
	[Description("Indicates the color of the check mark when it is in intermediate state.")]
	[DefaultValue(typeof(Color), "ControlDark")]
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

	[DefaultValue(typeof(Brush), "Window")]
	[Browsable(false)]
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

	[Browsable(false)]
	[DefaultValue(typeof(Brush), "Control")]
	[Description(" Indicates the appearance of checkbox background when the checkbox is in intermediate state.")]
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

	[Category("Appearance")]
	[Description("Indicates if the checkbox of the node is visible.")]
	public bool ShowCheckBox
	{
		get
		{
			return NodeStyle.ShowCheckBox;
		}
		set
		{
			NodeStyle.ShowCheckBox = value;
			RecalculateDimensions();
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the plus on expand of the node is visible.")]
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

	[Description("Indicates if the optionbutton of the node is visible.")]
	[Category("Appearance")]
	public bool ShowOptionButton
	{
		get
		{
			return NodeStyle.ShowOptionButton;
		}
		set
		{
			NodeStyle.ShowOptionButton = value;
			RecalculateDimensions();
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the plus/minus of the node is visible.")]
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

	[Category("Appearance")]
	[Description("Indicates the color of the Option button.")]
	[DefaultValue(typeof(Color), "White")]
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
	[Description("Indicates the color of the Option button in selected state.")]
	[DefaultValue(typeof(Color), "Black")]
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

	[Category("Sorting")]
	[Localizable(true)]
	[Description("Indicates the compare options used in the sorting of the node.")]
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

	[Description("Indicates the checkState of the node.")]
	[Category("Appearance")]
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
				MultiColumnTreeView treeView = TreeView;
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

	[Editor(typeof(BaseStyleSelectorUITypeEditor), typeof(UITypeEditor))]
	[Description("The base style for the node")]
	[Category("Appearance - Inherited")]
	public string BaseStyle
	{
		get
		{
			return CurrentStyleInfo.BaseStyle;
		}
		set
		{
			CurrentStyleInfo.BaseStyle = value;
		}
	}

	[Category("Data")]
	[TypeConverter(typeof(StringConverter))]
	[Description("The tag of the node")]
	public object Tag
	{
		get
		{
			return CurrentStyleInfo.Tag;
		}
		set
		{
			CurrentStyleInfo.Tag = value;
		}
	}

	[Category("Appearance - Images")]
	[Localizable(true)]
	[Editor(typeof(StateImageListUITypeEditor), typeof(UITypeEditor))]
	[Description("The imageindex indicating the image in the StateImageList where the node has no children.")]
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
	[Category("Appearance - Images")]
	[Editor(typeof(StateImageListUITypeEditor), typeof(UITypeEditor))]
	[Localizable(true)]
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
	[Editor(typeof(StateImageListUITypeEditor), typeof(UITypeEditor))]
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

	[Editor(typeof(NodeStateImageListUITypeEditor), typeof(UITypeEditor))]
	[Category("Appearance - Images")]
	[Description("Image index of image for expand button.")]
	public int ExpandImageIndex
	{
		get
		{
			return NodeStyle.ExpandImageIndex;
		}
		set
		{
			NodeStyle.ExpandImageIndex = value;
		}
	}

	[Category("Appearance - Images")]
	[Description("Image index of image for collapse button")]
	[Editor(typeof(NodeStateImageListUITypeEditor), typeof(UITypeEditor))]
	public int CollapseImageIndex
	{
		get
		{
			return NodeStyle.CollapseImageIndex;
		}
		set
		{
			NodeStyle.CollapseImageIndex = value;
		}
	}

	[Description("The imageindex to be drawn on the left of the node's text.")]
	[Category("Appearance - Images")]
	public int[] LeftImageIndices
	{
		get
		{
			return CurrentStyleInfo.LeftImageIndices;
		}
		set
		{
			CurrentStyleInfo.LeftImageIndices = value;
		}
	}

	[Description("The imageindex to be drawn on the right of the node's text.")]
	[Localizable(true)]
	[Category("Appearance - Images")]
	public int[] RightImageIndices
	{
		get
		{
			return CurrentStyleInfo.RightImageIndices;
		}
		set
		{
			CurrentStyleInfo.RightImageIndices = value;
		}
	}

	[Category("Appearance - Images")]
	[DefaultValue(null)]
	[Description("Gets / sets the image that will be drawn on the left of the node`s text.")]
	public Image LeftImage
	{
		get
		{
			return CurrentStyleInfo.LeftImage;
		}
		set
		{
			CurrentStyleInfo.LeftImage = value;
		}
	}

	[Description("Gets / sets the image that will be drawn on the right of the node`s text.")]
	[DefaultValue(null)]
	[Category("Appearance - Images")]
	public Image RightImage
	{
		get
		{
			return CurrentStyleInfo.RightImage;
		}
		set
		{
			CurrentStyleInfo.RightImage = value;
		}
	}

	[Description("Gets / sets the image that will be shown where the node is expanded.")]
	[Category("Appearance - Images")]
	[DefaultValue(null)]
	public Image OpenImage
	{
		get
		{
			return NodeStyle.OpenImage;
		}
		set
		{
			NodeStyle.OpenImage = value;
		}
	}

	[Category("Appearance - Images")]
	[DefaultValue(null)]
	[Description("Gets / sets the image that will be shown where the node is collapsed.")]
	public Image ClosedImage
	{
		get
		{
			return NodeStyle.ClosedImage;
		}
		set
		{
			NodeStyle.ClosedImage = value;
		}
	}

	[Description("Gets / sets the image that will be shown where the node has no children.")]
	[DefaultValue(null)]
	[Category("Appearance - Images")]
	public Image NoChildrenImage
	{
		get
		{
			return NodeStyle.NoChildrenImage;
		}
		set
		{
			NodeStyle.NoChildrenImage = value;
		}
	}

	[DefaultValue(null)]
	[Description("Gets / sets the image for state button where the node is expanded.")]
	[Category("Appearance - Images")]
	public Image ExpandedImage
	{
		get
		{
			return NodeStyle.ExpandedImage;
		}
		set
		{
			NodeStyle.ExpandedImage = value;
		}
	}

	[Category("Appearance - Images")]
	[DefaultValue(null)]
	[Description("Gets / sets the image for state button where the node is collapsed.")]
	public Image CollapsedImage
	{
		get
		{
			return NodeStyle.CollapsedImage;
		}
		set
		{
			NodeStyle.CollapsedImage = value;
		}
	}

	[DefaultValue(0)]
	[Category("Appearance - Images")]
	[Description("Gets / sets the padding of left image for the node.")]
	public int LeftImagePadding
	{
		get
		{
			return CurrentStyleInfo.LeftImagePadding;
		}
		set
		{
			CurrentStyleInfo.LeftImagePadding = value;
		}
	}

	[DefaultValue(0)]
	[Category("Appearance - Images")]
	[Description("Gets / sets the padding of right image for the node.")]
	public int RightImagePadding
	{
		get
		{
			return CurrentStyleInfo.RightImagePadding;
		}
		set
		{
			CurrentStyleInfo.RightImagePadding = value;
		}
	}

	[DefaultValue(0)]
	[Description("Gets / sets the left side padding of state image for the node.")]
	[Category("Appearance - Images")]
	public int LeftStateImagePadding
	{
		get
		{
			return NodeStyle.LeftStateImagePadding;
		}
		set
		{
			NodeStyle.LeftStateImagePadding = value;
		}
	}

	[Description("Gets / sets the right side padding of state image for the node.")]
	[Category("Appearance - Images")]
	[DefaultValue(0)]
	public int RightStateImagePadding
	{
		get
		{
			return NodeStyle.RightStateImagePadding;
		}
		set
		{
			NodeStyle.RightStateImagePadding = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the node's controls will be themed.")]
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

	[Description("Indicates if the node will have an interactive checkbox.")]
	[Category("Behavior")]
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

	[DefaultValue(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	[Description("Indicates if the node has been expanded at least once.")]
	public bool ExpandedOnce
	{
		get
		{
			return m_expandedOnce;
		}
		set
		{
			if (m_expandedOnce != value)
			{
				m_expandedOnce = value;
				MultiColumnTreeView treeView = TreeView;
				if (treeView != null && treeView.LoadOnDemand)
				{
					UpdatePlusMinusVisibility();
				}
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	[Localizable(true)]
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

	[Browsable(false)]
	public int NodeX
	{
		get
		{
			int num = 0;
			if (GetIsMirrored())
			{
				return Bounds.Right - m_nodeXRel;
			}
			return Bounds.X + m_nodeXRel;
		}
	}

	[Browsable(false)]
	public int LeftImagesX => Bounds.X + m_nodeXRel + m_leftImageListXRel;

	[Browsable(false)]
	public int StateImageX => Bounds.X + m_nodeXRel + m_stateImageListXRel;

	[Browsable(false)]
	public int RightImagesX => Bounds.X + m_nodeXRel + m_rightImageListXRel;

	[Browsable(false)]
	public int CheckBoxX => m_checkBox.Bounds.X;

	[Browsable(false)]
	public int OptionButtonX => m_optionButton.Bounds.X;

	[Browsable(false)]
	public TreeNodeAdvPart CheckBox => m_checkBox;

	[Browsable(false)]
	public TreeNodeAdvPart OptionButton => m_optionButton;

	[Browsable(false)]
	public TreeNodeAdvPart PlusMinus => m_plusMinus;

	[DefaultValue(false)]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Indicates if the node's checkbox is checked.")]
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

	[Description("Specifies if the node is enabled.")]
	[Localizable(true)]
	[Category("Appearance")]
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

	[Description("Specifies is node will be visible to user or not.")]
	[Category("Appearance")]
	[Localizable(true)]
	[DefaultValue(true)]
	[Editor(typeof(VisibleEditor), typeof(UITypeEditor))]
	public bool Visible
	{
		get
		{
			return m_innerVisible;
		}
		set
		{
			bool visible = Visible;
			if (value != visible)
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
				m_innerVisible = value;
				InvalidateTreeView();
				if (ParentNode != null)
				{
					ParentNode.RecalculateAllDimensions();
				}
			}
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
	[DefaultValue(true)]
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
			return m_optioned;
		}
		set
		{
			if (m_optioned == value)
			{
				return;
			}
			m_optioned = value;
			OnCheckStateChanged(EventArgs.Empty);
			MultiColumnTreeView treeView = TreeView;
			if (treeView != null)
			{
				if (treeView.IsHandleCreated && treeView.Visible)
				{
					treeView.Invalidate(RowBounds);
				}
				treeView.OnAfterCheck(new TreeNodeAdvEventArgs(this));
			}
		}
	}

	[Obsolete("Please replace all calls on HasNodes property calls.", true)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public bool HasChildren => HasNodes;

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public int TreeRowIndex
	{
		get
		{
			if (ParentNode == null)
			{
				return 0;
			}
			return ParentNode.GetTreeRowIndexOfChild(this);
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TreeNodeAdv FirstNode
	{
		get
		{
			if (HasNodes)
			{
				return Nodes[0];
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public TreeNodeAdv LastNode
	{
		get
		{
			if (HasNodes)
			{
				return Nodes[Nodes.Count - 1];
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv LastVisibleNode
	{
		get
		{
			if (HasNodes)
			{
				for (int num = Nodes.Count - 1; num >= 0; num--)
				{
					if (Nodes[num].Visible)
					{
						return Nodes[num];
					}
				}
			}
			return null;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv PrevNode
	{
		get
		{
			if (ParentNode == null)
			{
				return null;
			}
			if (Index > 0)
			{
				return ParentNode.Nodes[Index - 1];
			}
			if (Index == 0)
			{
				return ParentNode;
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv PrevSiblingNode
	{
		get
		{
			TreeNodeAdv parentNode = ParentNode;
			if (parentNode == null)
			{
				return null;
			}
			if (Index > 0)
			{
				TreeNodeAdv treeNodeAdv = ParentNode.Nodes[Index - 1];
				while (treeNodeAdv.HasNodes)
				{
					treeNodeAdv = treeNodeAdv.LastNode;
				}
				return treeNodeAdv;
			}
			if (Index == 0)
			{
				return null;
			}
			return parentNode;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TreeNodeAdv PrevVisibleNode
	{
		get
		{
			TreeNodeAdv treeNodeAdv = this;
			while (treeNodeAdv != null)
			{
				TreeNodeAdv parentNode = treeNodeAdv.ParentNode;
				if (parentNode == null)
				{
					break;
				}
				for (int num = treeNodeAdv.Index - 1; num >= 0; num--)
				{
					TreeNodeAdv treeNodeAdv2 = parentNode.Nodes[num];
					if (treeNodeAdv2.Visible && treeNodeAdv2.HasNodes && treeNodeAdv2.Expanded)
					{
						for (int num2 = treeNodeAdv2.Nodes.Count - 1; num2 >= 0; num2--)
						{
							TreeNodeAdv treeNodeAdv3 = treeNodeAdv2.Nodes[num2];
							if (treeNodeAdv3.Visible)
							{
								return treeNodeAdv3;
							}
						}
					}
					else if (treeNodeAdv2.Visible)
					{
						return treeNodeAdv2;
					}
				}
				if (parentNode.Visible)
				{
					return parentNode;
				}
				treeNodeAdv = parentNode;
			}
			return null;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
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

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TreeNodeAdv NextNode
	{
		get
		{
			if (ParentNode == null)
			{
				return null;
			}
			if (Index < ParentNode.Nodes.Count - 1)
			{
				return ParentNode.Nodes[Index + 1];
			}
			if (Index > 0)
			{
				return ParentNode.NextNode;
			}
			return null;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TreeNodeAdv NextSiblingNode
	{
		get
		{
			if (HasNodes)
			{
				return Nodes[0];
			}
			if (ParentNode != null && Index == ParentNode.Nodes.Count - 1)
			{
				TreeNodeAdv treeNodeAdv = ParentNode;
				while (treeNodeAdv != null && treeNodeAdv.NextNode == null)
				{
					treeNodeAdv = treeNodeAdv.ParentNode;
				}
				if (treeNodeAdv != null)
				{
					foreach (TreeNodeAdv node in treeNodeAdv.Nodes)
					{
						_ = node;
						if (Index <= ParentNode.Nodes.Count - 1)
						{
							treeNodeAdv = null;
						}
					}
				}
				return treeNodeAdv?.NextNode;
			}
			return NextNode;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TreeNodeAdv NextVisibleNode
	{
		get
		{
			if (HasNodes && Expanded)
			{
				int i = 0;
				for (int count = Nodes.Count; i < count; i++)
				{
					TreeNodeAdv treeNodeAdv = Nodes[i];
					if (treeNodeAdv.Visible)
					{
						return treeNodeAdv;
					}
				}
			}
			TreeNodeAdv treeNodeAdv2 = this;
			while (treeNodeAdv2 != null)
			{
				TreeNodeAdv parentNode = treeNodeAdv2.ParentNode;
				if (parentNode == null)
				{
					break;
				}
				int j = treeNodeAdv2.Index + 1;
				for (int count2 = parentNode.Nodes.Count; j < count2; j++)
				{
					TreeNodeAdv treeNodeAdv3 = parentNode.Nodes[j];
					if (treeNodeAdv3.Visible)
					{
						return treeNodeAdv3;
					}
				}
				treeNodeAdv2 = parentNode;
			}
			return null;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public TreeNodeAdv OptionedChild
	{
		get
		{
			if (HasNodes)
			{
				int i = 0;
				for (int count = Nodes.Count; i < count; i++)
				{
					if (Nodes[i].Optioned)
					{
						return Nodes[i];
					}
				}
				if (EnsureDefaultOptionedChild)
				{
					TreeNodeAdv treeNodeAdv = Nodes[0];
					treeNodeAdv.m_optioned = true;
					if (TreeView != null && treeNodeAdv.OptionButton.Visible)
					{
						TreeView.Invalidate(treeNodeAdv.OptionButton.Bounds);
					}
					return treeNodeAdv;
				}
			}
			return null;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Rectangle Bounds => m_bounds;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DocumentationExclude]
	public Rectangle DragCueBounds
	{
		get
		{
			if (TreeView != null && TreeView.StateImageList != null)
			{
				Rectangle bounds = Bounds;
				int num = bounds.X + m_nodeXRel + m_stateImageListXRel;
				int right = TextBounds.Right;
				return new Rectangle(num, bounds.Y, right - num, bounds.Height);
			}
			return TextBounds;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public Rectangle TextBounds
	{
		get
		{
			int num = 0;
			int num2 = m_nodeXRel + m_textLocationXRel;
			num = ((!GetIsMirrored()) ? (Bounds.X + num2) : (Bounds.Right - num2 - m_iTextWidth));
			return new Rectangle(num, Bounds.Y, m_iTextWidth, Bounds.Height);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public Rectangle TextAndImageBounds
	{
		get
		{
			int nodeXRel = m_nodeXRel;
			nodeXRel = ((m_leftImageListXRel > 0) ? (nodeXRel + m_leftImageListXRel) : ((m_stateImageListXRel <= 0) ? (nodeXRel + m_textLocationXRel) : (nodeXRel + m_stateImageListXRel)));
			int num = m_nodeXRel + m_width - nodeXRel;
			int num2 = 0;
			num2 = ((!GetIsMirrored()) ? (Bounds.X + nodeXRel) : (Bounds.Right - nodeXRel - num));
			return new Rectangle(num2, Bounds.Y, num, Bounds.Height);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public bool IsVisible
	{
		get
		{
			bool flag = Visible;
			if (ParentNode != null)
			{
				flag = flag & ParentNode.Expanded & ParentNode.IsVisible;
			}
			return flag;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("Gets the parent tree node of the current tree node, if there is any.")]
	public TreeNodeAdv Parent => ParentNode;

	[Description("Gets the position of the tree node in the parent's tree nodes collection.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public int Index
	{
		get
		{
			if (ParentNode != null)
			{
				return ParentNode.Nodes.IndexOf(this);
			}
			return -1;
		}
	}

	[Browsable(false)]
	public int Level
	{
		get
		{
			if (ParentNode == null)
			{
				return 0;
			}
			return ParentNode.Level + 1;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public MultiColumnTreeView TreeView
	{
		get
		{
			if (m_treeView != null)
			{
				return m_treeView;
			}
			if (ParentNode != null)
			{
				return ParentNode.TreeView;
			}
			return null;
		}
		set
		{
			m_treeView = value;
		}
	}

	[Browsable(false)]
	public string FullPath => GetPath((TreeView != null) ? TreeView.PathSeparator : string.Concat(Path.PathSeparator));

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public object TagObject
	{
		get
		{
			return m_tag;
		}
		set
		{
			m_tag = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the node is expanded.")]
	[Category("Behavior")]
	public bool Expanded
	{
		get
		{
			return m_expanded;
		}
		set
		{
			if (m_expanded == value)
			{
				return;
			}
			MultiColumnTreeView treeView = TreeView;
			bool flag = false;
			if (treeView != null)
			{
				flag = TreeView.SuspendExpandRecalculate;
				if (ParentNode != null && !treeView.ExpandedChanging(this, value))
				{
					return;
				}
				if (value && ParentNode != null)
				{
					ExpandedOnce = true;
				}
			}
			m_expanded = value;
			m_visibleNodeCount = -1;
			for (TreeNodeAdv parent = m_parent; parent != null; parent = parent.m_parent)
			{
				parent.m_visibleNodeCount = -1;
			}
			RecalculateDimensions();
			if (treeView != null && HasNodes && (!ShowPlusOnExpand || !treeView.LoadOnDemand))
			{
				treeView.ExpandedChanged(this, value);
			}
			if (!flag)
			{
				RecalculateMaxX();
			}
		}
	}

	private Image CollapseImage => GetNodeStateImage();

	private Image ExpandImage => GetNodeStateImage();

	protected internal int VisibleNodeCount
	{
		get
		{
			if (m_visibleNodeCount == -1)
			{
				if (TreeView == null)
				{
					return 0;
				}
				m_visibleNodeCount = 0;
				if (HasNodes && Expanded)
				{
					int i = 0;
					for (int count = Nodes.Count; i < count; i++)
					{
						TreeNodeAdv treeNodeAdv = Nodes[i];
						if (treeNodeAdv.Visible)
						{
							m_visibleNodeCount += Nodes[i].VisibleNodeCount;
						}
					}
				}
				if (Visible)
				{
					m_visibleNodeCount++;
				}
			}
			return m_visibleNodeCount;
		}
	}

	private bool IsRoot
	{
		get
		{
			if (TreeView != null)
			{
				return TreeView.Root == this;
			}
			return false;
		}
	}

	protected internal TreeNodeAdvAccessibleObject AccesibleObject
	{
		get
		{
			if (m_acsoNode == null)
			{
				m_acsoNode = new TreeNodeAdvAccessibleObject(this);
			}
			return m_acsoNode;
		}
	}

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

	protected HistoryManager HistoryManager
	{
		get
		{
			if (TreeView == null || !TreeView.HistoryEnabled)
			{
				return null;
			}
			return TreeView.HistoryManager;
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

	private Font HotFont
	{
		get
		{
			Font font = NodeStyle.Font;
			return FontUtil.CreateFont(font, font.Style | FontStyle.Underline);
		}
	}

	private Hashtable CachedPartialCheckedState => m_partialCheckedState;

	protected internal int Width
	{
		get
		{
			return m_width;
		}
		set
		{
			if (value != m_width)
			{
				m_width = value;
				MaxX = Math.Max(Right, m_maxX);
			}
		}
	}

	protected internal int Right => Bounds.X + m_nodeXRel + m_width;

	protected internal int MaxX
	{
		get
		{
			return m_maxX;
		}
		set
		{
			if (m_maxX != value)
			{
				m_maxX = value;
				if (ParentNode != null)
				{
					ParentNode.childMaxXChanged(m_maxX);
				}
				else if (TreeView != null)
				{
					TreeView.rootMaxXChanged(m_maxX);
				}
			}
		}
	}

	[DocumentationExclude]
	public Rectangle PrintTextBounds => new Rectangle(TextBounds.Location, m_printTextSize);

	private TreeNodeAdv ParentNode
	{
		get
		{
			return m_parent;
		}
		set
		{
			m_parent = value;
		}
	}

	protected internal ITreeNodeAdvSubItemStyle CurrentStyleInfo => NodeStyle;

	protected internal Rectangle RowBounds
	{
		get
		{
			Rectangle bounds = Bounds;
			int val = ((TreeView != null) ? TreeView.Columns.GetTotalColumnsWidth(visible: true) : 0);
			int val2 = ((TreeView != null) ? TreeView.Root.MaxX : 0);
			int val3 = ((TreeView != null) ? TreeView.Width : 0);
			int width = Math.Max(Math.Max(val, val2), val3);
			return new Rectangle(bounds.Left, bounds.Top, width, bounds.Height);
		}
	}

	[Category("Appearance")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	[Description("Contains information about the node's appearance and state.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TreeNodeAdvStyleInfo NodeStyle => m_nodeData;

	[Description("Contains information about the immediate child-nodes' appearance and state.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Appearance - Children")]
	public TreeNodeAdvStyleInfo ChildStyle => m_childStyle;

	public event EventHandler CheckStateChanged;

	public TreeNodeAdv()
	{
		Initialize("TreeNodeAdv", null, null);
	}

	public TreeNodeAdv(string text)
	{
		Initialize(text, null, null);
	}

	public TreeNodeAdv(string[] subitems)
	{
		if (subitems == null)
		{
			throw new ArgumentNullException("subitems");
		}
		TreeNodeAdvSubItem[] array = new TreeNodeAdvSubItem[subitems.Length];
		int i = 0;
		for (int num = array.Length; i < num; i++)
		{
			array[i] = new TreeNodeAdvSubItem(this, subitems[i]);
		}
		Initialize(string.Empty, null, array);
	}

	public TreeNodeAdv(string text, TreeNodeAdv[] nodes)
	{
		Initialize(text, nodes, null);
	}

	public TreeNodeAdv(TreeNodeAdvSubItem[] items)
	{
		Initialize("TreeNodeAdv", null, items);
	}

	public TreeNodeAdv(string text, TreeNodeAdvSubItem[] items)
	{
		Initialize(text, null, items);
	}

	void ISupportInitialize.BeginInit()
	{
	}

	void ISupportInitialize.EndInit()
	{
		if (HasNodes)
		{
			Nodes.Sort(NodeStyle.SortOrder);
		}
	}

	private void Initialize(string text, TreeNodeAdv[] nodeArray, TreeNodeAdvSubItem[] items)
	{
		m_nodeData = new TreeNodeAdvStyleInfo(new TreeNodeAdvStyleInfoIdentity(this));
		m_nodeData.Changed += StyleChanged;
		m_nodeData.Text = text;
		m_childStyle = new ChildTreeNodeAdvStyleInfo(new TreeViewAdvStyleInfoIdentity(this));
		m_plusMinus = new TreeNodeAdvPart(this, new Size(9, 9));
		m_checkBox = new CheckBoxPart(this, new Size(13, 13));
		m_optionButton = new OptionButtonPart(this, new Size(14, 14));
		if (nodeArray != null && nodeArray.Length > 0)
		{
			Nodes.AddRange(nodeArray);
		}
		if (items != null && items.Length > 0)
		{
			SubItems.AddRange(items);
		}
		if (!HasSubItems)
		{
			TreeNodeAdvSubItem treeNodeAdvSubItem = new TreeNodeAdvSubItem(this);
			treeNodeAdvSubItem.SubItemStyle.InheritStyle(NodeStyle, StyleModifyType.Copy);
			SubItems.Add(treeNodeAdvSubItem);
		}
		RecalculateDimensions();
	}

	public void ResetPrimitives()
	{
		if (m_primitives != null)
		{
			m_primitives.Clear();
			m_primitives = null;
		}
	}

	protected bool ShouldSerializePrimitives()
	{
		if (m_primitives != null)
		{
			return m_primitives.Count > 0;
		}
		return false;
	}

	public void ResetExpandImageIndex()
	{
		NodeStyle.ResetExpandImageIndex();
	}

	protected bool ShouldSerializeExpandImageIndex()
	{
		return NodeStyle.ShouldSerializeExpandImageIndex();
	}

	public void ResetCollapseImageIndex()
	{
		NodeStyle.ResetCollapseImageIndex();
	}

	protected bool ShouldSerializeCollapseImageIndex()
	{
		return NodeStyle.ShouldSerializeCollapseImageIndex();
	}

	public void ResetLeftImage()
	{
		CurrentStyleInfo.ResetLeftImage();
	}

	protected bool ShouldSerializeLeftImage()
	{
		return CurrentStyleInfo.ShouldSerializeLeftImage();
	}

	public void ResetRightImage()
	{
		CurrentStyleInfo.ResetRightImage();
	}

	protected bool ShouldSerializeRightImage()
	{
		return CurrentStyleInfo.ShouldSerializeRightImage();
	}

	public void ResetClosedImage()
	{
		NodeStyle.ResetClosedImage();
	}

	protected bool ShouldSerializeClosedImage()
	{
		return NodeStyle.ShouldSerializeClosedImage();
	}

	public void ResetOpenImage()
	{
		NodeStyle.ResetOpenImage();
	}

	protected bool ShouldSerializeOpenImage()
	{
		return NodeStyle.ShouldSerializeOpenImage();
	}

	public void ResetFont()
	{
		CurrentStyleInfo.ResetFont();
	}

	protected bool ShouldSerializeFont()
	{
		return CurrentStyleInfo.ShouldSerializeFont();
	}

	public void ResetEnabled()
	{
		NodeStyle.ResetEnabled();
	}

	protected bool ShouldSerializeEnabled()
	{
		return NodeStyle.ShouldSerializeEnabled();
	}

	public void ResetTextColor()
	{
		CurrentStyleInfo.ResetTextColor();
	}

	protected bool ShouldSerializeTextColor()
	{
		return CurrentStyleInfo.ShouldSerializeTextColor();
	}

	public void ResetBackground()
	{
		CurrentStyleInfo.ResetBackground();
	}

	protected bool ShouldSerializeBackground()
	{
		return CurrentStyleInfo.ShouldSerializeBackground();
	}

	public void ResetText()
	{
		CurrentStyleInfo.ResetText();
	}

	protected bool ShouldSerializeText()
	{
		return CurrentStyleInfo.ShouldSerializeText();
	}

	public void ResetComparer()
	{
		NodeStyle.ResetComparer();
	}

	protected bool ShouldSerializeComparer()
	{
		return NodeStyle.ShouldSerializeComparer();
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

	public void ResetCulture()
	{
		NodeStyle.ResetCulture();
	}

	protected bool ShouldSerializeCulture()
	{
		return NodeStyle.ShouldSerializeCulture();
	}

	public void ResetInteractiveCheckBox()
	{
		NodeStyle.ResetInteractiveCheckBox();
	}

	protected bool ShouldSerializeInteractiveCheckBox()
	{
		return NodeStyle.ShouldSerializeInteractiveCheckBox();
	}

	public void ResetThemesEnabled()
	{
		NodeStyle.ResetThemesEnabled();
	}

	protected bool ShouldSerializeThemesEnabled()
	{
		return NodeStyle.ShouldSerializeThemesEnabled();
	}

	public void ResetHelpText()
	{
		CurrentStyleInfo.ResetHelpText();
	}

	protected bool ShouldSerializeHelpText()
	{
		return CurrentStyleInfo.ShouldSerializeHelpText();
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

	public void ResetOpenImgIndex()
	{
		NodeStyle.ResetOpenImgIndex();
	}

	protected bool ShouldSerializeOpenImgIndex()
	{
		return NodeStyle.ShouldSerializeOpenImgIndex();
	}

	public void ResetClosedImgIndex()
	{
		NodeStyle.ResetClosedImgIndex();
	}

	protected bool ShouldSerializeClosedImgIndex()
	{
		return NodeStyle.ShouldSerializeClosedImgIndex();
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
		CurrentStyleInfo.ResetBaseStyle();
	}

	protected bool ShouldSerializeBaseStyle()
	{
		return CurrentStyleInfo.ShouldSerializeBaseStyle();
	}

	public void ResetTag()
	{
		CurrentStyleInfo.ResetTag();
	}

	protected bool ShouldSerializeTag()
	{
		return CurrentStyleInfo.ShouldSerializeTag();
	}

	public void ResetLeftImageIndices()
	{
		CurrentStyleInfo.ResetLeftImageIndices();
	}

	protected bool ShouldSerializeLeftImageIndices()
	{
		return CurrentStyleInfo.ShouldSerializeLeftImageIndices();
	}

	public void ResetRightImageIndices()
	{
		CurrentStyleInfo.ResetRightImageIndices();
	}

	protected bool ShouldSerializeRightImageIndices()
	{
		return CurrentStyleInfo.ShouldSerializeRightImageIndices();
	}

	public void ResetNoChildrenImgIndex()
	{
		NodeStyle.ResetNoChildrenImgIndex();
	}

	protected bool ShouldSerializeNoChildrenImgIndex()
	{
		return NodeStyle.ShouldSerializeNoChildrenImgIndex();
	}

	public virtual void ResetMultiline()
	{
		NodeStyle.ResetMultiline();
	}

	protected virtual bool ShouldSerializeMultiline()
	{
		return NodeStyle.ShouldSerializeMultiline();
	}

	private TreeNodeAdv(SerializationInfo info, StreamingContext context)
		: this()
	{
		m_nodeData = new TreeNodeAdvStyleInfo(info.GetValue("NodeStyle", typeof(TreeNodeAdvStyleInfoStore)) as TreeNodeAdvStyleInfoStore);
		m_nodeData.Changed += StyleChanged;
		m_childStyle = new ChildTreeNodeAdvStyleInfo(new TreeViewAdvStyleInfoIdentity(this), info.GetValue("ChildStyle", typeof(TreeNodeAdvStyleInfoStore)) as TreeNodeAdvStyleInfoStore);
	}

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("NodeStyle", NodeStyle.Store);
		info.AddValue("ChildStyle", ChildStyle.Store);
	}

	protected internal TreeNodeAdv GetOptionedChild()
	{
		if (HasNodes)
		{
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				TreeNodeAdv treeNodeAdv = Nodes[i];
				if (treeNodeAdv.Optioned)
				{
					return treeNodeAdv;
				}
			}
		}
		return null;
	}

	protected internal virtual void OnCheckStateChanged(EventArgs e)
	{
		if (this.CheckStateChanged != null)
		{
			this.CheckStateChanged(this, e);
		}
	}

	protected internal virtual void OnPrimitivesCollectionChanged(CollectionChangeEventArgs e)
	{
		MakeDirty();
	}

	protected internal virtual void OnSubItemChanged(StyleChangedEventArgs e)
	{
		MakeDirty();
		RecalculateDimensions();
	}

	protected internal virtual void OnBeforeChildRemove(CollectionChangeEventArgs e)
	{
		MultiColumnTreeView treeView = TreeView;
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

	private void RemoveCheckedNode(TreeNodeAdv node, CheckedNodesColection nodes)
	{
		foreach (TreeNodeAdv node2 in node.Nodes)
		{
			RemoveCheckedNode(node2, nodes);
		}
		nodes.Remove(node);
	}

	protected internal virtual void OnChildsCollectionChanged(CollectionChangeEventArgs e)
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
			treeNodeAdv.m_treeView = null;
			MultiColumnTreeView treeView = TreeView;
			if (treeView != null && treeView.SelectedNode != null && (treeView.SelectedNode == treeNodeAdv || treeView.SelectedNode.IsParent(treeNodeAdv)))
			{
				AdjustSelectedNode(treeView.m_currentSelectedNodeIndex);
			}
			if (TreeView != null)
			{
				RemoveCheckedNode(treeNodeAdv, TreeView.CheckedNodes);
			}
			RemovedNode(treeNodeAdv);
		}
		else if (e.Action == CollectionChangeAction.Add)
		{
			TreeNodeAdv treeNodeAdv2 = (TreeNodeAdv)e.Element;
			treeNodeAdv2.m_treeView = TreeView;
			treeNodeAdv2.ParentNode = this;
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
		else if (e.Action == CollectionChangeAction.Refresh)
		{
			TreeView.NodeInRefresh = true;
			UpdateSelectedNodeIndexCache();
			MultiColumnTreeView treeView2 = TreeView;
			if (treeView2 != null)
			{
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
			}
			MakeDirty();
			TreeView.NodeInRefresh = false;
		}
		UpdatePlusMinusVisibility();
		ResetVisibleNodeCount(recurseOnChildren: false);
		MakeDirty();
		if (TreeView != null)
		{
			TreeView.NodesChanged();
		}
	}

	protected internal virtual void CustomControlCollectionChanging(TreeNodeAdv node, CollectionChangeAction action)
	{
		MultiColumnTreeView treeView = TreeView;
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
					if (treeView.AutoControlsAdding)
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
					if (item.Value == node)
					{
						treeView.CustomControlCollection.Remove(item.Key);
						Control control = item.Key as Control;
						if (treeView.Controls.Contains(control))
						{
							treeView.Controls.Remove(control);
							UnSubscribeControlEvents(control);
						}
						break;
					}
				}
			}
			if (node.CustomControl != null)
			{
				if (!treeView.CustomControlCollection.ContainsKey(node.CustomControl))
				{
					treeView.CustomControlCollection.Add(node.CustomControl, node);
					if (treeView.AutoControlsAdding)
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

	private void CustomControl_SizeChanged(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		if (control.Visible && control.Size.Height != Height)
		{
			control.Size = new Size(control.Width, Height);
		}
	}

	private void SubItems_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (Visible && e.Element is TreeNodeAdvSubItem treeNodeAdvSubItem)
		{
			InvalidateTreeView(treeNodeAdvSubItem.Bounds);
		}
	}

	private void CustomControl_LocationChanged(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		Point point = new Point(Bounds.X + m_customControlRelativeLocation + m_nodeXRel, Bounds.Y);
		if (control.Visible && control.Location != point)
		{
			control.Location = point;
		}
	}

	internal void StyleChanged(object sender, StyleChangedEventArgs e)
	{
		bool flag = false;
		StyleInfoProperty sip = e.Sip;
		if (sip != null)
		{
			switch (sip.PropertyName)
			{
			case "Multiline":
				flag = true;
				goto default;
			case "Comparer":
				Nodes.Comparer = NodeStyle.Comparer;
				break;
			case "CheckState":
				CheckState_Changed();
				break;
			case "ShowPlusMinus":
				ShowPlusMinusChanged();
				flag = true;
				goto default;
			case "StateNoChildrenImage":
				flag = true;
				goto default;
			case "ShowOptionButton":
			case "ShowCheckBox":
			case "LeftImageIndices":
			case "StateImage":
			case "RightImageIndices":
			case "Text":
			case "Font":
				flag = true;
				break;
			default:
				if (flag)
				{
					RecalculateDimensions();
				}
				break;
			}
		}
		MultiColumnTreeView treeView = TreeView;
		if (treeView != null)
		{
			treeView.NeedUpdateCustomControls = true;
		}
		InvalidateTreeView();
	}

	public void RecalculateAllDimensions()
	{
		MultiColumnTreeView treeView = TreeView;
		if (treeView != null)
		{
			treeView.NeedUpdateCustomControls = true;
		}
		htRecalculatingNodes[this] = 1;
		m_maxX = 0;
		int i = 0;
		for (int count = Nodes.Count; i < count; i++)
		{
			Nodes[i].RecalculateAllDimensions();
		}
		RecalculateDimensions();
		htRecalculatingNodes.Remove(this);
	}

	public string GetPath(string separator)
	{
		StringBuilder stringBuilder = new StringBuilder();
		GetFullPath(stringBuilder, separator);
		if (TreeView != null && TreeView.AddSeparatorAtEnd)
		{
			stringBuilder.Append(separator);
		}
		return stringBuilder.ToString();
	}

	private void GetFullPath(StringBuilder path, string separator)
	{
		if (ParentNode != null)
		{
			ParentNode.GetFullPath(path, separator);
			if (ParentNode.ParentNode != null)
			{
				path.Append(separator);
			}
			path.Append(Text);
		}
	}

	public void BringIntoView()
	{
		if (!Visible && ParentNode != null)
		{
			ParentNode.ExpandParentSelf();
		}
		if (Visible)
		{
			MultiColumnTreeView treeView = TreeView;
			if (treeView != null)
			{
				treeView.Update();
				treeView.EnsureVisible(this);
				treeView.IsBroughtIntoView = true;
			}
		}
	}

	public void Expand()
	{
		Expanded = true;
	}

	public void ExpandAll()
	{
		MultiColumnTreeView treeView = TreeView;
		treeView?.BeginUpdate();
		Expanded = true;
		if (HasNodes)
		{
			for (int i = 0; i < Nodes.Count; i++)
			{
				Nodes[i].ExpandAll();
			}
		}
		treeView?.EndUpdate();
	}

	public void CollapseAll()
	{
		MultiColumnTreeView treeView = TreeView;
		treeView?.BeginUpdate();
		if (HasNodes)
		{
			for (int i = 0; i < Nodes.Count; i++)
			{
				Nodes[i].CollapseAll();
			}
		}
		if (treeView != null && this != treeView.Root)
		{
			Expanded = false;
		}
		treeView?.EndUpdate();
	}

	public void Remove()
	{
		if (ParentNode != null)
		{
			ParentNode.Nodes.Remove(this);
		}
	}

	public int GetNodeCount(bool includeSubTrees)
	{
		if (!HasNodes)
		{
			return 0;
		}
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
			if (ParentNode != null)
			{
				ParentNode.Nodes.Remove(this);
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
		if (relativeNode != null && ((nodePosition != NodePositions.Next && nodePosition != NodePositions.Previous) || relativeNode.ParentNode != null))
		{
			if (ParentNode != null)
			{
				ParentNode.Nodes.Remove(this);
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
				Move(relativeNode.ParentNode.Nodes, relativeNode.ParentNode.Nodes.IndexOf(relativeNode) + 1);
				break;
			case NodePositions.Previous:
				Move(relativeNode.ParentNode.Nodes, relativeNode.ParentNode.Nodes.IndexOf(relativeNode));
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
		if (ParentNode != null)
		{
			ParentNode.Nodes.Remove(this);
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

	public bool IsParent(TreeNodeAdv targetNode)
	{
		if (targetNode == null)
		{
			return false;
		}
		TreeNodeAdv treeNodeAdv = this;
		while (treeNodeAdv != null && treeNodeAdv.ParentNode != targetNode)
		{
			treeNodeAdv = treeNodeAdv.ParentNode;
		}
		if (treeNodeAdv != null && treeNodeAdv.ParentNode == targetNode)
		{
			return true;
		}
		return false;
	}

	public bool HasNode(TreeNodeAdv node)
	{
		if (HasNodes)
		{
			if (Nodes.Contains(node))
			{
				return true;
			}
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				if (Nodes[i].HasNode(node))
				{
					return true;
				}
			}
		}
		return false;
	}

	public TreeNodeAdv GetNodeAtAbsoluteRowIndex(int rowIndex)
	{
		TreeNodeAdv treeNodeAdv = this;
		int num;
		while (true)
		{
			if (treeNodeAdv.TreeRowIndex == rowIndex)
			{
				return treeNodeAdv;
			}
			num = treeNodeAdv.Nodes.BinarySearch(rowIndex, TreeRowIndexComparer.Default);
			if (-1 == num)
			{
				return null;
			}
			if (0 <= num)
			{
				break;
			}
			treeNodeAdv = treeNodeAdv.Nodes[~num - 1];
		}
		return treeNodeAdv.Nodes[num];
	}

	public TreeNodeAdv GetNodeAtRelativeRowIndex(int rowIndex)
	{
		TreeNodeAdv treeNodeAdv = this;
		if (rowIndex != 0)
		{
			int num = ((rowIndex < 0) ? 1 : (-1));
			while (rowIndex != 0 && treeNodeAdv != null)
			{
				treeNodeAdv = ((num == 1) ? treeNodeAdv.PrevVisibleNode : treeNodeAdv.NextVisibleNode);
				rowIndex += num;
			}
		}
		return treeNodeAdv;
	}

	protected internal int GetTreeRowIndexOfChild(TreeNodeAdv child)
	{
		int num = TreeRowIndex + 1;
		if (HasNodes)
		{
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				TreeNodeAdv treeNodeAdv = Nodes[i];
				if (treeNodeAdv == child)
				{
					break;
				}
				num += treeNodeAdv.VisibleNodeCount;
			}
		}
		return num;
	}

	public bool IsNodeRelative(TreeNodeAdv adv)
	{
		if (adv == null)
		{
			return false;
		}
		if (this == adv)
		{
			return true;
		}
		if (ParentNode != null)
		{
			return ParentNode.IsNodeRelative(adv);
		}
		return false;
	}

	int IComparable.CompareTo(object obj)
	{
		if (obj is TreeNodeAdv)
		{
			TreeNodeAdv treeNodeAdv = obj as TreeNodeAdv;
			if (ParentNode == null)
			{
				return Text.CompareTo(treeNodeAdv.Text);
			}
			switch (ParentNode.SortType)
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
				if (CheckState != CheckState.Indeterminate)
				{
					if (treeNodeAdv.CheckState != CheckState.Unchecked)
					{
						return -1;
					}
					return 0;
				}
				if (treeNodeAdv.CheckState != CheckState.Indeterminate)
				{
					return 1;
				}
				return 0;
			}
		}
		else
		{
			if (obj is string)
			{
				string text = (string)obj;
				if (ParentNode == null)
				{
					return NodeTextCompare(text);
				}
				return ParentNode.SortType switch
				{
					TreeNodeAdvSortType.Tag => NodeTagCompare(text), 
					_ => NodeTextCompare(text), 
				};
			}
			if (ParentNode != null && ParentNode.SortType == TreeNodeAdvSortType.Tag)
			{
				return NodeTagCompare(obj);
			}
		}
		return 0;
	}

	private int NodeTextCompare(string compareText)
	{
		return m_culture.CompareInfo.Compare(Text, compareText, (ParentNode != null) ? ParentNode.NodeStyle.CompareOptions : CompareOptions.None);
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
		if (!HasNodes)
		{
			return;
		}
		Nodes.Sort(NodeStyle.SortOrder);
		if (!TreeView.SortWithChildNodes)
		{
			return;
		}
		foreach (TreeNodeAdv node in Nodes)
		{
			node.SortOrder = SortOrder;
			node.Sort();
		}
	}

	public void Sort(TreeNodeAdvSortType sortType)
	{
		if (!HasNodes)
		{
			return;
		}
		m_nodeData.SortType = sortType;
		Sort();
		if (!TreeView.SortWithChildNodes)
		{
			return;
		}
		foreach (TreeNodeAdv node in Nodes)
		{
			node.Sort(sortType);
		}
	}

	object ICloneable.Clone()
	{
		return MemberwiseClone();
	}

	public TreeNodeAdv Clone()
	{
		TreeNodeAdv treeNodeAdv = new TreeNodeAdv(Text);
		treeNodeAdv.LeftStateImagePadding = LeftStateImagePadding;
		treeNodeAdv.RightStateImagePadding = RightStateImagePadding;
		treeNodeAdv.LeftImagePadding = LeftImagePadding;
		treeNodeAdv.RightImagePadding = RightImagePadding;
		treeNodeAdv.ExpandImageIndex = ExpandImageIndex;
		treeNodeAdv.CollapseImageIndex = CollapseImageIndex;
		treeNodeAdv.NodeStyle.ModifyStyle(NodeStyle, StyleModifyType.Copy);
		treeNodeAdv.ChildStyle.ModifyStyle(ChildStyle, StyleModifyType.Copy);
		treeNodeAdv.SetBounds(Bounds);
		if (HasSubItems)
		{
			treeNodeAdv.SetSubItems(SubItems.Clone());
		}
		if (HasPrimitives)
		{
			treeNodeAdv.SetPrimitives(Primitives.Clone());
		}
		treeNodeAdv.SetCustomControlMember(CustomControl);
		treeNodeAdv.Expanded = Expanded;
		treeNodeAdv.ShowPlusOnExpand = ShowPlusOnExpand;
		if (HasNodes)
		{
			treeNodeAdv.Nodes.Clear();
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				treeNodeAdv.Nodes.Add(Nodes[i].Clone());
			}
		}
		if (Tag is ICloneable)
		{
			treeNodeAdv.Tag = ((ICloneable)Tag).Clone();
		}
		return treeNodeAdv;
	}

	internal Rectangle MouseInControl(Point pt)
	{
		if (m_plusMinus.Visible && m_plusMinus.Bounds.Contains(pt))
		{
			return m_plusMinus.Bounds;
		}
		if (m_checkBox.Visible && m_checkBox.Bounds.Contains(pt))
		{
			return m_checkBox.Bounds;
		}
		if (m_optionButton.Visible && m_optionButton.Bounds.Contains(pt))
		{
			return m_optionButton.Bounds;
		}
		return Rectangle.Empty;
	}

	internal bool ProcessMouseDown(Point pt)
	{
		if (!Enabled)
		{
			return false;
		}
		if (m_plusMinus.Visible)
		{
			Rectangle bounds = m_plusMinus.Bounds;
			bounds.Inflate(4, 3);
			if (bounds.Contains(pt))
			{
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
		if (m_checkBox.Visible && EnabledButtons && m_checkBox.Bounds.Contains(pt))
		{
			bool flag = TreeView != null && TreeView.SelectionBaseNode != this;
			ToggleCheckState((Control.ModifierKeys & Keys.Shift) > Keys.None && flag);
			return true;
		}
		if (m_optionButton.Visible && EnabledButtons && m_optionButton.Bounds.Contains(pt))
		{
			if (!m_optioned && ParentNode != null)
			{
				TreeNodeAdv optionedChild = ParentNode.GetOptionedChild();
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

	private CheckState GetToggledState(CheckState current)
	{
		CheckState checkState = CheckState.Checked;
		switch (current)
		{
		case CheckState.Checked:
			return CheckState.Unchecked;
		case CheckState.Unchecked:
			if (InteractiveCheckBox && m_partialCheckedState != null)
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
		MultiColumnTreeView treeView = TreeView;
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

	internal void AddedNode(TreeNodeAdv node)
	{
		if (node.ParentNode != this && node.ParentNode != null)
		{
			node.ParentNode.Nodes.Remove(node);
		}
		node.ParentNode = this;
		if (!IsRoot)
		{
			node.CheckStateChanged += childCheckStateChanged;
			UpdateInteractiveCheckState();
		}
		MultiColumnTreeView treeView = TreeView;
		if (treeView != null)
		{
			foreach (TreeNodeAdv node2 in node.Nodes)
			{
				node.AddedNode(node2);
			}
			if (treeView.ShouldPrepareUpdate(markPaintPending: false))
			{
				node.RecalculateDimensions();
				MaxX = Math.Max(node.Right, MaxX);
				if (Nodes.Count == 1)
				{
					RecalculateDimensions();
				}
			}
		}
		if (node.IsVisible && TreeView != null && !TreeView.NodeInRefresh)
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
		node.ParentNode = null;
		childMaxXChanged(0);
		if (!InteractiveCheckBox)
		{
			return;
		}
		if (m_partialCheckedState != null)
		{
			m_partialCheckedState.Remove(node);
			if (m_partialCheckedState.Count == 0)
			{
				m_partialCheckedState = null;
			}
		}
		UpdateInteractiveCheckState();
	}

	private void AdjustSelectedNode(int prevIndex)
	{
		TreeNodeAdv treeNodeAdv = null;
		if (!HasNodes && !IsRoot && Enabled)
		{
			treeNodeAdv = this;
		}
		if (HasNodes && treeNodeAdv == null)
		{
			if (prevIndex >= Nodes.Count)
			{
				prevIndex = Nodes.Count - 1;
			}
			if (prevIndex >= 0)
			{
				TreeNodeAdv treeNodeAdv2 = Nodes[prevIndex];
				while ((treeNodeAdv2.ParentNode != this || !treeNodeAdv2.Enabled) && ++prevIndex < Nodes.Count)
				{
					treeNodeAdv2 = Nodes[prevIndex];
				}
				if (treeNodeAdv2.ParentNode == this && treeNodeAdv2.Enabled)
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
		MultiColumnTreeView treeView = TreeView;
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
		MultiColumnTreeView treeView = TreeView;
		if (treeView != null && treeView.SelectedNode != null && treeView.SelectedNode.ParentNode == this)
		{
			if (Nodes.IndexOf(treeView.SelectedNode) == -1)
			{
				treeView.SetSelectedNode(null, treeView.SelectedNodes, TreeViewAdvAction.Unknown, fireEvent: false, forceRemove: true);
				treeView.ActiveNode = null;
			}
			else
			{
				treeView.m_currentSelectedNodeIndex = Nodes.IndexOf(treeView.SelectedNode);
			}
		}
	}

	protected internal bool ShouldDrawPlusMinus()
	{
		if (m_plusMinus.Visible)
		{
			if (ParentNode == null || !ParentNode.Expanded || !HasNodes)
			{
				if (TreeView.LoadOnDemand)
				{
					return !m_expandedOnce;
				}
				return false;
			}
			return true;
		}
		return false;
	}

	protected internal Color GetForeColor(bool selected, bool hotTracked)
	{
		MultiColumnTreeView treeView = TreeView;
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
				return TextColor;
			}
			return SystemColors.HotTrack;
		}
		return NodeStyle.TextColor;
	}

	protected internal void Draw(ThemedControlDrawing treeTD, ThemedControlDrawing buttonTD, Pen linePen, Point mousePos, bool mouseDown, TreeNodeAdvPaintEventArgs e)
	{
		MultiColumnTreeView treeView = TreeView;
		bool isMirrored = treeView.GetIsMirrored();
		DrawHorizontalLine(e, isMirrored, linePen);
		DrawLeftImageList(e, isMirrored);
		DrawStateImageList(e, isMirrored);
		DrawText(e);
		if (e.Active && !treeView.FullRowSelect)
		{
			DrawFocusRect(e.Graphics);
		}
		DrawRightImageList(e, isMirrored);
		DrawControls(e, treeTD, buttonTD, mousePos, mouseDown);
	}

	private void DrawHorizontalLine(TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored, Pen linePen)
	{
		MultiColumnTreeView treeView = TreeView;
		if (Level == 1 && !treeView.ShowRootLines)
		{
			return;
		}
		int num = 0;
		int num2 = 0;
		if (bIsMirrored)
		{
			int num3 = Bounds.Right - m_nodeXRel;
			num2 = num3 - (m_plusMinus.Width + 1) / 2;
			num = num3 - m_lineRightRel;
		}
		else
		{
			int num4 = Bounds.X + m_nodeXRel;
			num = num4 + (m_plusMinus.Width + 1) / 2;
			num2 = num4 + m_lineRightRel;
		}
		if (ParentNode == null || !treeView.ShowLines)
		{
			return;
		}
		if (HasNodes && m_nodeData.ShowPlusMinus)
		{
			if (bIsMirrored)
			{
				num2 -= m_plusMinus.Width / 2;
			}
			else
			{
				num += m_plusMinus.Width / 2;
			}
		}
		int num5 = Bounds.Y + NodeStyle.Height / 2;
		eaEventArgs.Graphics.DrawLine(linePen, num, num5, num2, num5);
	}

	private void DrawLeftImageList(TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored)
	{
		MultiColumnTreeView treeView = TreeView;
		ImageList leftImageList = treeView.LeftImageList;
		Image leftImage = LeftImage;
		if (leftImage != null)
		{
			int num = 0;
			int y = Bounds.Y + (NodeStyle.Height - Math.Min(leftImage.Height, NodeStyle.Height)) / 2;
			int num2 = m_nodeXRel + m_leftImageListXRel;
			if (bIsMirrored)
			{
				num = Bounds.Right - num2;
				num -= LeftImagePadding;
			}
			else
			{
				num = Bounds.X + num2;
				num += LeftImagePadding;
			}
			Rectangle srcRect = new Rectangle(Point.Empty, leftImage.Size);
			Rectangle destRect = new Rectangle(num + (bIsMirrored ? (-leftImage.Width) : 0), y, leftImage.Width, Math.Min(leftImage.Height, NodeStyle.Height));
			eaEventArgs.Graphics.DrawImage(leftImage, destRect, srcRect, GraphicsUnit.Pixel);
		}
		else
		{
			if (leftImageList == null || eaEventArgs.HandledLeftImageList)
			{
				return;
			}
			int num3 = 0;
			if (m_leftImageListXRel == int.MinValue)
			{
				return;
			}
			int num4 = m_nodeXRel + m_leftImageListXRel;
			num3 = ((!bIsMirrored) ? (Bounds.X + num4) : (Bounds.Right - num4));
			int width = leftImageList.ImageSize.Width;
			int y2 = Bounds.Y + (NodeStyle.Height - leftImageList.ImageSize.Height) / 2;
			int[] leftImageIndices = LeftImageIndices;
			foreach (int num5 in leftImageIndices)
			{
				if (num5 >= 0 && num5 < leftImageList.Images.Count)
				{
					if (bIsMirrored)
					{
						num3 -= width;
						num3 -= LeftImagePadding;
					}
					eaEventArgs.Graphics.DrawImage(leftImageList.Images[num5], num3, y2);
					if (!bIsMirrored)
					{
						num3 += width;
						num3 += LeftImagePadding;
					}
				}
			}
		}
	}

	private void DrawStateImageList(TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored)
	{
		MultiColumnTreeView treeView = TreeView;
		ImageList stateImageList = treeView.StateImageList;
		Image image = ((!HasNodes && (!treeView.LoadOnDemand || m_expandedOnce)) ? NoChildrenImage : (Expanded ? OpenImage : ClosedImage));
		if (image != null)
		{
			int num = 0;
			int num2 = m_nodeXRel + m_stateImageListXRel;
			int y = Bounds.Y + (NodeStyle.Height - Math.Min(image.Height, NodeStyle.Height)) / 2;
			if (bIsMirrored)
			{
				num = Bounds.Right - num2;
				num -= LeftStateImagePadding;
			}
			else
			{
				num = Bounds.X + num2;
				num += LeftStateImagePadding;
			}
			Rectangle srcRect = new Rectangle(Point.Empty, image.Size);
			Rectangle destRect = new Rectangle(num + (bIsMirrored ? (-image.Width) : 0), y, image.Width, Math.Min(image.Height, NodeStyle.Height));
			eaEventArgs.Graphics.DrawImage(image, destRect, srcRect, GraphicsUnit.Pixel);
		}
		else
		{
			if (stateImageList == null || eaEventArgs.HandledStateImageList || m_stateImageListXRel == int.MinValue)
			{
				return;
			}
			int num3 = 0;
			num3 = ((!HasNodes && (!treeView.LoadOnDemand || m_expandedOnce)) ? NoChildrenImgIndex : ((!Expanded) ? ClosedImgIndex : OpenImgIndex));
			if (num3 >= 0 && num3 < stateImageList.Images.Count)
			{
				int num4 = 0;
				int num5 = m_stateImageListXRel + m_nodeXRel;
				if (bIsMirrored)
				{
					num4 = Bounds.Right - num5 - stateImageList.ImageSize.Width;
					num4 -= LeftStateImagePadding;
				}
				else
				{
					num4 = Bounds.X + num5;
					num4 += LeftStateImagePadding;
				}
				eaEventArgs.Graphics.DrawImage(stateImageList.Images[num3], num4, Bounds.Y + (NodeStyle.Height - stateImageList.ImageSize.Height) / 2);
			}
		}
	}

	private Size GetNodeTextSize(Graphics g, Font f, int width)
	{
		Size result = Size.Empty;
		if (Text != null && Text.Length > 0)
		{
			result = ControlDrawing.MeasureDisplayStringSize(g, Text, f, GetIsMirrored(), width);
		}
		result.Width += 4;
		return result;
	}

	private Size GetNodeTextSize(Graphics g, Font f)
	{
		Size result = Size.Empty;
		if (Text != null && Text.Length > 0)
		{
			result = ControlDrawing.MeasureDisplayStringSize(g, Text, f, GetIsMirrored());
		}
		result.Width += 4;
		return result;
	}

	private void DrawText(TreeNodeAdvPaintEventArgs eaEventArgs)
	{
		MultiColumnTreeView treeView = TreeView;
		Graphics graphics = eaEventArgs.Graphics;
		if (m_textLocationXRel == int.MinValue)
		{
			return;
		}
		if (treeView.Printing)
		{
			Point location = PrintTextBounds.Location;
			int num = PrintTextBounds.Width - TextBounds.Width;
			if (num > 0 && GetIsMirrored())
			{
				location.Offset(-num, 0);
			}
			using Brush brush = new SolidBrush(eaEventArgs.ForeColor);
			graphics.DrawString(Text, Font, brush, location);
			return;
		}
		if (!eaEventArgs.HandledText && (!treeView.IsEditing || treeView.ActiveNode != this))
		{
			Font f = (eaEventArgs.HotTracked ? HotFont : NodeStyle.Font);
			Color color = Color.FromArgb(0, eaEventArgs.ForeColor.B, eaEventArgs.ForeColor.G, eaEventArgs.ForeColor.R);
			DrawTextInternal(graphics, f, color);
		}
	}

	private void DrawTextInternal(Graphics g, Font f, Color color)
	{
		IntPtr hrgn = g.Clip.GetHrgn(g);
		IntPtr hdc = g.GetHdc();
		IntPtr hObject = f.ToHfont();
		try
		{
			IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject);
			Syncfusion.Runtime.InteropServices.NativeMethods.SelectClipRgn(hdc, hrgn);
			Syncfusion.Runtime.InteropServices.NativeMethods.SetTextColor(hdc, color.ToArgb() & 0xFFFFFF);
			Syncfusion.Runtime.InteropServices.NativeMethods.SetBkMode(hdc, 1);
			Rectangle textBounds = TextBounds;
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(textBounds);
			lpRect.left += 2;
			int num = 2112;
			if (!Multiline)
			{
				num |= 0x24;
			}
			if (GetIsMirrored())
			{
				num |= 0x20000;
			}
			num |= 0x8000;
			Syncfusion.Runtime.InteropServices.NativeMethods.DrawText(hdc, Text, Text.Length, ref lpRect, num);
			hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject2);
			Syncfusion.Runtime.InteropServices.NativeMethods.SelectClipRgn(hdc, IntPtr.Zero);
		}
		finally
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hrgn);
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
			g.ReleaseHdc(hdc);
		}
	}

	protected internal void DrawFocusRect(Graphics g)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		MultiColumnTreeView treeView = TreeView;
		if (treeView == null)
		{
			throw new ArgumentNullException("tvaTree");
		}
		if (treeView.Focused || treeView.KeepDottedSelection)
		{
			Rectangle rectangle;
			if (treeView.FullRowSelect)
			{
				rectangle = Bounds;
				rectangle.Inflate(Bounds.X, 0);
				rectangle.Width -= Bounds.X;
			}
			else
			{
				rectangle = (treeView.Printing ? PrintTextBounds : TextBounds);
			}
			if (!IsEditing && g.ClipBounds.IntersectsWith(rectangle))
			{
				ControlPaint.DrawFocusRectangle(g, rectangle, TextColor, Background.BackColor);
			}
		}
	}

	private void DrawRightImageList(TreeNodeAdvPaintEventArgs eaEventArgs, bool bIsMirrored)
	{
		MultiColumnTreeView treeView = TreeView;
		ImageList rightImageList = treeView.RightImageList;
		Image rightImage = RightImage;
		if (rightImage != null)
		{
			int num = 0;
			int num2 = m_rightImageListXRel + m_nodeXRel;
			int y = Bounds.Y + (Height - Math.Min(Height, rightImage.Size.Height)) / 2;
			if (bIsMirrored)
			{
				num = Bounds.Right - num2;
				num -= RightImagePadding;
			}
			else
			{
				num = Bounds.X + num2;
				num += RightImagePadding;
			}
			Rectangle srcRect = new Rectangle(Point.Empty, rightImage.Size);
			Rectangle destRect = new Rectangle(num + (bIsMirrored ? (-rightImage.Width) : 0), y, rightImage.Width, Math.Min(Height, rightImage.Size.Height));
			eaEventArgs.Graphics.DrawImage(rightImage, destRect, srcRect, GraphicsUnit.Pixel);
		}
		else
		{
			if (rightImageList == null || eaEventArgs.HandledRightImageList || m_rightImageListXRel == int.MinValue)
			{
				return;
			}
			int num3 = 0;
			int num4 = m_rightImageListXRel + m_nodeXRel;
			num3 = ((!bIsMirrored) ? (Bounds.X + num4 + RightImagePadding) : (Bounds.Right - num4));
			int width = rightImageList.ImageSize.Width;
			int y2 = Bounds.Y + (Height - rightImageList.ImageSize.Height) / 2;
			int[] rightImageIndices = RightImageIndices;
			if (treeView.Printing)
			{
				int num5 = PrintTextBounds.Width - TextBounds.Width;
				if (num5 > 0)
				{
					num3 = (bIsMirrored ? (num3 - num5) : (num3 + num5));
				}
			}
			foreach (int num6 in rightImageIndices)
			{
				if (num6 >= 0 && num6 < rightImageList.Images.Count)
				{
					if (bIsMirrored)
					{
						num3 -= width;
						num3 -= RightImagePadding;
					}
					eaEventArgs.Graphics.DrawImage(rightImageList.Images[num6], num3, y2);
					if (!bIsMirrored)
					{
						num3 += width;
						num3 += RightImagePadding;
					}
				}
			}
		}
	}

	private void DrawControls(TreeNodeAdvPaintEventArgs e, ThemedControlDrawing treeTD, ThemedControlDrawing buttonTD, Point pt, bool mouseDown)
	{
		if (NodeStyle.ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsAppThemed && XPThemes.IsThemeActive)
		{
			if (!e.HandledPlusMinus && ShouldDrawPlusMinus())
			{
				int stateID = ((!Expanded || (ShowPlusOnExpand && TreeView.LoadOnDemand)) ? 1 : 2);
				treeTD.DrawThemeBackground(e.Graphics, 2, stateID, m_plusMinus.Bounds);
			}
			DrawThemedCheckBoxControl(e, buttonTD, pt, mouseDown);
			DrawThemedOptionButtonControl(e, buttonTD, pt, mouseDown);
		}
		else
		{
			DrawPlusMinus(e);
			DrawCheckBox(e);
			DrawOptionButton(e);
		}
	}

	private void DrawOptionButton(TreeNodeAdvPaintEventArgs e)
	{
		if (!e.HandledOptionButton && m_optionButton.Visible && ParentNode != null && ParentNode.Expanded && m_optionButton.M_xIndentFromNodeLeft != int.MinValue)
		{
			ButtonState buttonState = ButtonState.Checked;
			if (!m_optioned)
			{
				buttonState = ButtonState.Normal;
			}
			if (!Enabled || !EnabledButtons)
			{
				buttonState |= ButtonState.Inactive;
			}
			ControlPaintHelper.DrawRadioButton(e.Graphics, m_optionButton.Bounds, buttonState, this);
		}
	}

	private void DrawCheckBox(TreeNodeAdvPaintEventArgs e)
	{
		if (!e.HandledCheckBox && m_checkBox.Visible && ParentNode != null && ParentNode.Expanded && m_checkBox.M_xIndentFromNodeLeft != int.MinValue)
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
			ControlPaintHelper.DrawCheckBox(e.Graphics, m_checkBox.Bounds, buttonState, this);
		}
	}

	private void DrawPlusMinus(TreeNodeAdvPaintEventArgs e)
	{
		bool transparentControls = TreeView.TransparentControls;
		Brush brush = new SolidBrush(TreeView.BackColor);
		if (!e.HandledPlusMinus && ShouldDrawPlusMinus())
		{
			Graphics graphics = e.Graphics;
			int width = m_plusMinus.Width;
			int height = m_plusMinus.Height;
			Rectangle rect = new Rectangle(m_plusMinus.Location.X, m_plusMinus.Location.Y, width - 1, height - 1);
			if (!transparentControls)
			{
				graphics.FillRectangle(brush, m_plusMinus.Bounds);
			}
			if (ExpandImage != null && Expanded)
			{
				graphics.DrawImage(ExpandImage, rect);
			}
			else if (Expanded)
			{
				graphics.DrawRectangle(Pens.Gray, rect);
				TreeView.ExcludedDrawingRegion.Exclude(rect);
			}
			if (Expanded ? (ExpandImage == null) : (CollapseImage == null))
			{
				graphics.DrawLine(Pens.Black, m_plusMinus.Location.X + 2, m_plusMinus.Location.Y + height / 2, m_plusMinus.Location.X + width - 3, m_plusMinus.Location.Y + height / 2);
			}
			if (!Expanded || (ShowPlusOnExpand && TreeView.LoadOnDemand))
			{
				if (CollapseImage != null)
				{
					graphics.DrawImage(CollapseImage, rect);
				}
				else
				{
					graphics.DrawRectangle(Pens.Gray, rect);
					graphics.DrawLine(Pens.Black, m_plusMinus.Location.X + width / 2, m_plusMinus.Location.Y + 2, m_plusMinus.Location.X + width / 2, m_plusMinus.Location.Y + height - 3);
					TreeView.ExcludedDrawingRegion.Exclude(rect);
				}
			}
		}
		brush.Dispose();
	}

	private void DrawThemedOptionButtonControl(TreeNodeAdvPaintEventArgs e, ThemedControlDrawing buttonTD, Point pt, bool mouseDown)
	{
		if (e.HandledOptionButton || !m_optionButton.Visible || ParentNode == null || !ParentNode.Expanded)
		{
			return;
		}
		int num = 1;
		if (m_optioned)
		{
			num = 5;
		}
		if (TreeView.Enabled && Enabled && EnabledButtons)
		{
			if (m_optionButton.Bounds.Contains(pt))
			{
				num += ((!mouseDown) ? 1 : 2);
			}
		}
		else
		{
			num += 3;
		}
		buttonTD.DrawThemeBackground(e.Graphics, 2, num, m_optionButton.Bounds);
	}

	private void DrawThemedCheckBoxControl(TreeNodeAdvPaintEventArgs e, ThemedControlDrawing buttonTD, Point pt, bool mouseDown)
	{
		if (e.HandledCheckBox || !m_checkBox.Visible || ParentNode == null || !ParentNode.Expanded)
		{
			return;
		}
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
			if (m_checkBox.Bounds.Contains(pt))
			{
				num += ((!mouseDown) ? 1 : 2);
			}
		}
		else
		{
			num += 3;
		}
		buttonTD.DrawThemeBackground(e.Graphics, 3, num, m_checkBox.Bounds);
	}

	private void RecalculateDimensions()
	{
		if (TreeView == null)
		{
			return;
		}
		MultiColumnTreeView treeView = TreeView;
		int indent = treeView.Indent;
		m_nodeXRel = (Level - 1) * indent;
		int num = 0;
		bool flag = false;
		int num2 = 0;
		if (Level != 1 || treeView.NeedRootLinesSpace)
		{
			if (NodeStyle.ShowPlusMinus)
			{
				PlusMinus.M_xIndentFromNodeLeft = 0;
			}
			num += m_plusMinus.Width + 3;
			num2 = num;
			if (num < indent)
			{
				num = indent + m_plusMinus.Width / 2;
			}
		}
		if (Level != 1 && !treeView.NeedRootLinesSpace)
		{
			m_nodeXRel -= indent;
			m_nodeXRel += m_plusMinus.Width / 2;
		}
		m_lineRightRel = num - 1;
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
				m_lineRightRel = num - 1;
			}
			CheckBox.M_xIndentFromNodeLeft = num;
			num += CheckBox.Width + 3;
		}
		if (ShowOptionButton)
		{
			if (!flag)
			{
				flag = true;
				if (num - OptionButton.Width / 2 > num2)
				{
					num -= OptionButton.Width / 2;
				}
				m_lineRightRel = num - 1;
			}
			OptionButton.M_xIndentFromNodeLeft = num;
			num += OptionButton.Width + 3;
		}
		ImageList leftImageList = treeView.LeftImageList;
		if (LeftImage != null)
		{
			if (!flag)
			{
				flag = true;
				if (num - LeftImage.Size.Width / 2 > num2)
				{
					num -= LeftImage.Size.Width / 2;
				}
				m_lineRightRel = num - 1;
			}
			m_leftImageListXRel = num;
			num += LeftImage.Size.Width;
			num += LeftImagePadding;
			num += 3;
		}
		else if (leftImageList != null)
		{
			int[] leftImageIndices = LeftImageIndices;
			bool flag2 = false;
			int width = leftImageList.ImageSize.Width;
			int count = leftImageList.Images.Count;
			foreach (int num3 in leftImageIndices)
			{
				if (num3 < 0 || num3 >= count)
				{
					continue;
				}
				if (!flag)
				{
					flag = true;
					if (num - width / 2 > num2)
					{
						num -= width / 2;
					}
					m_lineRightRel = num - 1;
				}
				if (!flag2)
				{
					m_leftImageListXRel = num;
					flag2 = true;
				}
				num += width;
				num += LeftImagePadding;
			}
			if (flag2)
			{
				num += 3;
			}
		}
		ImageList stateImageList = treeView.StateImageList;
		Image image = ((!HasNodes && (!TreeView.LoadOnDemand || m_expandedOnce)) ? NoChildrenImage : (Expanded ? OpenImage : ClosedImage));
		if (image != null)
		{
			if (!flag)
			{
				flag = true;
				if (num - image.Width / 2 > num2)
				{
					num -= image.Width / 2;
				}
				m_lineRightRel = num - 1;
			}
			m_stateImageListXRel = num;
			num += image.Width + 3;
			num += LeftStateImagePadding + RightStateImagePadding;
		}
		else if (stateImageList != null)
		{
			int num4 = 0;
			num4 = ((!HasNodes && (!TreeView.LoadOnDemand || m_expandedOnce)) ? NodeStyle.NoChildrenImgIndex : ((!Expanded) ? NodeStyle.ClosedImgIndex : NodeStyle.OpenImgIndex));
			if (num4 >= 0 && num4 < stateImageList.Images.Count)
			{
				if (!flag)
				{
					flag = true;
					if (num - stateImageList.ImageSize.Width / 2 > num2)
					{
						num -= stateImageList.ImageSize.Width / 2;
					}
					m_lineRightRel = num - 1;
				}
				m_stateImageListXRel = num;
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
			m_lineRightRel = num - 1;
		}
		m_textLocationXRel = num;
		Graphics measureGraphics = TreeView.MeasureGraphics;
		if (Multiline)
		{
			int width2 = TreeView.TreeColumnRectangle.Width - m_nodeXRel - m_textLocationXRel - 2;
			Size nodeTextSize = GetNodeTextSize(measureGraphics, m_nodeData.Font, width2);
			m_iTextWidth = nodeTextSize.Width;
			if (TreeView.AutoAdjustMultiLineHeight)
			{
				Height = nodeTextSize.Height;
			}
		}
		else
		{
			m_iTextWidth = GetNodeTextSize(measureGraphics, m_nodeData.Font).Width;
			m_printTextSize = Size.Round(measureGraphics.MeasureString(Text, m_nodeData.Font));
		}
		if (m_iTextWidth > 0)
		{
			num += m_iTextWidth + 3;
		}
		m_rightImageListXRel = num;
		if (RightImage != null)
		{
			num += RightImage.Size.Width + 3;
			num += RightImagePadding;
		}
		else if (treeView.RightImageList != null)
		{
			num += treeView.RightImageList.ImageSize.Width * m_nodeData.RightImageIndices.Length + 3;
			num += m_nodeData.RightImageIndices.Length * RightImagePadding;
		}
		if (CustomControl != null)
		{
			m_customControlRelativeLocation = num;
			num += CustomControl.Width;
		}
		Width = num;
		int num5 = Bounds.X + m_nodeXRel + num;
		if (!HasNodes)
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
		int num = 3 + (Level - 1) * ParentIndent + Width;
		if (Expanded && HasNodes)
		{
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				num = Math.Max(num, Nodes[i].MaxX);
			}
		}
		MaxX = num;
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
		CheckBox.M_xIndentFromNodeLeft = -1;
		CheckBox.M_xIndentFromNodeLeft = int.MinValue;
		OptionButton.M_xIndentFromNodeLeft = int.MinValue;
		m_leftImageListXRel = int.MinValue;
		m_rightImageListXRel = int.MinValue;
		m_stateImageListXRel = int.MinValue;
		m_textLocationXRel = int.MinValue;
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
					m_leftImageListXRel = width;
					leftMostPartFound = LayoutImages(TreeView.LeftImageList, NodeStyle.LeftImageIndices, ref width, pmWidthWithSpace, LeftImagePadding, leftMostPartFound);
					break;
				case PredefinedPrimitiveTypes.RightImages:
					m_rightImageListXRel = width;
					leftMostPartFound = LayoutImages(TreeView.RightImageList, NodeStyle.RightImageIndices, ref width, pmWidthWithSpace, RightImagePadding, leftMostPartFound);
					break;
				case PredefinedPrimitiveTypes.StateImage:
				{
					int num = 0;
					leftMostPartFound = LayoutStateImage(imageIndex: (HasNodes || (TreeView.LoadOnDemand && !m_expandedOnce)) ? (Expanded ? NodeStyle.OpenImgIndex : NodeStyle.ClosedImgIndex) : NodeStyle.NoChildrenImgIndex, imageList: TreeView.StateImageList, relativeLocation: ref width, pmWidthWithSpace: pmWidthWithSpace, imagePadding: LeftStateImagePadding + RightStateImagePadding, leftMostPartFound: leftMostPartFound);
					break;
				}
				case PredefinedPrimitiveTypes.Text:
					m_textLocationXRel = width;
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

	private bool LayoutPrimitive(ref int relativeLocation, ref int indent, int pmWidthWithSpace, int primitiveWidth, bool leftMostPartFound)
	{
		if (!leftMostPartFound)
		{
			leftMostPartFound = true;
			if (relativeLocation - primitiveWidth / 2 > pmWidthWithSpace)
			{
				relativeLocation -= primitiveWidth / 2;
			}
			m_lineRightRel = relativeLocation - 1;
		}
		indent = relativeLocation;
		relativeLocation += primitiveWidth + 3;
		return leftMostPartFound;
	}

	private bool LayoutCheckBox(ref int relativeLocation, int pmWidthWithSpace, bool leftMostPartFound)
	{
		return LayoutPrimitive(ref relativeLocation, ref CheckBox.M_xIndentFromNodeLeft, pmWidthWithSpace, CheckBox.Width, leftMostPartFound);
	}

	private bool LayoutOptionsButton(ref int relativeLocation, int pmWidthWithSpace, bool leftMostPartFound)
	{
		return LayoutPrimitive(ref relativeLocation, ref OptionButton.M_xIndentFromNodeLeft, pmWidthWithSpace, OptionButton.Width, leftMostPartFound);
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
					m_lineRightRel = relativeLocation - 1;
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
				m_lineRightRel = relativeLocation - 1;
			}
			m_stateImageListXRel = relativeLocation;
			relativeLocation += imageList.ImageSize.Width + 3;
			relativeLocation += imagePadding;
		}
		return leftMostPartFound;
	}

	private bool LayoutText(ref int relativeLocation, bool leftMostPartFound)
	{
		using (Graphics graphics = TreeView.CreateGraphics())
		{
			m_iTextWidth = GetNodeTextSize(graphics, m_nodeData.Font).Width;
			m_printTextSize = Size.Round(graphics.MeasureString(Text, Font));
			if (!leftMostPartFound)
			{
				leftMostPartFound = true;
				m_lineRightRel = relativeLocation - 1;
			}
			if (m_iTextWidth > 0)
			{
				relativeLocation += m_iTextWidth + 3;
			}
			Width = relativeLocation;
			int num = Bounds.X + m_nodeXRel + m_width;
			if (!HasNodes)
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

	internal void childMaxXChanged(int childMax)
	{
		if (Expanded)
		{
			if (childMax > m_maxX)
			{
				MaxX = childMax;
			}
			else if (htRecalculatingNodes[this] == null)
			{
				RecalculateMaxX();
			}
		}
	}

	private Image GetNodeStateImage()
	{
		Image result = null;
		Image image = (Expanded ? ExpandedImage : CollapsedImage);
		if (image != null)
		{
			result = image;
		}
		else if (TreeView != null && TreeView.NodeStateImageList != null)
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

	private void CheckState_Changed()
	{
		OnCheckStateChanged(EventArgs.Empty);
		if (!InteractiveCheckBox)
		{
			return;
		}
		if (CheckState == CheckState.Checked || CheckState == CheckState.Unchecked)
		{
			CheckState checkState = CheckState;
			if (!HasNodes)
			{
				return;
			}
			for (int i = 0; i < Nodes.Count; i++)
			{
				if (Nodes[i].ShowCheckBox)
				{
					Nodes[i].CheckState = checkState;
				}
			}
		}
		else
		{
			if (CheckState != CheckState.Indeterminate || CachedPartialCheckedState == null || !HasNodes)
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
		bool visible = m_plusMinus.Visible;
		if (NodeStyle.ShowPlusMinus && (HasNodes || (TreeView != null && TreeView.LoadOnDemand && !ExpandedOnce)))
		{
			if (Level == 1 && TreeView != null)
			{
				m_plusMinus.Visible = TreeView.NeedRootLinesSpace;
			}
			else
			{
				m_plusMinus.Visible = true;
			}
		}
		else
		{
			m_plusMinus.Visible = false;
		}
		if (visible != m_plusMinus.Visible && TreeView != null)
		{
			TreeView.Invalidate(Bounds);
		}
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

	private void ClearCachedPartialCheckedState()
	{
		if (m_partialCheckedState != null)
		{
			m_partialCheckedState.Clear();
			m_partialCheckedState = null;
		}
	}

	private void CachePartialCheckedState()
	{
		if (m_partialCheckedState != null)
		{
			m_partialCheckedState.Clear();
		}
		m_partialCheckedState = new Hashtable();
		if (!HasNodes)
		{
			return;
		}
		foreach (TreeNodeAdv node in Nodes)
		{
			if (node.ShowCheckBox)
			{
				m_partialCheckedState[node] = node.CheckState;
			}
		}
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
		if (HasNodes)
		{
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				if (Nodes[i].ShowCheckBox)
				{
					num = i;
					break;
				}
			}
		}
		if (num == -1)
		{
			return;
		}
		CheckState checkState = Nodes[num].CheckState;
		bool flag = true;
		int j = num + 1;
		for (int count2 = Nodes.Count; j < count2; j++)
		{
			TreeNodeAdv treeNodeAdv = Nodes[j];
			if (treeNodeAdv.ShowCheckBox && checkState != treeNodeAdv.CheckState)
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

	private void InvalidateTreeView(Rectangle rect)
	{
		if (TreeView != null)
		{
			TreeView.Invalidate(rect);
		}
	}

	internal void SetCustomControlMember(Control control)
	{
		m_customControl = control;
	}

	private void ExpandParentSelf()
	{
		if (ParentNode != null && (!ParentNode.Expanded || !ParentNode.IsVisible))
		{
			ParentNode.ExpandParentSelf();
		}
		Expand();
	}

	internal void MakeDirty()
	{
		if (TreeView != null)
		{
			TreeView.MakeDirty();
		}
	}

	internal void SetHeightIfChanged(int oldHeight, int newHeight)
	{
		if (Height == oldHeight)
		{
			Height = newHeight;
		}
		if (HasNodes)
		{
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				Nodes[i].SetHeightIfChanged(oldHeight, newHeight);
			}
		}
	}

	internal void UpdateCustomConrtol()
	{
		if (CustomControl != null && CustomControl.Visible)
		{
			CustomControl.Location = new Point(Bounds.X + m_customControlRelativeLocation + m_nodeXRel, Bounds.Y);
			CustomControl.Height = Height;
			CustomControl.Update();
		}
	}

	internal Rectangle GetCustomControlBounds()
	{
		return new Rectangle(Bounds.X + m_customControlRelativeLocation + m_nodeXRel, Bounds.Y, CustomControl.Width, Bounds.Height);
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

	internal void ResetVisibleNodeCount(bool recurseOnChildren)
	{
		bool flag = m_visibleNodeCount > 0;
		m_visibleNodeCount = -1;
		if (flag && ParentNode != null)
		{
			ParentNode.ResetVisibleNodeCount(recurseOnChildren: false);
		}
		if (recurseOnChildren && HasNodes)
		{
			int i = 0;
			for (int count = Nodes.Count; i < count; i++)
			{
				TreeNodeAdv treeNodeAdv = Nodes[i];
				treeNodeAdv.ResetVisibleNodeCount(recurseOnChildren: true);
			}
		}
	}

	internal void AdjustVisibleNodeCount(int delta)
	{
		if (m_visibleNodeCount != -1)
		{
			m_visibleNodeCount += delta;
		}
		if (ParentNode != null)
		{
			ParentNode.AdjustVisibleNodeCount(delta);
		}
	}

	protected internal void SetBounds(Rectangle bounds)
	{
		m_bounds = bounds;
	}

	protected internal void SetPrimitives(TreeNodePrimitivesCollection primitives)
	{
		if (primitives != null)
		{
			m_primitives = primitives;
			m_primitives.SetParent(this);
			RecalculateAllDimensions();
		}
	}

	protected internal void SetSubItems(TreeNodeAdvSubItemCollection collection)
	{
		if (collection != null)
		{
			m_subitems = collection;
			m_subitems.SetParent(this);
			RecalculateAllDimensions();
		}
	}
}
