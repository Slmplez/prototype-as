using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Text;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(ToolTipTypeConverter))]
[Editor(typeof(ToolTipEditor), typeof(UITypeEditor))]
public class ToolTipInfo
{
	[TypeConverter(typeof(ExpandableObjectConverter))]
	public class ToolTipItem
	{
		private ToolTipInfo m_owner;

		private bool m_bHidden;

		private Image m_image;

		private string m_text;

		private bool renderHtml;

		private Size itemSize = new Size(20, 20);

		private Font m_font;

		private Color m_foreColor = Color.Empty;

		private Color m_imageTransparentColor = Color.Empty;

		private ContentAlignment m_imageAlign = ContentAlignment.MiddleLeft;

		private ContentAlignment m_textAlign = ContentAlignment.TopLeft;

		private ToolTipTextImageRelation m_textImageRelation;

		private Rectangle m_bounds;

		private Size m_imageScalingSize = Size.Empty;

		private Padding m_pTextMargin = Padding.Empty;

		private static Padding defaultMagrin;

		private static Size minimumSize;

		private static Graphics m_graphics;

		[DefaultValue(false)]
		[Category("Behavior")]
		[Description("Indicates whether a ToolTipItem should be hidden.")]
		public bool Hidden
		{
			get
			{
				return m_bHidden;
			}
			set
			{
				if (m_bHidden != value)
				{
					m_bHidden = value;
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.ItemHidden);
				}
			}
		}

		[DefaultValue(false)]
		[Description("Indicates whether to render html or plain text")]
		public bool RenderHtml
		{
			get
			{
				return renderHtml;
			}
			set
			{
				if (renderHtml != value)
				{
					renderHtml = value;
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
				}
			}
		}

		[Description("Size of the item that renders html, if RenderHtml is set to true")]
		public Size Size
		{
			get
			{
				return itemSize;
			}
			set
			{
				itemSize = value;
				m_owner.OnPropertyChanged(this, ToolTipPropertyID.ItemSizeChanged);
			}
		}

		[DefaultValue(null)]
		[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
		[Localizable(true)]
		[Description("Indicates the text to be displayed in the SuperTooltip.")]
		[Category("Appearance")]
		public string Text
		{
			get
			{
				return m_text;
			}
			set
			{
				if (m_text != value)
				{
					m_text = value;
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.ItemTextChanged);
				}
			}
		}

