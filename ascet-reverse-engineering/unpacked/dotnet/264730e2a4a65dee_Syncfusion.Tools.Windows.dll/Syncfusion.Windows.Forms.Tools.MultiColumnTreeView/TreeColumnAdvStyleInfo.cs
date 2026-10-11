using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[TypeConverter(typeof(TreeColumnAdvStyleInfoConverter))]
public class TreeColumnAdvStyleInfo : StyleInfoBase
{
	private static readonly TreeColumnAdvStyleInfo s_empty = new TreeColumnAdvStyleInfo();

	private static TreeColumnAdvStyleInfo s_default;

	public static TreeColumnAdvStyleInfo Empty => s_empty;

	[Description("Gets or sets a value indicating whether column visible to user or not.")]
	[Category("Behavior")]
	[Browsable(false)]
	public bool Visible
	{
		get
		{
			return (bool)GetValue(TreeColumnAdvStyleInfoStore.VisibleProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.VisibleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasVisible => HasValue(TreeColumnAdvStyleInfoStore.VisibleProperty);

	[Category("Appearance")]
	[Description("Gets or sets the width of the column ")]
	public int Width
	{
		get
		{
			return (int)GetValue(TreeColumnAdvStyleInfoStore.WidthProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.WidthProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasWidth => HasValue(TreeColumnAdvStyleInfoStore.WidthProperty);

	[Description("Gets / sets the font of the column")]
	[Category("Appearance")]
	public Font Font
	{
		get
		{
			return (Font)GetValue(TreeColumnAdvStyleInfoStore.FontProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.FontProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasFont => HasValue(TreeColumnAdvStyleInfoStore.FontProperty);

	[Category("Appearance")]
	[Browsable(false)]
	[Description("Gets / sets the text of the column")]
	public string Text
	{
		get
		{
			return (string)GetValue(TreeColumnAdvStyleInfoStore.TextProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.TextProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasText => HasValue(TreeColumnAdvStyleInfoStore.TextProperty);

	[Description("Gets / sets the color of the column text")]
	[Category("Appearance")]
	public Color TextColor
	{
		get
		{
			return (Color)GetValue(TreeColumnAdvStyleInfoStore.TextColorProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.TextColorProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasTextColor => HasValue(TreeColumnAdvStyleInfoStore.TextColorProperty);

	[Description("Gets / sets the Background style of column.")]
	[Category("Appearance")]
	public BrushInfo Background
	{
		get
		{
			return (BrushInfo)GetValue(TreeColumnAdvStyleInfoStore.BackgroundProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.BackgroundProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBackground => HasValue(TreeColumnAdvStyleInfoStore.BackgroundProperty);

	[Browsable(false)]
	[Description("Gets / sets the help text of the column")]
	[Category("Appearance")]
	public string HelpText
	{
		get
		{
			return (string)GetValue(TreeColumnAdvStyleInfoStore.HelpTextProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.HelpTextProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasHelpText => HasValue(TreeColumnAdvStyleInfoStore.HelpTextProperty);

	[Description("Indicates the sort order of the column")]
	[Category("Behavior")]
	[Browsable(false)]
	public SortOrder SortOrder
	{
		get
		{
			return (SortOrder)GetValue(TreeColumnAdvStyleInfoStore.SortOrderProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.SortOrderProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasSortOrder => HasValue(TreeColumnAdvStyleInfoStore.SortOrderProperty);

	[Description("Indicates the IComparer object that compares two columns.")]
	[Category("Behavior")]
	[Browsable(false)]
	public IComparer Comparer
	{
		get
		{
			return (IComparer)GetValue(TreeColumnAdvStyleInfoStore.ComparerProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.ComparerProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasComparer => HasValue(TreeColumnAdvStyleInfoStore.ComparerProperty);

	[Category("Data")]
	[Description("The tag of the column. Can be used to store aditional information for the column.")]
	[Browsable(false)]
	public object Tag
	{
		get
		{
			return GetValue(TreeColumnAdvStyleInfoStore.TagProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.TagProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasTag => HasValue(TreeColumnAdvStyleInfoStore.TagProperty);

	[Description("Gets / sets the image that will be drawn on the left of the column`s text.")]
	[Category("Images")]
	public Image LeftImage
	{
		get
		{
			return (Image)GetValue(TreeColumnAdvStyleInfoStore.LeftImageProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.LeftImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImage => HasValue(TreeColumnAdvStyleInfoStore.LeftImageProperty);

	[Description("Gets / sets the image index to be drawn on the left of the column`s text.")]
	[Category("Images")]
	public int[] LeftImageIndices
	{
		get
		{
			return (int[])GetValue(TreeColumnAdvStyleInfoStore.LeftImageIndicesProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.LeftImageIndicesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImageIndices => HasValue(TreeColumnAdvStyleInfoStore.LeftImageIndicesProperty);

	[Description("Gets / sets the padding of left image for the column.")]
	[Category("Images")]
	public int LeftImagePadding
	{
		get
		{
			return (int)GetValue(TreeColumnAdvStyleInfoStore.LeftImagePaddingProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.LeftImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImagePadding => HasValue(TreeColumnAdvStyleInfoStore.LeftImagePaddingProperty);

	[Description("Gets / sets image that will be drawn on the right of the column`s text. ")]
	[Category("Images")]
	public Image RightImage
	{
		get
		{
			return (Image)GetValue(TreeColumnAdvStyleInfoStore.RightImageProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.RightImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImage => HasValue(TreeColumnAdvStyleInfoStore.RightImageProperty);

	[Description("Gets / sets the image index to be drawn on the right of the column`s text.")]
	[Category("Images")]
	public int[] RightImageIndices
	{
		get
		{
			return (int[])GetValue(TreeColumnAdvStyleInfoStore.RightImageIndicesProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.RightImageIndicesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImageIndices => HasValue(TreeColumnAdvStyleInfoStore.RightImageIndicesProperty);

	[Description("Gets / sets the padding of tight image for the column.")]
	[Category("Images")]
	public int RightImagePadding
	{
		get
		{
			return (int)GetValue(TreeColumnAdvStyleInfoStore.RightImagePaddingProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.RightImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImagePadding => HasValue(TreeColumnAdvStyleInfoStore.RightImagePaddingProperty);

	[Category("Borders")]
	[Description("Gets / sets the sides of a rectangle to apply a three-dimensional border to.")]
	public Border3DSide BorderSides
	{
		get
		{
			return (Border3DSide)GetValue(TreeColumnAdvStyleInfoStore.BorderSidesProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.BorderSidesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorderSides => HasValue(TreeColumnAdvStyleInfoStore.BorderSidesProperty);

	[Category("Borders")]
	[Description("Gets / sets the border style for the column.")]
	public BorderStyle BorderStyle
	{
		get
		{
			return (BorderStyle)GetValue(TreeColumnAdvStyleInfoStore.BorderStyleProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.BorderStyleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorderStyle => HasValue(TreeColumnAdvStyleInfoStore.BorderStyleProperty);

	[Description("Gets / sets the border 3dStyle for the column.")]
	[Category("Borders")]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return (Border3DStyle)GetValue(TreeColumnAdvStyleInfoStore.Border3DStyleProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.Border3DStyleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorder3DStyle => HasValue(TreeColumnAdvStyleInfoStore.Border3DStyleProperty);

	[Category("Borders")]
	[Description("Gets / sets the border color for the column.")]
	public Color BorderColor
	{
		get
		{
			return (Color)GetValue(TreeColumnAdvStyleInfoStore.BorderColorProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.BorderColorProperty, value);
		}
	}

	[Description("Gets / sets the highlight border color for the column.")]
	[Category("Borders")]
	public Color HighlightBorderColor
	{
		get
		{
			return (Color)GetValue(TreeColumnAdvStyleInfoStore.HighlightBorderColorProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.HighlightBorderColorProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasHighlightBorderColor => HasValue(TreeColumnAdvStyleInfoStore.HighlightBorderColorProperty);

	[Browsable(false)]
	public bool HasBorderColor => HasValue(TreeColumnAdvStyleInfoStore.BorderColorProperty);

	[Category("Borders")]
	[Description("Gets / sets the border style for the column.")]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return (ButtonBorderStyle)GetValue(TreeColumnAdvStyleInfoStore.BorderSingleProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.BorderSingleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorderSingle => HasValue(TreeColumnAdvStyleInfoStore.BorderSingleProperty);

	[Description("Gets / sets the background for column area reserved by control.")]
	[Category("Appearance")]
	public BrushInfo AreaBackground
	{
		get
		{
			return (BrushInfo)GetValue(TreeColumnAdvStyleInfoStore.AreaBackgroundProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.AreaBackgroundProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasAreaBackground => HasValue(TreeColumnAdvStyleInfoStore.AreaBackgroundProperty);

	[Category("Appearance - Inherited")]
	[Editor(typeof(BaseStyleSelectorUITypeEditor), typeof(UITypeEditor))]
	[Description("The base style for the subitem.")]
	[Browsable(false)]
	public string BaseStyle
	{
		get
		{
			return (string)GetValue(TreeColumnAdvStyleInfoStore.BaseStyleProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.BaseStyleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBaseStyle => HasValue(TreeColumnAdvStyleInfoStore.BaseStyleProperty);

	[Category("Appearance")]
	[DefaultValue(StringAlignment.Center)]
	[Description("Gets / sets the vertical alignment of text.")]
	[Localizable(true)]
	public StringAlignment VerticalAlignment
	{
		get
		{
			return (StringAlignment)GetValue(TreeColumnAdvStyleInfoStore.VerticalAlignmentProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.VerticalAlignmentProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasVerticalAlignment => HasValue(TreeColumnAdvStyleInfoStore.VerticalAlignmentProperty);

	[Localizable(true)]
	[Description("Gets / sets the horizontal text alignment of text.")]
	[Category("Appearance")]
	[DefaultValue(StringAlignment.Center)]
	public StringAlignment HorizontalAlignment
	{
		get
		{
			return (StringAlignment)GetValue(TreeColumnAdvStyleInfoStore.HorizontalAlignmentProperty);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.HorizontalAlignmentProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasHorizontalAlignment => HasValue(TreeColumnAdvStyleInfoStore.HorizontalAlignmentProperty);

	[Localizable(true)]
	[Description("Gets / sets the column text drawing mode.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool AllowTextOverlap
	{
		get
		{
			return (bool)GetValue(TreeColumnAdvStyleInfoStore.AllowTextOverlap);
		}
		set
		{
			SetValue(TreeColumnAdvStyleInfoStore.AllowTextOverlap, value);
		}
	}

	[Browsable(false)]
	public bool HasAllowTextOverlap => HasValue(TreeColumnAdvStyleInfoStore.AllowTextOverlap);

	[DebuggerStepThrough]
	public TreeColumnAdvStyleInfo()
		: base(new TreeColumnAdvStyleInfoStore())
	{
	}

	[DebuggerStepThrough]
	public TreeColumnAdvStyleInfo(TreeColumnAdvStyleInfo style)
		: base(style.Store)
	{
	}

	[DebuggerStepThrough]
	public TreeColumnAdvStyleInfo(TreeColumnAdvStyleInfoStore store)
		: base(store)
	{
	}

	[DebuggerStepThrough]
	public TreeColumnAdvStyleInfo(StyleInfoIdentityBase identity)
		: base(identity, new TreeColumnAdvStyleInfoStore())
	{
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		if (s_default == null)
		{
			s_default = new TreeColumnAdvStyleInfo();
			s_default.Visible = true;
			s_default.Width = 60;
			s_default.Font = FontUtil.CreateFont("Verdana", 8f);
			s_default.Text = string.Empty;
			s_default.TextColor = SystemColors.WindowText;
			s_default.Background = new BrushInfo(Color.Transparent);
			s_default.AreaBackground = new BrushInfo(Color.Transparent);
			s_default.HelpText = string.Empty;
			s_default.SortOrder = SortOrder.None;
			s_default.Comparer = null;
			s_default.Tag = null;
			s_default.LeftImage = null;
			s_default.LeftImageIndices = new int[0];
			s_default.LeftImagePadding = 0;
			s_default.RightImage = null;
			s_default.RightImageIndices = new int[0];
			s_default.RightImagePadding = 0;
			s_default.Border3DStyle = Border3DStyle.Etched;
			s_default.BorderColor = SystemColors.ControlDark;
			s_default.HighlightBorderColor = SystemColors.Highlight;
			s_default.BorderSides = Border3DSide.All;
			s_default.BorderSingle = ButtonBorderStyle.None;
			s_default.BorderStyle = BorderStyle.Fixed3D;
			s_default.BaseStyle = string.Empty;
			s_default.HorizontalAlignment = StringAlignment.Center;
			s_default.VerticalAlignment = StringAlignment.Center;
			s_default.AllowTextOverlap = false;
		}
		return s_default;
	}

	public void ResetVisible()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.VisibleProperty);
	}

	internal bool ShouldSerializeVisible()
	{
		return HasVisible;
	}

	public void ResetWidth()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.WidthProperty);
	}

	internal bool ShouldSerializeWidth()
	{
		return HasWidth;
	}

	public void ResetFont()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.FontProperty);
	}

	internal bool ShouldSerializeFont()
	{
		return HasFont;
	}

	public void ResetText()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.TextProperty);
	}

	internal bool ShouldSerializeText()
	{
		return HasText;
	}

	public void ResetTextColor()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.TextColorProperty);
	}

	internal bool ShouldSerializeTextColor()
	{
		return HasTextColor;
	}

	public void ResetBackground()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.BackgroundProperty);
	}

	internal bool ShouldSerializeBackground()
	{
		return HasBackground;
	}

	public void ResetHelpText()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.HelpTextProperty);
	}

	internal bool ShouldSerializeHelpText()
	{
		return HasHelpText;
	}

	public void ResetSortOrder()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.SortOrderProperty);
	}

	internal bool ShouldSerializeSortOrder()
	{
		return HasSortOrder;
	}

	public void ResetComparer()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.ComparerProperty);
	}

	internal bool ShouldSerializeComparer()
	{
		return HasComparer;
	}

	public void ResetTag()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.TagProperty);
	}

	internal bool ShouldSerializeTag()
	{
		return HasTag;
	}

	public void ResetLeftImage()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.LeftImageProperty);
	}

	internal bool ShouldSerializeLeftImage()
	{
		return HasLeftImage;
	}

	public void ResetLeftImageIndices()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.LeftImageIndicesProperty);
	}

	internal bool ShouldSerializeLeftImageIndices()
	{
		return HasLeftImageIndices;
	}

	public void ResetLeftImagePadding()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.LeftImagePaddingProperty);
	}

	internal bool ShouldSerializeLeftImagePadding()
	{
		return HasLeftImagePadding;
	}

	public void ResetRightImage()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.RightImageProperty);
	}

	internal bool ShouldSerializeRightImage()
	{
		return HasRightImage;
	}

	public void ResetRightImageIndices()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.RightImageIndicesProperty);
	}

	internal bool ShouldSerializeRightImageIndices()
	{
		return HasRightImageIndices;
	}

	public void ResetRightImagePadding()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.RightImagePaddingProperty);
	}

	internal bool ShouldSerializeRightImagePadding()
	{
		return HasRightImagePadding;
	}

	public void ResetBorderSides()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.BorderSidesProperty);
	}

	internal bool ShouldSerializeBorderSides()
	{
		return HasBorderSides;
	}

	public void ResetBorderStyle()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.BorderStyleProperty);
	}

	internal bool ShouldSerializeBorderStyle()
	{
		return HasBorderStyle;
	}

	public void ResetBorder3DStyle()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.Border3DStyleProperty);
	}

	internal bool ShouldSerializeBorder3DStyle()
	{
		return HasBorder3DStyle;
	}

	public void ResetBorderColor()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.BorderColorProperty);
	}

	public void ResetHighlightBorderColor()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.HighlightBorderColorProperty);
	}

	internal bool ShouldSerializeHighlightBorderColor()
	{
		return HasHighlightBorderColor;
	}

	internal bool ShouldSerializeBorderColor()
	{
		return HasBorderColor;
	}

	public void ResetBorderSingle()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.BorderSingleProperty);
	}

	internal bool ShouldSerializeBorderSingle()
	{
		return HasBorderSingle;
	}

	public void ResetAreaBackground()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.AreaBackgroundProperty);
	}

	internal bool ShouldSerializeAreaBackground()
	{
		return HasAreaBackground;
	}

	public void ResetBaseStyle()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.BaseStyleProperty);
	}

	internal bool ShouldSerializeBaseStyle()
	{
		return HasBaseStyle;
	}

	public void ResetVerticalAlignment()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.VerticalAlignmentProperty);
	}

	internal bool ShouldSerializeVerticalAlignment()
	{
		return HasVerticalAlignment;
	}

	public void ResetHorizontalAlignment()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.HorizontalAlignmentProperty);
	}

	internal bool ShouldSerializeHorizontalAlignment()
	{
		return HasHorizontalAlignment;
	}

	public void ResetAllowTextOverlap()
	{
		ResetValue(TreeColumnAdvStyleInfoStore.AllowTextOverlap);
	}

	internal bool ShouldSerializeAllowTextOverlap()
	{
		return HasAllowTextOverlap;
	}
}
