using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(TreeNodeAdvStyleInfoConverter))]
public class TreeNodeAdvStyleInfo : StyleInfoBase
{
	private static TreeNodeAdvStyleInfo defaultStyle;

	public static readonly TreeNodeAdvStyleInfo Empty;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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
				defaultStyle.Text = "";
				defaultStyle.HelpText = "";
				defaultStyle.DisplayMember = "";
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
			}
			return defaultStyle;
		}
	}

	[Description("The font of the node.")]
	[Category("Appearance")]
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

	public bool HasEnabled => HasValue(TreeNodeAdvStyleInfoStore.EnabledProperty);

	public bool HasEnsureDefaultOptinedChild => HasValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty);

	public virtual bool HasFont => HasValue(TreeNodeAdvStyleInfoStore.FontProperty);

	public virtual bool HasHeight => HasValue(TreeNodeAdvStyleInfoStore.HeightProperty);

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

	public virtual bool HasTextColor => HasValue(TreeNodeAdvStyleInfoStore.TextColorProperty);

	public bool HasBackground => HasValue(TreeNodeAdvStyleInfoStore.BackgroundProperty);

	public bool HasShowCheckBox => HasValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty);

	public bool HasShowOptionButton => HasValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty);

	public bool HasShowPlusMinus => HasValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty);

	[Description("The base style for the node")]
	[Category("Appearance - Inherited")]
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

	[Description("The text of the node.")]
	[Localizable(true)]
	[Category("Appearance")]
	[Browsable(false)]
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

	[Localizable(true)]
	[Category("Appearance")]
	[Description("The help text of the node.")]
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

	[Category("Appearance")]
	[Description("Indicates the color of check symbol.")]
	[DefaultValue(typeof(Color), "ControlText")]
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

	[DefaultValue(typeof(Color), "ControlDark")]
	[Description("Indicates the color of intermediate check symbol.")]
	[Category("Appearance")]
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

	[Description("Indicates if the checkbox of the node is visible.")]
	[Category("Appearance")]
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

	[Category("Behavior")]
	[Description("Indicates if the node will have an interactive checkbox.")]
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

	[Description("The tag of the node. Can be used to store aditional information for the node.")]
	[Browsable(false)]
	[Category("Data")]
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

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "White")]
	[Description("Indicates the color of option button.")]
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

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "Black")]
	[Description("Indicates the color of Selected option button.")]
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

	[Description("Indicates if the optionbutton of the node is visible.")]
	[Category("Appearance")]
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

	[Localizable(true)]
	[Description("The imageindex to be drawn on the left of the node`s text.")]
	[Category("Appearance")]
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

	public bool HasLeftImageIndices => HasValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty);

	[Description("The imageindex to be drawn on the right of the node`s text.")]
	[Category("Appearance")]
	[Localizable(true)]
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

	public bool HasRightImageIndices => HasValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty);

	public bool HasNoChildrenImgIndex => HasValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty);

	public bool HasClosedImgIndex => HasValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty);

	public bool HasCheckState => HasValue(TreeNodeAdvStyleInfoStore.CheckStateProperty);

	public bool HasOpenImgIndex => HasValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty);

	public bool HasThemesEnabled => HasValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty);

	public bool HasInteractiveCheckBox => HasValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty);

	public bool HasSortType => HasValue(TreeNodeAdvStyleInfoStore.SortTypeProperty);

	public bool HasSortOrder => HasValue(TreeNodeAdvStyleInfoStore.SortOrderProperty);

	[Localizable(true)]
	[Description("The imageindex indicating the image in the StateImageList where the node has no children.")]
	[Category("Appearance")]
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

	[Description("Indicates the imageindex in the StateImageList where the node is expanded.")]
	[Localizable(true)]
	[Category("Appearance")]
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

	[Category("Appearance")]
	[Description("Indicates the imageindex in the StateImageList where the node is not expanded.")]
	[Localizable(true)]
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

	[Description("Indicates if the node`s controls will be themed.")]
	[Category("Appearance")]
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

	[Localizable(true)]
	[Description("Indicates the sort type of the node.")]
	[Category("Sorting")]
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

	[Localizable(true)]
	[Description("Indicates the sort order of the node.")]
	[Category("Sorting")]
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

	[Description("Indicates the culture of the node used while sorting.")]
	[Category("Sorting")]
	[Localizable(true)]
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

	[Category("Sorting")]
	[Description("Indicates the IComparer object that compares two nodes.")]
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

	public bool HasComparer => HasValue(TreeNodeAdvStyleInfoStore.ComparerProperty);

	public bool HasCompareOptions => HasValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty);

	[Localizable(true)]
	[Description("Indicates the compare options used in the sorting of the node.")]
	[Category("Sorting")]
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

	[Localizable(true)]
	[Description("Specifies if the buttons in the node are enabled.")]
	[Category("Appearance")]
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

	[Description("Specifies if atleast one child of the parent node should be Optioned at all times.")]
	[Category("Behavior")]
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

	static TreeNodeAdvStyleInfo()
	{
		defaultStyle = null;
		Empty = new TreeNodeAdvStyleInfo();
	}

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

	internal bool ShouldSerializeFont()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.FontProperty);
	}

	public void ResetTextColor()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.TextColorProperty);
	}

	internal bool ShouldSerializeTextColor()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.TextColorProperty);
	}

	public void ResetBaseStyle()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.BaseStyleProperty);
	}

	internal bool ShouldSerializeBaseStyle()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.BaseStyleProperty);
	}

	public void ResetBackground()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.BackgroundProperty);
	}

	internal bool ShouldSerializeBackground()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.BackgroundProperty);
	}

	public void ResetText()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.TextProperty);
	}

	internal bool ShouldSerializeText()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.TextProperty);
	}

	public void ResetHelpText()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.HelpTextProperty);
	}

	internal bool ShouldSerializeHelpText()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.HelpTextProperty);
	}

	public void ResetDisplayMember()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.DisplayMemberProperty);
	}

	internal bool ShouldSerializeDisplayMember()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.DisplayMemberProperty);
	}

	public void ResetHeight()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.HeightProperty);
	}

	internal bool ShouldSerializeHeight()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.HeightProperty);
	}

	public void ResetShowCheckBox()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty);
	}

	internal bool ShouldSerializeShowCheckBox()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ShowCheckBoxProperty);
	}

	public void ResetInteractiveCheckBox()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty);
	}

	internal bool ShouldSerializeInteractiveCheckBox()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.InteractiveCheckBoxProperty);
	}

	public void ResetTag()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.TagProperty);
	}

	internal bool ShouldSerializeTag()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.TagProperty);
	}

	public void ResetShowPlusMinus()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty);
	}

	internal bool ShouldSerializeShowPlusMinus()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ShowPlusMinusProperty);
	}

	public void ResetShowOptionButton()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty);
	}

	internal bool ShouldSerializeShowOptionButton()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ShowOptionButtonProperty);
	}

	public void ResetLeftImageIndices()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty);
	}

	internal bool ShouldSerializeLeftImageIndices()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.LeftImageIndicesProperty);
	}

	public void ResetRightImageIndices()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty);
	}

	internal bool ShouldSerializeRightImageIndices()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.RightImageIndicesProperty);
	}

	public void ResetNoChildrenImgIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty);
	}

	internal bool ShouldSerializeNoChildrenImgIndex()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.NoChildrenImgIndexProperty);
	}

	public void ResetOpenImgIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty);
	}

	internal bool ShouldSerializeOpenImgIndex()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.OpenImgIndexProperty);
	}

	public void ResetClosedImgIndex()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty);
	}

	internal bool ShouldSerializeClosedImgIndex()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ClosedImgIndexProperty);
	}

	public void ResetThemesEnabled()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty);
	}

	internal bool ShouldSerializeThemesEnabled()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ThemesEnabledProperty);
	}

	public void ResetSortType()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.SortTypeProperty);
	}

	internal bool ShouldSerializeSortType()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.SortTypeProperty);
	}

	public void ResetSortOrder()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.SortOrderProperty);
	}

	internal bool ShouldSerializeSortOrder()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.SortOrderProperty);
	}

	public void ResetCulture()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CultureProperty);
	}

	internal bool ShouldSerializeCulture()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.CultureProperty);
	}

	public void ResetComparer()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.ComparerProperty);
	}

	internal bool ShouldSerializeComparer()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.ComparerProperty);
	}

	public void ResetCompareOptions()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty);
	}

	internal bool ShouldSerializeCompareOptions()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.CompareOptionsProperty);
	}

	public void ResetEnabled()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.EnabledProperty);
	}

	internal bool ShouldSerializeEnabled()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.EnabledProperty);
	}

	public void ResetEnabledButtons()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.EnabledButtonsProperty);
	}

	internal bool ShouldSerializeEnabledButtons()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.EnabledButtonsProperty);
	}

	public void ResetEnsureDefaultOptinedChild()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty);
	}

	internal bool ShouldSerializeEnsureDefaultOptinedChild()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.EnsureDefaultOptionedChildProperty);
	}

	public void ResetCheckState()
	{
		ResetValue(TreeNodeAdvStyleInfoStore.CheckStateProperty);
	}

	internal bool ShouldSerializeCheckState()
	{
		return HasValue(TreeNodeAdvStyleInfoStore.CheckStateProperty);
	}
}