		[Category("Appearance")]
		[AmbientValue(null)]
		[Description("Indicates the font for the toolTip text.")]
		public Font Font
		{
			get
			{
				if (m_font == null)
				{
					return Control.DefaultFont;
				}
				return m_font;
			}
			set
			{
				if (m_font != value)
				{
					m_font = value;
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.ItemFontChanged);
				}
			}
		}

		[Category("Appearance")]
		[AmbientValue(null)]
		[Description("Indicates the forecolor of the SuperTooltip text.")]
		public Color ForeColor
		{
			get
			{
				if (m_foreColor == Color.Empty)
				{
					return m_owner.ForeColor;
				}
				return m_foreColor;
			}
			set
			{
				m_foreColor = value;
				m_owner.OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
			}
		}

		[Description("Indicates the alignment of the tooltip text.")]
		[Category("Appearance")]
		[DefaultValue(typeof(ContentAlignment), "TopLeft")]
		public ContentAlignment TextAlign
		{
			get
			{
				return m_textAlign;
			}
			set
			{
				m_textAlign = value;
				m_owner.OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
			}
		}

		[DefaultValue(typeof(ToolTipTextImageRelation), "ImageBeforeText")]
		[Category("Appearance")]
		[Description("Indicates the way image and text are situated.")]
		public ToolTipTextImageRelation TextImageRelation
		{
			get
			{
				return m_textImageRelation;
			}
			set
			{
				if (m_textImageRelation != value)
				{
					m_textImageRelation = value;
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
				}
			}
		}

		[Description("Indicates the image to be shown in the tooltip.")]
		[DefaultValue(typeof(Image), "")]
		[Category("Appearance")]
		public Image Image
		{
			get
			{
				return m_image;
			}
			set
			{
				if (m_image != value)
				{
					m_image = value;
					if (m_imageTransparentColor != Color.Empty && value is Bitmap bitmap)
					{
						bitmap.MakeTransparent(m_imageTransparentColor);
					}
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.ItemImageChanged);
				}
			}
		}

		[Description("Indicates the alignment of the image.")]
		[Category("Appearance")]
		[DefaultValue(typeof(ContentAlignment), "MiddleLeft")]
		public ContentAlignment ImageAlign
		{
			get
			{
				return m_imageAlign;
			}
			set
			{
				m_imageAlign = value;
				m_owner.OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
			}
		}

		[Description("Indicates the transparency color for the image.")]
		[Category("Appearance")]
		public Color ImageTransparentColor
		{
			get
			{
				return m_imageTransparentColor;
			}
			set
			{
				if (m_imageTransparentColor != value)
				{
					m_imageTransparentColor = value;
					if (value != Color.Empty && Image is Bitmap bitmap)
					{
						bitmap.MakeTransparent(value);
						m_owner.OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
					}
				}
			}
		}

		[Description("Indicates the size of the image.")]
		[Category("Appearance")]
		public Size ImageScalingSize
		{
			get
			{
				if (m_imageScalingSize.IsEmpty && m_image != null)
				{
					return m_image.Size;
				}
				return m_imageScalingSize;
			}
			set
			{
				if (m_imageScalingSize != value)
				{
					m_imageScalingSize = value;
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.ItemImageScaleChanged);
				}
			}
		}

		[Category("Appearance")]
		[Description("Gets or sets the space between the text and item bounds")]
		public Padding TextMargin
		{
			get
			{
				return m_pTextMargin;
			}
			set
			{
				if (m_pTextMargin != value)
				{
					m_pTextMargin = value;
					m_owner.OnPropertyChanged(this, ToolTipPropertyID.TextMarginsChanged);
				}
			}
		}

		internal Rectangle Bounds
		{
			get
			{
				return m_bounds;
			}
			set
			{
				if (m_bounds != value)
				{
					if (!renderHtml)
					{
						m_bounds = value;
					}
					else
					{
						m_bounds = value;
						m_bounds.Size = itemSize;
					}
					m_bounds = value;
				}
			}
		}

		[Browsable(false)]
		internal Rectangle ImageBounds
		{
			get
			{
				Size imageSize = GetImageSize();
				Rectangle bounds = Bounds;
				Rectangle result = Rectangle.Empty;
				if ((m_textImageRelation == ToolTipTextImageRelation.ImageBeforeText) ^ (m_owner.RightToLeft == RightToLeft.Yes))
				{
					Point location = new Point(bounds.X + defaultMagrin.Left, bounds.Y);
					result = new Rectangle(location, imageSize);
				}
				else
				{
					Padding padding = defaultMagrin + TextMargin;
					if (imageSize.Width + defaultMagrin.Horizontal + padding.Horizontal < Bounds.Width)
					{
						Point location2 = new Point(Bounds.Width - (imageSize.Width + defaultMagrin.Right), bounds.Y);
						result = new Rectangle(location2, imageSize);
					}
				}
				if (!result.IsEmpty)
				{
					switch (ImageAlign)
					{
					case ContentAlignment.TopCenter:
						result.Y += defaultMagrin.Top;
						result.X = (bounds.Width - imageSize.Width) / 2;
						break;
					case ContentAlignment.TopLeft:
					case ContentAlignment.TopRight:
						result.Y += defaultMagrin.Top;
						break;
					case ContentAlignment.BottomCenter:
						result.X = (bounds.Width - imageSize.Width) / 2;
						result.Y += bounds.Height - (imageSize.Height + defaultMagrin.Bottom);
						break;
					case ContentAlignment.BottomLeft:
					case ContentAlignment.BottomRight:
						result.Y += bounds.Height - (imageSize.Height + defaultMagrin.Bottom);
						break;
					case ContentAlignment.MiddleCenter:
						result.Y += (bounds.Height - imageSize.Height) / 2;
						result.X = (bounds.Width - imageSize.Width) / 2;
						break;
					default:
						result.Y += (bounds.Height - imageSize.Height) / 2;
						break;
					}
				}
				return result;
			}
		}

		[Browsable(false)]
		internal Rectangle TextBounds
		{
			get
			{
				Rectangle bounds = Bounds;
				Padding padding = defaultMagrin + TextMargin;
				bounds.X += padding.Left;
				bounds.Width -= padding.Horizontal;
				bounds.Y += padding.Top;
				bounds.Height -= padding.Vertical;
				Size imageSize = GetImageSize();
				if (imageSize.Width > 0)
				{
					int num = imageSize.Width + defaultMagrin.Horizontal;
					if ((m_textImageRelation == ToolTipTextImageRelation.ImageBeforeText) ^ (m_owner.RightToLeft == RightToLeft.Yes))
					{
						bounds.X += num;
					}
					bounds.Width -= num;
				}
				return bounds;
			}
		}

		internal ContentAlignment TextAlignInternal
		{
			get
			{
				ContentAlignment contentAlignment = m_textAlign;
				if (m_owner.RightToLeft == RightToLeft.Yes)
				{
					switch (contentAlignment)
					{
					case ContentAlignment.TopLeft:
						contentAlignment = ContentAlignment.TopRight;
						break;
					case ContentAlignment.TopRight:
						contentAlignment = ContentAlignment.TopLeft;
						break;
					case ContentAlignment.MiddleLeft:
						contentAlignment = ContentAlignment.MiddleRight;
						break;
					case ContentAlignment.MiddleRight:
						contentAlignment = ContentAlignment.MiddleLeft;
						break;
					case ContentAlignment.BottomLeft:
						contentAlignment = ContentAlignment.BottomRight;
						break;
					case ContentAlignment.BottomRight:
						contentAlignment = ContentAlignment.BottomLeft;
						break;
					}
				}
				return contentAlignment;
			}
		}

		static ToolTipItem()
		{
			defaultMagrin = new Padding(2);
			minimumSize = new Size(60, 15);
			m_graphics = Graphics.FromImage(new Bitmap(1, 1));
			m_graphics.TextRenderingHint = TextRenderingHint.ClearTypeGridFit;
		}

		public ToolTipItem(ToolTipInfo owner, ToolTipItem template)
		{
			m_owner = owner;
			if (template != null)
			{
				m_bHidden = template.m_bHidden;
				m_text = template.m_text;
				m_font = template.m_font;
				m_foreColor = template.m_foreColor;
				m_textAlign = template.m_textAlign;
				m_textImageRelation = template.m_textImageRelation;
				m_image = template.m_image;
				m_imageAlign = template.m_imageAlign;
				m_imageTransparentColor = template.m_imageTransparentColor;
				m_imageScalingSize = template.m_imageScalingSize;
				m_pTextMargin = template.m_pTextMargin;
				renderHtml = template.renderHtml;
				itemSize = template.itemSize;
			}
		}

		public Size GetPreferredSize(int nMaxWidth, bool bDesignMode)
		{
			Size empty = Size.Empty;
			if (!Hidden && !RenderHtml)
			{
				int num = nMaxWidth;
				Size imageSize = GetImageSize();
				if (!imageSize.IsEmpty)
				{
					empty.Width = Math.Min(imageSize.Width + defaultMagrin.Horizontal, nMaxWidth);
					empty.Height = imageSize.Height + defaultMagrin.Vertical;
					num -= empty.Width;
				}
				Padding padding = defaultMagrin + TextMargin;
				if (num > padding.Horizontal)
				{
					Size textSize = GetTextSize(num - padding.Horizontal);
					if (!textSize.IsEmpty)
					{
						empty.Width += textSize.Width + padding.Horizontal;
						empty.Height = Math.Max(empty.Height, textSize.Height + padding.Vertical);
					}
				}
				if (bDesignMode)
				{
					int num2 = Math.Min(minimumSize.Width, nMaxWidth);
					if (empty.Width < num2)
					{
						empty.Width = num2;
					}
					if (empty.Height < minimumSize.Height)
					{
						empty.Height = minimumSize.Height;
					}
				}
			}
			else if (!Hidden && RenderHtml)
			{
				empty = itemSize;
				if (bDesignMode)
				{
					int num3 = Math.Min(minimumSize.Width, nMaxWidth);
					if (empty.Width < num3)
					{
						empty.Width = num3;
					}
					if (empty.Height < minimumSize.Height)
					{
						empty.Height = minimumSize.Height;
					}
				}
			}
			return empty;
		}

		private bool ShouldSerializeFont()
		{
			return m_font != null;
		}

		private bool ShouldSerializeForeColor()
		{
			return m_foreColor != Color.Empty;
		}

		private bool ShouldSerializeImageTransparentColor()
		{
			return m_imageTransparentColor != Color.Empty;
		}

		private bool ShouldSerializeImageScalingSize()
		{
			return !m_imageScalingSize.IsEmpty;
		}

		private bool ShouldSerializeTextMargin()
		{
			return m_pTextMargin != Padding.Empty;
		}

		private Size GetImageSize()
		{
			if (m_image != null)
			{
				if (m_imageScalingSize.IsEmpty)
				{
					return m_image.Size;
				}
				return m_imageScalingSize;
			}
			return Size.Empty;
		}

		private Size GetTextSize(int nMaxWidth)
		{
			Size result = Size.Empty;
			if (Text != null)
			{
				result = TextRenderer.MeasureText(m_graphics, Text, Font, new Size(nMaxWidth, 0), TextFormatFlags.ExpandTabs | TextFormatFlags.WordBreak | TextFormatFlags.WordEllipsis | TextFormatFlags.NoPadding);
				if (result.Width > nMaxWidth)
				{
					result.Width = nMaxWidth;
				}
			}
			return result;
		}
	}

	private Color m_backColor = Color.LightBlue;

	private Color m_foreColor = Color.Empty;

	private Color m_borderColor = Color.Empty;

	private bool m_bSeparator = true;

	private ToolTipItem m_ttHeader;

	private ToolTipItem m_ttFooter;

	private ToolTipItem m_ttBody;

	private RightToLeft m_rightToLeft;

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "LightBlue")]
	[Description("Indicates the backColor of SuperToolTip")]
	public Color BackColor
	{
		get
		{
			return m_backColor;
		}
		set
		{
			if (m_backColor != value)
			{
				m_backColor = value;
				OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
			}
		}
	}

	[Description("Indicates the forecolor of SuperToolTip.")]
	[Category("Appearance")]
	public Color ForeColor
	{
		get
		{
			if (m_foreColor == Color.Empty)
			{
				return Control.DefaultForeColor;
			}
			return m_foreColor;
		}
		set
		{
			if (m_foreColor != value)
			{
				m_foreColor = value;
				OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
			}
		}
	}

	[Description("Indicates the border color of SuperToolTip.")]
	[Category("Appearance")]
	public Color BorderColor
	{
		get
		{
			if (m_borderColor == Color.Empty)
			{
				return SystemColors.ControlDark;
			}
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
				OnPropertyChanged(this, ToolTipPropertyID.Unspecified);
			}
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Indicates the appearance of the Footer's separator.")]
	public bool Separator
	{
		get
		{
			if (!Footer.Hidden)
			{
				return m_bSeparator;
			}
			return false;
		}
		set
		{
			if (m_bSeparator != value)
			{
				m_bSeparator = value;
				OnPropertyChanged(this, ToolTipPropertyID.SeparatorChanged);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ToolTipItem Header
	{
		get
		{
			if (m_ttHeader == null)
			{
				m_ttHeader = new ToolTipItem(this, null);
			}
			return m_ttHeader;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ToolTipItem Body
	{
		get
		{
			if (m_ttBody == null)
			{
				m_ttBody = new ToolTipItem(this, null);
			}
			return m_ttBody;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ToolTipItem Footer
	{
		get
		{
			if (m_ttFooter == null)
			{
				m_ttFooter = new ToolTipItem(this, null);
			}
			return m_ttFooter;
		}
	}

	internal RightToLeft RightToLeft
	{
		get
		{
			return m_rightToLeft;
		}
		set
		{
			if (m_rightToLeft != value)
			{
				m_rightToLeft = value;
			}
		}
	}

	public event ToolTipPropertyChangedEventHandler PropertyChanged;

	public ToolTipInfo()
	{
	}

	public ToolTipInfo(ToolTipInfo template)
	{
		if (template != null)
		{
			m_backColor = template.m_backColor;
			m_foreColor = template.m_foreColor;
			m_borderColor = template.m_borderColor;
			m_bSeparator = template.m_bSeparator;
			m_rightToLeft = template.m_rightToLeft;
			m_ttHeader = new ToolTipItem(this, template.Header);
			m_ttBody = new ToolTipItem(this, template.Body);
			m_ttFooter = new ToolTipItem(this, template.Footer);
		}
	}

	private bool ShouldSerializeForeColor()
	{
		return m_foreColor != Color.Empty;
	}

	private bool ShouldSerializeBorderColor()
	{
		return m_borderColor != Color.Empty;
	}

	private void OnPropertyChanged(object sender, ToolTipPropertyID id)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(sender, id);
		}
	}
}
