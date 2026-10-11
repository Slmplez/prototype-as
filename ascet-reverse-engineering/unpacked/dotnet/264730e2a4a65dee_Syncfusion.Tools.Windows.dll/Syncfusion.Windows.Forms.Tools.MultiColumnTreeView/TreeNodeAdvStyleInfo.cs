using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[TypeConverter(typeof(TreeNodeAdvStyleInfoConverter))]
public class TreeNodeAdvStyleInfo : StyleInfoBase, ITreeNodeAdvSubItemStyle
{
	private static TreeNodeAdvStyleInfo defaultStyle = null;

	public static readonly TreeNodeAdvStyleInfo Empty = new TreeNodeAdvStyleInfo();

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	internal TreeNodeAdvStyleInfoIdentity NodeIdentity
	{
		get
		{
			return base.Identity as TreeNodeAdvStyleInfoIdentity;
		}
		set
		{
			base.Identity = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new TreeNodeAdvStyleInfoStore Store => (TreeNodeAdvStyleInfoStore)base.Store;

	public static TreeNodeAdvStyleInfo Default
	{
		get
		{
			if (defaultStyle == null)
			{
				defaultStyle = new TreeNodeAdvStyleInfo();
				defaultStyle.Comparer = null;
				defaultStyle.Text = string.Empty;
				defaultStyle.Multiline = false;
				defaultStyle.HelpText = string.Empty;
				defaultStyle.DisplayMember = string.Empty;
				defaultStyle.BaseStyle = string.Empty;
				defaultStyle.Tag = null;
				defaultStyle.LeftImageIndices = new int[0];
				defaultStyle.RightImageIndices = new int[0];
				defaultStyle.NoChildrenImgIndex = 0;
				defaultStyle.ClosedImgIndex = 1;
				defaultStyle.OpenImgIndex = 2;
				defaultStyle.Font = FontUtil.CreateFont("Verdana", 8f);
				defaultStyle.Background = new BrushInfo(Color.Transparent);
				defaultStyle.TextColor = SystemColors.WindowText;
				defaultStyle.Height = 16;
				defaultStyle.ShowCheckBox = false;
				defaultStyle.CheckColor = SystemColors.ControlText;
				defaultStyle.IntermediateCheckColor = SystemColors.ControlDark;
				defaultStyle.CheckBoxBackground = SystemBrushes.Window;
				defaultStyle.IntermediateCheckBoxBackground = SystemBrushes.Control;
				defaultStyle.ShowOptionButton = false;
				defaultStyle.ShowPlusMinus = true;
				defaultStyle.InteractiveCheckBox = false;
				defaultStyle.OptionButtonColor = Color.White;
				defaultStyle.SelectedOptionButtonColor = Color.Black;
				defaultStyle.SortOrder = SortOrder.None;
				defaultStyle.SortType = TreeNodeAdvSortType.Text;
				defaultStyle.ThemesEnabled = false;
				defaultStyle.Comparer = null;
				defaultStyle.CompareOptions = CompareOptions.None;
				defaultStyle.CheckState = CheckState.Unchecked;
				defaultStyle.Enabled = true;
				defaultStyle.EnabledButtons = true;
				defaultStyle.EnsureDefaultOptionedChild = true;
				defaultStyle.LeftImage = null;
				defaultStyle.LeftImagePadding = 0;
				defaultStyle.RightImage = null;
				defaultStyle.RightImagePadding = 0;
				defaultStyle.LeftStateImagePadding = 0;
				defaultStyle.RightStateImagePadding = 0;
				defaultStyle.ClosedImage = null;
				defaultStyle.OpenImage = null;
			}
			return defaultStyle;
		}
	}

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "ControlText")]
	[Description("Indicates the color of check symbol.")]
	public Color CheckColor
	{
		get
		{
			return (Color)GetValue(TreeNodeAdvStyleInfoStore.CheckColorProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.CheckColorProperty, value);
		}
	}

