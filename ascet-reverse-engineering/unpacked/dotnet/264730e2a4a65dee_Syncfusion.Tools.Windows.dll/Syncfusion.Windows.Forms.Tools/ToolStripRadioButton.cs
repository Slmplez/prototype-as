using System;
using System.CodeDom;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.ToolStrip)]
[ToolboxItem(false)]
[DesignerSerializer(typeof(RadioButtonCodeDomSerializer), typeof(CodeDomSerializer))]
[ToolboxBitmap(typeof(ToolStripRadioButton), "ToolboxIcons.RadioButtonItem.bmp")]
public class ToolStripRadioButton : ToolStripButton
{
	internal class RadioButtonInternalLayout
	{
		internal const int MIN_CHECKMARK_HEIGHT = 12;

		internal const int MIN_CHECKMARK_WIDTH = 12;

		private const int BORDER_WIDTH = 2;

		private const int CHECKMARK_OFFSET = 2;

		private Size m_szLastPreferred;

		private ToolStripRadioButton m_Item;

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
					m_szCheckMark = new Size(12, 12);
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

		public RadioButtonInternalLayout(ToolStripRadioButton item)
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
				result = m_Item.Padding.Top + 2 + (num - 12) / 2;
				break;
			}
			case ContentAlignment.BottomLeft:
			case ContentAlignment.BottomCenter:
			case ContentAlignment.BottomRight:
				result = m_Item.Height - 2 - m_Item.Padding.Bottom - 12;
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
				result = (flag ? (m_Item.Width - 2 - m_Item.Padding.Right - 12) : (2 + m_Item.Padding.Left));
				break;
			case ContentAlignment.TopCenter:
			case ContentAlignment.MiddleCenter:
			case ContentAlignment.BottomCenter:
			{
				int num = m_Item.Width - 4 - m_Item.Padding.Horizontal;
				result = m_Item.Padding.Left + 2 + (num - 12) / 2;
				break;
			}
			case ContentAlignment.TopRight:
			case ContentAlignment.MiddleRight:
			case ContentAlignment.BottomRight:
				result = (flag ? (2 + m_Item.Padding.Left) : (m_Item.Width - 2 - m_Item.Padding.Right - 12));
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

