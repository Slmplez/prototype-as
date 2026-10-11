using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[Serializable]
[TypeConverter(typeof(TreeNodeAdvSubItemConverter))]
public class TreeNodeAdvSubItem : MarshalByRefObject, ICloneable, IComparable, ISupportInitialize, ISerializable
{
	private TreeNodeAdvSubItemStyleInfo m_style;

	private TreeNodeAdv m_parent;

	private Rectangle m_rcBounds;

	private Rectangle m_rcTextBounds;

	[Browsable(false)]
	public TreeNodeAdv TreeNode => m_parent;

	[Browsable(false)]
	public MultiColumnTreeView TreeView
	{
		get
		{
			if (TreeNode != null)
			{
				return TreeNode.TreeView;
			}
			return null;
		}
	}

	[Browsable(false)]
	public TreeNodeAdvSubItemStyleInfo SubItemStyle => m_style;

	[Description("The base style for the subitem")]
	[Editor(typeof(BaseStyleSelectorUITypeEditor), typeof(UITypeEditor))]
	[Category("Appearance - Inherited")]
	public string BaseStyle
	{
		get
		{
			return SubItemStyle.BaseStyle;
		}
		set
		{
			SubItemStyle.BaseStyle = value;
		}
	}

	[Localizable(true)]
	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Gets / sets the subitem visibility.")]
	public bool Visible
	{
		get
		{
			return SubItemStyle.Visible;
		}
		set
		{
			SubItemStyle.Visible = value;
		}
	}

	[Localizable(true)]
	[Description("Gets / sets the line alignment of the text in subitem.")]
	[DefaultValue(StringAlignment.Center)]
	[Category("Appearance")]
	public StringAlignment LineAlignment
	{
		get
		{
			return SubItemStyle.LineAlignment;
		}
		set
		{
			SubItemStyle.LineAlignment = value;
		}
	}

	[DefaultValue(StringAlignment.Near)]
	[Localizable(true)]
	[Description("Gets / sets the text alignment in subitem bounds.")]
	[Category("Appearance")]
	public StringAlignment Alignment
	{
		get
		{
			return SubItemStyle.Alignment;
		}
		set
		{
			SubItemStyle.Alignment = value;
		}
	}

	[Description("Gets / sets the subitem text.")]
	[Category("Appearance")]
	[DefaultValue("")]
	[Localizable(true)]
	public string Text
	{
		get
		{
			return SubItemStyle.Text;
		}
		set
		{
			SubItemStyle.Text = value;
		}
	}

	[DefaultValue(typeof(Color), "WindowText")]
	[Localizable(true)]
	[Category("Appearance")]
	[Description("Gets / sets the subitem text color.")]
	public Color TextColor
	{
		get
		{
			return SubItemStyle.TextColor;
		}
		set
		{
			SubItemStyle.TextColor = value;
		}
	}

	[DefaultValue("")]
	[Description("Gets / sets the subitem help text.")]
	[Category("Appearance")]
	[Localizable(true)]
	public string HelpText
	{
		get
		{
			return SubItemStyle.HelpText;
		}
		set
		{
			SubItemStyle.HelpText = value;
		}
	}

	[Localizable(true)]
	[Description("Gets / sets the subitem user data.")]
	[Category("Appearance")]
	[DefaultValue(null)]
	public object Tag
	{
		get
		{
			return SubItemStyle.Tag;
		}
		set
		{
			SubItemStyle.Tag = value;
		}
	}

	[DefaultValue(null)]
	[Category("Images")]
	[Localizable(true)]
	[Description("Gets / sets the subitem left image.")]
	public Image LeftImage
	{
		get
		{
			return SubItemStyle.LeftImage;
		}
		set
		{
			SubItemStyle.LeftImage = value;
		}
	}

	[Category("Images")]
	[Description("Gets / sets the subitem left side indices of images that stored in tree LeftImageList property.")]
	[Localizable(true)]
	public int[] LeftImageIndices
	{
		get
		{
			return SubItemStyle.LeftImageIndices;
		}
		set
		{
			SubItemStyle.LeftImageIndices = value;
		}
	}

