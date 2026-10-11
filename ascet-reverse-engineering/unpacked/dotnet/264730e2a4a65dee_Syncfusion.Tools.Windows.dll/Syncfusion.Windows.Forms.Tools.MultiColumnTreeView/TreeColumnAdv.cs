using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Serializable]
[TypeConverter(typeof(TreeColumnAdvConverter))]
public class TreeColumnAdv : MarshalByRefObject, ICloneable, IComparable, ISupportInitialize, ISerializable
{
	public const int DefaultHeaderHeigh = 22;

	private TreeColumnAdvStyleInfo m_style;

	private MultiColumnTreeView m_tree;

	private Rectangle m_rcTextBounds;

	private Rectangle m_rcBounds;

	private bool m_bHighlighted;

	[Browsable(false)]
	public TreeColumnAdvStyleInfo ColumnStyle => m_style;

	[Browsable(false)]
	public bool Highlighted
	{
		get
		{
			return m_bHighlighted;
		}
		set
		{
			if (value != m_bHighlighted)
			{
				m_bHighlighted = value;
				Style_Changed(this, null);
			}
		}
	}

	[Browsable(false)]
	public MultiColumnTreeView TreeView => m_tree;

	[DefaultValue(true)]
	[Description("Gets or sets a value indicating whether column visible to user or not.")]
	[Category("Behavior")]
	public bool Visible
	{
		get
		{
			return ColumnStyle.Visible;
		}
		set
		{
			ColumnStyle.Visible = value;
		}
	}

