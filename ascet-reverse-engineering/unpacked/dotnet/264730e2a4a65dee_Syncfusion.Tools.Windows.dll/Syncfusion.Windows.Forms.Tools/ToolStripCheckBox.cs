using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.ToolStrip)]
[ToolboxBitmap(typeof(ToolStripCheckBox), "ToolboxIcons.CheckBoxItem.bmp")]
[ToolboxItem(false)]
public class ToolStripCheckBox : ToolStripButton
{
	internal class CheckBoxInternalLayout
	{
		private const int MIN_CHECKMARK_HEIGHT = 13;

		private const int MIN_CHECKMARK_WIDTH = 13;

		private const int BORDER_WIDTH = 2;

		private const int CHECKMARK_OFFSET = 2;

		private Size m_szLastPreferred;

		private ToolStripCheckBox m_Item;

		private Rectangle m_rcCheckMark;

		private Rectangle m_rcText;

		private Size m_szCheckMark;

		private Size m_szText;

		public Size PreferredSize
		{
			get
			{
				if (m_Item != null && m_szLastPreferred == Size.Empty)
				{
					int num = 4 + m_Item.Padding.Horizontal;
					int num2 = 4 + m_Item.Padding.Vertical;
					int height = CheckMarkSize.Height;
					int width = CheckMarkSize.Width;
					int height2 = TextSize.Height;
					if (GetIsAlignmentInTwoLines())
					{
						num2 += height + height2 + 2;
						num += Math.Max(TextSize.Width, width);
					}
					else
					{
						num += width + TextSize.Width + 2;
						num2 += Math.Max(height2, height);
					}
					m_szLastPreferred = new Size(num, num2);
				}
				return m_szLastPreferred;
			}
		}

		internal Rectangle CheckMarkRectangle
		{
			get
			{
				if (m_Item != null && m_rcCheckMark == Rectangle.Empty)
				{
					int coordinateYOfCheckMark = GetCoordinateYOfCheckMark();
					int coordinateXOfCheckMark = GetCoordinateXOfCheckMark();
					m_rcCheckMark = new Rectangle(new Point(coordinateXOfCheckMark, coordinateYOfCheckMark), CheckMarkSize);
				}
				return m_rcCheckMark;
			}
		}

		internal Rectangle TextRectangle
		{
			get
			{
				if (m_Item != null && m_rcText == Rectangle.Empty)
				{
					int coordinateYOfText = GetCoordinateYOfText();
					int heightOfText = GetHeightOfText();
					int coordinateXOfText = GetCoordinateXOfText();
					int widthOfText = GetWidthOfText();
					m_rcText = new Rectangle(new Point(coordinateXOfText, coordinateYOfText), new Size(widthOfText, heightOfText));
				}
				return m_rcText;
			}
		}

		internal Size CheckMarkSize
		{
			get
			{
				if (m_Item != null && m_szCheckMark == Size.Empty)
				{
					m_szCheckMark = new Size(13, 13);
				}
				return m_szCheckMark;
			}
		}

		internal Size TextSize
		{
			get
			{
				if (m_Item != null && m_szText == Size.Empty)
				{
					m_szText = TextRenderer.MeasureText(m_Item.Text, m_Item.Font);
				}
				return m_szText;
			}
		}

		public CheckBoxInternalLayout(ToolStripCheckBox item)
		{
			m_Item = item;
		}

		private int GetCoordinateYOfCheckMark()
		{
			int result = 0;
			switch (m_Item.CheckAlign)
			{
			case ContentAlignment.TopLeft:
			case ContentAlignment.TopCenter:
			case ContentAlignment.TopRight:
				result = 2 + m_Item.Padding.Top;
				break;
			case ContentAlignment.MiddleLeft:
			case ContentAlignment.MiddleCenter:
			case ContentAlignment.MiddleRight:
			{
				int num = m_Item.Height - 4 - m_Item.Padding.Vertical;
				result = m_Item.Padding.Top + 2 + (num - 13) / 2;
				break;
			}
			case ContentAlignment.BottomLeft:
			case ContentAlignment.BottomCenter:
			case ContentAlignment.BottomRight:
				result = m_Item.Height - 2 - m_Item.Padding.Bottom - 13;
				break;
			}
			return result;
		}

