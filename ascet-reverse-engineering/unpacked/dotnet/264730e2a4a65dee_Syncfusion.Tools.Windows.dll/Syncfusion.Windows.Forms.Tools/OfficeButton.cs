using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(OfficeButton), "ToolboxIcons.OfficeButton.bmp")]
[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class OfficeButton : ToolStripButton
{
	internal class OfficeButtonInternalLayout
	{
		private const int BORDER_WIDTH = 2;

		private const int MARGIN = 2;

		private const int MIN_IMAGE_HEIGHT = 16;

		private const int MIN_IMAGE_WIDTH = 16;

		private Size m_szLastPreferredSize;

		private OfficeButton m_Item;

		private Rectangle m_rcImage;

		private Rectangle m_rcText;

		private Rectangle m_HelpTextRectangle;

		private Size m_szText;

		private Size m_szHelpText;

		private Size m_szImage;

		public Size PreferredSize
		{
			get
			{
				if (m_Item != null && m_szLastPreferredSize == Size.Empty)
				{
					int num = 4 + m_Item.Padding.Horizontal;
					int num2 = 4 + m_Item.Padding.Vertical;
					int width = ImageSize.Width;
					int height = ImageSize.Height;
					num += width;
					int val = 0;
					if ((m_Item.DisplayStyle & ToolStripItemDisplayStyle.Text) == ToolStripItemDisplayStyle.Text)
					{
						val = TextSize.Height + 2 + HelpTextSize.Height;
						num += Math.Max(TextSize.Width, HelpTextSize.Width);
					}
					num2 += Math.Max(val, height);
					num2 = Math.Max(num2, 23);
					m_szLastPreferredSize = new Size(num, num2);
				}
				return m_szLastPreferredSize;
			}
		}

		private Size ImageSize
		{
			get
			{
				if (m_szImage == Size.Empty && m_Item != null)
				{
					int num = 0;
					int num2 = 0;
					if ((m_Item.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image)
					{
						Size size = new Size(16, 16);
						if (m_Item.Owner != null)
						{
							size = m_Item.Owner.ImageScalingSize;
						}
						num = size.Width;
						num2 = size.Height;
						if (m_Item.ImageScaling == ToolStripItemImageScaling.None && m_Item.Image != null)
						{
							num = m_Item.Image.Width;
							num2 = m_Item.Image.Height;
						}
						m_szImage = new Size(num, num2);
					}
				}
				return m_szImage;
			}
		}

		private Size TextSize
		{
			get
			{
				if (m_szText == Size.Empty && m_Item != null)
				{
					m_szText = TextRenderer.MeasureText(m_Item.Text, m_Item.FontBold);
				}
				return m_szText;
			}
		}

		private Size HelpTextSize
		{
			get
			{
				if (m_szHelpText == Size.Empty && m_Item != null)
				{
					m_szHelpText = TextRenderer.MeasureText(m_Item.HelpText, m_Item.Font, new Size(TextSize.Width, 1), TextFormat);
				}
				return m_szHelpText;
			}
		}

		internal TextFormatFlags TextFormat => TextFormatFlags.Default;

		internal Rectangle ImageRectangle
		{
			get
			{
				if (m_Item != null && m_rcImage == Rectangle.Empty)
				{
					Size imageSize = ImageSize;
					ToolStrip owner = m_Item.Owner;
					int num = 2 + m_Item.Padding.Top;
					int y = m_Item.Height - 2 - m_Item.Padding.Bottom - imageSize.Height;
					int y2 = num + (m_Item.Height - 4 - m_Item.Padding.Vertical - imageSize.Height) / 2;
					if ((owner != null && owner.RightToLeft == RightToLeft.Yes) || m_Item.RightToLeft == RightToLeft.Yes)
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
					ToolStrip owner = m_Item.Owner;
					int x = 2 + m_Item.Padding.Left;
					int y = 2 + m_Item.Padding.Top;
					int height = m_Item.Height - 4 - m_Item.Padding.Vertical - HelpTextSize.Height;
					if ((owner != null && owner.RightToLeft == RightToLeft.Yes) || m_Item.RightToLeft == RightToLeft.Yes)
					{
						if (m_Item.Text.Length != 0)
						{
							m_rcText = new Rectangle(new Point(x, y), new Size(TextSize.Width, height));
						}
					}
					else
					{
						bool flag = (m_Item.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image;
						if (m_Item.Text.Length != 0)
						{
							if (flag)
							{
								m_rcText = new Rectangle(new Point(ImageRectangle.Right, y), new Size(TextSize.Width, height));
							}
							else
							{
								m_rcText = new Rectangle(new Point(x, y), new Size(TextSize.Width, height));
							}
						}
					}
				}
				return m_rcText;
			}
		}

		internal Rectangle HelpTextRectangle
		{
			get
			{
				if (m_Item != null)
				{
					ToolStrip owner = m_Item.Owner;
					if ((owner != null && owner.RightToLeft == RightToLeft.Yes) || m_Item.RightToLeft == RightToLeft.Yes)
					{
						if (m_Item.Text.Length != 0 && m_HelpTextRectangle == Rectangle.Empty)
						{
							int x = 2 + m_Item.Padding.Left;
							int num = 2 + m_Item.Padding.Top;
							if (m_Item.Text.Length != 0)
							{
								m_HelpTextRectangle = new Rectangle(new Point(x, num + m_rcText.Height + 2), HelpTextSize);
							}
							else
							{
								m_HelpTextRectangle = new Rectangle(new Point(x, num), HelpTextSize);
							}
						}
					}
					else if (m_Item.Text.Length != 0 && m_HelpTextRectangle == Rectangle.Empty)
					{
						int x2 = 2 + m_Item.Padding.Left;
						int num2 = 2 + m_Item.Padding.Top;
						bool flag = (m_Item.DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image;
						bool flag2 = m_Item.Text.Length == 0;
						if (flag && !flag2)
						{
							m_HelpTextRectangle = new Rectangle(new Point(ImageRectangle.Right, num2 + m_rcText.Height + 2), HelpTextSize);
						}
						else if (flag && flag2)
						{
							m_HelpTextRectangle = new Rectangle(new Point(ImageRectangle.Right, num2), HelpTextSize);
						}
						else if (!flag2)
						{
							m_HelpTextRectangle = new Rectangle(new Point(x2, num2 + m_rcText.Height + 2), HelpTextSize);
						}
						else
						{
							m_HelpTextRectangle = new Rectangle(new Point(x2, num2), HelpTextSize);
						}
					}
				}
				return m_HelpTextRectangle;
			}
		}

		public OfficeButtonInternalLayout(OfficeButton item)
		{
			m_Item = item;
		}
	}

	private const int MIN_HEIGHT = 23;

	private string m_sHelpText = string.Empty;

	private Font m_Font;

	private Rectangle m_rcImageBounds = Rectangle.Empty;

	private Rectangle m_rcTextBounds = Rectangle.Empty;

	private Rectangle m_rcHelpTextBounds = Rectangle.Empty;

	private Size m_szText = Size.Empty;

	private Size m_szHelpText = Size.Empty;

	private OfficeButtonInternalLayout m_InternalLayout;

	[DefaultValue("")]
	[Category("Appearance")]
	[Localizable(true)]
	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	public string HelpText
	{
		get
		{
			return m_sHelpText;
		}
		set
		{
			m_sHelpText = value;
			ToolStrip currentParent = GetCurrentParent();
			if (currentParent != null)
			{
				m_InternalLayout = null;
				currentParent.PerformLayout();
			}
		}
	}

	[Category("Appearance")]
	internal Font FontBold
	{
		get
		{
			if (m_Font == null)
			{
				m_Font = new Font(base.Font, FontStyle.Bold);
			}
			return m_Font;
		}
	}

	internal Rectangle ImageBounds
	{
		get
		{
			return m_rcImageBounds;
		}
		set
		{
			m_rcImageBounds = value;
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

	internal Rectangle HelpTextBounds
	{
		get
		{
			return m_rcHelpTextBounds;
		}
		set
		{
			m_rcHelpTextBounds = value;
		}
	}

	internal Size TextSize
	{
		get
		{
			return m_szText;
		}
		set
		{
			m_szText = value;
		}
	}

	internal Size HelpTextSize
	{
		get
		{
			return m_szHelpText;
		}
		set
		{
			m_szHelpText = value;
		}
	}

	internal OfficeButtonInternalLayout InternalLayout
	{
		get
		{
			if (m_InternalLayout == null)
			{
				m_InternalLayout = new OfficeButtonInternalLayout(this);
			}
			return m_InternalLayout;
		}
		set
		{
			m_InternalLayout = value;
		}
	}

	[DefaultValue(ToolStripItemDisplayStyle.Image)]
	public override ToolStripItemDisplayStyle DisplayStyle
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

	public override Size GetPreferredSize(Size constrainingSize)
	{
		return InternalLayout.PreferredSize;
	}

	protected override void OnFontChanged(EventArgs e)
	{
		m_Font = null;
		m_InternalLayout = null;
		base.OnFontChanged(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (base.Owner != null)
		{
			ToolStripRenderer renderer = base.Owner.Renderer;
			renderer.DrawButtonBackground(new ToolStripItemRenderEventArgs(e.Graphics, this));
			if ((DisplayStyle & ToolStripItemDisplayStyle.Image) == ToolStripItemDisplayStyle.Image)
			{
				ToolStripItemImageRenderEventArgs e2 = new ToolStripItemImageRenderEventArgs(e.Graphics, this, Image, InternalLayout.ImageRectangle);
				renderer.DrawItemImage(e2);
			}
			if ((DisplayStyle & ToolStripItemDisplayStyle.Text) == ToolStripItemDisplayStyle.Text)
			{
				renderer.DrawItemText(new ToolStripItemTextRenderEventArgs(e.Graphics, this, Text, InternalLayout.TextRectangle, ForeColor, FontBold, TextAlign));
				renderer.DrawItemText(new ToolStripItemTextRenderEventArgs(e.Graphics, this, HelpText, InternalLayout.HelpTextRectangle, ForeColor, Font, InternalLayout.TextFormat));
			}
		}
		else
		{
			base.OnPaint(e);
		}
	}

	protected override void OnBoundsChanged()
	{
		m_InternalLayout = null;
		base.OnBoundsChanged();
	}

	protected override void OnParentRightToLeftChanged(EventArgs e)
	{
		m_InternalLayout = null;
		base.OnParentRightToLeftChanged(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		m_InternalLayout = null;
		base.OnRightToLeftChanged(e);
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		m_InternalLayout = null;
		base.OnLayout(e);
	}
}
