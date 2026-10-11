using System;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(TabPrimitiveTypeConverter))]
public class TabPrimitive
{
	private const string c_sImagePath = "Syncfusion.Windows.Forms.Tools.Controls.TabControlAdv.Images.";

	private const string c_sFirstTabImage = "FirstTab.bmp";

	private const string c_sLastTabImage = "LastTab.bmp";

	private const string c_sNextPageImage = "NextPage.bmp";

	private const string c_sNextTabImage = "NextTab.bmp";

	private const string c_sPreviousPageImage = "PreviousPage.bmp";

	private const string c_sPreviousTabImage = "PreviousTab.bmp";

	private const string c_sCloseButtonImage = "CloseButton.bmp";

	private const string c_sDropDownPartial = "DropDownPartial.bmp";

	private const string c_sDropDownFull = "DropDownFull.bmp";

	private static readonly Color c_cBackgroundHot = Color.FromArgb(255, 238, 194);

	private static readonly Color c_cBackgroundPressed = Color.FromArgb(242, 210, 101);

	private static readonly Color c_cBorder = Color.FromArgb(72, 72, 109);

	private TabPrimitivesHost m_tabPrimitivesHost;

	private bool m_bVisible = true;

	private Point m_ptLocation = Point.Empty;

	private Size m_szSize = new Size(15, 15);

	private ButtonState m_state;

	private TabPrimitiveType m_type;

	private Image m_image;

	private Color m_cTransparentImageColor = Color.Empty;

	private Bitmap m_defaultImage;

	private bool m_bEnabled = true;

	private int m_iIndent = 1;

	private bool m_bIsFullMode;

	private string m_sName = string.Empty;

	private string m_toolTipText = string.Empty;

	[Description("Gets or sets tab primitive name.")]
	public string Name
	{
		get
		{
			return m_sName;
		}
		set
		{
			m_sName = value;
		}
	}

	[Browsable(false)]
	public bool IsFullMode => m_bIsFullMode;

	[DefaultValue(true)]
	[Description("Gets or sets primitive enabled. If TabPrimitivType isn't Custom or DropDown then Enabled is sets automatically.")]
	public bool Enabled
	{
		get
		{
			return m_bEnabled;
		}
		set
		{
			if (m_bEnabled != value)
			{
				m_bEnabled = value;
				if (m_tabPrimitivesHost != null)
				{
					m_tabPrimitivesHost.TabControl.Invalidate(Bounds);
				}
			}
		}
	}

	[Description("Gets or sets primitive indent.")]
	[DefaultValue(1)]
	public int Indent
	{
		get
		{
			return m_iIndent;
		}
		set
		{
			if (m_iIndent != value && value >= 0)
			{
				m_iIndent = value;
				if (m_tabPrimitivesHost != null)
				{
					m_tabPrimitivesHost.RefreshTabControl();
				}
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
				if (m_tabPrimitivesHost != null)
				{
					m_tabPrimitivesHost.TabControl.Invalidate(Bounds);
				}
			}
		}
	}