	internal class RadioButtonCodeDomSerializer : CodeDomSerializer
	{
		public override object Serialize(IDesignerSerializationManager manager, object value)
		{
			CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(ToolStripRadioButton).BaseType, typeof(CodeDomSerializer));
			object obj = codeDomSerializer.Serialize(manager, value);
			if (obj is CodeStatementCollection)
			{
				CodeStatementCollection codeStatementCollection = obj as CodeStatementCollection;
				int num = -1;
				int num2 = -1;
				if (codeStatementCollection.Count > 0)
				{
					int i = 0;
					for (int count = codeStatementCollection.Count; i < count; i++)
					{
						if (codeStatementCollection[i] is CodeAssignStatement { Left: CodePropertyReferenceExpression left })
						{
							if (left.PropertyName == "Checked")
							{
								num2 = i;
							}
							else if (left.PropertyName == "GroupID")
							{
								num = i;
							}
						}
					}
					if (num2 != -1 && num != -1)
					{
						CodeAssignStatement value2 = codeStatementCollection[num2] as CodeAssignStatement;
						codeStatementCollection[num2] = codeStatementCollection[num];
						codeStatementCollection[num] = value2;
					}
				}
			}
			return obj;
		}
	}

	internal const int UNCHECKED = 0;

	internal const int UNCHECKED_SELECTED = 1;

	internal const int UNCHECKED_PRESSED = 2;

	internal const int CHECKED = 3;

	internal const int CHECKED_SELECTED = 4;

	internal const int CHECKED_PRESSED = 5;

	private RadioButtonInternalLayout m_InternalLayout;

	private ContentAlignment m_calignCheckAlignment = ContentAlignment.MiddleLeft;

	private int m_iGroupID;

	private static Blend m_blRadioButtonUncheckedBackGround;

	private static Blend m_blRadioButtonCheckedBackGround;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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

	[DefaultValue(ContentAlignment.MiddleLeft)]
	[Category("Appearance")]
	[Bindable(true)]
	[Description("Gets or sets the horizontal and vertical alignment of the check mark on a ToolStripRadioButton control.")]
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
				m_InternalLayout = new RadioButtonInternalLayout(this);
				Size = GetPreferredSize(Size.Empty);
				Invalidate();
			}
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

	[Category("Appearance")]
	[Description(" Gets or sets a value indicating whether the ToolStripRadioButton is pressed or not pressed.")]
	[DefaultValue(false)]
	public new bool Checked
	{
		get
		{
			return base.Checked;
		}
		set
		{
			base.Checked = value;
			CheckCurrentButton();
		}
	}

	[DefaultValue(0)]
	[Category("Appearance")]
	[Description("Gets or sets a value indicating whether the ToolStripRadio is in the pressed or not pressed state by default, or is in an indeterminate state.")]
	[Browsable(false)]
	public new CheckState CheckState
	{
		get
		{
			return base.CheckState;
		}
		set
		{
			base.CheckState = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(false)]
	[Browsable(false)]
	[Category("Behavior")]
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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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

	[Category("Behavior")]
	[Description("Gets or sets group's identifier which is used to create groups of ToolStripRadioButton controls on the same parent.")]
	[DefaultValue(0)]
	public virtual int GroupID
	{
		get
		{
			return m_iGroupID;
		}
		set
		{
			if (m_iGroupID != value)
			{
				CheckRemainingUncheckedButtons();
				m_iGroupID = value;
				if (!Checked)
				{
					CheckCurrentUncheckedButton();
				}
				else
				{
					CheckCurrentButton();
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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

	internal RadioButtonInternalLayout InternalLayout
	{
		get
		{
			if (m_InternalLayout == null)
			{
				m_InternalLayout = new RadioButtonInternalLayout(this);
			}
			return m_InternalLayout;
		}
		set
		{
			m_InternalLayout = value;
		}
	}

	internal Bitmap RadioButtonChecked => CreateImageChecked(ColorTable.RadioButtonExternalBorder, ColorTable.RadioButtonCheckedBackgroundGradientEnd, 200, pRadioButtonSelected: false);

	internal Bitmap RadioButtonCheckedSelected => CreateImageChecked(ColorTable.RadioButtonBorderSelected, ColorTable.RadioButtonCheckedSelectedBackgroundGradientEnd, 180, pRadioButtonSelected: true);

	internal Bitmap RadioButtonCheckedPressed => CreateImageChecked(ColorTable.RadioButtonBorderSelected, ColorTable.RadioButtonCheckedPressedBackgroundGradientEnd, 180, pRadioButtonSelected: false);

	internal Bitmap RadioButtonUnchecked => CreateImageUnchecked(ColorTable.RadioButtonUncheckedGradientBegin, Color.White);

	internal Bitmap RadioButtonUncheckedSelected => CreateImageUnchecked(ColorTable.RadioButtonUncheckedSelectedGradientBegin, ColorTable.RadioButtonUncheckedSelectedGradientEnd);

	internal Bitmap RadioButtonUncheckedPressed => CreateImageUnchecked(ColorTable.RadioButtonUncheckedPressedGradientBegin, ColorTable.RadioButtonUncheckedSelectedGradientEnd);

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

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
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

	static ToolStripRadioButton()
	{
		m_blRadioButtonUncheckedBackGround = new Blend();
		m_blRadioButtonUncheckedBackGround.Positions = new float[4] { 0f, 0.27f, 0.27f, 1f };
		m_blRadioButtonUncheckedBackGround.Factors = new float[4] { 0f, 0.5f, 0.5f, 1f };
		m_blRadioButtonCheckedBackGround = new Blend();
		m_blRadioButtonCheckedBackGround.Positions = new float[4] { 0f, 0.65f, 0.65f, 1f };
		m_blRadioButtonCheckedBackGround.Factors = new float[4] { 0f, 0.5f, 0.5f, 1f };
	}

	~ToolStripRadioButton()
	{
		Clear();
	}

	protected override void OnClick(EventArgs e)
	{
		CheckOnClick = false;
		Checked = true;
		base.OnClick(e);
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		return InternalLayout.PreferredSize;
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		m_InternalLayout = new RadioButtonInternalLayout(this);
		base.OnLayout(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		m_InternalLayout = new RadioButtonInternalLayout(this);
		base.OnRightToLeftChanged(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (base.Owner != null)
		{
			PaintRadioButtonBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
		}
	}

	protected override void OnOwnerChanged(EventArgs e)
	{
		base.OnOwnerChanged(e);
		if (!Checked)
		{
			CheckCurrentUncheckedButton();
		}
		else
		{
			CheckCurrentButton();
		}
	}

	private void Clear()
	{
	}

	protected internal virtual void CheckCurrentButton()
	{
		if (!Checked)
		{
			return;
		}
		ToolStrip toolStrip = base.Owner;
		if (toolStrip == null)
		{
			return;
		}
		ToolStripItemCollection items = toolStrip.Items;
		int i = 0;
		for (int count = items.Count; i < count; i++)
		{
			ToolStripItem toolStripItem = items[i];
			if (toolStripItem != this && toolStripItem is ToolStripRadioButton)
			{
				ToolStripRadioButton toolStripRadioButton = toolStripItem as ToolStripRadioButton;
				if (toolStripRadioButton.Checked && m_iGroupID == toolStripRadioButton.GroupID)
				{
					toolStripRadioButton.Checked = false;
				}
			}
		}
	}

	protected internal virtual void CheckCurrentUncheckedButton()
	{
		bool flag = false;
		ToolStrip toolStrip = base.Owner;
		if (toolStrip == null)
		{
			return;
		}
		ToolStripItemCollection items = toolStrip.Items;
		int i = 0;
		for (int count = items.Count; i < count; i++)
		{
			ToolStripItem toolStripItem = items[i];
			if (toolStripItem != this && toolStripItem is ToolStripRadioButton)
			{
				ToolStripRadioButton toolStripRadioButton = toolStripItem as ToolStripRadioButton;
				if (toolStripRadioButton.Checked && m_iGroupID == toolStripRadioButton.GroupID)
				{
					flag = true;
					break;
				}
			}
		}
		if (!flag)
		{
			Checked = true;
		}
	}

	protected internal virtual void CheckRemainingUncheckedButtons()
	{
		ToolStrip toolStrip = base.Owner;
		if (!Checked || toolStrip == null)
		{
			return;
		}
		ToolStripItemCollection items = toolStrip.Items;
		int i = 0;
		for (int count = items.Count; i < count; i++)
		{
			ToolStripItem toolStripItem = items[i];
			if (toolStripItem != this && toolStripItem is ToolStripRadioButton)
			{
				ToolStripRadioButton toolStripRadioButton = toolStripItem as ToolStripRadioButton;
				if (!toolStripRadioButton.Checked && m_iGroupID == toolStripRadioButton.GroupID)
				{
					toolStripRadioButton.Checked = true;
					break;
				}
			}
		}
	}

	private void PaintRadioButtonBackground(ToolStripItemRenderEventArgs e)
	{
		if (!(e.Item is ToolStripRadioButton toolStripRadioButton))
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
		Color empty3 = Color.Empty;
		Rectangle checkMarkRectangle = toolStripRadioButton.InternalLayout.CheckMarkRectangle;
		Rectangle rectangle = toolStripRadioButton.GetCurrentParent().RectangleToScreen(toolStripRadioButton.Bounds);
		bool selected = toolStripRadioButton.Selected;
		bool pressed = toolStripRadioButton.Pressed;
		bool flag = toolStripRadioButton.Checked;
		bool flag2 = !rectangle.Contains(Cursor.Position);
		bool isDisabled = GetIsDisabled(toolStripRadioButton);
		checkMarkRectangle.Width--;
		checkMarkRectangle.Height--;
		if (!isDisabled)
		{
			if (selected && pressed)
			{
				empty2 = ColorTable.RadioButtonBorderSelected;
				empty3 = ColorTable.RadioButtonInternalBorderPressed;
				num = (flag ? 5 : 2);
			}
			else if (flag2 || !selected)
			{
				empty2 = ColorTable.RadioButtonExternalBorder;
				empty3 = ColorTable.RadioButtonInternalBorder;
				num = (flag ? 3 : 0);
			}
			else
			{
				empty2 = ColorTable.RadioButtonBorderSelected;
				empty3 = ColorTable.RadioButtonInternalBorderSelected;
				num = ((!flag) ? 1 : 4);
			}
		}
		else
		{
			empty2 = SystemColors.GrayText;
			empty3 = Color.White;
			num = (flag ? 3 : 0);
		}
		SmoothingMode smoothingMode = graphics.SmoothingMode;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		Image image = GetBitmapForCheckMark(num);
		bool flag3 = false;
		if (isDisabled)
		{
			image = ToolStripRenderer.CreateDisabledImage(image);
			flag3 = true;
		}
		checkMarkRectangle.Inflate(-1, -1);
		graphics.DrawImage(image, checkMarkRectangle.X, checkMarkRectangle.Y);
		if (flag3)
		{
			image.Dispose();
		}
		checkMarkRectangle.Inflate(1, 1);
		using (Pen pen = new Pen(empty2))
		{
			graphics.DrawEllipse(pen, checkMarkRectangle);
		}
		checkMarkRectangle.Inflate(-1, -1);
		using (Pen pen2 = new Pen(empty3))
		{
			graphics.DrawEllipse(pen2, checkMarkRectangle);
		}
		graphics.SmoothingMode = smoothingMode;
		empty = (isDisabled ? SystemColors.GrayText : ColorTable.RibbonTabText);
		TextRenderer.DrawText(graphics, toolStripRadioButton.Text, toolStripRadioButton.Font, toolStripRadioButton.InternalLayout.TextRectangle, empty, GetTextFormatFlags(toolStripRadioButton.TextAlign));
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

	private Image GetBitmapForCheckMark(int iCheckMarkID)
	{
		Bitmap bitmap = null;
		return iCheckMarkID switch
		{
			3 => RadioButtonChecked, 
			4 => RadioButtonCheckedSelected, 
			5 => RadioButtonCheckedPressed, 
			0 => RadioButtonUnchecked, 
			1 => RadioButtonUncheckedSelected, 
			2 => RadioButtonUncheckedPressed, 
			_ => RadioButtonChecked, 
		};
	}

	private Bitmap CreateImageChecked(Color pRadioButtonBorder, Color pRadioButtonBackground, int pDiluteCoefficient, bool pRadioButtonSelected)
	{
		Bitmap bitmap = new Bitmap(9, 9);
		using Graphics graphics = Graphics.FromImage(bitmap);
		Rectangle rectangle = new Rectangle(0, 0, 9, 9);
		graphics.Save();
		graphics.Clear(Color.Transparent);
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		rectangle.Inflate(-1, -1);
		using (Pen pen = new Pen(Office12ColorTable.GetAlphaBlendedColor(pRadioButtonBorder, Color.White, pDiluteCoefficient)))
		{
			graphics.DrawEllipse(pen, rectangle);
		}
		rectangle.Inflate(-1, -1);
		using (GraphicsPath path = GetCircularPath(rectangle))
		{
			using PathGradientBrush pathGradientBrush = new PathGradientBrush(path);
			pathGradientBrush.CenterColor = Color.White;
			pathGradientBrush.CenterPoint = new PointF((float)rectangle.X + 1f, rectangle.Y);
			pathGradientBrush.SurroundColors = new Color[1] { pRadioButtonBackground };
			if (!pRadioButtonSelected)
			{
				pathGradientBrush.Blend = m_blRadioButtonCheckedBackGround;
			}
			graphics.FillPath(pathGradientBrush, path);
		}
		using GraphicsPath path2 = GetRectangularPath(rectangle);
		using Pen pen2 = new Pen(ColorTable.RadioButtonCheckedInsideBorder);
		graphics.DrawPath(pen2, path2);
		return bitmap;
	}

	private Bitmap CreateImageUnchecked(Color pRadioButtonBorder, Color pRadioButtonGradientBegin)
	{
		Bitmap bitmap = new Bitmap(9, 9);
		using Graphics graphics = Graphics.FromImage(bitmap);
		Rectangle rc = new Rectangle(0, 0, 9, 9);
		graphics.Clear(Color.Transparent);
		using GraphicsPath path = GetCircularPath(rc);
		using PathGradientBrush pathGradientBrush = new PathGradientBrush(path);
		pathGradientBrush.CenterColor = pRadioButtonGradientBegin;
		pathGradientBrush.CenterPoint = new PointF((float)rc.Right - 1f, (float)rc.Bottom - 1f);
		pathGradientBrush.SurroundColors = new Color[1] { pRadioButtonBorder };
		pathGradientBrush.Blend = m_blRadioButtonUncheckedBackGround;
		graphics.FillPath(pathGradientBrush, path);
		return bitmap;
	}

	private GraphicsPath GetCircularPath(Rectangle rc)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddEllipse(rc);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	private GraphicsPath GetRectangularPath(Rectangle rc)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLine(rc.X + 1, rc.Y, rc.Right - 1, rc.Y);
		graphicsPath.AddLine(rc.Right - 1, rc.Y, rc.Right - 1, rc.Y + 1);
		graphicsPath.AddLine(rc.Right - 1, rc.Y + 1, rc.Right, rc.Y + 1);
		graphicsPath.AddLine(rc.Right, rc.Y + 1, rc.Right, rc.Bottom - 1);
		graphicsPath.AddLine(rc.Right, rc.Bottom - 1, rc.Right - 1, rc.Bottom - 1);
		graphicsPath.AddLine(rc.Right - 1, rc.Bottom - 1, rc.Right - 1, rc.Bottom);
		graphicsPath.AddLine(rc.Right - 1, rc.Bottom, rc.X + 1, rc.Bottom);
		graphicsPath.AddLine(rc.X + 1, rc.Bottom, rc.X + 1, rc.Bottom - 1);
		graphicsPath.AddLine(rc.X + 1, rc.Bottom - 1, rc.X, rc.Bottom - 1);
		graphicsPath.AddLine(rc.X, rc.Bottom - 1, rc.X, rc.Y + 1);
		graphicsPath.AddLine(rc.X, rc.Y + 1, rc.X + 1, rc.Y + 1);
		graphicsPath.AddLine(rc.X + 1, rc.Y + 1, rc.X + 1, rc.Y);
		graphicsPath.CloseFigure();
		return graphicsPath;
	}
}