	[Description("Gets or sets column width")]
	[Category("Behavior")]
	[DefaultValue(60)]
	public int Width
	{
		get
		{
			return ColumnStyle.Width;
		}
		set
		{
			ColumnStyle.Width = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets font that will be used for column text painting")]
	public Font Font
	{
		get
		{
			return ColumnStyle.Font;
		}
		set
		{
			ColumnStyle.Font = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the column text.")]
	[Localizable(true)]
	[DefaultValue("")]
	public string Text
	{
		get
		{
			return ColumnStyle.Text;
		}
		set
		{
			ColumnStyle.Text = value;
		}
	}

	[Description("Gets or sets the column text color.")]
	[Category("Appearance")]
	[DefaultValue(typeof(Color), "WindowText")]
	public Color TextColor
	{
		get
		{
			return ColumnStyle.TextColor;
		}
		set
		{
			ColumnStyle.TextColor = value;
		}
	}

	[Description("Gets or sets the column background style.")]
	[Category("Appearance")]
	public BrushInfo Background
	{
		get
		{
			return ColumnStyle.Background;
		}
		set
		{
			ColumnStyle.Background = value;
		}
	}

	internal int Height
	{
		get
		{
			return m_rcBounds.Height;
		}
		set
		{
			m_rcBounds.Height = value;
		}
	}

	[Description("Gets or sets the background for column area reserved by control.")]
	[Category("Appearance")]
	public BrushInfo AreaBackground
	{
		get
		{
			return ColumnStyle.AreaBackground;
		}
		set
		{
			ColumnStyle.AreaBackground = value;
		}
	}

	[Description("Gets or sets hint text for the column.")]
	[Category("Appearance")]
	[Localizable(true)]
	[DefaultValue("")]
	public string HelpText
	{
		get
		{
			return ColumnStyle.HelpText;
		}
		set
		{
			ColumnStyle.HelpText = value;
		}
	}

	[Category("Data")]
	[Description("Gets or sets sorting order of the column.")]
	public SortOrder SortOrder
	{
		get
		{
			return ColumnStyle.SortOrder;
		}
		set
		{
			ColumnStyle.SortOrder = value;
		}
	}

	[Description("Gets or sets custom comparer that will be used for column value sorting.")]
	[Category("Data")]
	[DefaultValue(null)]
	public IComparer Comparer
	{
		get
		{
			return ColumnStyle.Comparer;
		}
		set
		{
			ColumnStyle.Comparer = value;
		}
	}

	[Browsable(false)]
	[Description("Gets or sets the column user data.")]
	[Category("Data")]
	[DefaultValue(null)]
	public object Tag
	{
		get
		{
			return ColumnStyle.Tag;
		}
		set
		{
			ColumnStyle.Tag = value;
		}
	}

	[Localizable(true)]
	[Description("Gets or sets image that will be painted from left side of the column text. ")]
	[Category("Images")]
	[DefaultValue(null)]
	public Image LeftImage
	{
		get
		{
			return ColumnStyle.LeftImage;
		}
		set
		{
			ColumnStyle.LeftImage = value;
		}
	}

	[Description("Gets or sets image that will be painted from right side of the column text.")]
	[Localizable(true)]
	[DefaultValue(null)]
	[Category("Images")]
	public Image RightImage
	{
		get
		{
			return ColumnStyle.RightImage;
		}
		set
		{
			ColumnStyle.RightImage = value;
		}
	}

	[Category("Images")]
	[Description("Gets or sets the image index to be drawn on the left of the column`s text.")]
	public int[] LeftImageIndices
	{
		get
		{
			return ColumnStyle.LeftImageIndices;
		}
		set
		{
			ColumnStyle.LeftImageIndices = value;
		}
	}

	[DefaultValue(0)]
	[Category("Images")]
	[Localizable(true)]
	[Description("Gets or sets the padding of left image for the column.")]
	public int LeftImagePadding
	{
		get
		{
			return ColumnStyle.LeftImagePadding;
		}
		set
		{
			ColumnStyle.LeftImagePadding = value;
		}
	}

	[Category("Images")]
	[Description("Gets or sets the image index to be drawn on the right of the column`s text.")]
	public int[] RightImageIndices
	{
		get
		{
			return ColumnStyle.RightImageIndices;
		}
		set
		{
			ColumnStyle.RightImageIndices = value;
		}
	}

	[Description("Gets or sets the padding of tight image for the column.")]
	[DefaultValue(0)]
	[Category("Images")]
	[Localizable(true)]
	public int RightImagePadding
	{
		get
		{
			return ColumnStyle.RightImagePadding;
		}
		set
		{
			ColumnStyle.RightImagePadding = value;
		}
	}

	[DefaultValue(Border3DSide.All)]
	[Description("Gets or sets the sides of a rectangle to apply a three-dimensional border to.")]
	[Category("Borders")]
	[Localizable(true)]
	public Border3DSide BorderSides
	{
		get
		{
			return ColumnStyle.BorderSides;
		}
		set
		{
			ColumnStyle.BorderSides = value;
		}
	}

	[Localizable(true)]
	[Description("Gets or sets the border style for the column.")]
	[Category("Borders")]
	[DefaultValue(BorderStyle.Fixed3D)]
	public BorderStyle BorderStyle
	{
		get
		{
			return ColumnStyle.BorderStyle;
		}
		set
		{
			ColumnStyle.BorderStyle = value;
		}
	}

	[Description("Gets or sets the border 3dStyle for the column.")]
	[Category("Borders")]
	[Localizable(true)]
	[DefaultValue(Border3DStyle.Etched)]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return ColumnStyle.Border3DStyle;
		}
		set
		{
			ColumnStyle.Border3DStyle = value;
		}
	}

	[Category("Borders")]
	[Description("Gets or sets the border color for the column.")]
	[Localizable(true)]
	[DefaultValue(typeof(Color), "ControlDark")]
	public Color BorderColor
	{
		get
		{
			return ColumnStyle.BorderColor;
		}
		set
		{
			ColumnStyle.BorderColor = value;
		}
	}

	[Category("Borders")]
	[Description("Gets or sets the border style for the column.")]
	[DefaultValue(ButtonBorderStyle.None)]
	[Localizable(true)]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return ColumnStyle.BorderSingle;
		}
		set
		{
			ColumnStyle.BorderSingle = value;
		}
	}