	[Category("Appearance")]
	[Description("Indicates the color of intermediate check symbol.")]
	[DefaultValue(typeof(Color), "ControlDark")]
	public Color IntermediateCheckColor
	{
		get
		{
			return (Color)GetValue(TreeNodeAdvStyleInfoStore.IntermediateCheckColorProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.IntermediateCheckColorProperty, value);
		}
	}

	[Category("Appearance")]
	[Browsable(false)]
	[Description("Indicates the background of checkbox when it is in intermediate state.")]
	public Brush IntermediateCheckBoxBackground
	{
		get
		{
			return (Brush)GetValue(TreeNodeAdvStyleInfoStore.IntermediateCheckBoxBackgroundProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.IntermediateCheckBoxBackgroundProperty, value);
		}
	}

	[Category("Appearance")]
	[Description("Indicates the background of checkbox.")]
	[Browsable(false)]
	public Brush CheckBoxBackground
	{
		get
		{
			return (Brush)GetValue(TreeNodeAdvStyleInfoStore.CheckBoxBackGroundProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.CheckBoxBackGroundProperty, value);
		}
	}

	[DefaultValue(typeof(Color), "White")]
	[Description("Indicates the color of option button.")]
	[Category("Appearance")]
	public Color OptionButtonColor
	{
		get
		{
			return (Color)GetValue(TreeNodeAdvStyleInfoStore.OptionButtonColorProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.OptionButtonColorProperty, value);
		}
	}

	[DefaultValue(typeof(Color), "Black")]
	[Description("Indicates the color of Selected option button.")]
	[Category("Appearance")]
	public Color SelectedOptionButtonColor
	{
		get
		{
			return (Color)GetValue(TreeNodeAdvStyleInfoStore.SelectedOptionButtonColorProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.SelectedOptionButtonColorProperty, value);
		}
	}