	[DefaultValue(null)]
	[Description("Gets or sets image for draw foreground. If this value is null then draw default image.")]
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
				if (m_tabPrimitivesHost != null)
				{
					m_tabPrimitivesHost.TabControl.Invalidate(Bounds);
				}
			}
		}
	}

	[Description("Gets or sets primitive type.")]
	[DefaultValue(TabPrimitiveType.Custom)]
	public TabPrimitiveType TabPrimitiveType
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
				m_bEnabled = true;
				m_state = ButtonState.Normal;
				LoadImageFromResourse();
				if (m_tabPrimitivesHost != null)
				{
					m_tabPrimitivesHost.RefreshTabControl();
				}
			}
		}
	}

	[DefaultValue("")]
	[Description("Gets or sets the toolTip text for this tabPrimitive.")]
	[Localizable(true)]
	public string ToolTip
	{
		get
		{
			return m_toolTipText;
		}
		set
		{
			if (m_toolTipText != value)
			{
				m_toolTipText = value;
			}
		}
	}

	[Browsable(false)]
	public ButtonState State => m_state;

	[Browsable(false)]
	public Rectangle Bounds => new Rectangle(m_ptLocation, m_szSize);

	[DefaultValue(true)]
	[Description("Gets or sets this primitive visibility.")]
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
				if (m_tabPrimitivesHost != null)
				{
					m_tabPrimitivesHost.RefreshTabControl();
				}
			}
		}
	}

	[Browsable(false)]
	public Size Size => m_szSize;

	[Browsable(false)]
	public Point Location => m_ptLocation;

	protected virtual bool ShouldSerialazeTransparentImageColor()
	{
		return m_cTransparentImageColor != Color.Empty;
	}

	public virtual void ResetTransparentImageColor()
	{
		m_cTransparentImageColor = Color.Empty;
	}

	public TabPrimitive(TabPrimitiveType type, Image image, Color transparentImageColor, bool visible, int indent, string name, string toolTipText)
		: this(type, image, transparentImageColor, visible, indent, name)
	{
		m_toolTipText = toolTipText;
	}

	public TabPrimitive(TabPrimitiveType type, Image image, Color transparentImageColor, bool visible, int indent, string name)
		: this(type)
	{
		m_image = image;
		m_cTransparentImageColor = transparentImageColor;
		m_bVisible = visible;
		m_iIndent = indent;
		m_sName = name;
	}

	public TabPrimitive(TabPrimitiveType type)
	{
		m_type = type;
		LoadImageFromResourse();
	}

	public TabPrimitive()
		: this(TabPrimitiveType.Custom)
	{
	}

	internal void SetTabPrimitiveHost(TabPrimitivesHost tabPrimitivesHost)
	{
		m_tabPrimitivesHost = tabPrimitivesHost;
	}

	internal void SetIsFullMode(bool isFullMode)
	{
		if (TabPrimitiveType == TabPrimitiveType.DropDown && m_bIsFullMode != isFullMode)
		{
			m_bIsFullMode = isFullMode;
			LoadImageFromResourse();
		}
	}

	private void LoadImageFromResourse()
	{
		if (m_type != TabPrimitiveType.Custom)
		{
			string text = "Syncfusion.Windows.Forms.Tools.Controls.TabControlAdv.Images.";
			switch (m_type)
			{
			case TabPrimitiveType.FirstTab:
				text += "FirstTab.bmp";
				break;
			case TabPrimitiveType.LastTab:
				text += "LastTab.bmp";
				break;
			case TabPrimitiveType.NextPage:
				text += "NextPage.bmp";
				break;
			case TabPrimitiveType.NextTab:
				text += "NextTab.bmp";
				break;
			case TabPrimitiveType.PreviousPage:
				text += "PreviousPage.bmp";
				break;
			case TabPrimitiveType.PreviousTab:
				text += "PreviousTab.bmp";
				break;
			case TabPrimitiveType.Close:
				text += "CloseButton.bmp";
				break;
			case TabPrimitiveType.DropDown:
				text = ((!m_bIsFullMode) ? (text + "DropDownPartial.bmp") : (text + "DropDownFull.bmp"));
				break;
			}
			Assembly executingAssembly = Assembly.GetExecutingAssembly();
			Bitmap bitmap = new Bitmap(executingAssembly.GetManifestResourceStream(text));
			bitmap.MakeTransparent(Color.White);
			m_defaultImage = bitmap;
		}
		else
		{
			m_defaultImage = null;
		}
	}

	protected virtual Rectangle CalculateImageRect(Size bitmapSize)
	{
		Rectangle bounds = Bounds;
		Size size = bitmapSize;
		int width;
		int x;
		if (size.Width > bounds.Width)
		{
			width = bounds.Width;
			x = bounds.X;
		}
		else
		{
			width = size.Width;
			x = bounds.X + (bounds.Width - width) / 2;
		}
		int height;
		int y;
		if (size.Height > bounds.Height)
		{
			height = bounds.Height;
			y = bounds.Y;
		}
		else
		{
			height = size.Height;
			y = bounds.Y + (bounds.Height - height) / 2;
		}
		return new Rectangle(x, y, width, height);
	}

	protected virtual void DrawBackground(Graphics g)
	{
		if (State != ButtonState.Normal)
		{
			Rectangle bounds = Bounds;
			Color color = ((State == ButtonState.Flat) ? c_cBackgroundHot : c_cBackgroundPressed);
			g.FillRectangle(new SolidBrush(color), bounds);
		}
	}

	protected virtual void DrawBorder(Graphics g)
	{
		if (State != ButtonState.Normal)
		{
			Rectangle bounds = Bounds;
			bounds.Width--;
			bounds.Height--;
			g.DrawRectangle(new Pen(c_cBorder), bounds);
		}
	}

	protected virtual void DrawForeground(Graphics g)
	{
		Bitmap bitmap = null;
		if (Image != null)
		{
			bitmap = new Bitmap(Image);
			bitmap.MakeTransparent(TransparentImageColor);
		}
		else if (m_defaultImage != null)
		{
			bitmap = (Bitmap)m_defaultImage.Clone();
		}
		if (bitmap == null)
		{
			return;
		}
		if (m_tabPrimitivesHost != null)
		{
			if (m_tabPrimitivesHost.TabControl.IsMirrored && TabPrimitiveType != TabPrimitiveType.Custom && TabPrimitiveType != TabPrimitiveType.Close && TabPrimitiveType != TabPrimitiveType.DropDown)
			{
				bitmap.RotateFlip(RotateFlipType.RotateNoneFlipX);
			}
			if (m_tabPrimitivesHost.NeedRotate)
			{
				bitmap.RotateFlip(RotateFlipType.Rotate90FlipX);
			}
		}
		Rectangle rect = CalculateImageRect(bitmap.Size);
		if (Enabled)
		{
			g.DrawImage(bitmap, rect);
		}
		else
		{
			ControlPaint.DrawImageDisabled(g, new Bitmap(bitmap, rect.Size), rect.X, rect.Y, Color.Transparent);
		}
	}

	protected internal virtual void Draw(Graphics g)
	{
		if (Visible)
		{
			if (Enabled)
			{
				DrawBackground(g);
				DrawBorder(g);
			}
			DrawForeground(g);
		}
	}

	internal void SetLocation(Point location)
	{
		m_ptLocation = location;
	}

	internal void SetLocation(int x, int y)
	{
		SetLocation(new Point(x, y));
	}

	internal void SetState(ButtonState state)
	{
		m_state = state;
	}
}