		private int GetCoordinateXOfCheckMark()
		{
			int result = 0;
			bool flag = m_Item.RightToLeft == RightToLeft.Yes;
			switch (m_Item.CheckAlign)
			{
			case ContentAlignment.TopLeft:
			case ContentAlignment.MiddleLeft:
			case ContentAlignment.BottomLeft:
				result = (flag ? (m_Item.Width - 2 - m_Item.Padding.Right - 13) : (2 + m_Item.Padding.Left));
				break;
			case ContentAlignment.TopCenter:
			case ContentAlignment.MiddleCenter:
			case ContentAlignment.BottomCenter:
			{
				int num = m_Item.Width - 4 - m_Item.Padding.Horizontal;
				result = m_Item.Padding.Left + 2 + (num - 13) / 2;
				break;
			}
			case ContentAlignment.TopRight:
			case ContentAlignment.MiddleRight:
			case ContentAlignment.BottomRight:
				result = (flag ? (2 + m_Item.Padding.Left) : (m_Item.Width - 2 - m_Item.Padding.Right - 13));
				break;
			}
			return result;
		}

		private int GetCoordinateYOfText()
		{
			int num = 2 + m_Item.Padding.Top;
			if (m_Item.CheckAlign == ContentAlignment.TopCenter)
			{
				num += CheckMarkSize.Height + 2;
			}
			return num;
		}

		private int GetCoordinateXOfText()
		{
			int num = 2 + m_Item.Padding.Left;
			if (m_Item.RightToLeft == RightToLeft.Yes)
			{
				ContentAlignment checkAlign = m_Item.CheckAlign;
				if (checkAlign == ContentAlignment.TopRight || checkAlign == ContentAlignment.MiddleRight || checkAlign == ContentAlignment.BottomRight)
				{
					num += CheckMarkSize.Width + 2;
				}
			}
			else
			{
				ContentAlignment checkAlign2 = m_Item.CheckAlign;
				if (checkAlign2 == ContentAlignment.TopLeft || checkAlign2 == ContentAlignment.MiddleLeft || checkAlign2 == ContentAlignment.BottomLeft)
				{
					num += CheckMarkSize.Width + 2;
				}
			}
			return num;
		}

		private int GetHeightOfText()
		{
			int num = m_Item.Height - 4 - m_Item.Padding.Vertical;
			if (GetIsAlignmentInTwoLines())
			{
				num -= CheckMarkSize.Height + 2;
			}
			return num;
		}

		private int GetWidthOfText()
		{
			int num = m_Item.Width - 4 - m_Item.Padding.Horizontal;
			if (!GetIsAlignmentInTwoLines() && m_Item.CheckAlign != ContentAlignment.MiddleCenter)
			{
				num -= CheckMarkSize.Width + 2;
			}
			return num;
		}

		private bool GetIsAlignmentInTwoLines()
		{
			bool result = false;
			if (m_Item.CheckAlign == ContentAlignment.TopCenter || m_Item.CheckAlign == ContentAlignment.BottomCenter)
			{
				result = true;
			}
			return result;
		}
	}

	internal const int UNCHECKED = 0;

	internal const int UNCHECKED_SELECTED = 1;

	internal const int UNCHECKED_PRESSED = 2;

	internal const int CHECKED = 3;

	internal const int CHECKED_SELECTED = 4;

	internal const int CHECKED_PRESSED = 5;

	internal const int CHECKED_DISABLED = 6;

	internal const int UNCHECKED_DISABLED = 7;

	private CheckBoxInternalLayout m_InternalLayout;

	private ContentAlignment m_calignCheckAlignment = ContentAlignment.MiddleLeft;

	private bool m_bThreeState;