	[Description("Gets / sets the subitem padding between text and left images.")]
	[Category("Images")]
	[Localizable(true)]
	[DefaultValue(0)]
	public int LeftImagePadding
	{
		get
		{
			return SubItemStyle.LeftImagePadding;
		}
		set
		{
			SubItemStyle.LeftImagePadding = value;
		}
	}

	[DefaultValue(null)]
	[Category("Images")]
	[Localizable(true)]
	[Description("Gets / sets the subitem image from right side of the text.")]
	public Image RightImage
	{
		get
		{
			return SubItemStyle.RightImage;
		}
		set
		{
			SubItemStyle.RightImage = value;
		}
	}

	[Category("Images")]
	[Description("Gets / sets the subitem right side indices of images that stored in tree RightImageList property.")]
	[Localizable(true)]
	public int[] RightImageIndices
	{
		get
		{
			return SubItemStyle.RightImageIndices;
		}
		set
		{
			SubItemStyle.RightImageIndices = value;
		}
	}

	[Description("Gets / sets padding between text and right side images.")]
	[Category("Images")]
	[Localizable(true)]
	[DefaultValue(0)]
	public int RightImagePadding
	{
		get
		{
			return SubItemStyle.RightImagePadding;
		}
		set
		{
			SubItemStyle.RightImagePadding = value;
		}
	}

	[Description("Gets / sets the subitem background style.")]
	[Category("Appearance")]
	[Localizable(true)]
	public BrushInfo Background
	{
		get
		{
			return SubItemStyle.Background;
		}
		set
		{
			SubItemStyle.Background = value;
		}
	}

	[Localizable(true)]
	[Category("Borders")]
	[Description("Gets / sets the subitem border sides settings.")]
	[DefaultValue(Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom)]
	public Border3DSide BorderSides
	{
		get
		{
			return SubItemStyle.BorderSides;
		}
		set
		{
			SubItemStyle.BorderSides = value;
		}
	}

	[Description("Gets / sets the subitem border style.")]
	[Category("Borders")]
	[Localizable(true)]
	[DefaultValue(BorderStyle.None)]
	public BorderStyle BorderStyle
	{
		get
		{
			return SubItemStyle.BorderStyle;
		}
		set
		{
			SubItemStyle.BorderStyle = value;
		}
	}

