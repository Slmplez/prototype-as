using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(ToolStripSplitButtonEx), "ToolboxIcons.ToolStripSplitButtonEx.bmp")]
[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.ToolStrip | ToolStripItemDesignerAvailability.StatusStrip)]
[ToolboxItem(false)]
public class ToolStripSplitButtonEx : ToolStripDropDownItem, IMessageFilter
{
	internal enum SplitButtonState
	{
		None,
		ImageSelected,
		ImagePressed,
		ButtonSelected,
		ButtonPressed
	}

	internal class SplitButtonExInternalLayout
	{
		private const int MIN_IMAGE_HEIGHT = 16;

		private const int MIN_IMAGE_WIDTH = 16;

		private const int BORDER_WIDTH = 2;

		private const int SEPARATOR_WIDTH = 2;

		private const int DROPDOWN_BUTTON_WIDTH = 11;

		private Size m_szLastPreferredSize;

		private ToolStripSplitButtonEx m_Item;

		private Rectangle m_rcImage;

		private Rectangle m_rcText;

		private Rectangle m_rcDropDownButton;

		private Size m_szImage;

		private Size m_szText;

		private int m_iSeparatorPosition = -1;

		public Size PreferredSize
		{
			get
			{
				if (m_Item != null && m_szLastPreferredSize == Size.Empty)
				{
					int num = 4 + m_Item.Padding.Horizontal;
					int num2 = 4 + m_Item.Padding.Vertical;
					int height = ImageSize.Height;
					num += ImageSize.Width;
					if ((m_Item.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image)
					{
						num += 2;
					}
					int height2 = TextSize.Height;
					num += TextSize.Width;
					num += 11;
					num2 += Math.Max(height2, height);
					m_szLastPreferredSize = new Size(num, num2);
				}
				return m_szLastPreferredSize;
			}
		}

		internal Rectangle ImageRectangle
		{
			get
			{
				if (m_Item != null && m_rcImage == Rectangle.Empty)
				{
					Size imageSize = ImageSize;
					int num = 2 + m_Item.Padding.Top;
					int y = m_Item.Height - 2 - m_Item.Padding.Bottom - imageSize.Height;
					int y2 = num + (m_Item.Height - 4 - m_Item.Padding.Vertical - imageSize.Height) / 2;
					if (m_Item.RightToLeft == RightToLeft.Yes)
					{
						int x = m_Item.Width - (2 + m_Item.Padding.Right + imageSize.Width);
						switch (m_Item.ImageAlign)
						{
						case ContentAlignment.TopRight:
							m_rcImage = new Rectangle(new Point(x, num), imageSize);
							break;
						case ContentAlignment.MiddleRight:
							m_rcImage = new Rectangle(new Point(x, y2), imageSize);
							break;
						case ContentAlignment.BottomRight:
							m_rcImage = new Rectangle(new Point(x, y), imageSize);
							break;
						default:
							m_rcImage = new Rectangle(new Point(x, y2), imageSize);
							break;
						}
					}
					else
					{
						int x2 = 2 + m_Item.Padding.Left;
						switch (m_Item.ImageAlign)
						{
						case ContentAlignment.TopLeft:
							m_rcImage = new Rectangle(new Point(x2, num), imageSize);
							break;
						case ContentAlignment.MiddleLeft:
							m_rcImage = new Rectangle(new Point(x2, y2), imageSize);
							break;
						case ContentAlignment.BottomLeft:
							m_rcImage = new Rectangle(new Point(x2, y), imageSize);
							break;
						default:
							m_rcImage = new Rectangle(new Point(x2, y2), imageSize);
							break;
						}
					}
				}
				return m_rcImage;
			}
		}

		internal Rectangle TextRectangle
		{
			get
			{
				if (m_Item != null && m_rcText == Rectangle.Empty)
				{
					int y = 2 + m_Item.Padding.Top;
					int height = m_Item.Height - 4 - m_Item.Padding.Vertical;
					if (m_Item.RightToLeft == RightToLeft.Yes)
					{
						int num = 2 + m_Item.Padding.Left + 11;
						int width = m_Item.Width - num - 2 - m_Item.Padding.Right - ImageSize.Width - 2;
						m_rcText = new Rectangle(new Point(num, y), new Size(width, height));
					}
					else
					{
						int num2 = 2 + m_Item.Padding.Left + ImageSize.Width + 2;
						int width2 = m_Item.Width - num2 - 2 - m_Item.Padding.Right - 11;
						m_rcText = new Rectangle(new Point(num2, y), new Size(width2, height));
					}
				}
				return m_rcText;
			}
		}

		internal Rectangle DropDownButtonRectangle
		{
			get
			{
				if (m_Item != null && m_rcDropDownButton == Rectangle.Empty)
				{
					int y = 2 + m_Item.Padding.Top;
					int height = m_Item.Height - 4 - m_Item.Padding.Vertical;
					if (m_Item.RightToLeft == RightToLeft.Yes)
					{
						int x = 2 + m_Item.Padding.Left;
						m_rcDropDownButton = new Rectangle(new Point(x, y), new Size(11, height));
					}
					else
					{
						int num = 2 + m_Item.Padding.Right;
						m_rcDropDownButton = new Rectangle(new Point(m_Item.Width - num - 11, y), new Size(11, height));
					}
				}
				return m_rcDropDownButton;
			}
		}

		internal int SeparatorPosition
		{
			get
			{
				if (m_Item != null && m_iSeparatorPosition == -1)
				{
					if ((m_Item.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image)
					{
						if (m_Item.RightToLeft == RightToLeft.Yes)
						{
							m_iSeparatorPosition = ImageRectangle.Left - 2;
						}
						else
						{
							m_iSeparatorPosition = ImageRectangle.Right + 2;
						}
					}
					else
					{
						m_iSeparatorPosition = -1;
					}
				}
				return m_iSeparatorPosition;
			}
		}

		internal Size ImageSize
		{
			get
			{
				if (m_Item != null && m_szImage == Size.Empty && (m_Item.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image)
				{
					int num = 0;
					int num2 = 0;
					Size size = new Size(16, 16);
					if (m_Item.Owner != null)
					{
						size = m_Item.Owner.ImageScalingSize;
					}
					num2 = size.Width;
					num = size.Height;
					if (m_Item.ImageScaling == ToolStripItemImageScaling.None && m_Item.Image != null)
					{
						num2 = m_Item.Image.Width;
						num = m_Item.Image.Height;
					}
					m_szImage = new Size(num2, num);
				}
				return m_szImage;
			}
		}

		internal Size TextSize
		{
			get
			{
				if (m_Item != null && m_szText == Size.Empty && (m_Item.DisplayStyle & ToolStripItemDisplayStyle.Text) == ToolStripItemDisplayStyle.Text)
				{
					m_szText = TextRenderer.MeasureText(m_Item.Text, m_Item.Font);
				}
				return m_szText;
			}
		}

		public SplitButtonExInternalLayout(ToolStripSplitButtonEx item)
		{
			m_Item = item;
		}
	}

	private SplitButtonExInternalLayout m_InternalLayout;

	private SplitButtonState m_eButtonState;

	private Rectangle m_rcImage;

	private Rectangle m_rcButton;

	private bool m_bLeftMouseButtonPressedOnImage;

	private bool m_bLeftMouseButtonPressedOnButton;

	public override Font Font
	{
		get
		{
			return base.Font;
		}
		set
		{
			if (base.OwnerItem != null)
			{
				base.Font = value;
				return;
			}
			ToolStripDropDown toolStripDropDown = base.DropDown;
			base.DropDown = null;
			base.Font = value;
			base.DropDown = toolStripDropDown;
		}
	}

	internal SplitButtonExInternalLayout InternalLayout
	{
		get
		{
			if (m_InternalLayout == null)
			{
				m_InternalLayout = new SplitButtonExInternalLayout(this);
			}
			return m_InternalLayout;
		}
		set
		{
			m_InternalLayout = value;
		}
	}

	internal Rectangle ImageBounds
	{
		get
		{
			if (m_rcImage == Rectangle.Empty && (DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image)
			{
				if (RightToLeft == RightToLeft.Yes)
				{
					m_rcImage = new Rectangle(new Point(InternalLayout.SeparatorPosition, 0), new Size(base.Width - InternalLayout.SeparatorPosition, base.Height));
				}
				else
				{
					m_rcImage = new Rectangle(Point.Empty, new Size(InternalLayout.SeparatorPosition, base.Height));
				}
			}
			return m_rcImage;
		}
	}

	internal Rectangle ButtonBounds
	{
		get
		{
			if (m_rcButton == Rectangle.Empty)
			{
				if (DisplayStyle == ToolStripItemDisplayStyle.Text || DisplayStyle == ToolStripItemDisplayStyle.None)
				{
					m_rcButton = new Rectangle(Point.Empty, Size);
				}
				else if (DisplayStyle == ToolStripItemDisplayStyle.ImageAndText)
				{
					if (RightToLeft == RightToLeft.Yes)
					{
						m_rcButton = new Rectangle(Point.Empty, new Size(InternalLayout.SeparatorPosition, base.Height));
					}
					else
					{
						m_rcButton = new Rectangle(new Point(InternalLayout.SeparatorPosition, 0), new Size(base.Width - InternalLayout.SeparatorPosition, base.Height));
					}
				}
				else if (DisplayStyle == ToolStripItemDisplayStyle.Image)
				{
					if (RightToLeft == RightToLeft.Yes)
					{
						m_rcButton = new Rectangle(Point.Empty, new Size(InternalLayout.SeparatorPosition, base.Height));
					}
					else
					{
						m_rcButton = new Rectangle(new Point(InternalLayout.SeparatorPosition, 0), new Size(base.Width - InternalLayout.SeparatorPosition, base.Height));
					}
				}
			}
			return m_rcButton;
		}
	}

	internal SplitButtonState ButtonState
	{
		get
		{
			return m_eButtonState;
		}
		set
		{
			if (m_eButtonState != value)
			{
				m_eButtonState = value;
				Invalidate();
			}
		}
	}

	protected override Point DropDownLocation
	{
		get
		{
			ToolStrip toolStrip = base.Owner;
			if (toolStrip != null && !base.DesignMode)
			{
				Screen primaryScreen = Screen.PrimaryScreen;
				int height = primaryScreen.Bounds.Height;
				int height2 = base.DropDown.Height;
				Point result = toolStrip.PointToScreen(new Point(Bounds.Left, Bounds.Bottom));
				if (height - result.Y > height2)
				{
					return result;
				}
				result.Y = toolStrip.PointToScreen(Bounds.Location).Y - height2;
				return result;
			}
			return base.DropDownLocation;
		}
	}

	public ToolStripSplitButtonEx()
	{
		Image = new Bitmap(typeof(ToolStripButton), "blank.bmp");
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		return InternalLayout.PreferredSize;
	}

	protected override ToolStripDropDown CreateDefaultDropDown()
	{
		return new ToolStripDropDownMenu();
	}

	protected override void OnParentRightToLeftChanged(EventArgs e)
	{
		m_rcButton = Rectangle.Empty;
		m_rcImage = Rectangle.Empty;
		m_InternalLayout = new SplitButtonExInternalLayout(this);
		base.OnParentRightToLeftChanged(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		m_rcButton = Rectangle.Empty;
		m_rcImage = Rectangle.Empty;
		m_InternalLayout = new SplitButtonExInternalLayout(this);
		base.OnRightToLeftChanged(e);
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		m_rcButton = Rectangle.Empty;
		m_rcImage = Rectangle.Empty;
		m_InternalLayout = new SplitButtonExInternalLayout(this);
		base.OnLayout(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (base.Owner != null && base.Owner.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
		{
			Graphics graphics = e.Graphics;
			office12ToolStripRenderer.PaintSplitButtonExBackground(new ToolStripItemRenderEventArgs(graphics, this));
		}
	}

	protected override void OnMouseMove(MouseEventArgs mea)
	{
		if (m_bLeftMouseButtonPressedOnImage)
		{
			if (ImageBounds.Contains(mea.Location))
			{
				ButtonState = SplitButtonState.ImagePressed;
			}
			else
			{
				ButtonState = SplitButtonState.None;
			}
		}
		else if ((base.DropDown.Visible && base.DropDown.OwnerItem == this) || m_bLeftMouseButtonPressedOnButton)
		{
			ButtonState = SplitButtonState.ButtonPressed;
		}
		else if (ImageBounds.Contains(mea.Location))
		{
			ButtonState = SplitButtonState.ImageSelected;
		}
		else if (ButtonBounds.Contains(mea.Location))
		{
			ButtonState = SplitButtonState.ButtonSelected;
		}
		base.OnMouseMove(mea);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		if (base.DropDown.Visible && base.DropDown.OwnerItem == this)
		{
			ButtonState = SplitButtonState.ButtonPressed;
		}
		else
		{
			ButtonState = SplitButtonState.None;
		}
		base.OnMouseLeave(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		bool flag = false;
		if (ButtonBounds.Contains(e.Location))
		{
			Application.AddMessageFilter(this);
			if (e.Button == MouseButtons.Left && !base.DropDown.Visible)
			{
				if ((base.DropDown != null && !base.DropDown.Visible) || base.DropDownItems.Count > 0)
				{
					flag = true;
					m_bLeftMouseButtonPressedOnButton = true;
					base.DropDown.OwnerItem = this;
					base.DropDown.Location = DropDownLocation;
					ShowDropDown();
					Invalidate();
				}
			}
			else if (e.Button == MouseButtons.Left && base.DropDown.Visible)
			{
				flag = true;
				m_bLeftMouseButtonPressedOnButton = true;
				base.DropDown.Close();
				ButtonState = SplitButtonState.ButtonPressed;
			}
		}
		else
		{
			flag = true;
			base.DropDown.Close();
			m_bLeftMouseButtonPressedOnImage = true;
			ButtonState = SplitButtonState.ImagePressed;
		}
		if (flag)
		{
			Application.AddMessageFilter(this);
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		m_bLeftMouseButtonPressedOnImage = false;
		m_bLeftMouseButtonPressedOnButton = false;
		if (ButtonBounds.Contains(e.Location) && base.DropDown.Visible && base.DropDown.OwnerItem == this)
		{
			ButtonState = SplitButtonState.ButtonPressed;
		}
		else if (ButtonBounds.Contains(e.Location))
		{
			ButtonState = SplitButtonState.ButtonSelected;
		}
		else if (ImageBounds.Contains(e.Location))
		{
			ButtonState = SplitButtonState.ImageSelected;
		}
		base.OnMouseUp(e);
	}

	protected override void OnDropDownClosed(EventArgs e)
	{
		ToolStrip toolStrip = base.Parent;
		if (toolStrip != null)
		{
			Point location = toolStrip.PointToScreen(Bounds.Location);
			Rectangle buttonBounds = ButtonBounds;
			buttonBounds.Location = location;
			buttonBounds.X += ButtonBounds.X;
			if (!buttonBounds.Contains(Cursor.Position))
			{
				m_bLeftMouseButtonPressedOnButton = false;
				ButtonState = SplitButtonState.None;
			}
		}
		base.OnDropDownClosed(e);
	}

	protected override void OnDropDownOpened(EventArgs e)
	{
		ButtonState = SplitButtonState.ButtonPressed;
		base.OnDropDownOpened(e);
	}

	protected override void OnClick(EventArgs e)
	{
		ToolStrip toolStrip = base.Parent;
		if (toolStrip != null)
		{
			Point location = toolStrip.PointToScreen(Bounds.Location);
			Rectangle imageBounds = ImageBounds;
			imageBounds.Location = location;
			if (imageBounds.Contains(Cursor.Position))
			{
				base.OnClick(e);
			}
		}
	}

	public bool PreFilterMessage(ref Message m)
	{
		if (m.Msg == 514)
		{
			Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
			if (!Bounds.Contains(pointFromLPARAM))
			{
				m_bLeftMouseButtonPressedOnImage = false;
				m_bLeftMouseButtonPressedOnButton = false;
			}
			Application.RemoveMessageFilter(this);
		}
		return false;
	}
}