	private static ImageList m_imglstCheckMarkStates;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			base.BackgroundImage = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return base.BackgroundImageLayout;
		}
		set
		{
			base.BackgroundImageLayout = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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

	[Description("Gets or sets the horizontal and vertical alignment of the check mark on a ToolStripCheckBox control.")]
	[Category("Appearance")]
	[Bindable(true)]
	[DefaultValue(ContentAlignment.MiddleLeft)]
	public ContentAlignment CheckAlign
	{
		get
		{
			return m_calignCheckAlignment;
		}
		set
		{
			if (m_calignCheckAlignment != value)
			{
				m_calignCheckAlignment = value;
				m_InternalLayout = new CheckBoxInternalLayout(this);
				Size = GetPreferredSize(Size.Empty);
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(false)]
	[Browsable(false)]
	public new bool CheckOnClick
	{
		get
		{
			return false;
		}
		set
		{
			value = false;
		}
	}

	internal Office12ColorTable ColorTable
	{
		get
		{
			Office12ColorTable office12ColorTable = null;
			ToolStrip toolStrip = base.Owner;
			if (toolStrip != null && toolStrip.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
			{
				office12ColorTable = office12ToolStripRenderer.OfficeColorTable;
			}
			if (office12ColorTable == null)
			{
				office12ColorTable = new Office12ColorTable();
			}
			return office12ColorTable;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new ToolStripItemDisplayStyle DisplayStyle
	{
		get
		{
			return base.DisplayStyle;
		}
		set
		{
			base.DisplayStyle = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override Color ForeColor
	{
		get
		{
			return base.ForeColor;
		}
		set
		{
			base.ForeColor = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override Image Image
	{
		get
		{
			return base.Image;
		}
		set
		{
			base.Image = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new ContentAlignment ImageAlign
	{
		get
		{
			return base.ImageAlign;
		}
		set
		{
			base.ImageAlign = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new ToolStripItemImageScaling ImageScaling
	{
		get
		{
			return base.ImageScaling;
		}
		set
		{
			base.ImageScaling = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new Color ImageTransparentColor
	{
		get
		{
			return base.ImageTransparentColor;
		}
		set
		{
			base.ImageTransparentColor = value;
		}
	}

	internal CheckBoxInternalLayout InternalLayout
	{
		get
		{
			if (m_InternalLayout == null)
			{
				m_InternalLayout = new CheckBoxInternalLayout(this);
			}
			return m_InternalLayout;
		}
		set
		{
			m_InternalLayout = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new bool RightToLeftAutoMirrorImage
	{
		get
		{
			return base.RightToLeftAutoMirrorImage;
		}
		set
		{
			base.RightToLeftAutoMirrorImage = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override ToolStripTextDirection TextDirection
	{
		get
		{
			return base.TextDirection;
		}
		set
		{
			base.TextDirection = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new TextImageRelation TextImageRelation
	{
		get
		{
			return base.TextImageRelation;
		}
		set
		{
			base.TextImageRelation = value;
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets a value indicating whether the ToolStripCheckBox will allow three check states rather than two.")]
	[DefaultValue(false)]
	public bool ThreeState
	{
		get
		{
			return m_bThreeState;
		}
		set
		{
			m_bThreeState = value;
		}
	}

	static ToolStripCheckBox()
	{
		Bitmap value = new Bitmap(typeof(ToolStripCheckBox).Assembly.GetManifestResourceStream("Syncfusion.Windows.Forms.Tools.Controls.RibbonControlAdv.Resources.ToolStripCheckBox.bmp"));
		m_imglstCheckMarkStates = new ImageList();
		m_imglstCheckMarkStates.ColorDepth = ColorDepth.Depth32Bit;
		m_imglstCheckMarkStates.ImageSize = new Size(9, 9);
		m_imglstCheckMarkStates.Images.AddStrip(value);
	}

	protected override void OnClick(EventArgs e)
	{
		CheckOnClick = false;
		switch (base.CheckState)
		{
		case CheckState.Unchecked:
			base.CheckState = CheckState.Checked;
			break;
		case CheckState.Checked:
			if (!m_bThreeState)
			{
				base.CheckState = CheckState.Unchecked;
			}
			else
			{
				base.CheckState = CheckState.Indeterminate;
			}
			break;
		default:
			base.CheckState = CheckState.Unchecked;
			break;
		}
		base.OnClick(e);
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		return InternalLayout.PreferredSize;
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		m_InternalLayout = new CheckBoxInternalLayout(this);
		base.OnLayout(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		m_InternalLayout = new CheckBoxInternalLayout(this);
		base.OnRightToLeftChanged(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (base.Owner != null)
		{
			PaintCheckBoxBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
		}
	}

	internal Image GetCheckMarkImage(int iCheckMarkID)
	{
		Image image = null;
		return m_imglstCheckMarkStates.Images[iCheckMarkID];
	}

	private void PaintCheckBoxBackground(ToolStripItemRenderEventArgs e)
	{
		if (!(e.Item is ToolStripCheckBox toolStripCheckBox))
		{
			return;
		}
		Rectangle rc = new Rectangle(Point.Empty, e.Item.Size);
		if (rc.Width <= 0 || rc.Height <= 0)
		{
			return;
		}
		Rectangle buttonBackgroundRect = GetButtonBackgroundRect(e.Item, rc);
		if (buttonBackgroundRect.Width <= 0 || buttonBackgroundRect.Height <= 0)
		{
			return;
		}
		Graphics graphics = e.Graphics;
		int num = -1;
		Color empty = Color.Empty;
		Color empty2 = Color.Empty;
		Rectangle checkMarkRectangle = toolStripCheckBox.InternalLayout.CheckMarkRectangle;
		Rectangle rectangle = toolStripCheckBox.GetCurrentParent().RectangleToScreen(toolStripCheckBox.Bounds);
		bool selected = toolStripCheckBox.Selected;
		bool pressed = toolStripCheckBox.Pressed;
		bool flag = toolStripCheckBox.Checked;
		bool flag2 = !rectangle.Contains(Cursor.Position);
		bool isDisabled = GetIsDisabled(toolStripCheckBox);
		checkMarkRectangle.Width--;
		checkMarkRectangle.Height--;
		if (!isDisabled)
		{
			if (selected && pressed)
			{
				empty2 = ColorTable.CheckBoxBorderSelected;
				num = (flag ? 5 : 2);
			}
			else if (flag2 || !selected)
			{
				empty2 = ColorTable.CheckBoxBorder;
				num = (flag ? 3 : 0);
			}
			else
			{
				empty2 = ColorTable.CheckBoxBorderSelected;
				num = ((!flag) ? 1 : 4);
			}
		}
		else
		{
			empty2 = SystemColors.GrayText;
			num = (flag ? 6 : 7);
		}
		using (Pen pen = new Pen(empty2))
		{
			graphics.DrawRectangle(pen, checkMarkRectangle);
		}
		checkMarkRectangle.Inflate(-1, -1);
		using (Pen pen2 = new Pen(Color.White))
		{
			graphics.DrawRectangle(pen2, checkMarkRectangle);
		}
		checkMarkRectangle.Inflate(-1, -1);
		if (toolStripCheckBox.CheckState == CheckState.Indeterminate)
		{
			using Brush brush = new SolidBrush(Color.DarkGray);
			checkMarkRectangle.Width++;
			checkMarkRectangle.Height++;
			graphics.FillRectangle(brush, checkMarkRectangle);
		}
		else
		{
			using Image image = toolStripCheckBox.GetCheckMarkImage(num);
			graphics.DrawImage(image, checkMarkRectangle.X, checkMarkRectangle.Y);
		}
		empty = (isDisabled ? SystemColors.GrayText : ColorTable.RibbonTabText);
		TextRenderer.DrawText(graphics, toolStripCheckBox.Text, toolStripCheckBox.Font, toolStripCheckBox.InternalLayout.TextRectangle, empty, GetTextFormatFlags(toolStripCheckBox.TextAlign));
	}

	private bool GetIsDisabled(ToolStripItem item)
	{
		if (item.Enabled)
		{
			return !item.GetCurrentParent().Enabled;
		}
		return true;
	}

	private TextFormatFlags GetTextFormatFlags(ContentAlignment alignment)
	{
		return alignment switch
		{
			ContentAlignment.BottomCenter => TextFormatFlags.Bottom | TextFormatFlags.HorizontalCenter, 
			ContentAlignment.BottomLeft => TextFormatFlags.Bottom, 
			ContentAlignment.BottomRight => TextFormatFlags.Bottom | TextFormatFlags.Right, 
			ContentAlignment.MiddleCenter => TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter, 
			ContentAlignment.MiddleLeft => TextFormatFlags.VerticalCenter, 
			ContentAlignment.MiddleRight => TextFormatFlags.Right | TextFormatFlags.VerticalCenter, 
			ContentAlignment.TopCenter => TextFormatFlags.HorizontalCenter, 
			ContentAlignment.TopLeft => TextFormatFlags.Default, 
			ContentAlignment.TopRight => TextFormatFlags.Right, 
			_ => TextFormatFlags.Default, 
		};
	}

	protected Rectangle GetButtonBackgroundRect(ToolStripItem item, Rectangle rc)
	{
		Rectangle result = rc;
		if (!(item is ToolStripOverflowButton))
		{
			result.Inflate(-1, -1);
		}
		return result;
	}
}