	[Localizable(true)]
	[Description("Gets / sets the subitem border 3D style.")]
	[Category("Borders")]
	[DefaultValue(Border3DStyle.Flat)]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return SubItemStyle.Border3DStyle;
		}
		set
		{
			SubItemStyle.Border3DStyle = value;
		}
	}

	[Description("Gets / sets the subitem border color.")]
	[Category("Borders")]
	[Localizable(true)]
	[DefaultValue(typeof(Color), "ControlDark")]
	public Color BorderColor
	{
		get
		{
			return SubItemStyle.BorderColor;
		}
		set
		{
			SubItemStyle.BorderColor = value;
		}
	}

	[Category("Borders")]
	[Description("Gets / sets the subitem single line border style.")]
	[Localizable(true)]
	[DefaultValue(ButtonBorderStyle.None)]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return SubItemStyle.BorderSingle;
		}
		set
		{
			SubItemStyle.BorderSingle = value;
		}
	}

	[Category("Borders")]
	[Description("Gets / sets the subitem text Font.")]
	[Localizable(true)]
	public Font Font
	{
		get
		{
			return SubItemStyle.Font;
		}
		set
		{
			SubItemStyle.Font = value;
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

	internal Rectangle Bounds
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

	internal int Index
	{
		get
		{
			if (TreeNode != null)
			{
				return TreeNode.SubItems.IndexOf(this);
			}
			return -1;
		}
	}

	internal TreeColumnAdv Column
	{
		get
		{
			if (TreeView != null)
			{
				int index = Index;
				if (index >= 0)
				{
					return TreeView.Columns[index];
				}
			}
			return null;
		}
	}

	internal int Width
	{
		get
		{
			if (Column != null)
			{
				return Column.Width;
			}
			return 0;
		}
	}

	internal int Height
	{
		get
		{
			if (TreeNode != null)
			{
				return TreeNode.Height;
			}
			return 0;
		}
	}

	public TreeNodeAdvSubItem()
	{
		m_style = new TreeNodeAdvSubItemStyleInfo(new TreeNodeAdvSubItemStyleInfoIdentity(this));
		m_style.Changed += Style_Changed;
	}

	public TreeNodeAdvSubItem(string text)
		: this()
	{
		Text = text;
	}

	public TreeNodeAdvSubItem(TreeNodeAdv node)
		: this()
	{
		SetParent(node);
	}

	public TreeNodeAdvSubItem(TreeNodeAdv node, string text)
		: this(node)
	{
		Text = text;
	}

	public TreeNodeAdvSubItem(SerializationInfo info, StreamingContext context)
	{
		TreeNodeAdvSubItemStyleInfoStore store = (TreeNodeAdvSubItemStyleInfoStore)info.GetValue("SubItemStyle", typeof(TreeNodeAdvSubItemStyleInfoStore));
		m_style = new TreeNodeAdvSubItemStyleInfo(store);
		m_style.Changed += Style_Changed;
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("SubItemStyle", m_style.Store);
	}

	public void BeginInit()
	{
	}

	public void EndInit()
	{
	}

	public virtual void ResetBaseStyle()
	{
		SubItemStyle.ResetBaseStyle();
	}

	protected virtual bool ShouldSerializeBaseStyle()
	{
		return SubItemStyle.ShouldSerializeBaseStyle();
	}

	public virtual void ResetVisible()
	{
		SubItemStyle.ResetVisible();
	}

	protected virtual bool ShouldSerializeVisible()
	{
		return SubItemStyle.ShouldSerializeVisible();
	}

	public virtual void ResetLineAlignment()
	{
		SubItemStyle.ResetLineAlignment();
	}

	protected virtual bool ShouldSerializeLineAlignment()
	{
		return SubItemStyle.ShouldSerializeLineAlignment();
	}

	public virtual void ResetAlignment()
	{
		SubItemStyle.ResetAlignment();
	}

	protected virtual bool ShouldSerializeAlignment()
	{
		return SubItemStyle.ShouldSerializeAlignment();
	}

	public virtual void ResetText()
	{
		SubItemStyle.ResetText();
	}

	protected virtual bool ShouldSerializeText()
	{
		return SubItemStyle.ShouldSerializeText();
	}

	public virtual void ResetTextColor()
	{
		SubItemStyle.ResetTextColor();
	}

	protected virtual bool ShouldSerializeTextColor()
	{
		return SubItemStyle.ShouldSerializeTextColor();
	}

	public virtual void ResetHelpText()
	{
		SubItemStyle.ResetHelpText();
	}

	protected virtual bool ShouldSerializeHelpText()
	{
		return SubItemStyle.ShouldSerializeHelpText();
	}

	public virtual void ResetTag()
	{
		SubItemStyle.ResetTag();
	}

	protected virtual bool ShouldSerializeTag()
	{
		return SubItemStyle.ShouldSerializeTag();
	}

	public virtual void ResetLeftImage()
	{
		SubItemStyle.ResetLeftImage();
	}

	protected virtual bool ShouldSerializeLeftImage()
	{
		return SubItemStyle.ShouldSerializeLeftImage();
	}

	public virtual void ResetLeftImageIndices()
	{
		SubItemStyle.ResetLeftImageIndices();
	}

	protected virtual bool ShouldSerializeLeftImageIndices()
	{
		return SubItemStyle.ShouldSerializeLeftImageIndices();
	}

	public virtual void ResetLeftImagePadding()
	{
		SubItemStyle.ResetLeftImagePadding();
	}

	protected virtual bool ShouldSerializeLeftImagePadding()
	{
		return SubItemStyle.ShouldSerializeLeftImagePadding();
	}

	public virtual void ResetRightImage()
	{
		SubItemStyle.ResetRightImage();
	}

	protected virtual bool ShouldSerializeRightImage()
	{
		return SubItemStyle.ShouldSerializeRightImage();
	}

	public virtual void ResetRightImageIndices()
	{
		SubItemStyle.ResetRightImageIndices();
	}

	protected virtual bool ShouldSerializeRightImageIndices()
	{
		return SubItemStyle.ShouldSerializeRightImageIndices();
	}

	public virtual void ResetRightImagePadding()
	{
		SubItemStyle.ResetRightImagePadding();
	}

	protected virtual bool ShouldSerializeRightImagePadding()
	{
		return SubItemStyle.ShouldSerializeRightImagePadding();
	}

	public virtual void ResetBackground()
	{
		SubItemStyle.ResetBackground();
	}

	protected virtual bool ShouldSerializeBackground()
	{
		return SubItemStyle.ShouldSerializeBackground();
	}

	public virtual void ResetBorderSides()
	{
		SubItemStyle.ResetBorderSides();
	}

	protected virtual bool ShouldSerializeBorderSides()
	{
		return SubItemStyle.ShouldSerializeBorderSides();
	}

	public virtual void ResetBorderStyle()
	{
		SubItemStyle.ResetBorderStyle();
	}

	protected virtual bool ShouldSerializeBorderStyle()
	{
		return SubItemStyle.ShouldSerializeBorderStyle();
	}

	public virtual void ResetBorder3DStyle()
	{
		SubItemStyle.ResetBorder3DStyle();
	}

	protected virtual bool ShouldSerializeBorder3DStyle()
	{
		return SubItemStyle.ShouldSerializeBorder3DStyle();
	}

	public virtual void ResetBorderColor()
	{
		SubItemStyle.ResetBorderColor();
	}

	protected virtual bool ShouldSerializeBorderColor()
	{
		return SubItemStyle.ShouldSerializeBorderColor();
	}

	public virtual void ResetBorderSingle()
	{
		SubItemStyle.ResetBorderSingle();
	}

	protected virtual bool ShouldSerializeBorderSingle()
	{
		return SubItemStyle.ShouldSerializeBorderSingle();
	}

	public virtual void ResetFont()
	{
		SubItemStyle.ResetFont();
	}

	protected virtual bool ShouldSerializeFont()
	{
		return SubItemStyle.ShouldSerializeFont();
	}

	public TreeNodeAdvSubItem Clone()
	{
		TreeNodeAdvSubItem treeNodeAdvSubItem = new TreeNodeAdvSubItem();
		treeNodeAdvSubItem.SubItemStyle.ModifyStyle(SubItemStyle, StyleModifyType.Copy);
		return treeNodeAdvSubItem;
	}

	object ICloneable.Clone()
	{
		return MemberwiseClone();
	}

	int IComparable.CompareTo(object obj)
	{
		return 0;
	}

	public override string ToString()
	{
		return $"Text: {Text}";
	}

	protected internal virtual void SetParent(TreeNodeAdv node)
	{
		m_parent = node;
	}

	protected internal virtual void ResetParent()
	{
		m_parent = null;
	}

	private void Style_Changed(object sender, StyleChangedEventArgs e)
	{
		if (TreeNode != null)
		{
			TreeNode.OnSubItemChanged(e);
		}
	}

	public virtual void Draw(Graphics g, int x, int y, TreeNodeAdv mouseDownNode, Rectangle selectionBounds)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		m_rcBounds = new Rectangle(x, y, Width, Height);
		ControlDrawing.DrawBorderInternal(g, Bounds, BorderStyle, Border3DStyle, BorderSingle, BorderColor, BorderSides, useTransform: true);
		Rectangle backgroundBounds = BackgroundBounds;
		Region clip = g.Clip;
		using (Region region = new Region(backgroundBounds))
		{
			region.Intersect(clip);
			g.Clip = region;
			bool selected = DrawBackGround(g, selectionBounds, mouseDownNode);
			int startX = (IsMirrored ? backgroundBounds.Right : backgroundBounds.Left);
			startX = DrawLeftImages(g, startX);
			startX = DrawSubItemText(g, startX, selected);
			startX = DrawRightImages(g, startX);
		}
		g.Clip = clip;
	}

	private bool DrawBackGround(Graphics g, Rectangle bounds, TreeNodeAdv mouseDownNode)
	{
		BrushInfo brush = Background;
		bool flag = false;
		if (TreeView.FullRowSelect)
		{
			flag = TreeView.SelectedNodes.Contains(m_parent) && (!TreeView.HideSelection || TreeView.Focused);
			if (flag && (mouseDownNode == null || TreeView.SelectedNodes.Contains(mouseDownNode)))
			{
				if (TreeView.Focused)
				{
					brush = TreeView.SelectedNodeBackground.Clone();
				}
				else if (!TreeView.HideSelection)
				{
					brush = TreeView.InactiveSelectedNodeBackground.Clone();
				}
			}
			else
			{
				flag = false;
			}
			if (m_parent == mouseDownNode)
			{
				flag = true;
				brush = TreeView.SelectedNodeBackground.Clone();
			}
		}
		BrushPaint.FillRectangle(g, bounds, brush);
		return flag;
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

	protected internal Color GetForeColor(bool selected)
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
			if (!treeView.Enabled || !m_parent.Enabled)
			{
				return SystemColors.GrayText;
			}
			return SubItemStyle.TextColor;
		}
		return SubItemStyle.TextColor;
	}

	private int DrawSubItemText(Graphics g, int startX, bool selected)
	{
		bool isMirrored = IsMirrored;
		Color foreColor = GetForeColor(selected);
		using (SolidBrush brush = new SolidBrush(foreColor))
		{
			using StringFormat stringFormat = (StringFormat)StringFormat.GenericTypographic.Clone();
			stringFormat.FormatFlags = StringFormatFlags.LineLimit;
			stringFormat.LineAlignment = LineAlignment;
			stringFormat.Alignment = Alignment;
			stringFormat.Trimming = StringTrimming.EllipsisWord;
			if (isMirrored)
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			Size size = ControlDrawing.MeasureDisplayStringSize(g, Text, Font, isMirrored);
			Rectangle backgroundBounds = BackgroundBounds;
			if (isMirrored)
			{
				startX -= backgroundBounds.Width;
			}
			g.DrawString(layoutRectangle: new Rectangle(startX, backgroundBounds.Top, backgroundBounds.Width, backgroundBounds.Height), s: Text, font: Font, brush: brush, format: stringFormat);
			if (!isMirrored)
			{
				startX += size.Width;
			}
		}
		return startX;
	}

	private int DrawRightImages(Graphics g, int startX)
	{
		bool isMirrored = IsMirrored;
		int num = ((!isMirrored) ? 1 : (-1));
		Rectangle backgroundBounds = BackgroundBounds;
		startX += num * RightImagePadding;
		if (RightImage != null)
		{
			Size size = RightImage.Size;
			Rectangle srcRect = new Rectangle(Point.Empty, size);
			if (isMirrored)
			{
				startX -= size.Width;
			}
			g.DrawImage(destRect: new Rectangle(startX, backgroundBounds.Top, size.Width, backgroundBounds.Height), image: RightImage, srcRect: srcRect, srcUnit: GraphicsUnit.Pixel);
			if (!isMirrored)
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
					if (isMirrored)
					{
						startX -= num2;
					}
					if (num4 >= 0 && num4 < rightImageList.Images.Count)
					{
						g.DrawImage(rightImageList.Images[num4], startX, backgroundBounds.Top, num2, num2);
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
}