	[Category("Appearance")]
	[Description("The font of the node.")]
	[Localizable(true)]
	public virtual Font Font
	{
		get
		{
			return ((Font)GetValue(TreeNodeAdvStyleInfoStore.FontProperty)).Clone() as Font;
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.FontProperty, value.Clone() as Font);
		}
	}

	[Browsable(false)]
	public virtual bool HasFont => HasValue(TreeNodeAdvStyleInfoStore.FontProperty);

	[Category("Appearance")]
	[Description("The Color of the text.")]
	public virtual Color TextColor
	{
		get
		{
			return (Color)GetValue(TreeNodeAdvStyleInfoStore.TextColorProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.TextColorProperty, value);
		}
	}

	[Browsable(false)]
	public virtual bool HasTextColor => HasValue(TreeNodeAdvStyleInfoStore.TextColorProperty);

	[Category("Appearance - Inherited")]
	[Description("The base style for the node")]
	public string BaseStyle
	{
		get
		{
			return (string)GetValue(TreeNodeAdvStyleInfoStore.BaseStyleProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.BaseStyleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBaseStyle => HasValue(TreeNodeAdvStyleInfoStore.BaseStyleProperty);

	[Category("Appearance")]
	[Description("The background of the node.")]
	public BrushInfo Background
	{
		get
		{
			return (BrushInfo)GetValue(TreeNodeAdvStyleInfoStore.BackgroundProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.BackgroundProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBackground => HasValue(TreeNodeAdvStyleInfoStore.BackgroundProperty);

	[Description("The text of the node.")]
	[Category("Appearance")]
	[Browsable(false)]
	[Localizable(true)]
	public string Text
	{
		get
		{
			return (string)GetValue(TreeNodeAdvStyleInfoStore.TextProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.TextProperty, value);
		}
	}

	[Description("The help text of the node.")]
	[Localizable(true)]
	[Category("Appearance")]
	public string HelpText
	{
		get
		{
			return (string)GetValue(TreeNodeAdvStyleInfoStore.HelpTextProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.HelpTextProperty, value);
		}
	}

	[Localizable(true)]
	[Description("The display member of the data bound to the node.")]
	[Category("Data")]
	public string DisplayMember
	{
		get
		{
			return (string)GetValue(TreeNodeAdvStyleInfoStore.DisplayMemberProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.DisplayMemberProperty, value);
		}
	}

	[Description("The height of the node.")]
	[Category("Appearance")]
	public virtual int Height
	{
		get
		{
			return (int)GetValue(TreeNodeAdvStyleInfoStore.HeightProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.HeightProperty, value);
		}
	}

	[Browsable(false)]
	public virtual bool HasHeight => HasValue(TreeNodeAdvStyleInfoStore.HeightProperty);

	[Category("Appearance")]
	[Description("Indicates if the checkbox of the node is visible.")]
	public bool ShowCheckBox
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasShowCheckBox => HasValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty);

	[Description("Indicates if the node will have an interactive checkbox.")]
	[Category("Behavior")]
	public bool InteractiveCheckBox
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasInteractiveCheckBox => HasValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty);

	[Category("Data")]
	[Description("The tag of the node. Can be used to store aditional information for the node.")]
	[Browsable(false)]
	public object Tag
	{
		get
		{
			return GetValue(TreeNodeAdvStyleInfoStore.TagProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.TagProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasTag => HasValue(TreeNodeAdvStyleInfoStore.TagProperty);

	[Category("Appearance")]
	[Description("Indicates if the plus/minus of the node is visible.")]
	public bool ShowPlusMinus
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasShowPlusMinus => HasValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty);

	[Category("Appearance")]
	[Description("Indicates if the optionbutton of the node is visible.")]
	public bool ShowOptionButton
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasShowOptionButton => HasValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty);

	[Description("The imageindex to be drawn on the left of the node`s text.")]
	[Category("Images")]
	[Localizable(true)]
	public int[] LeftImageIndices
	{
		get
		{
			return (int[])GetValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImageIndices => HasValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty);

	[Category("Images")]
	[Localizable(true)]
	[Description("The imageindex to be drawn on the right of the node`s text.")]
	public int[] RightImageIndices
	{
		get
		{
			return (int[])GetValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImageIndices => HasValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty);

	[Description("The imageindex indicating the image in the StateImageList where the node has no children.")]
	[Category("Images")]
	[Localizable(true)]
	public int NoChildrenImgIndex
	{
		get
		{
			return (int)GetValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasNoChildrenImgIndex => HasValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty);

	[Localizable(true)]
	[Category("Images")]
	[Description("Indicates the imageindex in the NodeStateImageList where the node is expanded.")]
	public int ExpandImageIndex
	{
		get
		{
			if (!HasExpandImageIndex)
			{
				return -1;
			}
			return (int)GetValue(TreeNodeAdvStyleInfoStore.ExpandImageIndexProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ExpandImageIndexProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasExpandImageIndex => HasValue(TreeNodeAdvStyleInfoStore.ExpandImageIndexProperty);

	[Description("Indicates the imageindex in the NodeStateImageList where the node is collapsed.")]
	[Localizable(true)]
	[Category("Images")]
	public int CollapseImageIndex
	{
		get
		{
			if (!HasCollapseImageIndex)
			{
				return -1;
			}
			return (int)GetValue(TreeNodeAdvStyleInfoStore.CollapseImageIndexProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.CollapseImageIndexProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasCollapseImageIndex => HasValue(TreeNodeAdvStyleInfoStore.CollapseImageIndexProperty);

	[Localizable(true)]
	[Category("Images")]
	[Description("Indicates the imageindex in the StateImageList where the node is expanded.")]
	public int OpenImgIndex
	{
		get
		{
			return (int)GetValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasOpenImgIndex => HasValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty);

	[Localizable(true)]
	[Category("Images")]
	[Description("Indicates the imageindex in the StateImageList where the node is not expanded.")]
	public int ClosedImgIndex
	{
		get
		{
			return (int)GetValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasClosedImgIndex => HasValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty);

	[Category("Appearance")]
	[Description("Indicates if the node`s controls will be themed.")]
	public bool ThemesEnabled
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasThemesEnabled => HasValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty);

	[Localizable(true)]
	[Category("Sorting")]
	[Description("Indicates the sort type of the node.")]
	public TreeNodeAdvSortType SortType
	{
		get
		{
			return (TreeNodeAdvSortType)GetValue(TreeNodeAdvStyleInfoStore.SortTypeProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.SortTypeProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasSortType => HasValue(TreeNodeAdvStyleInfoStore.SortTypeProperty);

	[Description("Indicates the sort order of the node.")]
	[Category("Sorting")]
	[Localizable(true)]
	public SortOrder SortOrder
	{
		get
		{
			return (SortOrder)GetValue(TreeNodeAdvStyleInfoStore.SortOrderProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.SortOrderProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasSortOrder => HasValue(TreeNodeAdvStyleInfoStore.SortOrderProperty);

	[Description("Indicates the culture of the node used while sorting.")]
	[Localizable(true)]
	[Category("Sorting")]
	public CultureInfo Culture
	{
		get
		{
			return (CultureInfo)GetValue(TreeNodeAdvStyleInfoStore.CultureProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.CultureProperty, value);
		}
	}

	[Description("Indicates the IComparer object that compares two nodes.")]
	[Category("Sorting")]
	public IComparer Comparer
	{
		get
		{
			return (IComparer)GetValue(TreeNodeAdvStyleInfoStore.ComparerProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ComparerProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasComparer => HasValue(TreeNodeAdvStyleInfoStore.ComparerProperty);

	[Description("Indicates the compare options used in the sorting of the node.")]
	[Category("Sorting")]
	[Localizable(true)]
	public CompareOptions CompareOptions
	{
		get
		{
			return (CompareOptions)GetValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasCompareOptions => HasValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty);

	[Description("Specifies if the node is enabled.")]
	[Localizable(true)]
	[Category("Appearance")]
	public bool Enabled
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.EnabledProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.EnabledProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasEnabled => HasValue(TreeNodeAdvStyleInfoStore.EnabledProperty);

	[Category("Appearance")]
	[Description("Specifies if the buttons in the node are enabled.")]
	[Localizable(true)]
	public bool EnabledButtons
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.EnabledButtonsProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.EnabledButtonsProperty, value);
		}
	}

	[Category("Behavior")]
	[Description("Specifies if atleast one child of the parent node should be Optioned at all times.")]
	[DefaultValue(true)]
	public bool EnsureDefaultOptionedChild
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasEnsureDefaultOptinedChild => HasValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty);

	[Category("Appearance")]
	[Description("Indicates the checkState of the node.")]
	public CheckState CheckState
	{
		get
		{
			return (CheckState)GetValue(TreeNodeAdvStyleInfoStore.CheckStateProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.CheckStateProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasCheckState => HasValue(TreeNodeAdvStyleInfoStore.CheckStateProperty);

	[Localizable(true)]
	[DefaultValue(null)]
	[Category("Images")]
	[Description("Image that will be drawn on the left of the node`s text.")]
	public Image LeftImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvStyleInfoStore.LeftImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.LeftImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImage => HasValue(TreeNodeAdvStyleInfoStore.LeftImageProperty);

	[Description("Image that will be drawn on the right of the node`s text.")]
	[DefaultValue(null)]
	[Localizable(true)]
	[Category("Images")]
	public Image RightImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvStyleInfoStore.RightImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.RightImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImage => HasValue(TreeNodeAdvStyleInfoStore.RightImageProperty);

	[DefaultValue(null)]
	[Description("Gets or sets the image that will be shown where the node is expanded.")]
	[Category("Images")]
	[Localizable(true)]
	public Image OpenImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvStyleInfoStore.OpenImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.OpenImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasOpenImage => HasValue(TreeNodeAdvStyleInfoStore.OpenImageProperty);

	[Description("Gets or sets the image that will be shown where the node is collapsed.")]
	[Category("Images")]
	[Localizable(true)]
	[DefaultValue(null)]
	public Image ClosedImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvStyleInfoStore.ClosedImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ClosedImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasClosedImage => HasValue(TreeNodeAdvStyleInfoStore.ClosedImageProperty);

	[Category("Images")]
	[Description("Gets or sets the image that will be shown where the node has no children.")]
	[DefaultValue(null)]
	[Localizable(true)]
	public Image NoChildrenImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvStyleInfoStore.NoChildrenImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.NoChildrenImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasNoChildrenImage => HasValue(TreeNodeAdvStyleInfoStore.NoChildrenImageProperty);

	[DefaultValue(null)]
	[Description("Gets or sets the image for state button where the node is expanded.")]
	[Category("Images")]
	[Localizable(true)]
	public Image ExpandedImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvStyleInfoStore.ExpandedImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.ExpandedImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasExpandedImage => HasValue(TreeNodeAdvStyleInfoStore.ExpandedImageProperty);

	[Category("Images")]
	[Localizable(true)]
	[DefaultValue(null)]
	[Description("Gets or sets the image for state button where the node is collapsed.")]
	public Image CollapsedImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvStyleInfoStore.CollapsedImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.CollapsedImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasCollapsedImage => HasValue(TreeNodeAdvStyleInfoStore.CollapsedImageProperty);

	[Localizable(true)]
	[DefaultValue(0)]
	[Category("Images")]
	[Description("Gets or sets the padding of left image for the node.")]
	public int LeftImagePadding
	{
		get
		{
			if (!HasLeftImagePadding)
			{
				return 0;
			}
			return (int)GetValue(TreeNodeAdvStyleInfoStore.LeftImagePaddingProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.LeftImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImagePadding => HasValue(TreeNodeAdvStyleInfoStore.LeftImagePaddingProperty);

	[Localizable(true)]
	[DefaultValue(0)]
	[Description("Gets or sets the padding of right image for the node.")]
	[Category("Images")]
	public int RightImagePadding
	{
		get
		{
			if (!HasRightImagePadding)
			{
				return 0;
			}
			return (int)GetValue(TreeNodeAdvStyleInfoStore.RightImagePaddingProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.RightImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImagePadding => HasValue(TreeNodeAdvStyleInfoStore.RightImagePaddingProperty);

	[Description("Gets or sets the left side padding of state image for the node.")]
	[Category("Images")]
	[Localizable(true)]
	[DefaultValue(0)]
	public int LeftStateImagePadding
	{
		get
		{
			if (!HasLeftStateImagePadding)
			{
				return 0;
			}
			return (int)GetValue(TreeNodeAdvStyleInfoStore.LeftStateImagePaddingProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.LeftStateImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftStateImagePadding => HasValue(TreeNodeAdvStyleInfoStore.LeftStateImagePaddingProperty);

	[DefaultValue(0)]
	[Localizable(true)]
	[Category("Images")]
	[Description("Gets or sets the right side padding of state image for the node.")]
	public int RightStateImagePadding
	{
		get
		{
			if (!HasRightStateImagePadding)
			{
				return 0;
			}
			return (int)GetValue(TreeNodeAdvStyleInfoStore.RightStateImagePaddingProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.RightStateImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightStateImagePadding => HasValue(TreeNodeAdvStyleInfoStore.RightStateImagePaddingProperty);

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Gets or sets  a value indicating whether multiline text or single line.")]
	public bool Multiline
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvStyleInfoStore.MultilineProperty);
		}
		set
		{
			SetValue(TreeNodeAdvStyleInfoStore.MultilineProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasMultiline => HasValue(TreeNodeAdvStyleInfoStore.MultilineProperty);

	[DebuggerStepThrough]
	public TreeNodeAdvStyleInfo()
		: base(new TreeNodeAdvStyleInfoStore())
	{
	}

	[DebuggerStepThrough]
	public TreeNodeAdvStyleInfo(TreeNodeAdvStyleInfo style)
		: base(style.Store)
	{
	}

	[DebuggerStepThrough]
	public TreeNodeAdvStyleInfo(TreeNodeAdvStyleInfoStore store)
		: base(store)
	{
	}

	[DebuggerStepThrough]
	public TreeNodeAdvStyleInfo(StyleInfoIdentityBase identity)
		: base(identity, new TreeNodeAdvStyleInfoStore())
	{
	}

	[DebuggerStepThrough]
	public TreeNodeAdvStyleInfo(StyleInfoIdentityBase identity, TreeNodeAdvStyleInfoStore store)
		: base(identity, store)
	{
	}

	public TreeNodeAdv GetNode()
	{
		return (base.Identity is TreeNodeAdvStyleInfoIdentity treeNodeAdvStyleInfoIdentity) ? treeNodeAdvStyleInfoIdentity.TreeNode : null;
	}

	[DebuggerStepThrough]
	public override StyleInfoSubObjectIdentity CreateSubObjectIdentity(StyleInfoProperty sip)
	{
		throw new NotSupportedException();
	}

	protected override void OnStyleChanged(StyleInfoProperty sip)
	{
		base.OnStyleChanged(sip);
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	public void ResetFont()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.FontProperty);
	}

	public bool ShouldSerializeFont()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.FontProperty);
	}

	public void ResetTextColor()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.TextColorProperty);
	}

	public bool ShouldSerializeTextColor()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.TextColorProperty);
	}

	public void ResetBaseStyle()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.BaseStyleProperty);
	}

	public bool ShouldSerializeBaseStyle()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.BaseStyleProperty);
	}

	public void ResetBackground()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.BackgroundProperty);
	}

	public bool ShouldSerializeBackground()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.BackgroundProperty);
	}

	public void ResetText()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.TextProperty);
	}

	public bool ShouldSerializeText()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.TextProperty);
	}

	public void ResetHelpText()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.HelpTextProperty);
	}

	public bool ShouldSerializeHelpText()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.HelpTextProperty);
	}

	public void ResetDisplayMember()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.DisplayMemberProperty);
	}

	public bool ShouldSerializeDisplayMember()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.DisplayMemberProperty);
	}

	public void ResetHeight()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.HeightProperty);
	}

	public bool ShouldSerializeHeight()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.HeightProperty);
	}

	public void ResetShowCheckBox()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty);
	}

	public bool ShouldSerializeShowCheckBox()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty);
	}

	public void ResetInteractiveCheckBox()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty);
	}

	public bool ShouldSerializeInteractiveCheckBox()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty);
	}

	public void ResetTag()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.TagProperty);
	}

	public bool ShouldSerializeTag()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.TagProperty);
	}

	public void ResetShowPlusMinus()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty);
	}

	public bool ShouldSerializeShowPlusMinus()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty);
	}

	public void ResetShowOptionButton()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty);
	}

	public bool ShouldSerializeShowOptionButton()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty);
	}

	public void ResetLeftImageIndices()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty);
	}

	public bool ShouldSerializeLeftImageIndices()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty);
	}

	public void ResetRightImageIndices()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty);
	}

	public bool ShouldSerializeRightImageIndices()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty);
	}

	public void ResetNoChildrenImgIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty);
	}

	public bool ShouldSerializeNoChildrenImgIndex()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty);
	}

	public void ResetExpandImageIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ExpandImageIndexProperty);
	}

	public bool ShouldSerializeExpandImageIndex()
	{
		return HasExpandImageIndex;
	}

	public void ResetCollapseImageIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CollapseImageIndexProperty);
	}

	public bool ShouldSerializeCollapseImageIndex()
	{
		return HasCollapseImageIndex;
	}

	public void ResetOpenImgIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty);
	}

	public bool ShouldSerializeOpenImgIndex()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty);
	}

	public void ResetClosedImgIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty);
	}

	public bool ShouldSerializeClosedImgIndex()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty);
	}

	public void ResetThemesEnabled()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty);
	}

	public bool ShouldSerializeThemesEnabled()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty);
	}

	public void ResetSortType()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.SortTypeProperty);
	}

	public bool ShouldSerializeSortType()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.SortTypeProperty);
	}

	public void ResetSortOrder()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.SortOrderProperty);
	}

	public bool ShouldSerializeSortOrder()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.SortOrderProperty);
	}

	public void ResetCulture()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CultureProperty);
	}

	public bool ShouldSerializeCulture()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.CultureProperty);
	}

	public void ResetComparer()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ComparerProperty);
	}

	public bool ShouldSerializeComparer()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ComparerProperty);
	}

	public void ResetCompareOptions()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty);
	}

	public bool ShouldSerializeCompareOptions()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty);
	}

	public void ResetEnabled()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.EnabledProperty);
	}

	public bool ShouldSerializeEnabled()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.EnabledProperty);
	}

	public void ResetEnabledButtons()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.EnabledButtonsProperty);
	}

	public bool ShouldSerializeEnabledButtons()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.EnabledButtonsProperty);
	}

	public void ResetEnsureDefaultOptinedChild()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty);
	}

	public bool ShouldSerializeEnsureDefaultOptinedChild()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty);
	}

	public void ResetCheckState()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CheckStateProperty);
	}

	public bool ShouldSerializeCheckState()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.CheckStateProperty);
	}

	public void ResetLeftImage()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.LeftImageProperty);
	}

	public bool ShouldSerializeLeftImage()
	{
		return HasLeftImage;
	}

	public void ResetRightImage()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.RightImageProperty);
	}

	public bool ShouldSerializeRightImage()
	{
		return HasRightImage;
	}

	public void ResetOpenImage()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.OpenImageProperty);
	}

	public bool ShouldSerializeOpenImage()
	{
		return HasOpenImage;
	}

	public void ResetClosedImage()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ClosedImageProperty);
	}

	public bool ShouldSerializeClosedImage()
	{
		return HasClosedImage;
	}

	public void ResetNoChildrenImage()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.NoChildrenImageProperty);
	}

	public bool ShouldSerializeNoChildrenImage()
	{
		return HasNoChildrenImage;
	}

	public void ResetExpandedImage()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ExpandedImageProperty);
	}

	public bool ShouldSerializeExpandedImage()
	{
		return HasExpandedImage;
	}

	public void ResetCollapsedImage()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CollapsedImageProperty);
	}

	public bool ShouldSerializeCollapsedImage()
	{
		return HasCollapsedImage;
	}

	public void ResetLeftImagePadding()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.LeftImagePaddingProperty);
	}

	public bool ShouldSerializeLeftImagePadding()
	{
		return HasLeftImagePadding;
	}

	public void ResetRightImagePadding()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.RightImagePaddingProperty);
	}

	public bool ShouldSerializeRightImagePadding()
	{
		return HasRightImagePadding;
	}

	public void ResetLeftStateImagePadding()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.LeftStateImagePaddingProperty);
	}

	public bool ShouldSerializeLeftStateImagePadding()
	{
		return HasLeftStateImagePadding;
	}

	public void ResetRightStateImagePadding()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.RightStateImagePaddingProperty);
	}

	public bool ShouldSerializeRightStateImagePadding()
	{
		return HasRightStateImagePadding;
	}

	public void ResetMultiline()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.MultilineProperty);
	}

	internal bool ShouldSerializeMultiline()
	{
		return HasMultiline;
	}
}
