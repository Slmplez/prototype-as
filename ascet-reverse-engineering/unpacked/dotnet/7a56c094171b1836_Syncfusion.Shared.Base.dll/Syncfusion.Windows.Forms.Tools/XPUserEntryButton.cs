using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Imaging;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(XPUserEntryButtonTypeConverter))]
public class XPUserEntryButton
{
	private const string BUTTONNAME = "Button";

	private static readonly Color c_cBackgroundHot = Color.FromArgb(255, 238, 194);

	private static readonly Color c_cBackgroundPressed = Color.FromArgb(242, 210, 101);

	private Rectangle m_bounds;

	private Color m_cTransparentImageColor;

	private int m_buttonIndex = -1;

	private XPUserEntryButtonType m_type = XPUserEntryButtonType.Custom;

	private bool m_bEnable = true;

	private bool m_bVisible = true;

	private string m_name = string.Empty;

	private Image m_image;

	private XPUserEntryButtonState m_state = XPUserEntryButtonState.Normal;

	protected internal Rectangle Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			if (m_bounds != value)
			{
				m_bounds = value;
			}
		}
	}

	[Description("Gets or sets transparent image color.")]
	public Color TransparentImageColor
	{
		get
		{
			return m_cTransparentImageColor;
		}
		set
		{
			if (m_cTransparentImageColor != value)
			{
				m_cTransparentImageColor = value;
			}
		}
	}

	[DefaultValue(null)]
	public int Index
	{
		get
		{
			return m_buttonIndex;
		}
		set
		{
			if (value != m_buttonIndex)
			{
				m_buttonIndex = value;
			}
		}
	}

	[DefaultValue(XPUserEntryButtonType.Custom)]
	public XPUserEntryButtonType PredefinedType
	{
		get
		{
			return m_type;
		}
		set
		{
			if (m_type != value)
			{
				m_type = value;
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	public bool Enable
	{
		get
		{
			return m_bEnable;
		}
		set
		{
			if (m_bEnable != value)
			{
				m_bEnable = value;
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bVisible != value)
			{
				m_bVisible = value;
			}
		}
	}

	[DefaultValue("")]
	public string Name
	{
		get
		{
			return m_name;
		}
		set
		{
			if (m_name != value)
			{
				m_name = value;
			}
		}
	}

	[DefaultValue(null)]
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
			}
		}
	}

	[DefaultValue(XPUserEntryButtonState.Normal)]
	protected internal XPUserEntryButtonState State
	{
		get
		{
			return m_state;
		}
		set
		{
			if (m_state != value)
			{
				m_state = value;
			}
		}
	}

	public XPUserEntryButton()
		: this("Button")
	{
	}

	public XPUserEntryButton(string name)
	{
		m_name = name;
	}

	public XPUserEntryButton(string name, int index)
		: this(name)
	{
		m_buttonIndex = index;
	}

	public XPUserEntryButton(string name, Image image, XPUserEntryButtonType type, int index, bool enabled, bool visible)
		: this(name, index)
	{
		m_image = image;
		m_type = type;
		m_bEnable = enabled;
		m_bVisible = visible;
	}

	public void Draw(Graphics g)
	{
		if (Image != null)
		{
			DrawImage(g);
		}
		else if (State != XPUserEntryButtonState.Normal)
		{
			if (State == XPUserEntryButtonState.Highlighted)
			{
				g.FillRectangle(new SolidBrush(c_cBackgroundHot), Bounds);
			}
			else if (State == XPUserEntryButtonState.Pushed)
			{
				RectangleF rect = Bounds;
				rect.Height -= 1f;
				rect.Width -= 1f;
				g.FillRectangle(new SolidBrush(c_cBackgroundPressed), rect);
			}
			DrawBorder(g);
		}
	}

	private void DrawImage(Graphics g)
	{
		Bitmap bitmap = null;
		bitmap = new Bitmap(Image);
		bitmap.MakeTransparent(TransparentImageColor);
		if (Enable)
		{
			if (State == XPUserEntryButtonState.Highlighted)
			{
				g.DrawImage(bitmap, Bounds);
				g.DrawRectangle(Pens.White, Bounds);
			}
			else if (State == XPUserEntryButtonState.Pushed)
			{
				g.DrawImage(bitmap, Bounds);
				RectangleF value = Bounds;
				value.Height -= 1f;
				value.Width -= 1f;
				Rectangle rectangle = Rectangle.Ceiling(value);
				g.DrawLine(Pens.White, new Point(rectangle.Right, rectangle.Top), new Point(rectangle.Right, rectangle.Bottom));
				g.DrawLine(Pens.White, new Point(rectangle.Right, rectangle.Bottom), new Point(rectangle.Left, rectangle.Bottom));
			}
			else
			{
				g.DrawImage(bitmap, Bounds);
			}
		}
		else
		{
			DrawGreyImage(srcRect: new RectangleF(Point.Empty, Image.Size), g: g, image: bitmap, destRect: Bounds);
		}
	}

	private void DrawGreyImage(Graphics g, Image image, Rectangle destRect, RectangleF srcRect)
	{
		ImageAttributes imageAttributes = new ImageAttributes();
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 1f / 3f;
		colorMatrix.Matrix01 = 1f / 3f;
		colorMatrix.Matrix02 = 1f / 3f;
		colorMatrix.Matrix10 = 1f / 3f;
		colorMatrix.Matrix11 = 1f / 3f;
		colorMatrix.Matrix12 = 1f / 3f;
		colorMatrix.Matrix20 = 1f / 3f;
		colorMatrix.Matrix21 = 1f / 3f;
		colorMatrix.Matrix22 = 1f / 3f;
		imageAttributes.SetColorMatrix(colorMatrix);
		g.DrawImage(image, destRect, srcRect.X, srcRect.Y, srcRect.Width, srcRect.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
	}

	private void DrawBorder(Graphics g)
	{
		RectangleF value = Bounds;
		value.Width -= 1f;
		value.Height -= 1f;
		g.DrawRectangle(Pens.Black, Rectangle.Ceiling(value));
	}
}