	[Description("The base style for the column")]
	[Editor(typeof(BaseStyleSelectorUITypeEditor), typeof(UITypeEditor))]
	[Category("Appearance - Inherited")]
	[DefaultValue("")]
	public string BaseStyle
	{
		get
		{
			return ColumnStyle.BaseStyle;
		}
		set
		{
			ColumnStyle.BaseStyle = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(StringAlignment.Center)]
	[Description("Gets or sets the vertical alignment of text in column bounds.")]
	[Localizable(true)]
	public StringAlignment VerticalAlignment
	{
		get
		{
			return ColumnStyle.VerticalAlignment;
		}
		set
		{
			ColumnStyle.VerticalAlignment = value;
		}
	}

	[DefaultValue(StringAlignment.Center)]
	[Description("Gets / sets the horizontal alignment of the text in column bounds.")]
	[Category("Appearance")]
	[Localizable(true)]
	public StringAlignment HorizontalAlignment
	{
		get
		{
			return ColumnStyle.HorizontalAlignment;
		}
		set
		{
			ColumnStyle.HorizontalAlignment = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets / sets the column text drawing mode.")]
	[DefaultValue(false)]
	[Localizable(true)]
	public bool AllowTextOverlap
	{
		get
		{
			return ColumnStyle.AllowTextOverlap;
		}
		set
		{
			ColumnStyle.AllowTextOverlap = value;
		}
	}

	[Description("Gets or sets the hightlight border color for the column.")]
	[Category("Borders")]
	[Localizable(true)]
	[DefaultValue(typeof(Color), "Highlight")]
	public Color HighlightBorderColor
	{
		get
		{
			return ColumnStyle.HighlightBorderColor;
		}
		set
		{
			if (ColumnStyle.HighlightBorderColor != value)
			{
				ColumnStyle.HighlightBorderColor = value;
			}
		}
	}

	[Browsable(false)]
	public Size Size => new Size(Width, Height);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Rectangle Bounds
	{
		get
		{
			return m_rcBounds;
		}
		set
		{
			m_rcBounds = value;
		}
	}

	internal bool IsMirrored
	{
		get
		{
			if (TreeView != null)
			{
				return TreeView.GetIsMirrored();
			}
			return false;
		}
	}

	internal Rectangle TextBounds
	{
		get
		{
			return m_rcTextBounds;
		}
		set
		{
			m_rcTextBounds = value;
		}
	}

	internal int BorderPadding => (BorderStyle == BorderStyle.Fixed3D) ? (-2) : ((BorderStyle == BorderStyle.FixedSingle) ? (-1) : 0);

	internal Rectangle BackgroundBounds
	{
		get
		{
			int borderPadding = BorderPadding;
			return Rectangle.Inflate(Bounds, borderPadding, borderPadding);
		}
	}

	public TreeColumnAdv()
	{
		m_style = new TreeColumnAdvStyleInfo(new TreeColumnAdvStyleInfoIdentity(this));
		m_style.Changed += Style_Changed;
	}

	public TreeColumnAdv(string text)
		: this()
	{
		Text = text;
	}

	void ISupportInitialize.BeginInit()
	{
	}

	void ISupportInitialize.EndInit()
	{
	}

	public TreeColumnAdv(SerializationInfo info, StreamingContext context)
	{
		m_style = new TreeColumnAdvStyleInfo((TreeColumnAdvStyleInfoStore)info.GetValue("ColumnStyle", typeof(TreeColumnAdvStyleInfoStore)));
		m_style.Changed += Style_Changed;
	}

	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("ColumnStyle", m_style.Store);
	}

	public void ResetBaseStyle()
	{
		ColumnStyle.ResetBaseStyle();
	}

	protected bool ShouldSerializeBaseStyle()
	{
		return ColumnStyle.ShouldSerializeBaseStyle();
	}

	public virtual void ResetVisible()
	{
		ColumnStyle.ResetVisible();
	}

	protected virtual bool ShouldSerializeVisible()
	{
		return ColumnStyle.ShouldSerializeVisible();
	}

	public virtual void ResetWidth()
	{
		ColumnStyle.ResetWidth();
	}

	protected virtual bool ShouldSerializeWidth()
	{
		return ColumnStyle.ShouldSerializeWidth();
	}

	public virtual void ResetFont()
	{
		ColumnStyle.ResetFont();
	}

	protected virtual bool ShouldSerializeFont()
	{
		return ColumnStyle.ShouldSerializeFont();
	}

	public virtual void ResetText()
	{
		ColumnStyle.ResetText();
	}

	protected virtual bool ShouldSerializeText()
	{
		return ColumnStyle.ShouldSerializeText();
	}

	public virtual void ResetTextColor()
	{
		ColumnStyle.ResetTextColor();
	}

	protected virtual bool ShouldSerializeTextColor()
	{
		return ColumnStyle.ShouldSerializeTextColor();
	}

	public virtual void ResetBackground()
	{
		ColumnStyle.ResetBackground();
	}

	protected virtual bool ShouldSerializeBackground()
	{
		return ColumnStyle.ShouldSerializeBackground();
	}

	public virtual void ResetHelpText()
	{
		ColumnStyle.ResetHelpText();
	}

	protected virtual bool ShouldSerializeHelpText()
	{
		return ColumnStyle.ShouldSerializeHelpText();
	}

	public virtual void ResetSortOrder()
	{
		ColumnStyle.ResetSortOrder();
	}

	protected virtual bool ShouldSerializeSortOrder()
	{
		return ColumnStyle.ShouldSerializeSortOrder();
	}

	public virtual void ResetComparer()
	{
		ColumnStyle.ResetComparer();
	}

	protected virtual bool ShouldSerializeComparer()
	{
		return ColumnStyle.ShouldSerializeComparer();
	}

	public virtual void ResetTag()
	{
		ColumnStyle.ResetTag();
	}

	protected virtual bool ShouldSerializeTag()
	{
		return ColumnStyle.ShouldSerializeTag();
	}

	public virtual void ResetLeftImage()
	{
		ColumnStyle.ResetLeftImage();
	}

	protected virtual bool ShouldSerializeLeftImage()
	{
		return ColumnStyle.ShouldSerializeLeftImage();
	}

	public virtual void ResetRightImage()
	{
		ColumnStyle.ResetRightImage();
	}

	protected virtual bool ShouldSerializeRightImage()
	{
		return ColumnStyle.ShouldSerializeRightImage();
	}

	public virtual void ResetLeftImageIndices()
	{
		ColumnStyle.ResetLeftImageIndices();
	}

	protected virtual bool ShouldSerializeLeftImageIndices()
	{
		return ColumnStyle.ShouldSerializeLeftImageIndices();
	}

	public virtual void ResetLeftImagePadding()
	{
		ColumnStyle.ResetLeftImagePadding();
	}

	protected virtual bool ShouldSerializeLeftImagePadding()
	{
		return ColumnStyle.ShouldSerializeLeftImagePadding();
	}

	public virtual void ResetRightImageIndices()
	{
		ColumnStyle.ResetRightImageIndices();
	}

	protected virtual bool ShouldSerializeRightImageIndices()
	{
		return ColumnStyle.ShouldSerializeRightImageIndices();
	}

	public virtual void ResetRightImagePadding()
	{
		ColumnStyle.ResetRightImagePadding();
	}

	protected virtual bool ShouldSerializeRightImagePadding()
	{
		return ColumnStyle.ShouldSerializeRightImagePadding();
	}

	public virtual void ResetBorderSides()
	{
		ColumnStyle.ResetBorderSides();
	}

	protected virtual bool ShouldSerializeBorderSides()
	{
		return ColumnStyle.ShouldSerializeBorderSides();
	}

	public virtual void ResetBorderStyle()
	{
		ColumnStyle.ResetBorderStyle();
	}

	protected virtual bool ShouldSerializeBorderStyle()
	{
		return ColumnStyle.ShouldSerializeBorderStyle();
	}

	public virtual void ResetBorder3DStyle()
	{
		ColumnStyle.ResetBorder3DStyle();
	}

	protected virtual bool ShouldSerializeBorder3DStyle()
	{
		return ColumnStyle.ShouldSerializeBorder3DStyle();
	}

	public virtual void ResetBorderColor()
	{
		ColumnStyle.ResetBorderColor();
	}

	public virtual void ResetHighlightBorderColor()
	{
		ColumnStyle.ResetHighlightBorderColor();
	}

	protected virtual bool ShouldSerializeBorderColor()
	{
		return ColumnStyle.ShouldSerializeBorderColor();
	}

	protected virtual bool ShouldSerializeHighlightBorderColor()
	{
		return ColumnStyle.ShouldSerializeHighlightBorderColor();
	}

	public virtual void ResetBorderSingle()
	{
		ColumnStyle.ResetBorderSingle();
	}

	protected virtual bool ShouldSerializeBorderSingle()
	{
		return ColumnStyle.ShouldSerializeBorderSingle();
	}

	public virtual void ResetAreaBackground()
	{
		ColumnStyle.ResetAreaBackground();
	}

	protected virtual bool ShouldSerializeAreaBackground()
	{
		return ColumnStyle.ShouldSerializeAreaBackground();
	}

	public virtual void ResetVerticalAlignment()
	{
		ColumnStyle.ResetVerticalAlignment();
	}

	protected virtual bool ShouldSerializeVerticalAlignment()
	{
		return ColumnStyle.ShouldSerializeVerticalAlignment();
	}

	public virtual void ResetHorizontalAlignment()
	{
		ColumnStyle.ResetHorizontalAlignment();
	}

	protected virtual bool ShouldSerializeHorizontalAlignment()
	{
		return ColumnStyle.ShouldSerializeHorizontalAlignment();
	}

	public TreeColumnAdv Clone()
	{
		TreeColumnAdv treeColumnAdv = new TreeColumnAdv();
		treeColumnAdv.ColumnStyle.ModifyStyle(ColumnStyle, StyleModifyType.Copy);
		treeColumnAdv.m_tree = m_tree;
		return treeColumnAdv;
	}

	object ICloneable.Clone()
	{
		return MemberwiseClone();
	}

	public int CompareTo(object obj)
	{
		throw new NotImplementedException();
	}

	public Size GetPreferedSize()
	{
		return Size.Empty;
	}

	public void UpdateColumnLocation(int x, int y)
	{
		m_rcBounds = new Rectangle(x, y, Width, Height);
	}

	protected internal virtual void SetParent(MultiColumnTreeView tree)
	{
		m_tree = tree;
	}

	protected internal virtual void ResetParent()
	{
		m_tree = null;
	}

	private void Style_Changed(object sender, StyleChangedEventArgs e)
	{
		if (TreeView != null)
		{
			TreeView.OnColumnChanged(new TreeColumnStyleChangedEventArgs(this, e));
		}
	}

	public void Draw(Graphics g, Point point)
	{
		Draw(g, point.X, point.Y);
	}

	public void Draw(Graphics g, int x, int y)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		m_rcBounds = new Rectangle(x, y, Width, Height);
		Rectangle backgroundBounds = BackgroundBounds;
		Region clip = g.Clip;
		using (Region region = new Region(backgroundBounds))
		{
			g.SetClip(region, CombineMode.Exclude);
			if (Highlighted)
			{
				ControlDrawing.DrawBorderInternal(g, Bounds, BorderStyle, Border3DStyle.RaisedInner, ButtonBorderStyle.Solid, HighlightBorderColor, Border3DSide.All, useTransform: false);
			}
			else
			{
				ControlDrawing.DrawBorderInternal(g, Bounds, BorderStyle, Border3DStyle, BorderSingle, BorderColor, BorderSides, useTransform: false);
			}
		}
		using (Region region2 = new Region(backgroundBounds))
		{
			region2.Intersect(clip);
			g.Clip = region2;
			BrushPaint.FillRectangle(g, backgroundBounds, Background);
			int num = (IsMirrored ? backgroundBounds.Right : backgroundBounds.Left);
			int num2 = (IsMirrored ? backgroundBounds.Left : backgroundBounds.Right);
			if (AllowTextOverlap)
			{
				DrawColumnText(g, 0, 0);
				DrawRightImages(g, num2, forceMirror: true);
				DrawLeftImages(g, num);
			}
			else
			{
				int rightBorder = Math.Abs(DrawRightImages(g, num2, forceMirror: true) - num2);
				num2 = Math.Abs(DrawLeftImages(g, num) - num);
				DrawColumnText(g, num2, rightBorder);
			}
		}
		g.Clip = clip;
	}

	private int DrawLeftImages(Graphics g, int startX)
	{
		bool isMirrored = IsMirrored;
		int num = ((!IsMirrored) ? 1 : (-1));
		Rectangle backgroundBounds = BackgroundBounds;
		startX += num * LeftImagePadding;
		if (LeftImage != null)
		{
			Size size = LeftImage.Size;
			Rectangle srcRect = new Rectangle(Point.Empty, size);
			if (isMirrored)
			{
				startX -= size.Width;
			}
			g.DrawImage(destRect: new Rectangle(startX, backgroundBounds.Top, size.Width, backgroundBounds.Height), image: LeftImage, srcRect: srcRect, srcUnit: GraphicsUnit.Pixel);
			if (!isMirrored)
			{
				startX += size.Width;
			}
		}
		else if (LeftImageIndices != null && LeftImageIndices.Length > 0 && TreeView != null && TreeView.LeftImageList != null)
		{
			ImageList leftImageList = TreeView.LeftImageList;
			if (leftImageList.Images.Count > 0)
			{
				int num2 = Math.Min(leftImageList.ImageSize.Width, backgroundBounds.Height);
				int[] leftImageIndices = LeftImageIndices;
				int i = 0;
				for (int num3 = leftImageIndices.Length; i < num3; i++)
				{
					int num4 = leftImageIndices[i];
					if (isMirrored)
					{
						startX -= num2;
					}
					if (num4 >= 0 && num4 < leftImageList.Images.Count)
					{
						g.DrawImage(leftImageList.Images[num4], startX, backgroundBounds.Top, num2, num2);
					}
					if (!isMirrored)
					{
						startX += num2;
					}
				}
			}
		}
		return startX;
	}

	private void DrawColumnText(Graphics g, int leftBorder, int rightBorder)
	{
		bool isMirrored = IsMirrored;
		using SolidBrush brush = new SolidBrush(TextColor);
		using StringFormat stringFormat = (StringFormat)StringFormat.GenericDefault.Clone();
		stringFormat.FormatFlags |= StringFormatFlags.NoWrap;
		stringFormat.LineAlignment = VerticalAlignment;
		stringFormat.Alignment = HorizontalAlignment;
		ControlDrawing.MeasureDisplayStringSize(g, Text, Font, isMirrored);
		if (isMirrored)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		Rectangle backgroundBounds = BackgroundBounds;
		g.DrawString(layoutRectangle: (!AllowTextOverlap) ? new Rectangle(backgroundBounds.Left + leftBorder, backgroundBounds.Top, backgroundBounds.Width - leftBorder - rightBorder, backgroundBounds.Height) : backgroundBounds, s: Text, font: Font, brush: brush, format: stringFormat);
	}

	private int DrawRightImages(Graphics g, int startX, bool forceMirror)
	{
		bool flag = IsMirrored ^ forceMirror;
		int num = ((!flag) ? 1 : (-1));
		Rectangle backgroundBounds = BackgroundBounds;
		startX += num * RightImagePadding;
		if (RightImage != null)
		{
			Size size = RightImage.Size;
			Rectangle srcRect = new Rectangle(Point.Empty, size);
			if (flag)
			{
				startX -= size.Width;
			}
			g.DrawImage(destRect: new Rectangle(startX, backgroundBounds.Top, size.Width, backgroundBounds.Height), image: RightImage, srcRect: srcRect, srcUnit: GraphicsUnit.Pixel);
			if (!flag)
			{
				startX += size.Width;
			}
		}
		else if (RightImageIndices != null && RightImageIndices.Length > 0 && TreeView != null && TreeView.RightImageList != null)
		{
			ImageList rightImageList = TreeView.RightImageList;
			if (rightImageList.Images.Count > 0)
			{
				int num2 = Math.Min(rightImageList.ImageSize.Width, backgroundBounds.Height);
				int[] rightImageIndices = RightImageIndices;
				int i = 0;
				for (int num3 = rightImageIndices.Length; i < num3; i++)
				{
					int num4 = rightImageIndices[i];
					if (flag)
					{
						startX -= num2;
					}
					if (num4 >= 0 && num4 < rightImageList.Images.Count)
					{
						g.DrawImage(rightImageList.Images[num4], startX, backgroundBounds.Top, num2, num2);
					}
					if (!flag)
					{
						startX += num2;
					}
				}
			}
		}
		return startX;
	}
}
