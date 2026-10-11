using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[TypeConverter(typeof(TreeNodeAdvSubItemStyleInfoConverter))]
public class TreeNodeAdvSubItemStyleInfo : StyleInfoBase, ITreeNodeAdvSubItemStyle
{
	private static readonly TreeNodeAdvSubItemStyleInfo s_empty = new TreeNodeAdvSubItemStyleInfo();

	private static TreeNodeAdvSubItemStyleInfo s_default;

	public static TreeNodeAdvSubItemStyleInfo Empty => s_empty;

	[Description("The base style for the subitem")]
	[Browsable(false)]
	[Category("Appearance - Inherited")]
	[Editor(typeof(BaseStyleSelectorUITypeEditor), typeof(UITypeEditor))]
	public string BaseStyle
	{
		get
		{
			return (string)GetValue(TreeNodeAdvSubItemStyleInfoStore.BaseStyleProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.BaseStyleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBaseStyle => HasValue(TreeNodeAdvSubItemStyleInfoStore.BaseStyleProperty);

	[Browsable(false)]
	[Description("Gets / sets the is Node subitem visible or not.")]
	[Category("Appearance")]
	public bool Visible
	{
		get
		{
			return (bool)GetValue(TreeNodeAdvSubItemStyleInfoStore.VisibleProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.VisibleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasVisible => HasValue(TreeNodeAdvSubItemStyleInfoStore.VisibleProperty);

	[Description("Gets / sets the subitem text font.")]
	[Category("Appearance")]
	public Font Font
	{
		get
		{
			return (Font)GetValue(TreeNodeAdvSubItemStyleInfoStore.FontProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.FontProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasFont => HasValue(TreeNodeAdvSubItemStyleInfoStore.FontProperty);

	[Description("Gets / sets the line alignment of the text in subitem.")]
	[Category("Appearance")]
	public StringAlignment LineAlignment
	{
		get
		{
			return (StringAlignment)GetValue(TreeNodeAdvSubItemStyleInfoStore.LineAlignmentProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.LineAlignmentProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLineAlignment => HasValue(TreeNodeAdvSubItemStyleInfoStore.LineAlignmentProperty);

	[Description("Gets / sets the text alignment in subitem bounds.")]
	[Category("Appearance")]
	public StringAlignment Alignment
	{
		get
		{
			return (StringAlignment)GetValue(TreeNodeAdvSubItemStyleInfoStore.AlignmentProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.AlignmentProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasAlignment => HasValue(TreeNodeAdvSubItemStyleInfoStore.AlignmentProperty);

	[Browsable(false)]
	[Description("Gets / sets the subitem text.")]
	[Category("Appearance")]
	public string Text
	{
		get
		{
			return (string)GetValue(TreeNodeAdvSubItemStyleInfoStore.TextProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.TextProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasText => HasValue(TreeNodeAdvSubItemStyleInfoStore.TextProperty);

	[Description("Gets / sets the subitem text color.")]
	[Category("Appearance")]
	public Color TextColor
	{
		get
		{
			return (Color)GetValue(TreeNodeAdvSubItemStyleInfoStore.TextColorProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.TextColorProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasTextColor => HasValue(TreeNodeAdvSubItemStyleInfoStore.TextColorProperty);

	[Category("Appearance")]
	[Browsable(false)]
	[Description("Gets / sets the subitem help text.")]
	public string HelpText
	{
		get
		{
			return (string)GetValue(TreeNodeAdvSubItemStyleInfoStore.HelpTextProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.HelpTextProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasHelpText => HasValue(TreeNodeAdvSubItemStyleInfoStore.HelpTextProperty);

	[Browsable(false)]
	[Description("Gets / sets the subitem user data.")]
	[Category("Data")]
	public object Tag
	{
		get
		{
			return GetValue(TreeNodeAdvSubItemStyleInfoStore.TagProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.TagProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasTag => HasValue(TreeNodeAdvSubItemStyleInfoStore.TagProperty);

	[Description("Gets / sets the subitem left image.")]
	[Category("Images")]
	public Image LeftImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImage => HasValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageProperty);

	[Description("Gets / sets the subitem left side indices of images that stored in tree LeftImageList property.")]
	[Category("Images")]
	public int[] LeftImageIndices
	{
		get
		{
			return (int[])GetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageIndicesProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageIndicesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImageIndices => HasValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageIndicesProperty);

	[Description("Gets / sets the subitem padding between text and left images.")]
	[Category("Images")]
	public int LeftImagePadding
	{
		get
		{
			return (int)GetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImagePaddingProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasLeftImagePadding => HasValue(TreeNodeAdvSubItemStyleInfoStore.LeftImagePaddingProperty);

	[Category("Images")]
	[Description("Gets / sets the subitem image from right side of the text.")]
	public Image RightImage
	{
		get
		{
			return (Image)GetValue(TreeNodeAdvSubItemStyleInfoStore.RightImageProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.RightImageProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImage => HasValue(TreeNodeAdvSubItemStyleInfoStore.RightImageProperty);

	[Category("Images")]
	[Description("Gets / sets the subitem right side indices of images that stored in tree RightImageList property.")]
	public int[] RightImageIndices
	{
		get
		{
			return (int[])GetValue(TreeNodeAdvSubItemStyleInfoStore.RightImageIndicesProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.RightImageIndicesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImageIndices => HasValue(TreeNodeAdvSubItemStyleInfoStore.RightImageIndicesProperty);

	[Description("Gets / sets padding between text and right side images.")]
	[Category("Images")]
	public int RightImagePadding
	{
		get
		{
			return (int)GetValue(TreeNodeAdvSubItemStyleInfoStore.RightImagePaddingProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.RightImagePaddingProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasRightImagePadding => HasValue(TreeNodeAdvSubItemStyleInfoStore.RightImagePaddingProperty);

	[Category("Appearance")]
	[Description("Gets / sets the subitem background style.")]
	public BrushInfo Background
	{
		get
		{
			return (BrushInfo)GetValue(TreeNodeAdvSubItemStyleInfoStore.BackgroundProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.BackgroundProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBackground => HasValue(TreeNodeAdvSubItemStyleInfoStore.BackgroundProperty);

	[Description("Gets / sets the subitem border sides settings.")]
	[Category("Borders")]
	public Border3DSide BorderSides
	{
		get
		{
			return (Border3DSide)GetValue(TreeNodeAdvSubItemStyleInfoStore.BorderSidesProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.BorderSidesProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorderSides => HasValue(TreeNodeAdvSubItemStyleInfoStore.BorderSidesProperty);

	[Description("Gets / sets the subitem border style.")]
	[Category("Borders")]
	public BorderStyle BorderStyle
	{
		get
		{
			return (BorderStyle)GetValue(TreeNodeAdvSubItemStyleInfoStore.BorderStyleProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.BorderStyleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorderStyle => HasValue(TreeNodeAdvSubItemStyleInfoStore.BorderStyleProperty);

	[Description("Gets / sets the subitem border 3D style.")]
	[Category("Borders")]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return (Border3DStyle)GetValue(TreeNodeAdvSubItemStyleInfoStore.Border3DStyleProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.Border3DStyleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorder3DStyle => HasValue(TreeNodeAdvSubItemStyleInfoStore.Border3DStyleProperty);

	[Category("Borders")]
	[Description("Gets / sets the subitem border color.")]
	public Color BorderColor
	{
		get
		{
			return (Color)GetValue(TreeNodeAdvSubItemStyleInfoStore.BorderColorProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.BorderColorProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorderColor => HasValue(TreeNodeAdvSubItemStyleInfoStore.BorderColorProperty);

	[Description("Gets or sets the subitem single line border style.")]
	[Category("Borders")]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return (ButtonBorderStyle)GetValue(TreeNodeAdvSubItemStyleInfoStore.BorderSingleProperty);
		}
		set
		{
			SetValue(TreeNodeAdvSubItemStyleInfoStore.BorderSingleProperty, value);
		}
	}

	[Browsable(false)]
	public bool HasBorderSingle => HasValue(TreeNodeAdvSubItemStyleInfoStore.BorderSingleProperty);

	[DebuggerStepThrough]
	public TreeNodeAdvSubItemStyleInfo()
		: base(new TreeNodeAdvSubItemStyleInfoStore())
	{
	}

	[DebuggerStepThrough]
	public TreeNodeAdvSubItemStyleInfo(TreeNodeAdvSubItemStyleInfo style)
		: base(style.Store)
	{
	}

	[DebuggerStepThrough]
	public TreeNodeAdvSubItemStyleInfo(TreeNodeAdvSubItemStyleInfoStore store)
		: base(store)
	{
	}

	[DebuggerStepThrough]
	public TreeNodeAdvSubItemStyleInfo(StyleInfoIdentityBase identity)
		: base(identity, new TreeNodeAdvSubItemStyleInfoStore())
	{
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		if (s_default == null)
		{
			s_default = new TreeNodeAdvSubItemStyleInfo();
			s_default.Visible = true;
			s_default.Tag = null;
			s_default.BaseStyle = string.Empty;
			s_default.Font = FontUtil.CreateFont("Verdana", 8f);
			s_default.LineAlignment = StringAlignment.Center;
			s_default.Alignment = StringAlignment.Near;
			s_default.Text = string.Empty;
			s_default.HelpText = string.Empty;
			s_default.TextColor = SystemColors.WindowText;
			s_default.Background = new BrushInfo(Color.Transparent);
			s_default.LeftImage = null;
			s_default.LeftImageIndices = new int[0];
			s_default.LeftImagePadding = 0;
			s_default.RightImage = null;
			s_default.RightImageIndices = new int[0];
			s_default.RightImagePadding = 0;
			s_default.Border3DStyle = Border3DStyle.Flat;
			s_default.BorderColor = SystemColors.ControlDark;
			s_default.BorderSides = Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom;
			s_default.BorderSingle = ButtonBorderStyle.None;
			s_default.BorderStyle = BorderStyle.None;
		}
		return s_default;
	}

	public void ResetBaseStyle()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.BaseStyleProperty);
	}

	public bool ShouldSerializeBaseStyle()
	{
		return HasBaseStyle;
	}

	public void ResetVisible()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.VisibleProperty);
	}

	public bool ShouldSerializeVisible()
	{
		return HasVisible;
	}

	public void ResetFont()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.FontProperty);
	}

	public bool ShouldSerializeFont()
	{
		return HasFont;
	}

	public void ResetLineAlignment()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.LineAlignmentProperty);
	}

	public bool ShouldSerializeLineAlignment()
	{
		return HasLineAlignment;
	}

	public void ResetAlignment()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.AlignmentProperty);
	}

	public bool ShouldSerializeAlignment()
	{
		return HasAlignment;
	}

	public void ResetText()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.TextProperty);
	}

	public bool ShouldSerializeText()
	{
		return HasText;
	}

	public void ResetTextColor()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.TextColorProperty);
	}

	public bool ShouldSerializeTextColor()
	{
		return HasTextColor;
	}

	public void ResetHelpText()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.HelpTextProperty);
	}

	public bool ShouldSerializeHelpText()
	{
		return HasHelpText;
	}

	public void ResetTag()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.TagProperty);
	}

	public bool ShouldSerializeTag()
	{
		return HasTag;
	}

	public void ResetLeftImage()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageProperty);
	}

	public bool ShouldSerializeLeftImage()
	{
		return HasLeftImage;
	}

	public void ResetLeftImageIndices()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImageIndicesProperty);
	}

	public bool ShouldSerializeLeftImageIndices()
	{
		return HasLeftImageIndices;
	}

	public void ResetLeftImagePadding()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.LeftImagePaddingProperty);
	}

	public bool ShouldSerializeLeftImagePadding()
	{
		return HasLeftImagePadding;
	}

	public void ResetRightImage()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.RightImageProperty);
	}

	public bool ShouldSerializeRightImage()
	{
		return HasRightImage;
	}

	public void ResetRightImageIndices()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.RightImageIndicesProperty);
	}

	public bool ShouldSerializeRightImageIndices()
	{
		return HasRightImageIndices;
	}

	public void ResetRightImagePadding()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.RightImagePaddingProperty);
	}

	public bool ShouldSerializeRightImagePadding()
	{
		return HasRightImagePadding;
	}

	public void ResetBackground()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.BackgroundProperty);
	}

	public bool ShouldSerializeBackground()
	{
		return HasBackground;
	}

	public void ResetBorderSides()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.BorderSidesProperty);
	}

	public bool ShouldSerializeBorderSides()
	{
		return HasBorderSides;
	}

	public void ResetBorderStyle()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.BorderStyleProperty);
	}

	public bool ShouldSerializeBorderStyle()
	{
		return HasBorderStyle;
	}

	public void ResetBorder3DStyle()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.Border3DStyleProperty);
	}

	public bool ShouldSerializeBorder3DStyle()
	{
		return HasBorder3DStyle;
	}

	public void ResetBorderColor()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.BorderColorProperty);
	}

	public bool ShouldSerializeBorderColor()
	{
		return HasBorderColor;
	}

	public void ResetBorderSingle()
	{
		ResetValue(TreeNodeAdvSubItemStyleInfoStore.BorderSingleProperty);
	}

	public bool ShouldSerializeBorderSingle()
	{
		return HasBorderSingle;
	}
}
